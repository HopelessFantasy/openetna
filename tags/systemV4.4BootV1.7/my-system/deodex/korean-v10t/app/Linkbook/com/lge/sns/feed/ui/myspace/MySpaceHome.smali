.class public Lcom/lge/sns/feed/ui/myspace/MySpaceHome;
.super Landroid/app/ExpandableListActivity;
.source "MySpaceHome.java"

# interfaces
.implements Lcom/lge/sns/feed/IFeedFacade$FeedUpdateCallback;
.implements Lcom/lge/sns/feed/IFeedFacade$FeedDataUpdateCallback;
.implements Lcom/lge/sns/feed/IFeedFacade$FeedUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/sns/feed/ui/myspace/MySpaceHome$MyExpandableListAdapter;
    }
.end annotation


# static fields
.field private static final DIALOG_REFRESH:I = 0x3e8

.field public static final FACEBOOK_FRIEND_REQUEST_COUNT:Ljava/lang/Integer; = null

.field private static final MENU_ID_NEW_SN_MESSAGE:I = 0x1

.field private static final MENU_ID_REFRESH:I

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

.field private static final textResourceMap:Ljava/util/Map;
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

.field private static final uriMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private feedFacade:Lcom/lge/sns/feed/IFeedFacade;

.field feedList:Ljava/util/List;
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

.field private mAdapter:Lcom/lge/sns/feed/ui/myspace/MySpaceHome$MyExpandableListAdapter;

.field private mInflater:Landroid/view/LayoutInflater;

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

    .line 45
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->FACEBOOK_FRIEND_REQUEST_COUNT:Ljava/lang/Integer;

    .line 47
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v0

    sput-object v0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->snsManager:Lcom/lge/sns/SnsManager;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->textResourceMap:Ljava/util/Map;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->uriMap:Ljava/util/Map;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->feedTypeMap:Ljava/util/Map;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->groupNameMap:Ljava/util/Map;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->groupPositionMap:Ljava/util/Map;

    .line 58
    sget-object v0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->textResourceMap:Ljava/util/Map;

    const-string v1, "PS"

    const v2, 0x7f050034

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->textResourceMap:Ljava/util/Map;

    const-string v1, "PC"

    const v1, 0x7f050035

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->textResourceMap:Ljava/util/Map;

    const-string v1, "PP"

    const v1, 0x7f050036

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->textResourceMap:Ljava/util/Map;

    const-string v1, "MC"

    const v2, 0x7f050037

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->textResourceMap:Ljava/util/Map;

    const-string v1, "FR"

    const v1, 0x7f050038

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->uriMap:Ljava/util/Map;

    const-string v1, "PS"

    sget-object v2, Lcom/lge/sns/profile/linkbook/ProfileFacade;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->uriMap:Ljava/util/Map;

    const-string v1, "PC"

    sget-object v1, Lcom/lge/sns/profile/linkbook/ProfileFacade;->PROFILE_COMMENT_CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->uriMap:Ljava/util/Map;

    const-string v1, "PP"

    sget-object v1, Lcom/lge/sns/media/IMediaFacade;->MEDIA_COMMENT_CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->uriMap:Ljava/util/Map;

    const-string v1, "MC"

    sget-object v2, Lcom/lge/sns/media/IMediaFacade;->MEDIA_COMMENT_CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->uriMap:Ljava/util/Map;

    const-string v1, "FR"

    sget-object v1, Lcom/lge/sns/profile/linkbook/ProfileFacade;->FRIEND_REQUEST_CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->feedTypeMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "FR"

    aput-object v7, v2, v6

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->feedTypeMap:Ljava/util/Map;

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

    .line 79
    sget-object v0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->groupNameMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f05001b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->groupNameMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f050031

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->groupPositionMap:Ljava/util/Map;

    const-string v1, "FR"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->groupPositionMap:Ljava/util/Map;

    const-string v1, "PS"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->groupPositionMap:Ljava/util/Map;

    const-string v1, "PC"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->groupPositionMap:Ljava/util/Map;

    const-string v1, "PP"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Landroid/app/ExpandableListActivity;-><init>()V

    .line 48
    iput-object v0, p0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->feedFacade:Lcom/lge/sns/feed/IFeedFacade;

    .line 49
    iput-object v0, p0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->snsId:Ljava/lang/String;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->feedList:Ljava/util/List;

    .line 214
    return-void
.end method

