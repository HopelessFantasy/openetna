.class public Lcom/lge/sns/feed/ui/FeedList;
.super Landroid/app/ListActivity;
.source "FeedList.java"

# interfaces
.implements Lcom/lge/sns/feed/IFeedFacade$FeedUpdateCallback;
.implements Lcom/lge/sns/feed/IFeedFacade$FeedDataUpdateCallback;
.implements Lcom/lge/sns/feed/IFeedFacade$FeedUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/sns/feed/ui/FeedList$FeedListAdapter;
    }
.end annotation


# static fields
.field private static final CONTEXT_MENU_ID_DELETE:I = 0x0

.field private static final DIALOG_REFRESH:I = 0x3e8

.field private static final MENU_ID_NEW_SN_MESSAGE:I = 0x1

.field private static final MENU_ID_REFRESH:I = 0x0

.field private static final REQUEST_FRIENDS_LIST:I = 0x4

.field private static final REQUEST_FRIEND_REQUEST:I = 0x3

.field private static final REQUEST_SIGNIN_FOR_GET_FEED_DATA:I = 0x2

.field private static final REQUEST_SIGNIN_FOR_REFRESH_FEED_LIST:I = 0x1

.field private static final TAG:Ljava/lang/String; = "FeedList"

.field private static snsManager:Lcom/lge/sns/SnsManager;

.field private static final textTitleMap:Ljava/util/Map;
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


# instance fields
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

.field private isRetryForGetFeedData:Z

.field private isRetryForRefreshFeedList:Z

.field private mAdapter:Lcom/lge/sns/feed/ui/FeedList$FeedListAdapter;

.field private mFeedFacade:Lcom/lge/sns/feed/IFeedFacade;

.field private selectedFeed:Lcom/lge/sns/feed/Feed;

