.class public Lcom/android/providers/subscribedfeeds/SubscribedFeedsSyncAdapter;
.super Lcom/google/android/providers/AbstractGDataSyncAdapter;
.source "SubscribedFeedsSyncAdapter.java"


# static fields
.field private static final FEED_URL:Ljava/lang/String; = "https://android.clients.google.com/gsync/sub"

.field private static final ROUTINGINFO_PARAMETER:Ljava/lang/String; = "routinginfo"


# instance fields
.field private final mSubscribedFeedsClient:Lcom/google/wireless/gdata/subscribedfeeds/client/SubscribedFeedsClient;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/content/SyncableContentProvider;)V
    .registers 7
    .parameter "context"
    .parameter "provider"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/google/android/providers/AbstractGDataSyncAdapter;-><init>(Landroid/content/Context;Landroid/content/SyncableContentProvider;)V

    .line 61
    new-instance v0, Lcom/google/wireless/gdata/subscribedfeeds/client/SubscribedFeedsClient;

    new-instance v1, Lcom/google/android/gdata/client/AndroidGDataClient;

    invoke-direct {v1, p1}, Lcom/google/android/gdata/client/AndroidGDataClient;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/google/wireless/gdata/subscribedfeeds/parser/xml/XmlSubscribedFeedsGDataParserFactory;

    new-instance v3, Lcom/google/android/gdata/client/AndroidXmlParserFactory;

    invoke-direct {v3}, Lcom/google/android/gdata/client/AndroidXmlParserFactory;-><init>()V

    invoke-direct {v2, v3}, Lcom/google/wireless/gdata/subscribedfeeds/parser/xml/XmlSubscribedFeedsGDataParserFactory;-><init>(Lcom/google/wireless/gdata/parser/xml/XmlParserFactory;)V

    invoke-direct {v0, v1, v2}, Lcom/google/wireless/gdata/subscribedfeeds/client/SubscribedFeedsClient;-><init>(Lcom/google/wireless/gdata/client/GDataClient;Lcom/google/wireless/gdata/client/GDataParserFactory;)V

    iput-object v0, p0, Lcom/android/providers/subscribedfeeds/SubscribedFeedsSyncAdapter;->mSubscribedFeedsClient:Lcom/google/wireless/gdata/subscribedfeeds/client/SubscribedFeedsClient;

    .line 66
    return-void
.end method


# virtual methods
.method protected cursorToEntry(Landroid/content/SyncContext;Landroid/database/Cursor;Lcom/google/wireless/gdata/data/Entry;Ljava/lang/Object;)Ljava/lang/String;
    .registers 18
    .parameter "context"
    .parameter "c"
    .parameter "baseEntry"
    .parameter "syncInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 165
    const-string v10, "_sync_account"

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, account:Ljava/lang/String;
    const-string v10, "service"

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 167
    .local v8, service:Ljava/lang/String;
    const-string v10, "_sync_id"

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 168
    .local v7, id:Ljava/lang/String;
    const-string v10, "feed"

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 172
    .local v6, feed:Ljava/lang/String;
    :try_start_28
    invoke-virtual {p0}, Lcom/android/providers/subscribedfeeds/SubscribedFeedsSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v1, v8}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->getAuthToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2f
    .catch Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper$AuthenticationException; {:try_start_28 .. :try_end_2f} :catch_7a
    .catch Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException; {:try_start_28 .. :try_end_2f} :catch_b6

    move-result-object v2

    .line 186
    .local v2, authToken:Ljava/lang/String;
    new-instance v9, Lcom/google/wireless/gdata/subscribedfeeds/data/FeedUrl;

    invoke-direct {v9, v6, v8, v2}, Lcom/google/wireless/gdata/subscribedfeeds/data/FeedUrl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    .local v9, subscribedFeedUrl:Lcom/google/wireless/gdata/subscribedfeeds/data/FeedUrl;
    move-object/from16 v0, p3

    check-cast v0, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;

    move-object v5, v0

    .line 188
    .local v5, entry:Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;
    if-eqz v7, :cond_61

    .line 189
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/providers/subscribedfeeds/SubscribedFeedsSyncAdapter;->getFeedUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;->setId(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v5}, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;->setEditUri(Ljava/lang/String;)V

    .line 192
    :cond_61
    invoke-virtual {p0, v1}, Lcom/android/providers/subscribedfeeds/SubscribedFeedsSyncAdapter;->getRoutingInfoForAccount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;->setRoutingInfo(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v5, v9}, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;->setSubscribedFeed(Lcom/google/wireless/gdata/subscribedfeeds/data/FeedUrl;)V

    .line 194
    invoke-virtual {v9}, Lcom/google/wireless/gdata/subscribedfeeds/data/FeedUrl;->getFeed()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;->setClientToken(Ljava/lang/String;)V

    .line 196
    const/4 v3, 0x0

    .line 197
    .local v3, createUrl:Ljava/lang/String;
    if-nez v7, :cond_79

    .line 198
    invoke-virtual {p0, v1}, Lcom/android/providers/subscribedfeeds/SubscribedFeedsSyncAdapter;->getFeedUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 200
    :cond_79
    return-object v3

    .line 174
    .end local v2           #authToken:Ljava/lang/String;
    .end local v3           #createUrl:Ljava/lang/String;
    .end local v5           #entry:Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;
    .end local v9           #subscribedFeedUrl:Lcom/google/wireless/gdata/subscribedfeeds/data/FeedUrl;
    :catch_7a
    move-exception v10

    move-object v4, v10

    .line 175
    .local v4, e:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper$AuthenticationException;
    const-string v10, "Sync"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "caught exception while attempting to get an authtoken for account "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", service "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper$AuthenticationException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    new-instance v10, Lcom/google/wireless/gdata/parser/ParseException;

    invoke-virtual {v4}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper$AuthenticationException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v4}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 179
    .end local v4           #e:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper$AuthenticationException;
    :catch_b6
    move-exception v10

    move-object v4, v10

    .line 180
    .local v4, e:Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException;
    const-string v10, "Sync"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "caught exception while attempting to get an authtoken for account "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", service "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    new-instance v10, Lcom/google/wireless/gdata/parser/ParseException;

    invoke-virtual {v4}, Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v4}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10
