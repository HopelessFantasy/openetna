.class public Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;
.super Landroid/app/ListActivity;
.source "TwitterTweetList.java"

# interfaces
.implements Lcom/lge/sns/feed/IFeedFacade$FeedUpdateCallback;
.implements Lcom/lge/sns/feed/IFeedFacade$FeedUpdateListener;
.implements Lcom/lge/sns/profile/IProfileFacade$ProfileUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/sns/profile/ui/twitter/TwitterTweetList$FeedListAdapter;
    }
.end annotation


# static fields
.field private static final CONTEXT_MENU_ID_DELETE:I = 0x2

.field private static final CONTEXT_MENU_ID_REPLY:I = 0x0

.field private static final CONTEXT_MENU_ID_SAVE_TO_CONTACT:I = 0x1

.field private static final DIALOG_REFRESH:I = 0x3e8

.field private static final OPTION_MENU_ID_NEW_TWEET:I = 0x1

.field private static final OPTION_MENU_ID_NEW_TWEET_AT:I = 0x2

.field private static final OPTION_MENU_ID_REFRESH:I = 0x0

.field private static final PREFIX_TWEET_AT:Ljava/lang/String; = "@"

.field private static final RC_FRIENDS_LIST:I = 0x2

.field private static final RC_SIGNIN:I = 0x1

.field private static final SNS_ID:Ljava/lang/String; = "TW"

.field private static final TAG:Ljava/lang/String; = "TwitterTweetList"

.field private static snsManager:Lcom/lge/sns/SnsManager;


# instance fields
.field private accountFacade:Lcom/lge/sns/account/IAccountFacade;

.field count:I

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

.field private loadingMessage:Ljava/lang/String;

.field private mAdapter:Lcom/lge/sns/profile/ui/twitter/TwitterTweetList$FeedListAdapter;

.field notified:Z

.field notifyJob:Ljava/lang/Runnable;

.field private profileFacade:Lcom/lge/sns/profile/IProfileFacade;

.field private refreshDialog:Landroid/app/ProgressDialog;

.field private userId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 66
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v0

    sput-object v0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->snsManager:Lcom/lge/sns/SnsManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 69
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "PS"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->feedTypeList:[Ljava/lang/String;

    .line 71
    sget-object v0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->snsManager:Lcom/lge/sns/SnsManager;

    invoke-virtual {v0, p0}, Lcom/lge/sns/SnsManager;->getFeeds(Landroid/content/Context;)Lcom/lge/sns/feed/IFeedFacade;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->feedFacade:Lcom/lge/sns/feed/IFeedFacade;

    .line 72
    sget-object v0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->snsManager:Lcom/lge/sns/SnsManager;

    invoke-virtual {v0, p0}, Lcom/lge/sns/SnsManager;->getAccount(Landroid/content/Context;)Lcom/lge/sns/account/IAccountFacade;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->accountFacade:Lcom/lge/sns/account/IAccountFacade;

    .line 73
    sget-object v0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->snsManager:Lcom/lge/sns/SnsManager;

    invoke-virtual {v0, p0}, Lcom/lge/sns/SnsManager;->getProfile(Landroid/content/Context;)Lcom/lge/sns/profile/IProfileFacade;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->profileFacade:Lcom/lge/sns/profile/IProfileFacade;

    .line 396
    iput v2, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->count:I

    .line 397
    iput-boolean v3, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->notified:Z

    .line 398
    new-instance v0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList$7;

    invoke-direct {v0, p0}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList$7;-><init>(Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;)V

    iput-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->notifyJob:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->newTweet()V

    return-void
.end method

.method static synthetic access$100()Lcom/lge/sns/SnsManager;
    .registers 1

    .prologue
    .line 45
    sget-object v0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->snsManager:Lcom/lge/sns/SnsManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;)Lcom/lge/sns/profile/ui/twitter/TwitterTweetList$FeedListAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->mAdapter:Lcom/lge/sns/profile/ui/twitter/TwitterTweetList$FeedListAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->refreshDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->loadingMessage:Ljava/lang/String;

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
    .line 456
    .local p1, fl:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/feed/Feed;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 457
    .local v2, l:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    if-ge v1, v2, :cond_20

    .line 458
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/sns/feed/Feed;

    .line 459
    .local v0, currentFeed:Lcom/lge/sns/feed/Feed;
    invoke-virtual {v0}, Lcom/lge/sns/feed/Feed;->getPublished()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {p2}, Lcom/lge/sns/feed/Feed;->getPublished()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v3

    if-gtz v3, :cond_1d

    move v3, v1

    .line 463
    .end local v0           #currentFeed:Lcom/lge/sns/feed/Feed;
    :goto_1c
    return v3

    .line 457
    .restart local v0       #currentFeed:Lcom/lge/sns/feed/Feed;
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .end local v0           #currentFeed:Lcom/lge/sns/feed/Feed;
    :cond_20
    move v3, v2

    .line 463
    goto :goto_1c
