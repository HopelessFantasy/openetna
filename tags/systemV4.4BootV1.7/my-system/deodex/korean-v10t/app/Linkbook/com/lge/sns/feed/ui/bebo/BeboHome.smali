.class public Lcom/lge/sns/feed/ui/bebo/BeboHome;
.super Landroid/app/Activity;
.source "BeboHome.java"

# interfaces
.implements Lcom/lge/sns/feed/IFeedFacade$FeedUpdateCallback;
.implements Lcom/lge/sns/feed/IFeedFacade$FeedDataUpdateCallback;
.implements Lcom/lge/sns/feed/IFeedFacade$FeedUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/sns/feed/ui/bebo/BeboHome$CustomExpandableListAdapter;
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

.field private static final TAG:Ljava/lang/String; = "BeboHome"

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

.field private mAdapter:Lcom/lge/sns/feed/ui/bebo/BeboHome$CustomExpandableListAdapter;

.field private mExpandableListView:Landroid/widget/ExpandableListView;

.field private mFeedFacade:Lcom/lge/sns/feed/IFeedFacade;

.field private mInflater:Landroid/view/LayoutInflater;

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

    .line 50
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/lge/sns/feed/ui/bebo/BeboHome;->FACEBOOK_FRIEND_REQUEST_COUNT:Ljava/lang/Integer;

    .line 66
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v0

    sput-object v0, Lcom/lge/sns/feed/ui/bebo/BeboHome;->snsManager:Lcom/lge/sns/SnsManager;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lge/sns/feed/ui/bebo/BeboHome;->feedTypeMap:Ljava/util/Map;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lge/sns/feed/ui/bebo/BeboHome;->groupNameMap:Ljava/util/Map;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lge/sns/feed/ui/bebo/BeboHome;->groupPositionMap:Ljava/util/Map;

    .line 73
    sget-object v0, Lcom/lge/sns/feed/ui/bebo/BeboHome;->feedTypeMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "FR"

    aput-object v7, v2, v6

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/lge/sns/feed/ui/bebo/BeboHome;->feedTypeMap:Ljava/util/Map;

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

    .line 82
    sget-object v0, Lcom/lge/sns/feed/ui/bebo/BeboHome;->groupNameMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f05001b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/lge/sns/feed/ui/bebo/BeboHome;->groupNameMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f050032

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/lge/sns/feed/ui/bebo/BeboHome;->groupPositionMap:Ljava/util/Map;

    const-string v1, "FR"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/lge/sns/feed/ui/bebo/BeboHome;->groupPositionMap:Ljava/util/Map;

    const-string v1, "PS"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/lge/sns/feed/ui/bebo/BeboHome;->groupPositionMap:Ljava/util/Map;

    const-string v1, "PC"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/lge/sns/feed/ui/bebo/BeboHome;->groupPositionMap:Ljava/util/Map;

    const-string v1, "PP"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 94
    sget-object v0, Lcom/lge/sns/feed/ui/bebo/BeboHome;->snsManager:Lcom/lge/sns/SnsManager;

    invoke-virtual {v0, p0}, Lcom/lge/sns/SnsManager;->getFeeds(Landroid/content/Context;)Lcom/lge/sns/feed/IFeedFacade;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome;->mFeedFacade:Lcom/lge/sns/feed/IFeedFacade;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome;->feedList:Ljava/util/List;

    .line 98
    iput-boolean v1, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome;->isRetryForRefreshFeedList:Z

    .line 99
    iput-boolean v1, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome;->isRetryForGetFeedData:Z

    .line 176
    new-instance v0, Lcom/lge/sns/feed/ui/bebo/BeboHome$1;

    invoke-direct {v0, p0}, Lcom/lge/sns/feed/ui/bebo/BeboHome$1;-><init>(Lcom/lge/sns/feed/ui/bebo/BeboHome;)V

    iput-object v0, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome;->ChildClickListener:Landroid/widget/ExpandableListView$OnChildClickListener;

    .line 297
    return-void