.end method

.method protected deletedCursorToEntry(Landroid/content/SyncContext;Landroid/database/Cursor;Lcom/google/wireless/gdata/data/Entry;)V
    .registers 7
    .parameter "context"
    .parameter "c"
    .parameter "entry"

    .prologue
    .line 205
    const-string v1, "_sync_id"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, id:Ljava/lang/String;
    invoke-virtual {p3, v0}, Lcom/google/wireless/gdata/data/Entry;->setId(Ljava/lang/String;)V

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/providers/subscribedfeeds/SubscribedFeedsSyncAdapter;->getAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/providers/subscribedfeeds/SubscribedFeedsSyncAdapter;->getFeedUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/google/wireless/gdata/data/Entry;->setEditUri(Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method protected getCursorForDeletedTable(Landroid/content/ContentProvider;Ljava/lang/Class;)Landroid/database/Cursor;
    .registers 9
    .parameter "cp"
    .parameter "entryClass"

    .prologue
    const/4 v2, 0x0

    .line 156
    const-class v0, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;

    if-eq p2, v0, :cond_22

    .line 157
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected entry class, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_22
    sget-object v1, Landroid/provider/SubscribedFeeds$Feeds;->DELETED_CONTENT_URI:Landroid/net/Uri;

    move-object v0, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected getCursorForTable(Landroid/content/ContentProvider;Ljava/lang/Class;)Landroid/database/Cursor;
    .registers 9
    .parameter "cp"
    .parameter "entryClass"

    .prologue
    const/4 v2, 0x0

    .line 148
    const-class v0, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;

    if-eq p2, v0, :cond_22

    .line 149
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected entry class, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_22
    sget-object v1, Landroid/provider/SubscribedFeeds$Feeds;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected getFeedEntryClass()Ljava/lang/Class;
    .registers 2

    .prologue
    .line 118
    const-class v0, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;

    return-object v0
.end method

.method protected getFeedUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "account"

    .prologue
    .line 114
    const-string v0, "https://android.clients.google.com/gsync/sub"

    return-object v0
.end method

.method protected getGDataServiceClient()Lcom/google/wireless/gdata/client/GDataServiceClient;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/providers/subscribedfeeds/SubscribedFeedsSyncAdapter;->mSubscribedFeedsClient:Lcom/google/wireless/gdata/subscribedfeeds/client/SubscribedFeedsClient;

    return-object v0
.end method

.method public getRoutingInfoForAccount(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "account"

    .prologue
    .line 222
    :try_start_0
    invoke-virtual {p0}, Lcom/android/providers/subscribedfeeds/SubscribedFeedsSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->getAndroidId(Landroid/content/Context;)J
    :try_end_7
    .catch Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException; {:try_start_0 .. :try_end_7} :catch_32

    move-result-wide v0

    .line 227
    .local v0, androidId:J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gtalk://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0, v1}, Landroid/provider/Settings;->getGTalkDeviceId(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .end local v0           #androidId:J
    :goto_31
    return-object v3

    .line 223
    :catch_32
    move-exception v3

    move-object v2, v3

    .line 224
    .local v2, e:Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException;
    const-string v3, "Sync"

    const-string v4, "Could not get routing info for account"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 225
    const/4 v3, 0x0

    goto :goto_31
.end method

.method public getServerDiffs(Landroid/content/SyncContext;Landroid/content/TempProviderSyncAdapter$SyncData;Landroid/content/SyncableContentProvider;Landroid/os/Bundle;Ljava/lang/Object;Landroid/content/SyncResult;)V
    .registers 8
    .parameter "context"
    .parameter "syncData"
    .parameter "tempProvider"
    .parameter "extras"
    .parameter "syncInfo"
    .parameter "syncResult"

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/content/SyncableContentProvider;->setContainsDiffs(Z)V

    .line 139
    invoke-super/range {p0 .. p6}, Lcom/google/android/providers/AbstractGDataSyncAdapter;->getServerDiffs(Landroid/content/SyncContext;Landroid/content/TempProviderSyncAdapter$SyncData;Landroid/content/SyncableContentProvider;Landroid/os/Bundle;Ljava/lang/Object;Landroid/content/SyncResult;)V

    .line 140
    return-void
.end method

.method protected handleAllDeletedUnavailable(Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData;Ljava/lang/String;)Z
    .registers 5
    .parameter "syncData"
    .parameter "feed"

    .prologue
    .line 74
    const-string v0, "Sync"

    const-string v1, "subscribed feeds don\'t use tombstones"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const/4 v0, 0x1

    return v0
.end method

.method protected hasTooManyDeletions(Landroid/content/SyncStats;)Z
    .registers 3
    .parameter "stats"

    .prologue
    .line 236
    const/4 v0, 0x0

    return v0
.end method

.method protected newEntry()Lcom/google/wireless/gdata/data/Entry;
    .registers 2

    .prologue
    .line 128
    new-instance v0, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;

    invoke-direct {v0}, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;-><init>()V

    return-object v0
.end method

.method public onAccountsChanged([Ljava/lang/String;)V
    .registers 2
    .parameter "accounts"

    .prologue
    .line 144
    return-void
.end method

.method protected updateProvider(Lcom/google/wireless/gdata/data/Feed;Ljava/lang/Long;Lcom/google/wireless/gdata/data/Entry;Landroid/content/ContentProvider;Ljava/lang/Object;)V
    .registers 16
    .parameter "feed"
    .parameter "syncLocalId"
    .parameter "baseEntry"
    .parameter "provider"
    .parameter "syncInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x2f

    .line 87
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 88
    .local v5, values:Landroid/content/ContentValues;
    const-string v7, "_sync_account"

    invoke-virtual {p0}, Lcom/android/providers/subscribedfeeds/SubscribedFeedsSyncAdapter;->getAccount()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v7, "_sync_local_id"

    invoke-virtual {v5, v7, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 90
    move-object v0, p3

    check-cast v0, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;

    move-object v2, v0

    .line 91
    .local v2, entry:Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;
    invoke-virtual {v2}, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;->getId()Ljava/lang/String;

    move-result-object v3

    .line 92
    .local v3, id:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;->getEditUri()Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, editUri:Ljava/lang/String;
    const/4 v6, 0x0

    .line 94
    .local v6, version:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4c

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4c

    .line 95
    invoke-virtual {v3, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 96
    .local v4, serverId:Ljava/lang/String;
    invoke-virtual {v1, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 97
    const-string v7, "_sync_id"

    invoke-virtual {v5, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v7, "_sync_version"

    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .end local v4           #serverId:Ljava/lang/String;
    :cond_4c
    invoke-virtual {p3}, Lcom/google/wireless/gdata/data/Entry;->isDeleted()Z

    move-result v7

    if-eqz v7, :cond_58

    .line 101
    sget-object v7, Landroid/provider/SubscribedFeeds$Feeds;->DELETED_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p4, v7, v5}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 110
    :goto_57
    return-void

    .line 103
    :cond_58
    const-string v7, "feed"

    invoke-virtual {v2}, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;->getSubscribedFeed()Lcom/google/wireless/gdata/subscribedfeeds/data/FeedUrl;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/wireless/gdata/subscribedfeeds/data/FeedUrl;->getFeed()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_70

    .line 105
    const-string v7, "_sync_time"

    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_70
    const-string v7, "_sync_dirty"

    const-string v8, "0"

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    sget-object v7, Landroid/provider/SubscribedFeeds$Feeds;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p4, v7, v5}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_57
.end method

.method protected updateQueryParameters(Lcom/google/wireless/gdata/client/QueryParams;)V
    .registers 4
    .parameter "params"

    .prologue
    .line 123
    const-string v0, "routinginfo"

    invoke-virtual {p0}, Lcom/android/providers/subscribedfeeds/SubscribedFeedsSyncAdapter;->getAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/providers/subscribedfeeds/SubscribedFeedsSyncAdapter;->getRoutingInfoForAccount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/wireless/gdata/client/QueryParams;->setParamValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return-void
.end method