.end method

.method private isValidFeedType(Ljava/lang/String;)Z
    .registers 8
    .parameter "currentFeedType"

    .prologue
    const/4 v5, 0x1

    .line 467
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->feedTypeList:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_5
    if-ge v2, v3, :cond_14

    aget-object v1, v0, v2

    .line 468
    .local v1, feedType:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v5, :cond_11

    move v4, v5

    .line 473
    .end local v1           #feedType:Ljava/lang/String;
    :goto_10
    return v4

    .line 467
    .restart local v1       #feedType:Ljava/lang/String;
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 473
    .end local v1           #feedType:Ljava/lang/String;
    :cond_14
    const/4 v4, 0x0

    goto :goto_10
.end method

.method private newTweet()V
    .registers 4

    .prologue
    .line 242
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.sns.profile.intent.action.EDIT_TWEET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 243
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "sns_id"

    const-string v2, "TW"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    const-string v1, "user_id"

    iget-object v2, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    invoke-virtual {p0, v0}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->startActivity(Landroid/content/Intent;)V

    .line 246
    return-void
.end method

.method private newTweetAt(Ljava/lang/String;)V
    .registers 5
    .parameter "userName"

    .prologue
    .line 249
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.sns.profile.intent.action.EDIT_TWEET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 250
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "sns_id"

    const-string v2, "TW"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    const-string v1, "user_id"

    iget-object v2, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    if-eqz p1, :cond_2f

    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 254
    const-string v1, "tweet_at"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    :cond_2f
    invoke-virtual {p0, v0}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->startActivity(Landroid/content/Intent;)V

    .line 257
    return-void
.end method