.end method

.method static synthetic access$000()Ljava/util/Map;
    .registers 1

    .prologue
    .line 47
    sget-object v0, Lcom/lge/sns/feed/ui/bebo/BeboHome;->groupPositionMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/sns/feed/ui/bebo/BeboHome;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome;->snsId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lge/sns/feed/ui/bebo/BeboHome;)Landroid/widget/ExpandableListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome;->mExpandableListView:Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/Map;
    .registers 1

    .prologue
    .line 47
    sget-object v0, Lcom/lge/sns/feed/ui/bebo/BeboHome;->feedTypeMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lge/sns/feed/ui/bebo/BeboHome;)Lcom/lge/sns/feed/IFeedFacade;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome;->mFeedFacade:Lcom/lge/sns/feed/IFeedFacade;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/sns/feed/ui/bebo/BeboHome;)Lcom/lge/sns/feed/Feed;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome;->selectedFeed:Lcom/lge/sns/feed/Feed;

    return-object v0
.end method

.method static synthetic access$402(Lcom/lge/sns/feed/ui/bebo/BeboHome;Lcom/lge/sns/feed/Feed;)Lcom/lge/sns/feed/Feed;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome;->selectedFeed:Lcom/lge/sns/feed/Feed;

    return-object p1
.end method

