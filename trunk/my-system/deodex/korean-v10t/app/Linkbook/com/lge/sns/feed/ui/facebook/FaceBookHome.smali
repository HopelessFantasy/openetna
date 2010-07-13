.class public Lcom/lge/sns/feed/ui/facebook/FaceBookHome;
.super Landroid/app/Activity;
.source "FaceBookHome.java"

# interfaces
.implements Lcom/lge/sns/feed/IFeedFacade$FeedUpdateCallback;
.implements Lcom/lge/sns/feed/IFeedFacade$FeedDataUpdateCallback;
.implements Lcom/lge/sns/feed/IFeedFacade$FeedUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/sns/feed/ui/facebook/FaceBookHome$CustomExpandableListAdapter;
    }
.end annotation


# static fields
.field private static final CONTEXT_MENU_ID_DELETE:I = 0x0

.field private static final DIALOG_REFRESH:I = 0x3e8

.field public static final FACEBOOK_FRIEND_REQUEST_COUNT:Ljava/lang/Integer; = null

.field private static final MENU_ID_NEW_SN_MESSAGE:I = 0x1

.field private static final MENU_ID_REFRESH:I = 0x0

.field private static final REQUEST_FRIENDS_LIST:I = 0x4

.field private static final REQUEST_FRIEND_REQUEST:I = 0x3

.field private static final REQUEST_SIGNIN_FOR_GET_FEED_DATA:I = 0x2

.field private static final REQUEST_SIGNIN_FOR_REFRESH_FEED_LIST:I = 0x1

.field private static final TAG:Ljava/lang/String; = "FaceBookHome"

.field private static final feedTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final groupNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final groupPositionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static snsManager:Lcom/lge/sns/SnsManager;


# instance fields
.field public ChildClickListener:Landroid/widget/ExpandableListView$OnChildClickListener;

.field count:I

.field private feedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/feed/Feed;",
            ">;>;"
        }
    .end annotation
.end field

.field private isRetryForGetFeedData:Z

.field private isRetryForRefreshFeedList:Z

.field loadingMessage:Ljava/lang/String;

.field private mAdapter:Lcom/lge/sns/feed/ui/facebook/FaceBookHome$CustomExpandableListAdapter;

.field private mExpandableListView:Landroid/widget/ExpandableListView;

.field private mFeedFacade:Lcom/lge/sns/feed/IFeedFacade;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field notified:Z

.field notifyJob:Ljava/lang/Runnable;

.field private progress:Landroid/widget/ProgressBar;

.field refreshDialog:Landroid/app/ProgressDialog;

.field private selectedFeed:Lcom/lge/sns/feed/Feed;