.method static synthetic access$000(Lcom/lge/sns/feed/ui/myspace/MySpaceHome;)Landroid/view/LayoutInflater;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/Map;
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->textResourceMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/Map;
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->groupNameMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/Map;
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->groupPositionMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/sns/feed/ui/myspace/MySpaceHome;)Lcom/lge/sns/feed/ui/myspace/MySpaceHome$MyExpandableListAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->mAdapter:Lcom/lge/sns/feed/ui/myspace/MySpaceHome$MyExpandableListAdapter;

    return-object v0
.end method

.method private updateContent()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 125
    iget-object v1, p0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->feedList:Ljava/util/List;

    iget-object v2, p0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->feedFacade:Lcom/lge/sns/feed/IFeedFacade;

    iget-object v3, p0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->snsId:Ljava/lang/String;

    sget-object v0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->feedTypeMap:Ljava/util/Map;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sget-object v4, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->FACEBOOK_FRIEND_REQUEST_COUNT:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v2, v3, v0, v4, v5}, Lcom/lge/sns/feed/IFeedFacade;->getLatestFeedList(Ljava/lang/String;[Ljava/lang/String;ILcom/lge/sns/feed/IFeedFacade$FeedUpdateListener;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object v0, p0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->feedList:Ljava/util/List;

    iget-object v1, p0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->feedFacade:Lcom/lge/sns/feed/IFeedFacade;

    iget-object v2, p0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->snsId:Ljava/lang/String;

    sget-object v3, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->feedTypeMap:Ljava/util/Map;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    invoke-interface {v1, v2, p0, v5}, Lcom/lge/sns/feed/IFeedFacade;->getFeedList(Ljava/lang/String;[Ljava/lang/String;Lcom/lge/sns/feed/IFeedFacade$FeedUpdateListener;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 12
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, -0x1

    .line 179
    const/4 v4, 0x1

    if-ne p1, v4, :cond_1c

    .line 180
    if-ne p2, v5, :cond_1b

    .line 181
    sget-object v4, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->snsManager:Lcom/lge/sns/SnsManager;

    invoke-virtual {v4, p0}, Lcom/lge/sns/SnsManager;->getAccount(Landroid/content/Context;)Lcom/lge/sns/account/IAccountFacade;

    move-result-object v0

    .line 182
    .local v0, accountFacade:Lcom/lge/sns/account/IAccountFacade;
    iget-object v4, p0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->snsId:Ljava/lang/String;

    invoke-interface {v0, v4}, Lcom/lge/sns/account/IAccountFacade;->getUid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 183
    .local v3, userId:Ljava/lang/String;
    iget-object v4, p0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->feedFacade:Lcom/lge/sns/feed/IFeedFacade;

    iget-object v5, p0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->snsId:Ljava/lang/String;

    invoke-interface {v4, v5, v3, p0}, Lcom/lge/sns/feed/IFeedFacade;->refreshFeedListAsync(Ljava/lang/String;Ljava/lang/String;Lcom/lge/sns/feed/IFeedFacade$FeedUpdateCallback;)Z

    .line 193
    .end local v0           #accountFacade:Lcom/lge/sns/account/IAccountFacade;
    .end local v3           #userId:Ljava/lang/String;
    :cond_1b
    :goto_1b
    return-void

    .line 185
    :cond_1c
    const/4 v4, 0x2

    if-ne p1, v4, :cond_1b

    .line 186
    if-ne p2, v5, :cond_1b

    .line 187
    const-string v4, "feed_id"

    invoke-virtual {p3, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 188
    .local v1, feedId:J
    cmp-long v4, v1, v6

    if-lez v4, :cond_1b

    .line 189
    iget-object v4, p0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->feedFacade:Lcom/lge/sns/feed/IFeedFacade;

    invoke-interface {v4, v1, v2}, Lcom/lge/sns/feed/IFeedFacade;->removeFeed(J)Lcom/lge/sns/feed/Feed;

    goto :goto_1b
.end method

.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .registers 11
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "id"

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v2

    invoke-interface {v2, p3, p4}, Landroid/widget/ExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/sns/feed/Feed;

    .line 137
    .local v0, currentFeed:Lcom/lge/sns/feed/Feed;
    iget-object v2, p0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->feedFacade:Lcom/lge/sns/feed/IFeedFacade;

    invoke-interface {v2, v0, p0}, Lcom/lge/sns/feed/IFeedFacade;->getFeedDataAsync(Lcom/lge/sns/feed/Feed;Lcom/lge/sns/feed/IFeedFacade$FeedDataUpdateCallback;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 138
    const v2, 0x7f05002a

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 141
    :cond_1d
    const v2, 0x7f08001a

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 142
    .local v1, newIconView:Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_31

    .line 143
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 146
    :cond_31
    invoke-super/range {p0 .. p6}, Landroid/app/ExpandableListActivity;->onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z

    move-result v2

    return v2
.end method

.method public onContentChanged()V
    .registers 3

    .prologue
    .line 119
    invoke-super {p0}, Landroid/app/ExpandableListActivity;->onContentChanged()V

    .line 120
    invoke-virtual {p0}, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v0

    .line 121
    .local v0, view:Landroid/widget/ExpandableListView;
    const v1, 0x7f080020

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setId(I)V

    .line 122
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 98
    invoke-super {p0, p1}, Landroid/app/ExpandableListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    sget-object v3, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->snsManager:Lcom/lge/sns/SnsManager;

    invoke-virtual {v3, p0}, Lcom/lge/sns/SnsManager;->getFeeds(Landroid/content/Context;)Lcom/lge/sns/feed/IFeedFacade;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->feedFacade:Lcom/lge/sns/feed/IFeedFacade;

    .line 102
    invoke-virtual {p0}, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 103
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "sns_id"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->snsId:Ljava/lang/String;

    .line 105
    new-instance v3, Lcom/lge/sns/feed/ui/myspace/MySpaceHome$MyExpandableListAdapter;

    invoke-direct {v3, p0}, Lcom/lge/sns/feed/ui/myspace/MySpaceHome$MyExpandableListAdapter;-><init>(Lcom/lge/sns/feed/ui/myspace/MySpaceHome;)V

    iput-object v3, p0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->mAdapter:Lcom/lge/sns/feed/ui/myspace/MySpaceHome$MyExpandableListAdapter;

    .line 106
    iget-object v3, p0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->mAdapter:Lcom/lge/sns/feed/ui/myspace/MySpaceHome$MyExpandableListAdapter;

    invoke-virtual {p0, v3}, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->setListAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 107
    invoke-virtual {p0}, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->mInflater:Landroid/view/LayoutInflater;

    .line 109
    invoke-direct {p0}, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->updateContent()V

    .line 111
    invoke-virtual {p0}, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v2

    .line 112
    .local v2, view:Landroid/widget/ExpandableListView;
    const v3, 0x7f080020

    invoke-virtual {v2, v3}, Landroid/widget/ExpandableListView;->setId(I)V

    .line 113
    const/4 v0, 0x0

    .local v0, i:I
    :goto_37
    sget-object v3, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->groupNameMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-ge v0, v3, :cond_45

    .line 114
    invoke-virtual {v2, v0}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    .line 116
    :cond_45
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 6
    .parameter "id"

    .prologue
    .line 196
    packed-switch p1, :pswitch_data_2a

    .line 211
    const/4 v1, 0x0

    :goto_4
    return-object v1

    .line 198
    :pswitch_5
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 199
    .local v0, refreshDialog:Landroid/app/ProgressDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 200
    const v1, 0x7f050009

    invoke-virtual {p0, v1}, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 201
    const/4 v1, -0x1

    const v2, 0x7f05000a

    invoke-virtual {p0, v2}, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/lge/sns/feed/ui/myspace/MySpaceHome$1;

    invoke-direct {v3, p0}, Lcom/lge/sns/feed/ui/myspace/MySpaceHome$1;-><init>(Lcom/lge/sns/feed/ui/myspace/MySpaceHome;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    move-object v1, v0

    .line 207
    goto :goto_4

    .line 196
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

    .line 150
    const v0, 0x7f05000e

    invoke-virtual {p0, v0}, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 152
    const v0, 0x7f050072

    invoke-virtual {p0, v0}, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108003e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 155
    return v3
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 130
    invoke-super {p0}, Landroid/app/ExpandableListActivity;->onDestroy()V

    .line 131
    iget-object v0, p0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->feedFacade:Lcom/lge/sns/feed/IFeedFacade;

    invoke-interface {v0, p0}, Lcom/lge/sns/feed/IFeedFacade;->removeFeedUpdateListener(Lcom/lge/sns/feed/IFeedFacade$FeedUpdateListener;)V

    .line 132
    return-void
.end method

.method public onFeedAdded(Lcom/lge/sns/feed/Feed;)V
    .registers 3
    .parameter "feed"

    .prologue
    .line 418
    new-instance v0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome$10;

    invoke-direct {v0, p0, p1}, Lcom/lge/sns/feed/ui/myspace/MySpaceHome$10;-><init>(Lcom/lge/sns/feed/ui/myspace/MySpaceHome;Lcom/lge/sns/feed/Feed;)V

    invoke-virtual {p0, v0}, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 429
    return-void
.end method

.method public onFeedDataUpdateFail(Lcom/lge/sns/SnsException;)V
    .registers 5
    .parameter "e"

    .prologue
    .line 398
    instance-of v1, p1, Lcom/lge/sns/UnauthorizatedException;

    if-eqz v1, :cond_1f

    .line 399
    new-instance v1, Lcom/lge/sns/feed/ui/myspace/MySpaceHome$8;

    invoke-direct {v1, p0}, Lcom/lge/sns/feed/ui/myspace/MySpaceHome$8;-><init>(Lcom/lge/sns/feed/ui/myspace/MySpaceHome;)V

    invoke-virtual {p0, v1}, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 404
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.sns.account.intent.action.VIEW_CREDENTIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 405
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "sns_id"

    iget-object v2, p0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->snsId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 406
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->startActivityForResult(Landroid/content/Intent;I)V

    .line 415
    .end local v0           #intent:Landroid/content/Intent;
    :goto_1e
    return-void

    .line 408
    :cond_1f
    new-instance v1, Lcom/lge/sns/feed/ui/myspace/MySpaceHome$9;

    invoke-direct {v1, p0}, Lcom/lge/sns/feed/ui/myspace/MySpaceHome$9;-><init>(Lcom/lge/sns/feed/ui/myspace/MySpaceHome;)V

    invoke-virtual {p0, v1}, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1e
.end method

.method public onFeedDataUpdateFinished(JLjava/lang/String;Landroid/net/Uri;)V
    .registers 8
    .parameter "feedId"
    .parameter "feedType"
    .parameter "dataUri"

    .prologue
    .line 375
    new-instance v1, Lcom/lge/sns/feed/ui/myspace/MySpaceHome$7;

    invoke-direct {v1, p0}, Lcom/lge/sns/feed/ui/myspace/MySpaceHome$7;-><init>(Lcom/lge/sns/feed/ui/myspace/MySpaceHome;)V

    invoke-virtual {p0, v1}, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 381
    if-eqz p4, :cond_2a

    .line 382
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 383
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 385
    const-string v1, "FR"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 386
    const-string v1, "feed_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 387
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->startActivityForResult(Landroid/content/Intent;I)V

    .line 395
    .end local v0           #intent:Landroid/content/Intent;
    :goto_25
    return-void

    .line 389
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_26
    invoke-virtual {p0, v0}, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->startActivity(Landroid/content/Intent;)V

    goto :goto_25

    .line 393
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2a
    const v1, 0x7f05000d

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_25
.end method

.method public onFeedDataUpdateStarted()V
    .registers 2

    .prologue
    .line 367
    new-instance v0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome$6;

    invoke-direct {v0, p0}, Lcom/lge/sns/feed/ui/myspace/MySpaceHome$6;-><init>(Lcom/lge/sns/feed/ui/myspace/MySpaceHome;)V

    invoke-virtual {p0, v0}, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 372
    return-void
.end method

.method public onFeedRemoved(Lcom/lge/sns/feed/Feed;)V
    .registers 3
    .parameter "feed"

    .prologue
    .line 440
    new-instance v0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome$12;

    invoke-direct {v0, p0, p1}, Lcom/lge/sns/feed/ui/myspace/MySpaceHome$12;-><init>(Lcom/lge/sns/feed/ui/myspace/MySpaceHome;Lcom/lge/sns/feed/Feed;)V

    invoke-virtual {p0, v0}, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 445
    return-void
.end method

.method public onFeedUpdateFail(Ljava/lang/String;Ljava/lang/String;Lcom/lge/sns/SnsException;)V
    .registers 6
    .parameter "snsId"
    .parameter "userId"
    .parameter "e"

    .prologue
    .line 347
    instance-of v1, p3, Lcom/lge/sns/UnauthorizatedException;

    if-eqz v1, :cond_1d

    .line 348
    new-instance v1, Lcom/lge/sns/feed/ui/myspace/MySpaceHome$4;

    invoke-direct {v1, p0}, Lcom/lge/sns/feed/ui/myspace/MySpaceHome$4;-><init>(Lcom/lge/sns/feed/ui/myspace/MySpaceHome;)V

    invoke-virtual {p0, v1}, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 353
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.sns.account.intent.action.VIEW_CREDENTIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 354
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "sns_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 355
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->startActivityForResult(Landroid/content/Intent;I)V

    .line 364
    .end local v0           #intent:Landroid/content/Intent;
    :goto_1c
    return-void

    .line 357
    :cond_1d
    new-instance v1, Lcom/lge/sns/feed/ui/myspace/MySpaceHome$5;

    invoke-direct {v1, p0}, Lcom/lge/sns/feed/ui/myspace/MySpaceHome$5;-><init>(Lcom/lge/sns/feed/ui/myspace/MySpaceHome;)V

    invoke-virtual {p0, v1}, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1c
.end method

.method public onFeedUpdateFinished(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .parameter "snsId"
    .parameter "userId"
    .parameter "count"

    .prologue
    .line 337
    new-instance v0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome$3;

    invoke-direct {v0, p0, p3}, Lcom/lge/sns/feed/ui/myspace/MySpaceHome$3;-><init>(Lcom/lge/sns/feed/ui/myspace/MySpaceHome;I)V

    invoke-virtual {p0, v0}, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 344
    return-void
.end method

.method public onFeedUpdateStarted(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "snsId"
    .parameter "userId"

    .prologue
    .line 329
    new-instance v0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome$2;

    invoke-direct {v0, p0}, Lcom/lge/sns/feed/ui/myspace/MySpaceHome$2;-><init>(Lcom/lge/sns/feed/ui/myspace/MySpaceHome;)V

    invoke-virtual {p0, v0}, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 334
    return-void
.end method

.method public onFeedUpdated(Lcom/lge/sns/feed/Feed;)V
    .registers 3
    .parameter "feed"

    .prologue
    .line 432
    new-instance v0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome$11;

    invoke-direct {v0, p0, p1}, Lcom/lge/sns/feed/ui/myspace/MySpaceHome$11;-><init>(Lcom/lge/sns/feed/ui/myspace/MySpaceHome;Lcom/lge/sns/feed/Feed;)V

    invoke-virtual {p0, v0}, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 437
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 9
    .parameter "item"

    .prologue
    const/4 v6, 0x1

    .line 159
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    if-nez v4, :cond_29

    .line 160
    sget-object v4, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->snsManager:Lcom/lge/sns/SnsManager;

    invoke-virtual {v4, p0}, Lcom/lge/sns/SnsManager;->getAccount(Landroid/content/Context;)Lcom/lge/sns/account/IAccountFacade;

    move-result-object v0

    .line 161
    .local v0, accountFacade:Lcom/lge/sns/account/IAccountFacade;
    iget-object v4, p0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->snsId:Ljava/lang/String;

    invoke-interface {v0, v4}, Lcom/lge/sns/account/IAccountFacade;->getUid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 162
    .local v3, userId:Ljava/lang/String;
    iget-object v4, p0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->feedFacade:Lcom/lge/sns/feed/IFeedFacade;

    iget-object v5, p0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->snsId:Ljava/lang/String;

    invoke-interface {v4, v5, v3, p0}, Lcom/lge/sns/feed/IFeedFacade;->refreshFeedListAsync(Ljava/lang/String;Ljava/lang/String;Lcom/lge/sns/feed/IFeedFacade$FeedUpdateCallback;)Z

    move-result v4

    if-nez v4, :cond_28

    .line 163
    const v4, 0x7f05002a

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 175
    .end local v0           #accountFacade:Lcom/lge/sns/account/IAccountFacade;
    .end local v3           #userId:Ljava/lang/String;
    :cond_28
    :goto_28
    return v6

    .line 165
    :cond_29
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    if-ne v4, v6, :cond_28

    .line 166
    iget-object v4, p0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->mAdapter:Lcom/lge/sns/feed/ui/myspace/MySpaceHome$MyExpandableListAdapter;

    invoke-virtual {v4}, Lcom/lge/sns/feed/ui/myspace/MySpaceHome$MyExpandableListAdapter;->getSelectedFeed()Lcom/lge/sns/feed/Feed;

    move-result-object v1

    .line 167
    .local v1, currentFeed:Lcom/lge/sns/feed/Feed;
    if-eqz v1, :cond_28

    .line 168
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.lge.sns.message.intent.action.MESSAGE_SEND"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 169
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "sns_id"

    invoke-virtual {v1}, Lcom/lge/sns/feed/Feed;->getSnsId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    const-string v4, "recipient_id"

    invoke-virtual {v1}, Lcom/lge/sns/feed/Feed;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    invoke-virtual {p0, v2}, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->startActivity(Landroid/content/Intent;)V

    goto :goto_28
.end method