.method static synthetic access$500(Lcom/lge/sns/feed/ui/bebo/BeboHome;)Lcom/lge/sns/feed/ui/bebo/BeboHome$CustomExpandableListAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome;->mAdapter:Lcom/lge/sns/feed/ui/bebo/BeboHome$CustomExpandableListAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lge/sns/feed/ui/bebo/BeboHome;JLjava/lang/String;Landroid/net/Uri;)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lge/sns/feed/ui/bebo/BeboHome;->runFeedViewer(JLjava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$700(Lcom/lge/sns/feed/ui/bebo/BeboHome;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome;->feedList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lge/sns/feed/ui/bebo/BeboHome;)Landroid/view/LayoutInflater;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$900()Ljava/util/Map;
    .registers 1

    .prologue
    .line 47
    sget-object v0, Lcom/lge/sns/feed/ui/bebo/BeboHome;->groupNameMap:Ljava/util/Map;

    return-object v0
.end method

.method private runFeedViewer(JLjava/lang/String;Landroid/net/Uri;)V
    .registers 7
    .parameter "rowId"
    .parameter "feedType"
    .parameter "dataUri"

    .prologue
    .line 210
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 211
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 213
    const-string v1, "FR"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 214
    const-string v1, "feed_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 215
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/lge/sns/feed/ui/bebo/BeboHome;->startActivityForResult(Landroid/content/Intent;I)V

    .line 219
    :goto_1b
    return-void

    .line 217
    :cond_1c
    invoke-virtual {p0, v0}, Lcom/lge/sns/feed/ui/bebo/BeboHome;->startActivity(Landroid/content/Intent;)V

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

    .line 142
    if-ne p1, v8, :cond_20

    .line 143
    if-ne p2, v7, :cond_1f

    .line 144
    iput-boolean v8, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome;->isRetryForRefreshFeedList:Z

    .line 145
    sget-object v6, Lcom/lge/sns/feed/ui/bebo/BeboHome;->snsManager:Lcom/lge/sns/SnsManager;

    invoke-virtual {v6, p0}, Lcom/lge/sns/SnsManager;->getAccount(Landroid/content/Context;)Lcom/lge/sns/account/IAccountFacade;

    move-result-object v0

    .line 146
    .local v0, accountFacade:Lcom/lge/sns/account/IAccountFacade;
    iget-object v6, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome;->snsId:Ljava/lang/String;

    invoke-interface {v0, v6}, Lcom/lge/sns/account/IAccountFacade;->getUid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 147
    .local v5, userId:Ljava/lang/String;
    iget-object v6, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome;->mFeedFacade:Lcom/lge/sns/feed/IFeedFacade;

    iget-object v7, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome;->snsId:Ljava/lang/String;

    invoke-interface {v6, v7, v5, p0}, Lcom/lge/sns/feed/IFeedFacade;->refreshFeedListAsync(Ljava/lang/String;Ljava/lang/String;Lcom/lge/sns/feed/IFeedFacade$FeedUpdateCallback;)Z

    .line 174
    .end local v0           #accountFacade:Lcom/lge/sns/account/IAccountFacade;
    .end local v5           #userId:Ljava/lang/String;
    :cond_1f
    :goto_1f
    return-void

    .line 149
    :cond_20
    const/4 v6, 0x2

    if-ne p1, v6, :cond_47

    .line 150
    iget-object v6, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome;->selectedFeed:Lcom/lge/sns/feed/Feed;

    if-eqz v6, :cond_1f

    iget-object v6, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome;->selectedFeed:Lcom/lge/sns/feed/Feed;

    invoke-virtual {v6}, Lcom/lge/sns/feed/Feed;->getDataUri()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1f

    .line 151
    iput-boolean v8, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome;->isRetryForGetFeedData:Z

    .line 152
    iget-object v6, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome;->mFeedFacade:Lcom/lge/sns/feed/IFeedFacade;

    iget-object v7, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome;->selectedFeed:Lcom/lge/sns/feed/Feed;

    invoke-interface {v6, v7, p0}, Lcom/lge/sns/feed/IFeedFacade;->getFeedDataAsync(Lcom/lge/sns/feed/Feed;Lcom/lge/sns/feed/IFeedFacade$FeedDataUpdateCallback;)Z

    move-result v6

    if-nez v6, :cond_1f

    .line 153
    const v6, 0x7f05002a

    const/4 v7, 0x0

    invoke-static {p0, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_1f

    .line 156
    :cond_47
    const/4 v6, 0x3

    if-ne p1, v6, :cond_5c

    .line 157
    if-ne p2, v7, :cond_1f

    .line 158
    const-string v6, "feed_id"

    invoke-virtual {p3, v6, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 159
    .local v1, feedId:J
    cmp-long v6, v1, v9

    if-lez v6, :cond_1f

    .line 160
    iget-object v6, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome;->mFeedFacade:Lcom/lge/sns/feed/IFeedFacade;

    invoke-interface {v6, v1, v2}, Lcom/lge/sns/feed/IFeedFacade;->removeFeed(J)Lcom/lge/sns/feed/Feed;

    goto :goto_1f

    .line 163
    .end local v1           #feedId:J
    :cond_5c
    const/4 v6, 0x4

    if-ne p1, v6, :cond_1f

    .line 164
    if-ne p2, v7, :cond_1f

    .line 165
    const-string v6, "sns_id"

    invoke-virtual {p3, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 166
    .local v4, snsId:Ljava/lang/String;
    const-string v6, "friend_userid"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 168
    .restart local v5       #userId:Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.lge.sns.message.intent.action.MESSAGE_SEND"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 169
    .local v3, intent:Landroid/content/Intent;
    const-string v6, "sns_id"

    invoke-virtual {v3, v11, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    const-string v6, "recipient_id"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    invoke-virtual {p0, v3}, Lcom/lge/sns/feed/ui/bebo/BeboHome;->startActivity(Landroid/content/Intent;)V

    goto :goto_1f
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 11
    .parameter "item"

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 228
    :try_start_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v3

    check-cast v3, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_8} :catch_2a

    .line 234
    .local v3, info:Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;
    const/4 v4, 0x0

    .line 235
    .local v4, selectedFeed:Lcom/lge/sns/feed/Feed;
    iget-wide v5, v3, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v5, v6}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v2

    .line 236
    .local v2, groupPosition:I
    iget-wide v5, v3, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v5, v6}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v0

    .line 237
    .local v0, childPosition:I
    if-le v2, v7, :cond_21

    if-le v0, v7, :cond_21

    .line 238
    iget-object v5, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome;->mAdapter:Lcom/lge/sns/feed/ui/bebo/BeboHome$CustomExpandableListAdapter;

    invoke-virtual {v5, v2, v0}, Lcom/lge/sns/feed/ui/bebo/BeboHome$CustomExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #selectedFeed:Lcom/lge/sns/feed/Feed;
    check-cast v4, Lcom/lge/sns/feed/Feed;

    .line 241
    .restart local v4       #selectedFeed:Lcom/lge/sns/feed/Feed;
    :cond_21
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    packed-switch v5, :pswitch_data_42

    move v5, v8

    .line 249
    .end local v0           #childPosition:I
    .end local v2           #groupPosition:I
    .end local v3           #info:Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;
    .end local v4           #selectedFeed:Lcom/lge/sns/feed/Feed;
    :goto_29
    return v5

    .line 229
    :catch_2a
    move-exception v5

    move-object v1, v5

    .line 230
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v5, "BeboHome"

    const-string v6, "bad menuInfo"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v5, v8

    .line 231
    goto :goto_29

    .line 243
    .end local v1           #e:Ljava/lang/ClassCastException;
    .restart local v0       #childPosition:I
    .restart local v2       #groupPosition:I
    .restart local v3       #info:Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;
    .restart local v4       #selectedFeed:Lcom/lge/sns/feed/Feed;
    :pswitch_35
    if-eqz v4, :cond_40

    .line 244
    iget-object v5, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome;->mFeedFacade:Lcom/lge/sns/feed/IFeedFacade;

    invoke-virtual {v4}, Lcom/lge/sns/feed/Feed;->getId()J

    move-result-wide v6

    invoke-interface {v5, v6, v7}, Lcom/lge/sns/feed/IFeedFacade;->removeFeed(J)Lcom/lge/sns/feed/Feed;

    .line 246
    :cond_40
    const/4 v5, 0x1

    goto :goto_29

    .line 241
    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_35
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 104
    const v2, 0x7f030019

    invoke-virtual {p0, v2}, Lcom/lge/sns/feed/ui/bebo/BeboHome;->setContentView(I)V

    .line 105
    invoke-virtual {p0}, Lcom/lge/sns/feed/ui/bebo/BeboHome;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 108
    invoke-virtual {p0}, Lcom/lge/sns/feed/ui/bebo/BeboHome;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 109
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "sns_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome;->snsId:Ljava/lang/String;

    .line 111
    new-instance v2, Lcom/lge/sns/feed/ui/bebo/BeboHome$CustomExpandableListAdapter;

    invoke-direct {v2, p0, p0}, Lcom/lge/sns/feed/ui/bebo/BeboHome$CustomExpandableListAdapter;-><init>(Lcom/lge/sns/feed/ui/bebo/BeboHome;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome;->mAdapter:Lcom/lge/sns/feed/ui/bebo/BeboHome$CustomExpandableListAdapter;

    .line 113
    iget-object v3, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome;->feedList:Ljava/util/List;

    iget-object v4, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome;->mFeedFacade:Lcom/lge/sns/feed/IFeedFacade;

    iget-object v5, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome;->snsId:Ljava/lang/String;

    sget-object v2, Lcom/lge/sns/feed/ui/bebo/BeboHome;->feedTypeMap:Ljava/util/Map;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    sget-object v6, Lcom/lge/sns/feed/ui/bebo/BeboHome;->FACEBOOK_FRIEND_REQUEST_COUNT:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v4, v5, v2, v6, p0}, Lcom/lge/sns/feed/IFeedFacade;->getLatestFeedList(Ljava/lang/String;[Ljava/lang/String;ILcom/lge/sns/feed/IFeedFacade$FeedUpdateListener;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v3, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome;->feedList:Ljava/util/List;

    iget-object v4, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome;->mFeedFacade:Lcom/lge/sns/feed/IFeedFacade;

    iget-object v5, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome;->snsId:Ljava/lang/String;

    sget-object v2, Lcom/lge/sns/feed/ui/bebo/BeboHome;->feedTypeMap:Ljava/util/Map;

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-interface {v4, v5, v2}, Lcom/lge/sns/feed/IFeedFacade;->getFeedList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    const v2, 0x102000a

    invoke-virtual {p0, v2}, Lcom/lge/sns/feed/ui/bebo/BeboHome;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ExpandableListView;

    iput-object v2, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome;->mExpandableListView:Landroid/widget/ExpandableListView;

    .line 118
    iget-object v2, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome;->mExpandableListView:Landroid/widget/ExpandableListView;

    iget-object v3, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome;->mAdapter:Lcom/lge/sns/feed/ui/bebo/BeboHome$CustomExpandableListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 119
    iget-object v2, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome;->mExpandableListView:Landroid/widget/ExpandableListView;

    iget-object v3, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome;->ChildClickListener:Landroid/widget/ExpandableListView$OnChildClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 120
    iget-object v2, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome;->mExpandableListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, p0}, Landroid/widget/ExpandableListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 122
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7d
    sget-object v2, Lcom/lge/sns/feed/ui/bebo/BeboHome;->groupNameMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-ge v0, v2, :cond_8d

    .line 123
    iget-object v2, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome;->mExpandableListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, v0}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_7d

    .line 126
    :cond_8d
    invoke-virtual {p0}, Lcom/lge/sns/feed/ui/bebo/BeboHome;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome;->mInflater:Landroid/view/LayoutInflater;

    .line 127
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 6
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v1, 0x0

    .line 222
    const v0, 0x7f050016

    invoke-virtual {p0, v0}, Lcom/lge/sns/feed/ui/bebo/BeboHome;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 223
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 6
    .parameter "id"

    .prologue
    .line 279
    packed-switch p1, :pswitch_data_2a

    .line 294
    const/4 v1, 0x0

    :goto_4
    return-object v1

    .line 281
    :pswitch_5
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 282
    .local v0, refreshDialog:Landroid/app/ProgressDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 283
    const v1, 0x7f050009

    invoke-virtual {p0, v1}, Lcom/lge/sns/feed/ui/bebo/BeboHome;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 284
    const/4 v1, -0x1

    const v2, 0x7f05000a

    invoke-virtual {p0, v2}, Lcom/lge/sns/feed/ui/bebo/BeboHome;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/lge/sns/feed/ui/bebo/BeboHome$2;

    invoke-direct {v3, p0}, Lcom/lge/sns/feed/ui/bebo/BeboHome$2;-><init>(Lcom/lge/sns/feed/ui/bebo/BeboHome;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    move-object v1, v0

    .line 290
    goto :goto_4

    .line 279
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

    .line 253
    const v0, 0x7f05000e

    invoke-virtual {p0, v0}, Lcom/lge/sns/feed/ui/bebo/BeboHome;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 255
    const v0, 0x7f050072

    invoke-virtual {p0, v0}, Lcom/lge/sns/feed/ui/bebo/BeboHome;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108003e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 258
    return v3
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 130
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 131
    iget-object v0, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome;->mFeedFacade:Lcom/lge/sns/feed/IFeedFacade;

    invoke-interface {v0, p0}, Lcom/lge/sns/feed/IFeedFacade;->removeFeedUpdateListener(Lcom/lge/sns/feed/IFeedFacade$FeedUpdateListener;)V

    .line 132
    return-void
.end method

.method public onFeedAdded(Lcom/lge/sns/feed/Feed;)V
    .registers 4
    .parameter "feed"

    .prologue
    .line 593
    iget-object v0, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome;->snsId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/lge/sns/feed/Feed;->getSnsId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 594
    new-instance v0, Lcom/lge/sns/feed/ui/bebo/BeboHome$14;

    invoke-direct {v0, p0, p1}, Lcom/lge/sns/feed/ui/bebo/BeboHome$14;-><init>(Lcom/lge/sns/feed/ui/bebo/BeboHome;Lcom/lge/sns/feed/Feed;)V

    invoke-virtual {p0, v0}, Lcom/lge/sns/feed/ui/bebo/BeboHome;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 600
    :cond_14
    return-void
.end method

.method public onFeedDataUpdateFail(Lcom/lge/sns/SnsException;)V
    .registers 5
    .parameter "e"

    .prologue
    .line 562
    instance-of v1, p1, Lcom/lge/sns/UnauthorizatedException;

    if-eqz v1, :cond_30

    .line 563
    iget-boolean v1, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome;->isRetryForGetFeedData:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_15

    .line 564
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome;->isRetryForGetFeedData:Z

    .line 565
    new-instance v1, Lcom/lge/sns/feed/ui/bebo/BeboHome$11;

    invoke-direct {v1, p0}, Lcom/lge/sns/feed/ui/bebo/BeboHome$11;-><init>(Lcom/lge/sns/feed/ui/bebo/BeboHome;)V

    invoke-virtual {p0, v1}, Lcom/lge/sns/feed/ui/bebo/BeboHome;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 590
    :goto_14
    return-void

    .line 572
    :cond_15
    new-instance v1, Lcom/lge/sns/feed/ui/bebo/BeboHome$12;

    invoke-direct {v1, p0}, Lcom/lge/sns/feed/ui/bebo/BeboHome$12;-><init>(Lcom/lge/sns/feed/ui/bebo/BeboHome;)V

    invoke-virtual {p0, v1}, Lcom/lge/sns/feed/ui/bebo/BeboHome;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 578
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.sns.account.intent.action.VIEW_CREDENTIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 579
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "sns_id"

    iget-object v2, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome;->snsId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 580
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/lge/sns/feed/ui/bebo/BeboHome;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_14

    .line 583
    .end local v0           #intent:Landroid/content/Intent;
    :cond_30
    new-instance v1, Lcom/lge/sns/feed/ui/bebo/BeboHome$13;

    invoke-direct {v1, p0}, Lcom/lge/sns/feed/ui/bebo/BeboHome$13;-><init>(Lcom/lge/sns/feed/ui/bebo/BeboHome;)V

    invoke-virtual {p0, v1}, Lcom/lge/sns/feed/ui/bebo/BeboHome;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_14
.end method

.method public onFeedDataUpdateFinished(JLjava/lang/String;Landroid/net/Uri;)V
    .registers 7
    .parameter "feedId"
    .parameter "feedType"
    .parameter "dataUri"

    .prologue
    .line 539
    iget-boolean v0, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome;->isRetryForGetFeedData:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 540
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome;->isRetryForGetFeedData:Z

    .line 543
    :cond_8
    new-instance v0, Lcom/lge/sns/feed/ui/bebo/BeboHome$9;

    invoke-direct {v0, p0}, Lcom/lge/sns/feed/ui/bebo/BeboHome$9;-><init>(Lcom/lge/sns/feed/ui/bebo/BeboHome;)V

    invoke-virtual {p0, v0}, Lcom/lge/sns/feed/ui/bebo/BeboHome;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 549
    if-eqz p4, :cond_16

    .line 550
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lge/sns/feed/ui/bebo/BeboHome;->runFeedViewer(JLjava/lang/String;Landroid/net/Uri;)V

    .line 559
    :goto_15
    return-void

    .line 553
    :cond_16
    new-instance v0, Lcom/lge/sns/feed/ui/bebo/BeboHome$10;

    invoke-direct {v0, p0}, Lcom/lge/sns/feed/ui/bebo/BeboHome$10;-><init>(Lcom/lge/sns/feed/ui/bebo/BeboHome;)V

    invoke-virtual {p0, v0}, Lcom/lge/sns/feed/ui/bebo/BeboHome;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_15
.end method

.method public onFeedDataUpdateStarted()V
    .registers 2

    .prologue
    .line 531
    new-instance v0, Lcom/lge/sns/feed/ui/bebo/BeboHome$8;

    invoke-direct {v0, p0}, Lcom/lge/sns/feed/ui/bebo/BeboHome$8;-><init>(Lcom/lge/sns/feed/ui/bebo/BeboHome;)V

    invoke-virtual {p0, v0}, Lcom/lge/sns/feed/ui/bebo/BeboHome;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 536
    return-void
.end method

.method public onFeedRemoved(Lcom/lge/sns/feed/Feed;)V
    .registers 4
    .parameter "feed"

    .prologue
    .line 613
    iget-object v0, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome;->snsId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/lge/sns/feed/Feed;->getSnsId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 614
    new-instance v0, Lcom/lge/sns/feed/ui/bebo/BeboHome$16;

    invoke-direct {v0, p0, p1}, Lcom/lge/sns/feed/ui/bebo/BeboHome$16;-><init>(Lcom/lge/sns/feed/ui/bebo/BeboHome;Lcom/lge/sns/feed/Feed;)V

    invoke-virtual {p0, v0}, Lcom/lge/sns/feed/ui/bebo/BeboHome;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 620
    :cond_14
    return-void
.end method

.method public onFeedUpdateFail(Ljava/lang/String;Ljava/lang/String;Lcom/lge/sns/SnsException;)V
    .registers 7
    .parameter "snsId"
    .parameter "userId"
    .parameter "e"

    .prologue
    const/4 v2, 0x1

    .line 500
    instance-of v1, p3, Lcom/lge/sns/UnauthorizatedException;

    if-eqz v1, :cond_2d

    .line 501
    iget-boolean v1, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome;->isRetryForRefreshFeedList:Z

    if-ne v1, v2, :cond_15

    .line 502
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome;->isRetryForRefreshFeedList:Z

    .line 503
    new-instance v1, Lcom/lge/sns/feed/ui/bebo/BeboHome$5;

    invoke-direct {v1, p0}, Lcom/lge/sns/feed/ui/bebo/BeboHome$5;-><init>(Lcom/lge/sns/feed/ui/bebo/BeboHome;)V

    invoke-virtual {p0, v1}, Lcom/lge/sns/feed/ui/bebo/BeboHome;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 528
    :goto_14
    return-void

    .line 510
    :cond_15
    new-instance v1, Lcom/lge/sns/feed/ui/bebo/BeboHome$6;

    invoke-direct {v1, p0}, Lcom/lge/sns/feed/ui/bebo/BeboHome$6;-><init>(Lcom/lge/sns/feed/ui/bebo/BeboHome;)V

    invoke-virtual {p0, v1}, Lcom/lge/sns/feed/ui/bebo/BeboHome;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 516
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.sns.account.intent.action.VIEW_CREDENTIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 517
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "sns_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 518
    invoke-virtual {p0, v0, v2}, Lcom/lge/sns/feed/ui/bebo/BeboHome;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_14

    .line 521
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2d
    new-instance v1, Lcom/lge/sns/feed/ui/bebo/BeboHome$7;

    invoke-direct {v1, p0}, Lcom/lge/sns/feed/ui/bebo/BeboHome$7;-><init>(Lcom/lge/sns/feed/ui/bebo/BeboHome;)V

    invoke-virtual {p0, v1}, Lcom/lge/sns/feed/ui/bebo/BeboHome;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_14
.end method

.method public onFeedUpdateFinished(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .parameter "snsId"
    .parameter "userId"
    .parameter "count"

    .prologue
    .line 486
    iget-boolean v0, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome;->isRetryForRefreshFeedList:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 487
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome;->isRetryForRefreshFeedList:Z

    .line 490
    :cond_8
    new-instance v0, Lcom/lge/sns/feed/ui/bebo/BeboHome$4;

    invoke-direct {v0, p0, p3}, Lcom/lge/sns/feed/ui/bebo/BeboHome$4;-><init>(Lcom/lge/sns/feed/ui/bebo/BeboHome;I)V

    invoke-virtual {p0, v0}, Lcom/lge/sns/feed/ui/bebo/BeboHome;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 497
    return-void
.end method

.method public onFeedUpdateStarted(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "snsId"
    .parameter "userId"

    .prologue
    .line 478
    new-instance v0, Lcom/lge/sns/feed/ui/bebo/BeboHome$3;

    invoke-direct {v0, p0}, Lcom/lge/sns/feed/ui/bebo/BeboHome$3;-><init>(Lcom/lge/sns/feed/ui/bebo/BeboHome;)V

    invoke-virtual {p0, v0}, Lcom/lge/sns/feed/ui/bebo/BeboHome;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 483
    return-void
.end method

.method public onFeedUpdated(Lcom/lge/sns/feed/Feed;)V
    .registers 4
    .parameter "feed"

    .prologue
    .line 603
    iget-object v0, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome;->snsId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/lge/sns/feed/Feed;->getSnsId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 604
    new-instance v0, Lcom/lge/sns/feed/ui/bebo/BeboHome$15;

    invoke-direct {v0, p0, p1}, Lcom/lge/sns/feed/ui/bebo/BeboHome$15;-><init>(Lcom/lge/sns/feed/ui/bebo/BeboHome;Lcom/lge/sns/feed/Feed;)V

    invoke-virtual {p0, v0}, Lcom/lge/sns/feed/ui/bebo/BeboHome;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 610
    :cond_14
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 8
    .parameter "item"

    .prologue
    const/4 v5, 0x1

    .line 262
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    if-nez v3, :cond_29

    .line 263
    sget-object v3, Lcom/lge/sns/feed/ui/bebo/BeboHome;->snsManager:Lcom/lge/sns/SnsManager;

    invoke-virtual {v3, p0}, Lcom/lge/sns/SnsManager;->getAccount(Landroid/content/Context;)Lcom/lge/sns/account/IAccountFacade;

    move-result-object v0

    .line 264
    .local v0, accountFacade:Lcom/lge/sns/account/IAccountFacade;
    iget-object v3, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome;->snsId:Ljava/lang/String;

    invoke-interface {v0, v3}, Lcom/lge/sns/account/IAccountFacade;->getUid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 265
    .local v2, userId:Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome;->mFeedFacade:Lcom/lge/sns/feed/IFeedFacade;

    iget-object v4, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome;->snsId:Ljava/lang/String;

    invoke-interface {v3, v4, v2, p0}, Lcom/lge/sns/feed/IFeedFacade;->refreshFeedListAsync(Ljava/lang/String;Ljava/lang/String;Lcom/lge/sns/feed/IFeedFacade$FeedUpdateCallback;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 266
    const v3, 0x7f05002a

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 275
    .end local v0           #accountFacade:Lcom/lge/sns/account/IAccountFacade;
    .end local v2           #userId:Ljava/lang/String;
    :cond_28
    :goto_28
    return v5

    .line 268
    :cond_29
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    if-ne v3, v5, :cond_28

    .line 269
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.PICK"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 270
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "vnd.lge.cursor.item/vnd.lge.sns.profile.friends"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    const-string v3, "sns_id"

    iget-object v4, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome;->snsId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    const/4 v3, 0x4

    invoke-virtual {p0, v1, v3}, Lcom/lge/sns/feed/ui/bebo/BeboHome;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_28
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 135
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 136
    iget-object v0, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome;->mAdapter:Lcom/lge/sns/feed/ui/bebo/BeboHome$CustomExpandableListAdapter;

    if-eqz v0, :cond_c

    .line 137
    iget-object v0, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome;->mAdapter:Lcom/lge/sns/feed/ui/bebo/BeboHome$CustomExpandableListAdapter;

    invoke-virtual {v0}, Lcom/lge/sns/feed/ui/bebo/BeboHome$CustomExpandableListAdapter;->notifyDataSetChanged()V

    .line 139
    :cond_c
    return-void
.end method