.field private snsId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v9, "PP"

    const-string v8, "PC"

    const-string v7, "FR"

    .line 53
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->FACEBOOK_FRIEND_REQUEST_COUNT:Ljava/lang/Integer;

    .line 70
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v0

    sput-object v0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->snsManager:Lcom/lge/sns/SnsManager;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->feedTypeMap:Ljava/util/Map;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->groupNameMap:Ljava/util/Map;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->groupPositionMap:Ljava/util/Map;

    .line 77
    sget-object v0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->feedTypeMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "FR"

    aput-object v7, v2, v6

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->feedTypeMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "PS"

    aput-object v3, v2, v6

    const-string v3, "PC"

    aput-object v8, v2, v5

    const/4 v3, 0x2

    const-string v4, "PP"

    aput-object v9, v2, v3

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->groupNameMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f05001b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->groupNameMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f05002f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->groupPositionMap:Ljava/util/Map;

    const-string v1, "FR"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->groupPositionMap:Ljava/util/Map;

    const-string v1, "PS"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->groupPositionMap:Ljava/util/Map;

    const-string v1, "PC"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->groupPositionMap:Ljava/util/Map;

    const-string v1, "PP"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->progress:Landroid/widget/ProgressBar;

    .line 98
    sget-object v0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->snsManager:Lcom/lge/sns/SnsManager;

    invoke-virtual {v0, p0}, Lcom/lge/sns/SnsManager;->getFeeds(Landroid/content/Context;)Lcom/lge/sns/feed/IFeedFacade;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->mFeedFacade:Lcom/lge/sns/feed/IFeedFacade;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->feedList:Ljava/util/List;

    .line 102
    iput-boolean v1, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->isRetryForRefreshFeedList:Z

    .line 103
    iput-boolean v1, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->isRetryForGetFeedData:Z

    .line 190
    new-instance v0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$1;

    invoke-direct {v0, p0}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$1;-><init>(Lcom/lge/sns/feed/ui/facebook/FaceBookHome;)V

    iput-object v0, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->ChildClickListener:Landroid/widget/ExpandableListView$OnChildClickListener;

    .line 622
    iput v1, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->count:I

    .line 623
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->notified:Z

    .line 624
    new-instance v0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$14;

    invoke-direct {v0, p0}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$14;-><init>(Lcom/lge/sns/feed/ui/facebook/FaceBookHome;)V

    iput-object v0, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->notifyJob:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000()Ljava/util/Map;
    .registers 1

    .prologue
    .line 50
    sget-object v0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->groupPositionMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/sns/feed/ui/facebook/FaceBookHome;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->snsId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lge/sns/feed/ui/facebook/FaceBookHome;)Landroid/widget/ExpandableListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->mExpandableListView:Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/lge/sns/feed/ui/facebook/FaceBookHome;)Landroid/widget/ProgressBar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->progress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/Map;
    .registers 1

    .prologue
    .line 50
    sget-object v0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->feedTypeMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lge/sns/feed/ui/facebook/FaceBookHome;)Lcom/lge/sns/feed/IFeedFacade;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->mFeedFacade:Lcom/lge/sns/feed/IFeedFacade;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/sns/feed/ui/facebook/FaceBookHome;)Lcom/lge/sns/feed/Feed;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->selectedFeed:Lcom/lge/sns/feed/Feed;

    return-object v0
.end method

.method static synthetic access$402(Lcom/lge/sns/feed/ui/facebook/FaceBookHome;Lcom/lge/sns/feed/Feed;)Lcom/lge/sns/feed/Feed;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->selectedFeed:Lcom/lge/sns/feed/Feed;

    return-object p1
.end method