.field private snsId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lge/sns/feed/ui/FeedList;->textTitleMap:Ljava/util/Map;

    .line 57
    sget-object v0, Lcom/lge/sns/feed/ui/FeedList;->textTitleMap:Ljava/util/Map;

    const-string v1, "PS"

    const v2, 0x7f050017

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/lge/sns/feed/ui/FeedList;->textTitleMap:Ljava/util/Map;

    const-string v1, "PC"

    const v2, 0x7f050018

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/lge/sns/feed/ui/FeedList;->textTitleMap:Ljava/util/Map;

    const-string v1, "PP"

    const v2, 0x7f050019

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/lge/sns/feed/ui/FeedList;->textTitleMap:Ljava/util/Map;

    const-string v1, "MC"

    const v2, 0x7f05001a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/lge/sns/feed/ui/FeedList;->textTitleMap:Ljava/util/Map;

    const-string v1, "FR"

    const v2, 0x7f05001b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v0

    sput-object v0, Lcom/lge/sns/feed/ui/FeedList;->snsManager:Lcom/lge/sns/SnsManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 69
    iput-object v0, p0, Lcom/lge/sns/feed/ui/FeedList;->snsId:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lcom/lge/sns/feed/ui/FeedList;->feedTypeList:[Ljava/lang/String;

    .line 71
    iput-object v0, p0, Lcom/lge/sns/feed/ui/FeedList;->feedList:Ljava/util/List;

    .line 72
    sget-object v0, Lcom/lge/sns/feed/ui/FeedList;->snsManager:Lcom/lge/sns/SnsManager;

    invoke-virtual {v0, p0}, Lcom/lge/sns/SnsManager;->getFeeds(Landroid/content/Context;)Lcom/lge/sns/feed/IFeedFacade;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/feed/ui/FeedList;->mFeedFacade:Lcom/lge/sns/feed/IFeedFacade;

    .line 75
    iput-boolean v1, p0, Lcom/lge/sns/feed/ui/FeedList;->isRetryForRefreshFeedList:Z

    .line 76
    iput-boolean v1, p0, Lcom/lge/sns/feed/ui/FeedList;->isRetryForGetFeedData:Z

    .line 430
    return-void
.end method

.method static synthetic access$000(Lcom/lge/sns/feed/ui/FeedList;Ljava/lang/String;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/lge/sns/feed/ui/FeedList;->isValidFeedType(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/lge/sns/feed/ui/FeedList;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lge/sns/feed/ui/FeedList;->feedList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/sns/feed/ui/FeedList;Ljava/util/List;Lcom/lge/sns/feed/Feed;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/lge/sns/feed/ui/FeedList;->findLocation(Ljava/util/List;Lcom/lge/sns/feed/Feed;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/lge/sns/feed/ui/FeedList;)Lcom/lge/sns/feed/ui/FeedList$FeedListAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lge/sns/feed/ui/FeedList;->mAdapter:Lcom/lge/sns/feed/ui/FeedList$FeedListAdapter;

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
    .line 386
    .local p1, fl:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/feed/Feed;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 387
    .local v2, l:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    if-ge v1, v2, :cond_20

    .line 388
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/sns/feed/Feed;

    .line 389
    .local v0, currentFeed:Lcom/lge/sns/feed/Feed;
    invoke-virtual {v0}, Lcom/lge/sns/feed/Feed;->getPublished()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {p2}, Lcom/lge/sns/feed/Feed;->getPublished()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v3

    if-gtz v3, :cond_1d

    move v3, v1

    .line 393
    .end local v0           #currentFeed:Lcom/lge/sns/feed/Feed;
    :goto_1c
    return v3

    .line 387
    .restart local v0       #currentFeed:Lcom/lge/sns/feed/Feed;
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .end local v0           #currentFeed:Lcom/lge/sns/feed/Feed;
    :cond_20
    move v3, v2

    .line 393
    goto :goto_1c
.end method

.method private isValidFeedType(Ljava/lang/String;)Z
    .registers 8
    .parameter "currentFeedType"

    .prologue
    const/4 v5, 0x1

    .line 421
    iget-object v0, p0, Lcom/lge/sns/feed/ui/FeedList;->feedTypeList:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_5
    if-ge v2, v3, :cond_14

    aget-object v1, v0, v2

    .line 422
    .local v1, feedType:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v5, :cond_11

    move v4, v5

    .line 427
    .end local v1           #feedType:Ljava/lang/String;
    :goto_10
    return v4

    .line 421
    .restart local v1       #feedType:Ljava/lang/String;
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 427
    .end local v1           #feedType:Ljava/lang/String;
    :cond_14
    const/4 v4, 0x0

    goto :goto_10
.end method

.method private runFeedViewer(JLjava/lang/String;Landroid/net/Uri;)V
    .registers 7
    .parameter "rowId"
    .parameter "feedType"
    .parameter "dataUri"

    .prologue
    .line 173
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 174
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 176
    const-string v1, "FR"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 177
    const-string v1, "feed_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 178
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/lge/sns/feed/ui/FeedList;->startActivityForResult(Landroid/content/Intent;I)V

    .line 182
    :goto_1b
    return-void

    .line 180
    :cond_1c
    invoke-virtual {p0, v0}, Lcom/lge/sns/feed/ui/FeedList;->startActivity(Landroid/content/Intent;)V

    goto :goto_1b
.end method

.method private updateContent()V
    .registers 4

    .prologue
    .line 100
    iget-object v0, p0, Lcom/lge/sns/feed/ui/FeedList;->mFeedFacade:Lcom/lge/sns/feed/IFeedFacade;

    iget-object v1, p0, Lcom/lge/sns/feed/ui/FeedList;->snsId:Ljava/lang/String;

    iget-object v2, p0, Lcom/lge/sns/feed/ui/FeedList;->feedTypeList:[Ljava/lang/String;

    invoke-interface {v0, v1, v2, p0}, Lcom/lge/sns/feed/IFeedFacade;->getFeedList(Ljava/lang/String;[Ljava/lang/String;Lcom/lge/sns/feed/IFeedFacade$FeedUpdateListener;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/feed/ui/FeedList;->feedList:Ljava/util/List;

    .line 101
    new-instance v0, Lcom/lge/sns/feed/ui/FeedList$FeedListAdapter;

    const v1, 0x7f03000a

    iget-object v2, p0, Lcom/lge/sns/feed/ui/FeedList;->feedList:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2}, Lcom/lge/sns/feed/ui/FeedList$FeedListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/lge/sns/feed/ui/FeedList;->mAdapter:Lcom/lge/sns/feed/ui/FeedList$FeedListAdapter;

    .line 102
    iget-object v0, p0, Lcom/lge/sns/feed/ui/FeedList;->mAdapter:Lcom/lge/sns/feed/ui/FeedList$FeedListAdapter;

    invoke-virtual {p0, v0}, Lcom/lge/sns/feed/ui/FeedList;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 103
    return-void
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

    .line 118
    if-ne p1, v8, :cond_20

    .line 119
    if-ne p2, v7, :cond_1f

    .line 120
    iput-boolean v8, p0, Lcom/lge/sns/feed/ui/FeedList;->isRetryForRefreshFeedList:Z

    .line 121
    sget-object v6, Lcom/lge/sns/feed/ui/FeedList;->snsManager:Lcom/lge/sns/SnsManager;

    invoke-virtual {v6, p0}, Lcom/lge/sns/SnsManager;->getAccount(Landroid/content/Context;)Lcom/lge/sns/account/IAccountFacade;

    move-result-object v0

    .line 122
    .local v0, accountFacade:Lcom/lge/sns/account/IAccountFacade;
    iget-object v6, p0, Lcom/lge/sns/feed/ui/FeedList;->snsId:Ljava/lang/String;

    invoke-interface {v0, v6}, Lcom/lge/sns/account/IAccountFacade;->getUid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 123
    .local v5, userId:Ljava/lang/String;
    iget-object v6, p0, Lcom/lge/sns/feed/ui/FeedList;->mFeedFacade:Lcom/lge/sns/feed/IFeedFacade;

    iget-object v7, p0, Lcom/lge/sns/feed/ui/FeedList;->snsId:Ljava/lang/String;

    invoke-interface {v6, v7, v5, p0}, Lcom/lge/sns/feed/IFeedFacade;->refreshFeedListAsync(Ljava/lang/String;Ljava/lang/String;Lcom/lge/sns/feed/IFeedFacade$FeedUpdateCallback;)Z

    .line 150
    .end local v0           #accountFacade:Lcom/lge/sns/account/IAccountFacade;
    .end local v5           #userId:Ljava/lang/String;
    :cond_1f
    :goto_1f
    return-void

    .line 125
    :cond_20
    const/4 v6, 0x2

    if-ne p1, v6, :cond_47

    .line 126
    iget-object v6, p0, Lcom/lge/sns/feed/ui/FeedList;->selectedFeed:Lcom/lge/sns/feed/Feed;

    if-eqz v6, :cond_1f

    iget-object v6, p0, Lcom/lge/sns/feed/ui/FeedList;->selectedFeed:Lcom/lge/sns/feed/Feed;

    invoke-virtual {v6}, Lcom/lge/sns/feed/Feed;->getDataUri()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1f

    .line 127
    iput-boolean v8, p0, Lcom/lge/sns/feed/ui/FeedList;->isRetryForGetFeedData:Z

    .line 128
    iget-object v6, p0, Lcom/lge/sns/feed/ui/FeedList;->mFeedFacade:Lcom/lge/sns/feed/IFeedFacade;

    iget-object v7, p0, Lcom/lge/sns/feed/ui/FeedList;->selectedFeed:Lcom/lge/sns/feed/Feed;

    invoke-interface {v6, v7, p0}, Lcom/lge/sns/feed/IFeedFacade;->getFeedDataAsync(Lcom/lge/sns/feed/Feed;Lcom/lge/sns/feed/IFeedFacade$FeedDataUpdateCallback;)Z

    move-result v6

    if-nez v6, :cond_1f

    .line 129
    const v6, 0x7f05002a

    const/4 v7, 0x0

    invoke-static {p0, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_1f

    .line 132
    :cond_47
    const/4 v6, 0x3

    if-ne p1, v6, :cond_5c

    .line 133
    if-ne p2, v7, :cond_1f

    .line 134
    const-string v6, "feed_id"

    invoke-virtual {p3, v6, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 135
    .local v1, feedId:J
    cmp-long v6, v1, v9

    if-lez v6, :cond_1f

    .line 136
    iget-object v6, p0, Lcom/lge/sns/feed/ui/FeedList;->mFeedFacade:Lcom/lge/sns/feed/IFeedFacade;

    invoke-interface {v6, v1, v2}, Lcom/lge/sns/feed/IFeedFacade;->removeFeed(J)Lcom/lge/sns/feed/Feed;

    goto :goto_1f

    .line 139
    .end local v1           #feedId:J
    :cond_5c
    const/4 v6, 0x4

    if-ne p1, v6, :cond_1f

    .line 140
    if-ne p2, v7, :cond_1f

    .line 141
    const-string v6, "sns_id"

    invoke-virtual {p3, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 142
    .local v4, snsId:Ljava/lang/String;
    const-string v6, "friend_userid"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 144
    .restart local v5       #userId:Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.lge.sns.message.intent.action.MESSAGE_SEND"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 145
    .local v3, intent:Landroid/content/Intent;
    const-string v6, "sns_id"

    invoke-virtual {v3, v11, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    const-string v6, "recipient_id"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    invoke-virtual {p0, v3}, Lcom/lge/sns/feed/ui/FeedList;->startActivity(Landroid/content/Intent;)V

    goto :goto_1f
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 8
    .parameter "item"

    .prologue
    const/4 v5, 0x0

    .line 191
    :try_start_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_7} :catch_d

    .line 197
    .local v1, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget v3, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    if-gez v3, :cond_18

    move v3, v5

    .line 210
    .end local v1           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :goto_c
    return v3

    .line 192
    :catch_d
    move-exception v3

    move-object v0, v3

    .line 193
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v3, "FeedList"

    const-string v4, "bad menuInfo"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v5

    .line 194
    goto :goto_c

    .line 200
    .end local v0           #e:Ljava/lang/ClassCastException;
    .restart local v1       #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :cond_18
    iget-object v3, p0, Lcom/lge/sns/feed/ui/FeedList;->mAdapter:Lcom/lge/sns/feed/ui/FeedList$FeedListAdapter;

    iget v4, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v3, v4}, Lcom/lge/sns/feed/ui/FeedList$FeedListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/sns/feed/Feed;

    .line 202
    .local v2, selectedFeed:Lcom/lge/sns/feed/Feed;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_38

    move v3, v5

    .line 210
    goto :goto_c

    .line 204
    :pswitch_2b
    if-eqz v2, :cond_36

    .line 205
    iget-object v3, p0, Lcom/lge/sns/feed/ui/FeedList;->mFeedFacade:Lcom/lge/sns/feed/IFeedFacade;

    invoke-virtual {v2}, Lcom/lge/sns/feed/Feed;->getId()J

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lcom/lge/sns/feed/IFeedFacade;->removeFeed(J)Lcom/lge/sns/feed/Feed;

    .line 207
    :cond_36
    const/4 v3, 0x1

    goto :goto_c

    .line 202
    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_2b
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    const v1, 0x7f030009

    invoke-virtual {p0, v1}, Lcom/lge/sns/feed/ui/FeedList;->setContentView(I)V

    .line 82
    invoke-virtual {p0}, Lcom/lge/sns/feed/ui/FeedList;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    invoke-virtual {p0}, Lcom/lge/sns/feed/ui/FeedList;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 86
    invoke-virtual {p0}, Lcom/lge/sns/feed/ui/FeedList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 87
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "sns_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/sns/feed/ui/FeedList;->snsId:Ljava/lang/String;

    .line 88
    const-string v1, "feed_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/sns/feed/ui/FeedList;->feedTypeList:[Ljava/lang/String;

    .line 90
    iget-object v1, p0, Lcom/lge/sns/feed/ui/FeedList;->feedTypeList:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4a

    .line 91
    sget-object v1, Lcom/lge/sns/feed/ui/FeedList;->textTitleMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/lge/sns/feed/ui/FeedList;->feedTypeList:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/lge/sns/feed/ui/FeedList;->setTitle(I)V

    .line 96
    :goto_46
    invoke-direct {p0}, Lcom/lge/sns/feed/ui/FeedList;->updateContent()V

    .line 97
    return-void

    .line 93
    :cond_4a
    const v1, 0x7f050005

    invoke-virtual {p0, v1}, Lcom/lge/sns/feed/ui/FeedList;->setTitle(I)V

    goto :goto_46
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 6
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v1, 0x0

    .line 185
    const v0, 0x7f050016

    invoke-virtual {p0, v0}, Lcom/lge/sns/feed/ui/FeedList;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 186
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 6
    .parameter "id"

    .prologue
    .line 240
    packed-switch p1, :pswitch_data_2a

    .line 255
    const/4 v1, 0x0

    :goto_4
    return-object v1

    .line 242
    :pswitch_5
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 243
    .local v0, refreshDialog:Landroid/app/ProgressDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 244
    const v1, 0x7f050009

    invoke-virtual {p0, v1}, Lcom/lge/sns/feed/ui/FeedList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 245
    const/4 v1, -0x1

    const v2, 0x7f05000a

    invoke-virtual {p0, v2}, Lcom/lge/sns/feed/ui/FeedList;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/lge/sns/feed/ui/FeedList$1;

    invoke-direct {v3, p0}, Lcom/lge/sns/feed/ui/FeedList$1;-><init>(Lcom/lge/sns/feed/ui/FeedList;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    move-object v1, v0

    .line 251
    goto :goto_4

    .line 240
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

    .line 214
    const v0, 0x7f05000e

    invoke-virtual {p0, v0}, Lcom/lge/sns/feed/ui/FeedList;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 216
    const v0, 0x7f050072

    invoke-virtual {p0, v0}, Lcom/lge/sns/feed/ui/FeedList;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108003e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 219
    return v3
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 106
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 107
    iget-object v0, p0, Lcom/lge/sns/feed/ui/FeedList;->mFeedFacade:Lcom/lge/sns/feed/IFeedFacade;

    invoke-interface {v0, p0}, Lcom/lge/sns/feed/IFeedFacade;->removeFeedUpdateListener(Lcom/lge/sns/feed/IFeedFacade$FeedUpdateListener;)V

    .line 108
    return-void
.end method

.method public onFeedAdded(Lcom/lge/sns/feed/Feed;)V
    .registers 4
    .parameter "feed"

    .prologue
    .line 373
    iget-object v0, p0, Lcom/lge/sns/feed/ui/FeedList;->snsId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/lge/sns/feed/Feed;->getSnsId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 374
    new-instance v0, Lcom/lge/sns/feed/ui/FeedList$13;

    invoke-direct {v0, p0, p1}, Lcom/lge/sns/feed/ui/FeedList$13;-><init>(Lcom/lge/sns/feed/ui/FeedList;Lcom/lge/sns/feed/Feed;)V

    invoke-virtual {p0, v0}, Lcom/lge/sns/feed/ui/FeedList;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 383
    :cond_14
    return-void
.end method

.method public onFeedDataUpdateFail(Lcom/lge/sns/SnsException;)V
    .registers 5
    .parameter "e"

    .prologue
    .line 342
    instance-of v1, p1, Lcom/lge/sns/UnauthorizatedException;

    if-eqz v1, :cond_30

    .line 343
    iget-boolean v1, p0, Lcom/lge/sns/feed/ui/FeedList;->isRetryForGetFeedData:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_15

    .line 344
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lge/sns/feed/ui/FeedList;->isRetryForGetFeedData:Z

    .line 345
    new-instance v1, Lcom/lge/sns/feed/ui/FeedList$10;

    invoke-direct {v1, p0}, Lcom/lge/sns/feed/ui/FeedList$10;-><init>(Lcom/lge/sns/feed/ui/FeedList;)V

    invoke-virtual {p0, v1}, Lcom/lge/sns/feed/ui/FeedList;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 370
    :goto_14
    return-void

    .line 352
    :cond_15
    new-instance v1, Lcom/lge/sns/feed/ui/FeedList$11;

    invoke-direct {v1, p0}, Lcom/lge/sns/feed/ui/FeedList$11;-><init>(Lcom/lge/sns/feed/ui/FeedList;)V

    invoke-virtual {p0, v1}, Lcom/lge/sns/feed/ui/FeedList;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 358
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.sns.account.intent.action.VIEW_CREDENTIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 359
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "sns_id"

    iget-object v2, p0, Lcom/lge/sns/feed/ui/FeedList;->snsId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 360
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/lge/sns/feed/ui/FeedList;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_14

    .line 363
    .end local v0           #intent:Landroid/content/Intent;
    :cond_30
    new-instance v1, Lcom/lge/sns/feed/ui/FeedList$12;

    invoke-direct {v1, p0}, Lcom/lge/sns/feed/ui/FeedList$12;-><init>(Lcom/lge/sns/feed/ui/FeedList;)V

    invoke-virtual {p0, v1}, Lcom/lge/sns/feed/ui/FeedList;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_14
.end method

.method public onFeedDataUpdateFinished(JLjava/lang/String;Landroid/net/Uri;)V
    .registers 7
    .parameter "feedId"
    .parameter "feedType"
    .parameter "dataUri"

    .prologue
    .line 319
    iget-boolean v0, p0, Lcom/lge/sns/feed/ui/FeedList;->isRetryForGetFeedData:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 320
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/sns/feed/ui/FeedList;->isRetryForGetFeedData:Z

    .line 323
    :cond_8
    new-instance v0, Lcom/lge/sns/feed/ui/FeedList$8;

    invoke-direct {v0, p0}, Lcom/lge/sns/feed/ui/FeedList$8;-><init>(Lcom/lge/sns/feed/ui/FeedList;)V

    invoke-virtual {p0, v0}, Lcom/lge/sns/feed/ui/FeedList;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 329
    if-eqz p4, :cond_16

    .line 330
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lge/sns/feed/ui/FeedList;->runFeedViewer(JLjava/lang/String;Landroid/net/Uri;)V

    .line 339
    :goto_15
    return-void

    .line 333
    :cond_16
    new-instance v0, Lcom/lge/sns/feed/ui/FeedList$9;

    invoke-direct {v0, p0}, Lcom/lge/sns/feed/ui/FeedList$9;-><init>(Lcom/lge/sns/feed/ui/FeedList;)V

    invoke-virtual {p0, v0}, Lcom/lge/sns/feed/ui/FeedList;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_15
.end method

.method public onFeedDataUpdateStarted()V
    .registers 2

    .prologue
    .line 311
    new-instance v0, Lcom/lge/sns/feed/ui/FeedList$7;

    invoke-direct {v0, p0}, Lcom/lge/sns/feed/ui/FeedList$7;-><init>(Lcom/lge/sns/feed/ui/FeedList;)V

    invoke-virtual {p0, v0}, Lcom/lge/sns/feed/ui/FeedList;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 316
    return-void
.end method

.method public onFeedRemoved(Lcom/lge/sns/feed/Feed;)V
    .registers 4
    .parameter "feed"

    .prologue
    .line 409
    iget-object v0, p0, Lcom/lge/sns/feed/ui/FeedList;->snsId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/lge/sns/feed/Feed;->getSnsId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 410
    new-instance v0, Lcom/lge/sns/feed/ui/FeedList$15;

    invoke-direct {v0, p0, p1}, Lcom/lge/sns/feed/ui/FeedList$15;-><init>(Lcom/lge/sns/feed/ui/FeedList;Lcom/lge/sns/feed/Feed;)V

    invoke-virtual {p0, v0}, Lcom/lge/sns/feed/ui/FeedList;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 418
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

    .line 281
    instance-of v1, p3, Lcom/lge/sns/UnauthorizatedException;

    if-eqz v1, :cond_2d

    .line 282
    iget-boolean v1, p0, Lcom/lge/sns/feed/ui/FeedList;->isRetryForRefreshFeedList:Z

    if-ne v1, v2, :cond_15

    .line 283
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lge/sns/feed/ui/FeedList;->isRetryForRefreshFeedList:Z

    .line 284
    new-instance v1, Lcom/lge/sns/feed/ui/FeedList$4;

    invoke-direct {v1, p0}, Lcom/lge/sns/feed/ui/FeedList$4;-><init>(Lcom/lge/sns/feed/ui/FeedList;)V

    invoke-virtual {p0, v1}, Lcom/lge/sns/feed/ui/FeedList;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 308
    :goto_14
    return-void

    .line 291
    :cond_15
    new-instance v1, Lcom/lge/sns/feed/ui/FeedList$5;

    invoke-direct {v1, p0}, Lcom/lge/sns/feed/ui/FeedList$5;-><init>(Lcom/lge/sns/feed/ui/FeedList;)V

    invoke-virtual {p0, v1}, Lcom/lge/sns/feed/ui/FeedList;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 296
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.sns.account.intent.action.VIEW_CREDENTIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 297
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "sns_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    invoke-virtual {p0, v0, v2}, Lcom/lge/sns/feed/ui/FeedList;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_14

    .line 301
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2d
    new-instance v1, Lcom/lge/sns/feed/ui/FeedList$6;

    invoke-direct {v1, p0}, Lcom/lge/sns/feed/ui/FeedList$6;-><init>(Lcom/lge/sns/feed/ui/FeedList;)V

    invoke-virtual {p0, v1}, Lcom/lge/sns/feed/ui/FeedList;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_14
.end method

.method public onFeedUpdateFinished(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .parameter "snsId"
    .parameter "userId"
    .parameter "count"

    .prologue
    .line 267
    iget-boolean v0, p0, Lcom/lge/sns/feed/ui/FeedList;->isRetryForRefreshFeedList:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 268
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/sns/feed/ui/FeedList;->isRetryForRefreshFeedList:Z

    .line 271
    :cond_8
    new-instance v0, Lcom/lge/sns/feed/ui/FeedList$3;

    invoke-direct {v0, p0, p3}, Lcom/lge/sns/feed/ui/FeedList$3;-><init>(Lcom/lge/sns/feed/ui/FeedList;I)V

    invoke-virtual {p0, v0}, Lcom/lge/sns/feed/ui/FeedList;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 278
    return-void
.end method

.method public onFeedUpdateStarted(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "snsId"
    .parameter "userId"

    .prologue
    .line 259
    new-instance v0, Lcom/lge/sns/feed/ui/FeedList$2;

    invoke-direct {v0, p0}, Lcom/lge/sns/feed/ui/FeedList$2;-><init>(Lcom/lge/sns/feed/ui/FeedList;)V

    invoke-virtual {p0, v0}, Lcom/lge/sns/feed/ui/FeedList;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 264
    return-void
.end method

.method public onFeedUpdated(Lcom/lge/sns/feed/Feed;)V
    .registers 4
    .parameter "feed"

    .prologue
    .line 397
    iget-object v0, p0, Lcom/lge/sns/feed/ui/FeedList;->snsId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/lge/sns/feed/Feed;->getSnsId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 398
    new-instance v0, Lcom/lge/sns/feed/ui/FeedList$14;

    invoke-direct {v0, p0, p1}, Lcom/lge/sns/feed/ui/FeedList$14;-><init>(Lcom/lge/sns/feed/ui/FeedList;Lcom/lge/sns/feed/Feed;)V

    invoke-virtual {p0, v0}, Lcom/lge/sns/feed/ui/FeedList;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 406
    :cond_14
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 10
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/lge/sns/feed/ui/FeedList;->mAdapter:Lcom/lge/sns/feed/ui/FeedList$FeedListAdapter;

    invoke-virtual {v0, p3}, Lcom/lge/sns/feed/ui/FeedList$FeedListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/sns/feed/Feed;

    iput-object v0, p0, Lcom/lge/sns/feed/ui/FeedList;->selectedFeed:Lcom/lge/sns/feed/Feed;

    .line 155
    iget-object v0, p0, Lcom/lge/sns/feed/ui/FeedList;->selectedFeed:Lcom/lge/sns/feed/Feed;

    if-eqz v0, :cond_2b

    .line 156
    iget-object v0, p0, Lcom/lge/sns/feed/ui/FeedList;->selectedFeed:Lcom/lge/sns/feed/Feed;

    invoke-virtual {v0}, Lcom/lge/sns/feed/Feed;->getDataUri()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2c

    .line 157
    iget-object v0, p0, Lcom/lge/sns/feed/ui/FeedList;->mFeedFacade:Lcom/lge/sns/feed/IFeedFacade;

    iget-object v1, p0, Lcom/lge/sns/feed/ui/FeedList;->selectedFeed:Lcom/lge/sns/feed/Feed;

    invoke-interface {v0, v1, p0}, Lcom/lge/sns/feed/IFeedFacade;->getFeedDataAsync(Lcom/lge/sns/feed/Feed;Lcom/lge/sns/feed/IFeedFacade$FeedDataUpdateCallback;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 158
    const v0, 0x7f05002a

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 170
    :cond_2b
    :goto_2b
    return-void

    .line 161
    :cond_2c
    iget-object v0, p0, Lcom/lge/sns/feed/ui/FeedList;->selectedFeed:Lcom/lge/sns/feed/Feed;

    invoke-virtual {v0}, Lcom/lge/sns/feed/Feed;->getId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/lge/sns/feed/ui/FeedList;->selectedFeed:Lcom/lge/sns/feed/Feed;

    invoke-virtual {v2}, Lcom/lge/sns/feed/Feed;->getFeedType()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/sns/feed/ui/FeedList;->selectedFeed:Lcom/lge/sns/feed/Feed;

    invoke-virtual {v3}, Lcom/lge/sns/feed/Feed;->getDataUri()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/lge/sns/feed/ui/FeedList;->runFeedViewer(JLjava/lang/String;Landroid/net/Uri;)V

    .line 165
    iget-object v0, p0, Lcom/lge/sns/feed/ui/FeedList;->selectedFeed:Lcom/lge/sns/feed/Feed;

    invoke-virtual {v0}, Lcom/lge/sns/feed/Feed;->getOpened()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/lge/sns/feed/ui/FeedList;->selectedFeed:Lcom/lge/sns/feed/Feed;

    invoke-virtual {v0}, Lcom/lge/sns/feed/Feed;->getOpened()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2b

    .line 166
    :cond_5d
    iget-object v0, p0, Lcom/lge/sns/feed/ui/FeedList;->mFeedFacade:Lcom/lge/sns/feed/IFeedFacade;

    iget-object v1, p0, Lcom/lge/sns/feed/ui/FeedList;->selectedFeed:Lcom/lge/sns/feed/Feed;

    invoke-interface {v0, v1}, Lcom/lge/sns/feed/IFeedFacade;->updateFeedOpenDate(Lcom/lge/sns/feed/Feed;)V

    goto :goto_2b
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 8
    .parameter "item"

    .prologue
    const/4 v5, 0x1

    .line 223
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    if-nez v3, :cond_29

    .line 224
    sget-object v3, Lcom/lge/sns/feed/ui/FeedList;->snsManager:Lcom/lge/sns/SnsManager;

    invoke-virtual {v3, p0}, Lcom/lge/sns/SnsManager;->getAccount(Landroid/content/Context;)Lcom/lge/sns/account/IAccountFacade;

    move-result-object v0

    .line 225
    .local v0, accountFacade:Lcom/lge/sns/account/IAccountFacade;
    iget-object v3, p0, Lcom/lge/sns/feed/ui/FeedList;->snsId:Ljava/lang/String;

    invoke-interface {v0, v3}, Lcom/lge/sns/account/IAccountFacade;->getUid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 226
    .local v2, userId:Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/sns/feed/ui/FeedList;->mFeedFacade:Lcom/lge/sns/feed/IFeedFacade;

    iget-object v4, p0, Lcom/lge/sns/feed/ui/FeedList;->snsId:Ljava/lang/String;

    invoke-interface {v3, v4, v2, p0}, Lcom/lge/sns/feed/IFeedFacade;->refreshFeedListAsync(Ljava/lang/String;Ljava/lang/String;Lcom/lge/sns/feed/IFeedFacade$FeedUpdateCallback;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 227
    const v3, 0x7f05002a

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 236
    .end local v0           #accountFacade:Lcom/lge/sns/account/IAccountFacade;
    .end local v2           #userId:Ljava/lang/String;
    :cond_28
    :goto_28
    return v5

    .line 229
    :cond_29
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    if-ne v3, v5, :cond_28

    .line 230
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.PICK"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 231
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "vnd.lge.cursor.item/vnd.lge.sns.profile.friends"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    const-string v3, "sns_id"

    iget-object v4, p0, Lcom/lge/sns/feed/ui/FeedList;->snsId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    const/4 v3, 0x3

    invoke-virtual {p0, v1, v3}, Lcom/lge/sns/feed/ui/FeedList;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_28
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 111
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 112
    iget-object v0, p0, Lcom/lge/sns/feed/ui/FeedList;->mAdapter:Lcom/lge/sns/feed/ui/FeedList$FeedListAdapter;

    if-eqz v0, :cond_c

    .line 113
    iget-object v0, p0, Lcom/lge/sns/feed/ui/FeedList;->mAdapter:Lcom/lge/sns/feed/ui/FeedList$FeedListAdapter;

    invoke-virtual {v0}, Lcom/lge/sns/feed/ui/FeedList$FeedListAdapter;->notifyDataSetChanged()V

    .line 115
    :cond_c
    return-void
.end method
