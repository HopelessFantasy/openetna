.class public Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;
.super Landroid/app/ListActivity;
.source "TwitterTweetAtList.java"

# interfaces
.implements Lcom/lge/sns/feed/IFeedFacade$FeedUpdateCallback;
.implements Lcom/lge/sns/feed/IFeedFacade$FeedUpdateListener;
.implements Lcom/lge/sns/profile/IProfileFacade$ProfileUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$FeedListAdapter;
    }
.end annotation


# static fields
.field private static final DIALOG_REFRESH:I = 0x3e8

.field private static final OPTION_MENU_ID_NEW_TWEET:I = 0x1

.field private static final OPTION_MENU_ID_REFRESH:I = 0x0

.field private static final RC_SIGNIN:I = 0x1

.field private static final SNS_ID:Ljava/lang/String; = "TW"

.field private static snsManager:Lcom/lge/sns/SnsManager;


# instance fields
.field private accountFacade:Lcom/lge/sns/account/IAccountFacade;

.field private feedFacade:Lcom/lge/sns/feed/IFeedFacade;

.field private feedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/feed/Feed;",
            ">;"
        }
    .end annotation
.end field

.field private feedTypeList:[Ljava/lang/String;

.field private keyword:Ljava/lang/String;

.field private mAdapter:Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$FeedListAdapter;

.field private profileFacade:Lcom/lge/sns/profile/IProfileFacade;

.field private userId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 52
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v0

    sput-object v0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;->snsManager:Lcom/lge/sns/SnsManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 56
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "PS"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;->feedTypeList:[Ljava/lang/String;

    .line 58
    sget-object v0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;->snsManager:Lcom/lge/sns/SnsManager;

    invoke-virtual {v0, p0}, Lcom/lge/sns/SnsManager;->getFeeds(Landroid/content/Context;)Lcom/lge/sns/feed/IFeedFacade;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;->feedFacade:Lcom/lge/sns/feed/IFeedFacade;

    .line 59
    sget-object v0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;->snsManager:Lcom/lge/sns/SnsManager;

    invoke-virtual {v0, p0}, Lcom/lge/sns/SnsManager;->getAccount(Landroid/content/Context;)Lcom/lge/sns/account/IAccountFacade;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;->accountFacade:Lcom/lge/sns/account/IAccountFacade;

    .line 60
    sget-object v0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;->snsManager:Lcom/lge/sns/SnsManager;

    invoke-virtual {v0, p0}, Lcom/lge/sns/SnsManager;->getProfile(Landroid/content/Context;)Lcom/lge/sns/profile/IProfileFacade;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;->profileFacade:Lcom/lge/sns/profile/IProfileFacade;

    .line 174
    return-void
.end method

.method static synthetic access$000(Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;->newTweet()V

    return-void
.end method

.method static synthetic access$100()Lcom/lge/sns/SnsManager;
    .registers 1

    .prologue
    .line 40
    sget-object v0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;->snsManager:Lcom/lge/sns/SnsManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;Ljava/lang/String;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;->isValidFeedType(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;->keyword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;->feedList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;Ljava/util/List;Lcom/lge/sns/feed/Feed;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;->findLocation(Ljava/util/List;Lcom/lge/sns/feed/Feed;)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;)Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$FeedListAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;->mAdapter:Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$FeedListAdapter;

    return-object v0
.end method

.method private findLocation(Ljava/util/List;Lcom/lge/sns/feed/Feed;)I
    .registers 8
    .parameter
    .parameter "feed"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/feed/Feed;",
            ">;",
            "Lcom/lge/sns/feed/Feed;",
            ")I"
        }
    .end annotation

    .prologue
    .line 304
    .local p1, fl:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/feed/Feed;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 305
    .local v2, l:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    if-ge v1, v2, :cond_20

    .line 306
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/sns/feed/Feed;

    .line 307
    .local v0, currentFeed:Lcom/lge/sns/feed/Feed;
    invoke-virtual {v0}, Lcom/lge/sns/feed/Feed;->getPublished()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {p2}, Lcom/lge/sns/feed/Feed;->getPublished()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v3

    if-gtz v3, :cond_1d

    move v3, v1

    .line 311
    .end local v0           #currentFeed:Lcom/lge/sns/feed/Feed;
    :goto_1c
    return v3

    .line 305
    .restart local v0       #currentFeed:Lcom/lge/sns/feed/Feed;
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .end local v0           #currentFeed:Lcom/lge/sns/feed/Feed;
    :cond_20
    move v3, v2

    .line 311
    goto :goto_1c
.end method

.method private isValidFeedType(Ljava/lang/String;)Z
    .registers 8
    .parameter "currentFeedType"

    .prologue
    const/4 v5, 0x1

    .line 336
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;->feedTypeList:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_5
    if-ge v2, v3, :cond_14

    aget-object v1, v0, v2

    .line 337
    .local v1, feedType:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v5, :cond_11

    move v4, v5

    .line 342
    .end local v1           #feedType:Ljava/lang/String;
    :goto_10
    return v4

    .line 336
    .restart local v1       #feedType:Ljava/lang/String;
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 342
    .end local v1           #feedType:Ljava/lang/String;
    :cond_14
    const/4 v4, 0x0

    goto :goto_10
.end method

.method private newTweet()V
    .registers 4

    .prologue
    .line 149
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.sns.profile.intent.action.EDIT_TWEET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 150
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "sns_id"

    const-string v2, "TW"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    const-string v1, "user_id"

    iget-object v2, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    invoke-virtual {p0, v0}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;->startActivity(Landroid/content/Intent;)V

    .line 153
    return-void
.end method

.method private setNewTweetButton()V
    .registers 3

    .prologue
    .line 81
    const v1, 0x7f0800ca

    invoke-virtual {p0, v1}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 82
    .local v0, newTweetButton:Landroid/widget/Button;
    new-instance v1, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$1;

    invoke-direct {v1, p0}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$1;-><init>(Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const-string v4, "TW"

    .line 103
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1b

    .line 104
    const/4 v2, -0x1

    if-ne p2, v2, :cond_1b

    .line 105
    sget-object v2, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;->snsManager:Lcom/lge/sns/SnsManager;

    invoke-virtual {v2, p0}, Lcom/lge/sns/SnsManager;->getAccount(Landroid/content/Context;)Lcom/lge/sns/account/IAccountFacade;

    move-result-object v0

    .line 106
    .local v0, accountFacade:Lcom/lge/sns/account/IAccountFacade;
    const-string v2, "TW"

    invoke-interface {v0, v4}, Lcom/lge/sns/account/IAccountFacade;->getUid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, userId:Ljava/lang/String;
    iget-object v2, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;->feedFacade:Lcom/lge/sns/feed/IFeedFacade;

    const-string v3, "TW"

    invoke-interface {v2, v4, v1, p0}, Lcom/lge/sns/feed/IFeedFacade;->refreshFeedListAsync(Ljava/lang/String;Ljava/lang/String;Lcom/lge/sns/feed/IFeedFacade$FeedUpdateCallback;)Z

    .line 110
    .end local v0           #accountFacade:Lcom/lge/sns/account/IAccountFacade;
    .end local v1           #userId:Ljava/lang/String;
    :cond_1b
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const-string v3, "TW"

    .line 65
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const v0, 0x7f030046

    invoke-virtual {p0, v0}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;->setContentView(I)V

    .line 67
    invoke-virtual {p0}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    invoke-virtual {p0}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 70
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;->accountFacade:Lcom/lge/sns/account/IAccountFacade;

    const-string v1, "TW"

    invoke-interface {v0, v3}, Lcom/lge/sns/account/IAccountFacade;->getUid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;->userId:Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;->profileFacade:Lcom/lge/sns/profile/IProfileFacade;

    const-string v2, "TW"

    iget-object v2, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;->userId:Ljava/lang/String;

    invoke-interface {v1, v3, v2}, Lcom/lge/sns/profile/IProfileFacade;->getProfileFromDB(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/sns/profile/Profile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/sns/profile/Profile;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;->keyword:Ljava/lang/String;

    .line 73
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;->feedFacade:Lcom/lge/sns/feed/IFeedFacade;

    const-string v1, "TW"

    iget-object v1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;->keyword:Ljava/lang/String;

    invoke-interface {v0, v3, v1, p0}, Lcom/lge/sns/feed/IFeedFacade;->getFeedListByKeyword(Ljava/lang/String;Ljava/lang/String;Lcom/lge/sns/feed/IFeedFacade$FeedUpdateListener;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;->feedList:Ljava/util/List;

    .line 74
    new-instance v0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$FeedListAdapter;

    const v1, 0x7f03000b

    iget-object v2, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;->feedList:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$FeedListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;->mAdapter:Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$FeedListAdapter;

    .line 75
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;->mAdapter:Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$FeedListAdapter;

    invoke-virtual {p0, v0}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 76
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;->setNewTweetButton()V

    .line 77
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;->profileFacade:Lcom/lge/sns/profile/IProfileFacade;

    invoke-interface {v0, p0}, Lcom/lge/sns/profile/IProfileFacade;->registerProfileUpdateListener(Lcom/lge/sns/profile/IProfileFacade$ProfileUpdateListener;)V

    .line 78
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 6
    .parameter "id"

    .prologue
    .line 156
    packed-switch p1, :pswitch_data_2a

    .line 171
    const/4 v1, 0x0

    :goto_4
    return-object v1

    .line 158
    :pswitch_5
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 159
    .local v0, refreshDialog:Landroid/app/ProgressDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 160
    const v1, 0x7f050009

    invoke-virtual {p0, v1}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 161
    const/4 v1, -0x1

    const v2, 0x7f05000a

    invoke-virtual {p0, v2}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$2;

    invoke-direct {v3, p0}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$2;-><init>(Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    move-object v1, v0

    .line 167
    goto :goto_4

    .line 156
    :pswitch_data_2a
    .packed-switch 0x3e8
        :pswitch_5
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 124
    const v0, 0x7f05000e

    invoke-virtual {p0, v0}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 126
    const v0, 0x7f0500b5

    invoke-virtual {p0, v0}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108003e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 129
    return v3
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 90
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 91
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;->feedFacade:Lcom/lge/sns/feed/IFeedFacade;

    invoke-interface {v0, p0}, Lcom/lge/sns/feed/IFeedFacade;->removeFeedUpdateListener(Lcom/lge/sns/feed/IFeedFacade$FeedUpdateListener;)V

    .line 92
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;->profileFacade:Lcom/lge/sns/profile/IProfileFacade;

    invoke-interface {v0, p0}, Lcom/lge/sns/profile/IProfileFacade;->removeProfileUpdateListener(Lcom/lge/sns/profile/IProfileFacade$ProfileUpdateListener;)V

    .line 93
    return-void
.end method

.method public onFeedAdded(Lcom/lge/sns/feed/Feed;)V
    .registers 3
    .parameter "feed"

    .prologue
    .line 292
    new-instance v0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$7;

    invoke-direct {v0, p0, p1}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$7;-><init>(Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;Lcom/lge/sns/feed/Feed;)V

    invoke-virtual {p0, v0}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 301
    return-void
.end method

.method public onFeedRemoved(Lcom/lge/sns/feed/Feed;)V
    .registers 3
    .parameter "feed"

    .prologue
    .line 325
    new-instance v0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$9;

    invoke-direct {v0, p0, p1}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$9;-><init>(Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;Lcom/lge/sns/feed/Feed;)V

    invoke-virtual {p0, v0}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 333
    return-void
.end method

.method public onFeedUpdateFail(Ljava/lang/String;Ljava/lang/String;Lcom/lge/sns/SnsException;)V
    .registers 6
    .parameter "SNS_ID"
    .parameter "userId"
    .parameter "e"

    .prologue
    .line 273
    instance-of v1, p3, Lcom/lge/sns/UnauthorizatedException;

    if-eqz v1, :cond_1d

    .line 274
    new-instance v1, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$5;

    invoke-direct {v1, p0}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$5;-><init>(Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;)V

    invoke-virtual {p0, v1}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 278
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.sns.account.intent.action.VIEW_CREDENTIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 279
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "sns_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;->startActivityForResult(Landroid/content/Intent;I)V

    .line 289
    .end local v0           #intent:Landroid/content/Intent;
    :goto_1c
    return-void

    .line 282
    :cond_1d
    new-instance v1, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$6;

    invoke-direct {v1, p0}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$6;-><init>(Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;)V

    invoke-virtual {p0, v1}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1c
.end method

.method public onFeedUpdateFinished(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .parameter "SNS_ID"
    .parameter "userId"
    .parameter "feedCount"

    .prologue
    .line 263
    new-instance v0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$4;

    invoke-direct {v0, p0, p3}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$4;-><init>(Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;I)V

    invoke-virtual {p0, v0}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 270
    return-void
.end method

.method public onFeedUpdateStarted(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "SNS_ID"
    .parameter "userId"

    .prologue
    .line 255
    new-instance v0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$3;

    invoke-direct {v0, p0}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$3;-><init>(Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;)V

    invoke-virtual {p0, v0}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 260
    return-void
.end method

.method public onFeedUpdated(Lcom/lge/sns/feed/Feed;)V
    .registers 3
    .parameter "feed"

    .prologue
    .line 315
    new-instance v0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$8;

    invoke-direct {v0, p0, p1}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$8;-><init>(Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;Lcom/lge/sns/feed/Feed;)V

    invoke-virtual {p0, v0}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 322
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 10
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 113
    iget-object v2, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;->mAdapter:Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$FeedListAdapter;

    invoke-virtual {v2, p3}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$FeedListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/sns/feed/Feed;

    .line 115
    .local v0, currentFeed:Lcom/lge/sns/feed/Feed;
    if-eqz v0, :cond_26

    .line 116
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.lge.sns.profile.intent.action.VIEW_TWITTER_PROFILE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "sns_id"

    invoke-virtual {v0}, Lcom/lge/sns/feed/Feed;->getSnsId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    const-string v2, "user_id"

    invoke-virtual {v0}, Lcom/lge/sns/feed/Feed;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    invoke-virtual {p0, v1}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;->startActivity(Landroid/content/Intent;)V

    .line 121
    .end local v1           #intent:Landroid/content/Intent;
    :cond_26
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 7
    .parameter "item"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 133
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_28

    move v0, v3

    .line 145
    :goto_a
    return v0

    .line 135
    :pswitch_b
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;->feedFacade:Lcom/lge/sns/feed/IFeedFacade;

    const-string v1, "TW"

    iget-object v2, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;->userId:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p0}, Lcom/lge/sns/feed/IFeedFacade;->refreshFeedListAsync(Ljava/lang/String;Ljava/lang/String;Lcom/lge/sns/feed/IFeedFacade$FeedUpdateCallback;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 136
    const v0, 0x7f05002a

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_21
    move v0, v4

    .line 138
    goto :goto_a

    .line 141
    :pswitch_23
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;->newTweet()V

    move v0, v4

    .line 142
    goto :goto_a

    .line 133
    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_b
        :pswitch_23
    .end packed-switch
.end method

.method public onProfileAdded(Lcom/lge/sns/profile/Profile;)V
    .registers 2
    .parameter "profile"

    .prologue
    .line 348
    return-void
.end method

.method public onProfileAvatarLoaded(Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 5
    .parameter "snsId"
    .parameter "userId"
    .parameter "avatar"

    .prologue
    .line 351
    new-instance v0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$10;

    invoke-direct {v0, p0}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$10;-><init>(Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;)V

    invoke-virtual {p0, v0}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 356
    return-void
.end method

.method public onProfileRemoved(Lcom/lge/sns/profile/Profile;)V
    .registers 2
    .parameter "profile"

    .prologue
    .line 361
    return-void
.end method

.method public onProfileUpdated(Lcom/lge/sns/profile/Profile;)V
    .registers 2
    .parameter "profile"

    .prologue
    .line 366
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 96
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 97
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;->mAdapter:Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$FeedListAdapter;

    if-eqz v0, :cond_c

    .line 98
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList;->mAdapter:Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$FeedListAdapter;

    invoke-virtual {v0}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetAtList$FeedListAdapter;->notifyDataSetChanged()V

    .line 100
    :cond_c
    return-void
.end method