.method static synthetic access$500(Lcom/lge/sns/feed/ui/facebook/FaceBookHome;)Lcom/lge/sns/feed/ui/facebook/FaceBookHome$CustomExpandableListAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->mAdapter:Lcom/lge/sns/feed/ui/facebook/FaceBookHome$CustomExpandableListAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lge/sns/feed/ui/facebook/FaceBookHome;JLjava/lang/String;Landroid/net/Uri;)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->runFeedViewer(JLjava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$700(Lcom/lge/sns/feed/ui/facebook/FaceBookHome;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->feedList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lge/sns/feed/ui/facebook/FaceBookHome;)Landroid/view/LayoutInflater;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$900()Ljava/util/Map;
    .registers 1

    .prologue
    .line 50
    sget-object v0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->groupNameMap:Ljava/util/Map;

    return-object v0
.end method

.method private runFeedViewer(JLjava/lang/String;Landroid/net/Uri;)V
    .registers 7
    .parameter "rowId"
    .parameter "feedType"
    .parameter "dataUri"

    .prologue
    .line 224
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 225
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 227
    const-string v1, "FR"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 228
    const-string v1, "feed_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 229
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->startActivityForResult(Landroid/content/Intent;I)V

    .line 233
    :goto_1b
    return-void

    .line 231
    :cond_1c
    invoke-virtual {p0, v0}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->startActivity(Landroid/content/Intent;)V

    goto :goto_1b
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 16
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const-wide/16 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, -0x1

    const-string v11, "sns_id"

    .line 156
    if-ne p1, v8, :cond_20

    .line 157
    if-ne p2, v7, :cond_1f

    .line 158
    iput-boolean v8, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->isRetryForRefreshFeedList:Z

    .line 159
    sget-object v6, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->snsManager:Lcom/lge/sns/SnsManager;

    invoke-virtual {v6, p0}, Lcom/lge/sns/SnsManager;->getAccount(Landroid/content/Context;)Lcom/lge/sns/account/IAccountFacade;

    move-result-object v0

    .line 160
    .local v0, accountFacade:Lcom/lge/sns/account/IAccountFacade;
    iget-object v6, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->snsId:Ljava/lang/String;

    invoke-interface {v0, v6}, Lcom/lge/sns/account/IAccountFacade;->getUid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 161
    .local v5, userId:Ljava/lang/String;
    iget-object v6, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->mFeedFacade:Lcom/lge/sns/feed/IFeedFacade;

    iget-object v7, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->snsId:Ljava/lang/String;

    invoke-interface {v6, v7, v5, p0}, Lcom/lge/sns/feed/IFeedFacade;->refreshFeedListAsync(Ljava/lang/String;Ljava/lang/String;Lcom/lge/sns/feed/IFeedFacade$FeedUpdateCallback;)Z

    .line 188
    .end local v0           #accountFacade:Lcom/lge/sns/account/IAccountFacade;
    .end local v5           #userId:Ljava/lang/String;
    :cond_1f
    :goto_1f
    return-void

    .line 163
    :cond_20
    const/4 v6, 0x2

    if-ne p1, v6, :cond_47

    .line 164
    iget-object v6, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->selectedFeed:Lcom/lge/sns/feed/Feed;

    if-eqz v6, :cond_1f

    iget-object v6, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->selectedFeed:Lcom/lge/sns/feed/Feed;

    invoke-virtual {v6}, Lcom/lge/sns/feed/Feed;->getDataUri()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1f

    .line 165
    iput-boolean v8, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->isRetryForGetFeedData:Z

    .line 166
    iget-object v6, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->mFeedFacade:Lcom/lge/sns/feed/IFeedFacade;

    iget-object v7, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->selectedFeed:Lcom/lge/sns/feed/Feed;

    invoke-interface {v6, v7, p0}, Lcom/lge/sns/feed/IFeedFacade;->getFeedDataAsync(Lcom/lge/sns/feed/Feed;Lcom/lge/sns/feed/IFeedFacade$FeedDataUpdateCallback;)Z

    move-result v6

    if-nez v6, :cond_1f

    .line 167
    const v6, 0x7f05002a

    const/4 v7, 0x0

    invoke-static {p0, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_1f

    .line 170
    :cond_47
    const/4 v6, 0x3

    if-ne p1, v6, :cond_5c

    .line 171
    if-ne p2, v7, :cond_1f

    .line 172
    const-string v6, "feed_id"

    invoke-virtual {p3, v6, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 173
    .local v1, feedId:J
    cmp-long v6, v1, v9

    if-lez v6, :cond_1f

    .line 174
    iget-object v6, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->mFeedFacade:Lcom/lge/sns/feed/IFeedFacade;

    invoke-interface {v6, v1, v2}, Lcom/lge/sns/feed/IFeedFacade;->removeFeed(J)Lcom/lge/sns/feed/Feed;

    goto :goto_1f

    .line 177
    .end local v1           #feedId:J
    :cond_5c
    const/4 v6, 0x4

    if-ne p1, v6, :cond_1f

    .line 178
    if-ne p2, v7, :cond_1f

    .line 179
    const-string v6, "sns_id"

    invoke-virtual {p3, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 180
    .local v4, snsId:Ljava/lang/String;
    const-string v6, "friend_userid"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 182
    .restart local v5       #userId:Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.lge.sns.message.intent.action.MESSAGE_SEND"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 183
    .local v3, intent:Landroid/content/Intent;
    const-string v6, "sns_id"

    invoke-virtual {v3, v11, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    const-string v6, "recipient_id"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    invoke-virtual {p0, v3}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->startActivity(Landroid/content/Intent;)V

    goto :goto_1f
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 11
    .parameter "item"

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 242
    :try_start_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v3

    check-cast v3, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_8} :catch_2a

    .line 248
    .local v3, info:Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;
    const/4 v4, 0x0

    .line 249
    .local v4, selectedFeed:Lcom/lge/sns/feed/Feed;
    iget-wide v5, v3, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v5, v6}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v2

    .line 250
    .local v2, groupPosition:I
    iget-wide v5, v3, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v5, v6}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v0

    .line 251
    .local v0, childPosition:I
    if-le v2, v7, :cond_21

    if-le v0, v7, :cond_21

    .line 252
    iget-object v5, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->mAdapter:Lcom/lge/sns/feed/ui/facebook/FaceBookHome$CustomExpandableListAdapter;

    invoke-virtual {v5, v2, v0}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$CustomExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #selectedFeed:Lcom/lge/sns/feed/Feed;
    check-cast v4, Lcom/lge/sns/feed/Feed;

    .line 255
    .restart local v4       #selectedFeed:Lcom/lge/sns/feed/Feed;
    :cond_21
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    packed-switch v5, :pswitch_data_42

    move v5, v8

    .line 263
    .end local v0           #childPosition:I
    .end local v2           #groupPosition:I
    .end local v3           #info:Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;
    .end local v4           #selectedFeed:Lcom/lge/sns/feed/Feed;
    :goto_29
    return v5

    .line 243
    :catch_2a
    move-exception v5

    move-object v1, v5

    .line 244
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v5, "FaceBookHome"

    const-string v6, "bad menuInfo"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v5, v8

    .line 245
    goto :goto_29

    .line 257
    .end local v1           #e:Ljava/lang/ClassCastException;
    .restart local v0       #childPosition:I
    .restart local v2       #groupPosition:I
    .restart local v3       #info:Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;
    .restart local v4       #selectedFeed:Lcom/lge/sns/feed/Feed;
    :pswitch_35
    if-eqz v4, :cond_40

    .line 258
    iget-object v5, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->mFeedFacade:Lcom/lge/sns/feed/IFeedFacade;

    invoke-virtual {v4}, Lcom/lge/sns/feed/Feed;->getId()J

    move-result-wide v6

    invoke-interface {v5, v6, v7}, Lcom/lge/sns/feed/IFeedFacade;->removeFeed(J)Lcom/lge/sns/feed/Feed;

    .line 260
    :cond_40
    const/4 v5, 0x1

    goto :goto_29

    .line 255
    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_35
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    .line 111
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 112
    const v2, 0x7f030019

    invoke-virtual {p0, v2}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->setContentView(I)V

    .line 113
    invoke-virtual {p0}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 115
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->mNotificationManager:Landroid/app/NotificationManager;

    .line 117
    invoke-virtual {p0}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->getParent()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_30

    .line 118
    invoke-virtual {p0}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->getParent()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f08000d

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->progress:Landroid/widget/ProgressBar;

    .line 121
    :cond_30
    invoke-virtual {p0}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 122
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "sns_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->snsId:Ljava/lang/String;

    .line 124
    new-instance v2, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$CustomExpandableListAdapter;

    invoke-direct {v2, p0, p0}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$CustomExpandableListAdapter;-><init>(Lcom/lge/sns/feed/ui/facebook/FaceBookHome;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->mAdapter:Lcom/lge/sns/feed/ui/facebook/FaceBookHome$CustomExpandableListAdapter;

    .line 127
    iget-object v3, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->feedList:Ljava/util/List;

    iget-object v4, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->mFeedFacade:Lcom/lge/sns/feed/IFeedFacade;

    iget-object v5, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->snsId:Ljava/lang/String;

    sget-object v2, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->feedTypeMap:Ljava/util/Map;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    sget-object v6, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->FACEBOOK_FRIEND_REQUEST_COUNT:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v4, v5, v2, v6, p0}, Lcom/lge/sns/feed/IFeedFacade;->getLatestFeedList(Ljava/lang/String;[Ljava/lang/String;ILcom/lge/sns/feed/IFeedFacade$FeedUpdateListener;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v3, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->feedList:Ljava/util/List;

    iget-object v4, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->mFeedFacade:Lcom/lge/sns/feed/IFeedFacade;

    iget-object v5, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->snsId:Ljava/lang/String;

    sget-object v2, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->feedTypeMap:Ljava/util/Map;

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-interface {v4, v5, v2}, Lcom/lge/sns/feed/IFeedFacade;->getFeedList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    const v2, 0x102000a

    invoke-virtual {p0, v2}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ExpandableListView;

    iput-object v2, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->mExpandableListView:Landroid/widget/ExpandableListView;

    .line 132
    iget-object v2, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->mExpandableListView:Landroid/widget/ExpandableListView;

    iget-object v3, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->mAdapter:Lcom/lge/sns/feed/ui/facebook/FaceBookHome$CustomExpandableListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 133
    iget-object v2, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->mExpandableListView:Landroid/widget/ExpandableListView;

    iget-object v3, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->ChildClickListener:Landroid/widget/ExpandableListView$OnChildClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 134
    iget-object v2, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->mExpandableListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, p0}, Landroid/widget/ExpandableListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 136
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9c
    sget-object v2, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->groupNameMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-ge v0, v2, :cond_ac

    .line 137
    iget-object v2, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->mExpandableListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, v0}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_9c

    .line 140
    :cond_ac
    invoke-virtual {p0}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->mInflater:Landroid/view/LayoutInflater;

    .line 141
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 6
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v1, 0x0

    .line 236
    const v0, 0x7f050016

    invoke-virtual {p0, v0}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 237
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 6
    .parameter "id"

    .prologue
    .line 293
    packed-switch p1, :pswitch_data_38

    .line 309
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 295
    :pswitch_5
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->refreshDialog:Landroid/app/ProgressDialog;

    .line 296
    const v0, 0x7f050009

    invoke-virtual {p0, v0}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->loadingMessage:Ljava/lang/String;

    .line 297
    iget-object v0, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->refreshDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 298
    iget-object v0, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->refreshDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->loadingMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 299
    iget-object v0, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->refreshDialog:Landroid/app/ProgressDialog;

    const/4 v1, -0x1

    const v2, 0x7f05000a

    invoke-virtual {p0, v2}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$2;

    invoke-direct {v3, p0}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$2;-><init>(Lcom/lge/sns/feed/ui/facebook/FaceBookHome;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 305
    iget-object v0, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->refreshDialog:Landroid/app/ProgressDialog;

    goto :goto_4

    .line 293
    nop

    :pswitch_data_38
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

    .line 267
    const v0, 0x7f05000e

    invoke-virtual {p0, v0}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 269
    const v0, 0x7f050072

    invoke-virtual {p0, v0}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108003e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 272
    return v3
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 144
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 145
    iget-object v0, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->mFeedFacade:Lcom/lge/sns/feed/IFeedFacade;

    invoke-interface {v0, p0}, Lcom/lge/sns/feed/IFeedFacade;->removeFeedUpdateListener(Lcom/lge/sns/feed/IFeedFacade$FeedUpdateListener;)V

    .line 146
    return-void
.end method

.method public onFeedAdded(Lcom/lge/sns/feed/Feed;)V
    .registers 4
    .parameter "feed"

    .prologue
    .line 638
    iget-object v0, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->snsId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/lge/sns/feed/Feed;->getSnsId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 639
    monitor-enter p0

    .line 640
    :try_start_d
    iget-object v0, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->mAdapter:Lcom/lge/sns/feed/ui/facebook/FaceBookHome$CustomExpandableListAdapter;

    invoke-virtual {v0, p1}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$CustomExpandableListAdapter;->addFeed(Lcom/lge/sns/feed/Feed;)V

    .line 641
    iget v0, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->count:I

    .line 642
    iget-boolean v0, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->notified:Z

    if-eqz v0, :cond_24

    .line 643
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->notified:Z

    .line 644
    iget-object v0, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->notifyJob:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 646
    :cond_24
    monitor-exit p0

    .line 648
    :cond_25
    return-void

    .line 646
    :catchall_26
    move-exception v0

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_d .. :try_end_28} :catchall_26

    throw v0
.end method

.method public onFeedDataUpdateFail(Lcom/lge/sns/SnsException;)V
    .registers 5
    .parameter "e"

    .prologue
    .line 592
    instance-of v1, p1, Lcom/lge/sns/UnauthorizatedException;

    if-eqz v1, :cond_30

    .line 593
    iget-boolean v1, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->isRetryForGetFeedData:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_15

    .line 594
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->isRetryForGetFeedData:Z

    .line 595
    new-instance v1, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$11;

    invoke-direct {v1, p0}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$11;-><init>(Lcom/lge/sns/feed/ui/facebook/FaceBookHome;)V

    invoke-virtual {p0, v1}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 620
    :goto_14
    return-void

    .line 602
    :cond_15
    new-instance v1, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$12;

    invoke-direct {v1, p0}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$12;-><init>(Lcom/lge/sns/feed/ui/facebook/FaceBookHome;)V

    invoke-virtual {p0, v1}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 608
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.sns.account.intent.action.VIEW_CREDENTIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 609
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "sns_id"

    iget-object v2, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->snsId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 610
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_14

    .line 613
    .end local v0           #intent:Landroid/content/Intent;
    :cond_30
    new-instance v1, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$13;

    invoke-direct {v1, p0}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$13;-><init>(Lcom/lge/sns/feed/ui/facebook/FaceBookHome;)V

    invoke-virtual {p0, v1}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_14
.end method

.method public onFeedDataUpdateFinished(JLjava/lang/String;Landroid/net/Uri;)V
    .registers 8
    .parameter "feedId"
    .parameter "feedType"
    .parameter "dataUri"

    .prologue
    const/4 v2, 0x0

    .line 568
    iput v2, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->count:I

    .line 569
    iget-boolean v0, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->isRetryForGetFeedData:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 570
    iput-boolean v2, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->isRetryForGetFeedData:Z

    .line 573
    :cond_a
    new-instance v0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$9;

    invoke-direct {v0, p0}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$9;-><init>(Lcom/lge/sns/feed/ui/facebook/FaceBookHome;)V

    invoke-virtual {p0, v0}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 580
    if-eqz p4, :cond_18

    .line 581
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->runFeedViewer(JLjava/lang/String;Landroid/net/Uri;)V

    .line 589
    :goto_17
    return-void

    .line 583
    :cond_18
    new-instance v0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$10;

    invoke-direct {v0, p0}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$10;-><init>(Lcom/lge/sns/feed/ui/facebook/FaceBookHome;)V

    invoke-virtual {p0, v0}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_17
.end method

.method public onFeedDataUpdateStarted()V
    .registers 2

    .prologue
    .line 559
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->count:I

    .line 560
    new-instance v0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$8;

    invoke-direct {v0, p0}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$8;-><init>(Lcom/lge/sns/feed/ui/facebook/FaceBookHome;)V

    invoke-virtual {p0, v0}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 565
    return-void
.end method

.method public onFeedRemoved(Lcom/lge/sns/feed/Feed;)V
    .registers 4
    .parameter "feed"

    .prologue
    .line 663
    iget-object v0, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->snsId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/lge/sns/feed/Feed;->getSnsId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 664
    monitor-enter p0

    .line 665
    :try_start_d
    iget-object v0, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->mAdapter:Lcom/lge/sns/feed/ui/facebook/FaceBookHome$CustomExpandableListAdapter;

    invoke-virtual {v0, p1}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$CustomExpandableListAdapter;->removeFeed(Lcom/lge/sns/feed/Feed;)V

    .line 666
    iget-boolean v0, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->notified:Z

    if-eqz v0, :cond_1e

    .line 667
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->notified:Z

    .line 668
    iget-object v0, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->notifyJob:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 670
    :cond_1e
    monitor-exit p0

    .line 672
    :cond_1f
    return-void

    .line 670
    :catchall_20
    move-exception v0

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_d .. :try_end_22} :catchall_20

    throw v0
.end method

.method public onFeedUpdateFail(Ljava/lang/String;Ljava/lang/String;Lcom/lge/sns/SnsException;)V
    .registers 7
    .parameter "snsId"
    .parameter "userId"
    .parameter "e"

    .prologue
    const/4 v2, 0x1

    .line 528
    instance-of v1, p3, Lcom/lge/sns/UnauthorizatedException;

    if-eqz v1, :cond_2d

    .line 529
    iget-boolean v1, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->isRetryForRefreshFeedList:Z

    if-ne v1, v2, :cond_15

    .line 530
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->isRetryForRefreshFeedList:Z

    .line 531
    new-instance v1, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$5;

    invoke-direct {v1, p0}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$5;-><init>(Lcom/lge/sns/feed/ui/facebook/FaceBookHome;)V

    invoke-virtual {p0, v1}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 556
    :goto_14
    return-void

    .line 538
    :cond_15
    new-instance v1, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$6;

    invoke-direct {v1, p0}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$6;-><init>(Lcom/lge/sns/feed/ui/facebook/FaceBookHome;)V

    invoke-virtual {p0, v1}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 544
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.sns.account.intent.action.VIEW_CREDENTIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 545
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "sns_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 546
    invoke-virtual {p0, v0, v2}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_14

    .line 549
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2d
    new-instance v1, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$7;

    invoke-direct {v1, p0}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$7;-><init>(Lcom/lge/sns/feed/ui/facebook/FaceBookHome;)V

    invoke-virtual {p0, v1}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_14
.end method

.method public onFeedUpdateFinished(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .parameter "snsId"
    .parameter "userId"
    .parameter "feedCount"

    .prologue
    .line 510
    iget-boolean v0, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->isRetryForRefreshFeedList:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 511
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->isRetryForRefreshFeedList:Z

    .line 514
    :cond_8
    new-instance v0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$4;

    invoke-direct {v0, p0, p3}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$4;-><init>(Lcom/lge/sns/feed/ui/facebook/FaceBookHome;I)V

    invoke-virtual {p0, v0}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 525
    return-void
.end method

.method public onFeedUpdateStarted(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "snsId"
    .parameter "userId"

    .prologue
    .line 496
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->count:I

    .line 497
    new-instance v0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$3;

    invoke-direct {v0, p0}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$3;-><init>(Lcom/lge/sns/feed/ui/facebook/FaceBookHome;)V

    invoke-virtual {p0, v0}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 507
    return-void
.end method

.method public onFeedUpdated(Lcom/lge/sns/feed/Feed;)V
    .registers 4
    .parameter "feed"

    .prologue
    .line 651
    iget-object v0, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->snsId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/lge/sns/feed/Feed;->getSnsId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 652
    monitor-enter p0

    .line 653
    :try_start_d
    iget-object v0, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->mAdapter:Lcom/lge/sns/feed/ui/facebook/FaceBookHome$CustomExpandableListAdapter;

    invoke-virtual {v0, p1}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$CustomExpandableListAdapter;->updateFeed(Lcom/lge/sns/feed/Feed;)V

    .line 654
    iget-boolean v0, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->notified:Z

    if-eqz v0, :cond_1e

    .line 655
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->notified:Z

    .line 656
    iget-object v0, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->notifyJob:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 658
    :cond_1e
    monitor-exit p0

    .line 660
    :cond_1f
    return-void

    .line 658
    :catchall_20
    move-exception v0

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_d .. :try_end_22} :catchall_20

    throw v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 8
    .parameter "item"

    .prologue
    const/4 v5, 0x1

    .line 276
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    if-nez v3, :cond_29

    .line 277
    sget-object v3, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->snsManager:Lcom/lge/sns/SnsManager;

    invoke-virtual {v3, p0}, Lcom/lge/sns/SnsManager;->getAccount(Landroid/content/Context;)Lcom/lge/sns/account/IAccountFacade;

    move-result-object v0

    .line 278
    .local v0, accountFacade:Lcom/lge/sns/account/IAccountFacade;
    iget-object v3, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->snsId:Ljava/lang/String;

    invoke-interface {v0, v3}, Lcom/lge/sns/account/IAccountFacade;->getUid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 279
    .local v2, userId:Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->mFeedFacade:Lcom/lge/sns/feed/IFeedFacade;

    iget-object v4, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->snsId:Ljava/lang/String;

    invoke-interface {v3, v4, v2, p0}, Lcom/lge/sns/feed/IFeedFacade;->refreshFeedListAsync(Ljava/lang/String;Ljava/lang/String;Lcom/lge/sns/feed/IFeedFacade$FeedUpdateCallback;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 280
    const v3, 0x7f05002a

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 289
    .end local v0           #accountFacade:Lcom/lge/sns/account/IAccountFacade;
    .end local v2           #userId:Ljava/lang/String;
    :cond_28
    :goto_28
    return v5

    .line 282
    :cond_29
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    if-ne v3, v5, :cond_28

    .line 283
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.PICK"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 284
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "vnd.lge.cursor.item/vnd.lge.sns.profile.friends"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 285
    const-string v3, "sns_id"

    iget-object v4, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->snsId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    const/4 v3, 0x4

    invoke-virtual {p0, v1, v3}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_28
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 149
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 150
    iget-object v0, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->mAdapter:Lcom/lge/sns/feed/ui/facebook/FaceBookHome$CustomExpandableListAdapter;

    if-eqz v0, :cond_c

    .line 151
    iget-object v0, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->mAdapter:Lcom/lge/sns/feed/ui/facebook/FaceBookHome$CustomExpandableListAdapter;

    invoke-virtual {v0}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$CustomExpandableListAdapter;->notifyDataSetChanged()V

    .line 153
    :cond_c
    return-void
.end method