.method private setNewTweetButton()V
    .registers 3

    .prologue
    .line 94
    const v1, 0x7f0800ca

    invoke-virtual {p0, v1}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 95
    .local v0, newTweetButton:Landroid/widget/Button;
    new-instance v1, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList$1;

    invoke-direct {v1, p0}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList$1;-><init>(Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 10
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v4, -0x1

    const-string v5, "TW"

    .line 116
    const/4 v3, 0x1

    if-ne p1, v3, :cond_1c

    .line 117
    if-ne p2, v4, :cond_1b

    .line 118
    sget-object v3, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->snsManager:Lcom/lge/sns/SnsManager;

    invoke-virtual {v3, p0}, Lcom/lge/sns/SnsManager;->getAccount(Landroid/content/Context;)Lcom/lge/sns/account/IAccountFacade;

    move-result-object v0

    .line 119
    .local v0, accountFacade:Lcom/lge/sns/account/IAccountFacade;
    const-string v3, "TW"

    invoke-interface {v0, v5}, Lcom/lge/sns/account/IAccountFacade;->getUid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, userId:Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->feedFacade:Lcom/lge/sns/feed/IFeedFacade;

    const-string v4, "TW"

    invoke-interface {v3, v5, v1, p0}, Lcom/lge/sns/feed/IFeedFacade;->refreshFeedListAsync(Ljava/lang/String;Ljava/lang/String;Lcom/lge/sns/feed/IFeedFacade$FeedUpdateCallback;)Z

    .line 128
    .end local v0           #accountFacade:Lcom/lge/sns/account/IAccountFacade;
    .end local v1           #userId:Ljava/lang/String;
    :cond_1b
    :goto_1b
    return-void

    .line 122
    :cond_1c
    const/4 v3, 0x2

    if-ne p1, v3, :cond_1b

    .line 123
    if-ne p2, v4, :cond_1b

    .line 124
    const-string v3, "user_name"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 125
    .local v2, userName:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->newTweetAt(Ljava/lang/String;)V

    goto :goto_1b
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 12
    .parameter "item"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 206
    :try_start_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_8} :catch_e

    .line 212
    .local v1, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget v5, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    if-gez v5, :cond_19

    move v5, v8

    .line 238
    .end local v1           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :goto_d
    return v5

    .line 207
    :catch_e
    move-exception v5

    move-object v0, v5

    .line 208
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v5, "TwitterTweetList"

    const-string v6, "bad menuInfo"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v5, v8

    .line 209
    goto :goto_d

    .line 215
    .end local v0           #e:Ljava/lang/ClassCastException;
    .restart local v1       #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :cond_19
    iget-object v5, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->mAdapter:Lcom/lge/sns/profile/ui/twitter/TwitterTweetList$FeedListAdapter;

    iget v6, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v5, v6}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList$FeedListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/sns/feed/Feed;

    .line 216
    .local v4, selectedFeed:Lcom/lge/sns/feed/Feed;
    iget-object v5, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->profileFacade:Lcom/lge/sns/profile/IProfileFacade;

    invoke-virtual {v4}, Lcom/lge/sns/feed/Feed;->getSnsId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/lge/sns/feed/Feed;->getUserId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/lge/sns/profile/IProfileFacade;->getProfileFromDB(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/sns/profile/Profile;

    move-result-object v3

    .line 217
    .local v3, profile:Lcom/lge/sns/profile/Profile;
    if-nez v3, :cond_35

    move v5, v8

    .line 218
    goto :goto_d

    .line 221
    :cond_35
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    packed-switch v5, :pswitch_data_60

    move v5, v8

    .line 238
    goto :goto_d

    .line 223
    :pswitch_3e
    invoke-virtual {v3}, Lcom/lge/sns/profile/Profile;->getUserName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->newTweetAt(Ljava/lang/String;)V

    move v5, v9

    .line 224
    goto :goto_d

    .line 227
    :pswitch_47
    iget-object v5, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->accountFacade:Lcom/lge/sns/account/IAccountFacade;

    invoke-static {p0, v3, v5}, Lcom/lge/sns/profile/ui/FriendsList;->getSaveProfileToContactIntent(Landroid/content/Context;Lcom/lge/sns/profile/Profile;Lcom/lge/sns/account/IAccountFacade;)Landroid/content/Intent;

    move-result-object v2

    .line 228
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->startActivity(Landroid/content/Intent;)V

    move v5, v9

    .line 229
    goto :goto_d

    .line 232
    .end local v2           #intent:Landroid/content/Intent;
    :pswitch_52
    if-eqz v4, :cond_5d

    .line 233
    iget-object v5, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->feedFacade:Lcom/lge/sns/feed/IFeedFacade;

    invoke-virtual {v4}, Lcom/lge/sns/feed/Feed;->getId()J

    move-result-wide v6

    invoke-interface {v5, v6, v7}, Lcom/lge/sns/feed/IFeedFacade;->removeFeed(J)Lcom/lge/sns/feed/Feed;

    :cond_5d
    move v5, v9

    .line 235
    goto :goto_d

    .line 221
    nop

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_3e
        :pswitch_47
        :pswitch_52
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    const-string v2, "TW"

    .line 80
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    const v0, 0x7f030046

    invoke-virtual {p0, v0}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->setContentView(I)V

    .line 82
    invoke-virtual {p0}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    invoke-virtual {p0}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 85
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->accountFacade:Lcom/lge/sns/account/IAccountFacade;

    const-string v1, "TW"

    invoke-interface {v0, v2}, Lcom/lge/sns/account/IAccountFacade;->getUid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->userId:Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->feedFacade:Lcom/lge/sns/feed/IFeedFacade;

    const-string v1, "TW"

    iget-object v1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->feedTypeList:[Ljava/lang/String;

    invoke-interface {v0, v2, v1, p0}, Lcom/lge/sns/feed/IFeedFacade;->getFeedList(Ljava/lang/String;[Ljava/lang/String;Lcom/lge/sns/feed/IFeedFacade$FeedUpdateListener;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->feedList:Ljava/util/List;

    .line 87
    new-instance v0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList$FeedListAdapter;

    const v1, 0x7f03000b

    iget-object v2, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->feedList:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList$FeedListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->mAdapter:Lcom/lge/sns/profile/ui/twitter/TwitterTweetList$FeedListAdapter;

    .line 88
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->mAdapter:Lcom/lge/sns/profile/ui/twitter/TwitterTweetList$FeedListAdapter;

    invoke-virtual {p0, v0}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 89
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->setNewTweetButton()V

    .line 90
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->profileFacade:Lcom/lge/sns/profile/IProfileFacade;

    invoke-interface {v0, p0}, Lcom/lge/sns/profile/IProfileFacade;->registerProfileUpdateListener(Lcom/lge/sns/profile/IProfileFacade$ProfileUpdateListener;)V

    .line 91
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 14
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v9, 0x0

    .line 178
    :try_start_1
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v3, v0
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_5} :catch_a

    .line 184
    .local v3, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget v6, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    if-gez v6, :cond_13

    .line 201
    .end local v3           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :goto_9
    return-void

    .line 179
    :catch_a
    move-exception v1

    .line 180
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v6, "TwitterTweetList"

    const-string v7, "bad menuInfo"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 187
    .end local v1           #e:Ljava/lang/ClassCastException;
    .restart local v3       #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :cond_13
    iget-object v6, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->mAdapter:Lcom/lge/sns/profile/ui/twitter/TwitterTweetList$FeedListAdapter;

    iget v7, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v6, v7}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList$FeedListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lge/sns/feed/Feed;

    .line 189
    .local v5, selectedFeed:Lcom/lge/sns/feed/Feed;
    invoke-virtual {v5}, Lcom/lge/sns/feed/Feed;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 190
    const v6, 0x7f05006d

    invoke-virtual {p0, v6}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v9, v9, v9, v6}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 192
    iget-object v6, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->profileFacade:Lcom/lge/sns/profile/IProfileFacade;

    invoke-virtual {v5}, Lcom/lge/sns/feed/Feed;->getSnsId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/lge/sns/feed/Feed;->getUserId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/lge/sns/profile/IProfileFacade;->getProfileFromDB(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/sns/profile/Profile;

    move-result-object v4

    .line 193
    .local v4, profile:Lcom/lge/sns/profile/Profile;
    iget-object v6, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->accountFacade:Lcom/lge/sns/account/IAccountFacade;

    invoke-virtual {v5}, Lcom/lge/sns/feed/Feed;->getSnsId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/lge/sns/account/IAccountFacade;->getCredential(Ljava/lang/String;)Lcom/lge/sns/account/Credential;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/sns/account/Credential;->getUserId()Ljava/lang/String;

    move-result-object v2

    .line 195
    .local v2, email:Ljava/lang/String;
    if-eqz v4, :cond_61

    if-eqz v2, :cond_61

    iget-object v6, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->profileFacade:Lcom/lge/sns/profile/IProfileFacade;

    invoke-interface {v6, v4, v2}, Lcom/lge/sns/profile/IProfileFacade;->isExistInContacts(Lcom/lge/sns/profile/ProfileListItem;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_61

    .line 196
    const/4 v6, 0x1

    const v7, 0x7f050015

    invoke-virtual {p0, v7}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v9, v6, v9, v7}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 199
    :cond_61
    const/4 v6, 0x2

    const v7, 0x7f050016

    invoke-virtual {p0, v7}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v9, v6, v9, v7}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_9
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 6
    .parameter "id"

    .prologue
    .line 260
    packed-switch p1, :pswitch_data_38

    .line 276
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 262
    :pswitch_5
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->refreshDialog:Landroid/app/ProgressDialog;

    .line 263
    const v0, 0x7f050009

    invoke-virtual {p0, v0}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->loadingMessage:Ljava/lang/String;

    .line 264
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->refreshDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 265
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->refreshDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->loadingMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->refreshDialog:Landroid/app/ProgressDialog;

    const/4 v1, -0x1

    const v2, 0x7f05000a

    invoke-virtual {p0, v2}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList$2;

    invoke-direct {v3, p0}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList$2;-><init>(Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 272
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->refreshDialog:Landroid/app/ProgressDialog;

    goto :goto_4

    .line 260
    nop

    :pswitch_data_38
    .packed-switch 0x3e8
        :pswitch_5
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 7
    .parameter "menu"

    .prologue
    const v4, 0x108003e

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 142
    const v0, 0x7f05000e

    invoke-virtual {p0, v0}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 144
    const v0, 0x7f0500b5

    invoke-virtual {p0, v0}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 146
    const/4 v0, 0x2

    const v1, 0x7f0500b6

    invoke-virtual {p0, v1}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 149
    return v3
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 103
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 104
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->feedFacade:Lcom/lge/sns/feed/IFeedFacade;

    invoke-interface {v0, p0}, Lcom/lge/sns/feed/IFeedFacade;->removeFeedUpdateListener(Lcom/lge/sns/feed/IFeedFacade$FeedUpdateListener;)V

    .line 105
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->profileFacade:Lcom/lge/sns/profile/IProfileFacade;

    invoke-interface {v0, p0}, Lcom/lge/sns/profile/IProfileFacade;->removeProfileUpdateListener(Lcom/lge/sns/profile/IProfileFacade$ProfileUpdateListener;)V

    .line 106
    return-void
.end method

.method public onFeedAdded(Lcom/lge/sns/feed/Feed;)V
    .registers 5
    .parameter "feed"

    .prologue
    .line 412
    invoke-virtual {p1}, Lcom/lge/sns/feed/Feed;->getFeedType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->isValidFeedType(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2c

    .line 413
    iget-object v1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->mAdapter:Lcom/lge/sns/profile/ui/twitter/TwitterTweetList$FeedListAdapter;

    monitor-enter v1

    .line 414
    :try_start_e
    iget-object v2, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->feedList:Ljava/util/List;

    invoke-direct {p0, v2, p1}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->findLocation(Ljava/util/List;Lcom/lge/sns/feed/Feed;)I

    move-result v0

    .line 415
    .local v0, location:I
    iget-object v2, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->feedList:Ljava/util/List;

    invoke-interface {v2, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 416
    iget v2, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->count:I

    .line 417
    iget-boolean v2, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->notified:Z

    if-eqz v2, :cond_2b

    .line 418
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->notified:Z

    .line 419
    iget-object v2, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->notifyJob:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 421
    :cond_2b
    monitor-exit v1

    .line 423
    .end local v0           #location:I
    :cond_2c
    return-void

    .line 421
    :catchall_2d
    move-exception v2

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_e .. :try_end_2f} :catchall_2d

    throw v2
.end method

.method public onFeedRemoved(Lcom/lge/sns/feed/Feed;)V
    .registers 5
    .parameter "feed"

    .prologue
    .line 441
    invoke-virtual {p1}, Lcom/lge/sns/feed/Feed;->getFeedType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->isValidFeedType(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_29

    .line 442
    iget-object v1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->mAdapter:Lcom/lge/sns/profile/ui/twitter/TwitterTweetList$FeedListAdapter;

    monitor-enter v1

    .line 443
    :try_start_e
    iget-object v2, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->feedList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 444
    .local v0, index:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_28

    .line 445
    iget-object v2, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->feedList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 446
    iget-boolean v2, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->notified:Z

    if-eqz v2, :cond_28

    .line 447
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->notified:Z

    .line 448
    iget-object v2, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->notifyJob:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 451
    :cond_28
    monitor-exit v1

    .line 453
    .end local v0           #index:I
    :cond_29
    return-void

    .line 451
    :catchall_2a
    move-exception v2

    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_e .. :try_end_2c} :catchall_2a

    throw v2
.end method

.method public onFeedUpdateFail(Ljava/lang/String;Ljava/lang/String;Lcom/lge/sns/SnsException;)V
    .registers 6
    .parameter "SNS_ID"
    .parameter "userId"
    .parameter "e"

    .prologue
    .line 378
    instance-of v1, p3, Lcom/lge/sns/UnauthorizatedException;

    if-eqz v1, :cond_1d

    .line 379
    new-instance v1, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList$5;

    invoke-direct {v1, p0}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList$5;-><init>(Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;)V

    invoke-virtual {p0, v1}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 383
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.sns.account.intent.action.VIEW_CREDENTIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 384
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "sns_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 385
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->startActivityForResult(Landroid/content/Intent;I)V

    .line 394
    .end local v0           #intent:Landroid/content/Intent;
    :goto_1c
    return-void

    .line 387
    :cond_1d
    new-instance v1, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList$6;

    invoke-direct {v1, p0}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList$6;-><init>(Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;)V

    invoke-virtual {p0, v1}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1c
.end method

.method public onFeedUpdateFinished(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .parameter "SNS_ID"
    .parameter "userId"
    .parameter "feedCount"

    .prologue
    .line 368
    new-instance v0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList$4;

    invoke-direct {v0, p0, p3}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList$4;-><init>(Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;I)V

    invoke-virtual {p0, v0}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 375
    return-void
.end method

.method public onFeedUpdateStarted(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "SNS_ID"
    .parameter "userId"

    .prologue
    .line 360
    new-instance v0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList$3;

    invoke-direct {v0, p0}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList$3;-><init>(Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;)V

    invoke-virtual {p0, v0}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 365
    return-void
.end method

.method public onFeedUpdated(Lcom/lge/sns/feed/Feed;)V
    .registers 5
    .parameter "feed"

    .prologue
    .line 426
    invoke-virtual {p1}, Lcom/lge/sns/feed/Feed;->getFeedType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->isValidFeedType(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_29

    .line 427
    iget-object v1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->mAdapter:Lcom/lge/sns/profile/ui/twitter/TwitterTweetList$FeedListAdapter;

    monitor-enter v1

    .line 428
    :try_start_e
    iget-object v2, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->feedList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 429
    .local v0, index:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_28

    .line 430
    iget-object v2, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->feedList:Ljava/util/List;

    invoke-interface {v2, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 431
    iget-boolean v2, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->notified:Z

    if-eqz v2, :cond_28

    .line 432
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->notified:Z

    .line 433
    iget-object v2, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->notifyJob:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 436
    :cond_28
    monitor-exit v1

    .line 438
    .end local v0           #index:I
    :cond_29
    return-void

    .line 436
    :catchall_2a
    move-exception v2

    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_e .. :try_end_2c} :catchall_2a

    throw v2
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 10
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 131
    iget-object v2, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->mAdapter:Lcom/lge/sns/profile/ui/twitter/TwitterTweetList$FeedListAdapter;

    invoke-virtual {v2, p3}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList$FeedListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/sns/feed/Feed;

    .line 133
    .local v0, currentFeed:Lcom/lge/sns/feed/Feed;
    if-eqz v0, :cond_26

    .line 134
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.lge.sns.profile.intent.action.VIEW_TWITTER_PROFILE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 135
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "sns_id"

    invoke-virtual {v0}, Lcom/lge/sns/feed/Feed;->getSnsId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    const-string v2, "user_id"

    invoke-virtual {v0}, Lcom/lge/sns/feed/Feed;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    invoke-virtual {p0, v1}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->startActivity(Landroid/content/Intent;)V

    .line 139
    .end local v1           #intent:Landroid/content/Intent;
    :cond_26
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 8
    .parameter "item"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v5, "TW"

    .line 153
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_46

    move v1, v4

    .line 172
    :goto_c
    return v1

    .line 155
    :pswitch_d
    iget-object v1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->feedFacade:Lcom/lge/sns/feed/IFeedFacade;

    const-string v2, "TW"

    iget-object v2, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->userId:Ljava/lang/String;

    invoke-interface {v1, v5, v2, p0}, Lcom/lge/sns/feed/IFeedFacade;->refreshFeedListAsync(Ljava/lang/String;Ljava/lang/String;Lcom/lge/sns/feed/IFeedFacade$FeedUpdateCallback;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 156
    const v1, 0x7f05002a

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_23
    move v1, v3

    .line 158
    goto :goto_c

    .line 161
    :pswitch_25
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->newTweet()V

    move v1, v3

    .line 162
    goto :goto_c

    .line 165
    :pswitch_2a
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.sns.profile.intent.action.PICK_TWITTER_FOLLOWING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 166
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "sns_id"

    const-string v2, "TW"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    const-string v1, "user_id"

    iget-object v2, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->startActivityForResult(Landroid/content/Intent;I)V

    move v1, v3

    .line 169
    goto :goto_c

    .line 153
    nop

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_d
        :pswitch_25
        :pswitch_2a
    .end packed-switch
.end method

.method public onProfileAdded(Lcom/lge/sns/profile/Profile;)V
    .registers 2
    .parameter "profile"

    .prologue
    .line 479
    return-void
.end method

.method public onProfileAvatarLoaded(Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 5
    .parameter "snsId"
    .parameter "userId"
    .parameter "avatar"

    .prologue
    .line 482
    new-instance v0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList$8;

    invoke-direct {v0, p0}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList$8;-><init>(Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;)V

    invoke-virtual {p0, v0}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 487
    return-void
.end method

.method public onProfileRemoved(Lcom/lge/sns/profile/Profile;)V
    .registers 2
    .parameter "profile"

    .prologue
    .line 492
    return-void
.end method

.method public onProfileUpdated(Lcom/lge/sns/profile/Profile;)V
    .registers 2
    .parameter "profile"

    .prologue
    .line 497
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 109
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 110
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->mAdapter:Lcom/lge/sns/profile/ui/twitter/TwitterTweetList$FeedListAdapter;

    if-eqz v0, :cond_c

    .line 111
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->mAdapter:Lcom/lge/sns/profile/ui/twitter/TwitterTweetList$FeedListAdapter;

    invoke-virtual {v0}, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList$FeedListAdapter;->notifyDataSetChanged()V

    .line 113
    :cond_c
    return-void
.end method
