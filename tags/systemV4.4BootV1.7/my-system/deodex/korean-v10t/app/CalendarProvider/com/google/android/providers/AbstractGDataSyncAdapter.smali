.class public abstract Lcom/google/android/providers/AbstractGDataSyncAdapter;
.super Landroid/content/TempProviderSyncAdapter;
.source "AbstractGDataSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/providers/AbstractGDataSyncAdapter$1;,
        Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData;,
        Lcom/google/android/providers/AbstractGDataSyncAdapter$ClientDiffType;
    }
.end annotation


# static fields
.field public static final ENTRY_DELETED:I = 0x1

.field public static final ENTRY_INVALID:I = 0x2

.field public static final ENTRY_OK:I = 0x0

.field private static final SCHEMA_HTTP:Ljava/lang/String; = "http://"

.field private static final SCHEMA_HTTPS:Ljava/lang/String; = "https://"

.field private static final SYNC_STATE_CONTENT_URI:Landroid/net/Uri; = null

.field protected static final TAG:Ljava/lang/String; = "Sync"


# instance fields
.field private mAccount:Ljava/lang/String;

.field private mAuthToken:Ljava/lang/String;

.field protected mServerEntries:I

.field protected mServerQueries:I

.field protected volatile mSyncCanceled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 443
    const-string v0, "content://syncstate/state"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/providers/AbstractGDataSyncAdapter;->SYNC_STATE_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/content/SyncableContentProvider;)V
    .registers 4
    .parameter "context"
    .parameter "provider"

    .prologue
    const/4 v0, 0x0

    .line 91
    invoke-direct {p0, p2}, Landroid/content/TempProviderSyncAdapter;-><init>(Landroid/content/SyncableContentProvider;)V

    .line 70
    iput-object v0, p0, Lcom/google/android/providers/AbstractGDataSyncAdapter;->mAccount:Ljava/lang/String;

    .line 71
    iput-object v0, p0, Lcom/google/android/providers/AbstractGDataSyncAdapter;->mAuthToken:Ljava/lang/String;

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/providers/AbstractGDataSyncAdapter;->mSyncCanceled:Z

    .line 92
    invoke-virtual {p0, p1}, Lcom/google/android/providers/AbstractGDataSyncAdapter;->setContext(Landroid/content/Context;)V

    .line 93
    return-void
.end method

.method private getSingleEntry(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/wireless/gdata/data/Entry;
    .registers 7
    .parameter "entryClass"
    .parameter "url"

    .prologue
    .line 1154
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/providers/AbstractGDataSyncAdapter;->getGDataServiceClient()Lcom/google/wireless/gdata/client/GDataServiceClient;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/providers/AbstractGDataSyncAdapter;->mAuthToken:Ljava/lang/String;

    invoke-virtual {v1, p1, p2, v2}, Lcom/google/wireless/gdata/client/GDataServiceClient;->getEntry(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/google/wireless/gdata/data/Entry;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v1

    .line 1157
    :goto_a
    return-object v1

    .line 1155
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 1156
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Sync"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error while fetching "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " as type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1157
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public static newBytesFromGDataSyncData(Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData;)[B
    .registers 3
    .parameter "syncData"

    .prologue
    .line 519
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 521
    .local v0, parcel:Landroid/os/Parcel;
    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {p0, v0, v1}, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 522
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_10

    move-result-object v1

    .line 524
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1

    :catchall_10
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public static newGDataSyncDataFromBytes([B)Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData;
    .registers 4
    .parameter "data"

    .prologue
    const/4 v2, 0x0

    .line 497
    if-eqz p0, :cond_1f

    .line 498
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 499
    .local v0, parcel:Landroid/os/Parcel;
    array-length v1, p0

    invoke-virtual {v0, p0, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 500
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 502
    :try_start_e
    sget-object v1, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData;
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_21
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_16} :catch_1b

    .line 507
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    move-object v1, p0

    .line 510
    .end local v0           #parcel:Landroid/os/Parcel;
    :goto_1a
    return-object v1

    .line 503
    .restart local v0       #parcel:Landroid/os/Parcel;
    :catch_1b
    move-exception v1

    .line 507
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 510
    .end local v0           #parcel:Landroid/os/Parcel;
    :cond_1f
    const/4 v1, 0x0

    goto :goto_1a

    .line 507
    .restart local v0       #parcel:Landroid/os/Parcel;
    :catchall_21
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public static rewriteUrlforAccount(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "account"
    .parameter "url"

    .prologue
    const-string v5, "https://"

    const-string v4, "http://"

    .line 1202
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "account is empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1203
    :cond_12
    const-string v2, "@"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1204
    .local v0, accountComponents:[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x2

    if-eq v2, v3, :cond_35

    .line 1205
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid account parameter, unable to find domain, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1208
    :cond_35
    const/4 v2, 0x1

    aget-object v1, v0, v2

    .line 1209
    .local v1, domain:Ljava/lang/String;
    const-string v2, "gmail.com"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_48

    const-string v2, "googlemail.com"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    :cond_48
    move-object v2, p1

    .line 1221
    :goto_49
    return-object v2

    .line 1213
    :cond_4a
    const-string v2, "https://"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_54

    move-object v2, p1

    .line 1214
    goto :goto_49

    .line 1217
    :cond_54
    const-string v2, "http://"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_75

    .line 1218
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid url parameter, unknown scheme: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1221
    :cond_75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "http://"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_49
.end method


# virtual methods
.method protected abstract cursorToEntry(Landroid/content/SyncContext;Landroid/database/Cursor;Lcom/google/wireless/gdata/data/Entry;Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation
.end method

.method protected abstract deletedCursorToEntry(Landroid/content/SyncContext;Landroid/database/Cursor;Lcom/google/wireless/gdata/data/Entry;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation
.end method

.method protected getAccount()Ljava/lang/String;
    .registers 2

    .prologue
    .line 415
    iget-object v0, p0, Lcom/google/android/providers/AbstractGDataSyncAdapter;->mAccount:Ljava/lang/String;

    return-object v0
.end method

.method protected getAuthToken()Ljava/lang/String;
    .registers 2

    .prologue
    .line 429
    iget-object v0, p0, Lcom/google/android/providers/AbstractGDataSyncAdapter;->mAuthToken:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract getCursorForDeletedTable(Landroid/content/ContentProvider;Ljava/lang/Class;)Landroid/database/Cursor;
.end method

.method protected abstract getCursorForTable(Landroid/content/ContentProvider;Ljava/lang/Class;)Landroid/database/Cursor;
.end method

.method protected abstract getFeedEntryClass()Ljava/lang/Class;
.end method

.method protected abstract getFeedUrl(Ljava/lang/String;)Ljava/lang/String;
.end method

.method protected abstract getGDataServiceClient()Lcom/google/wireless/gdata/client/GDataServiceClient;
.end method

.method public getMaxEntriesPerSync()I
    .registers 2

    .prologue
    .line 440
    const/16 v0, 0xc8

    return v0
.end method

.method public getServerDiffs(Landroid/content/SyncContext;Landroid/content/TempProviderSyncAdapter$SyncData;Landroid/content/SyncableContentProvider;Landroid/os/Bundle;Ljava/lang/Object;Landroid/content/SyncResult;)V
    .registers 17
    .parameter "context"
    .parameter "syncData"
    .parameter "tempProvider"
    .parameter "extras"
    .parameter "syncInfo"
    .parameter "syncResult"

    .prologue
    const-string v2, "feed"

    .line 538
    invoke-virtual {p0}, Lcom/google/android/providers/AbstractGDataSyncAdapter;->getAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/providers/AbstractGDataSyncAdapter;->getFeedUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 539
    .local v5, feedUrl:Ljava/lang/String;
    if-eqz p4, :cond_1c

    const-string v1, "feed"

    invoke-virtual {p4, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 540
    const-string v1, "feed"

    invoke-virtual {p4, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #feedUrl:Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 542
    .restart local v5       #feedUrl:Ljava/lang/String;
    :cond_1c
    const-string v1, "Downloading\u2026"

    invoke-virtual {p1, v1}, Landroid/content/SyncContext;->setStatusText(Ljava/lang/String;)V

    .line 543
    invoke-virtual {p0}, Lcom/google/android/providers/AbstractGDataSyncAdapter;->getFeedEntryClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/providers/AbstractGDataSyncAdapter;->getMaxEntriesPerSync()I

    move-result v7

    move-object v0, p2

    check-cast v0, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData;

    move-object v8, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v6, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v1 .. v9}, Lcom/google/android/providers/AbstractGDataSyncAdapter;->getServerDiffsImpl(Landroid/content/SyncContext;Landroid/content/SyncableContentProvider;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;ILcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData;Landroid/content/SyncResult;)V

    .line 545
    return-void
.end method

.method protected getServerDiffsImpl(Landroid/content/SyncContext;Landroid/content/SyncableContentProvider;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;ILcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData;Landroid/content/SyncResult;)V
    .registers 54
    .parameter "syncContext"
    .parameter "tempProvider"
    .parameter "feedEntryClass"
    .parameter "feedUrl"
    .parameter "syncInfo"
    .parameter "maxResults"
    .parameter "syncData"
    .parameter "syncResult"

    .prologue
    .line 563
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/providers/AbstractGDataSyncAdapter;->mSyncCanceled:Z

    move v4, v0

    if-eqz v4, :cond_8

    .line 805
    :cond_7
    :goto_7
    return-void

    .line 565
    :cond_8
    move-object/from16 v0, p7

    iget-object v0, v0, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData;->feedData:Ljava/util/Map;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p4

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;

    .line 567
    .local v26, feedSyncData:Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;
    if-nez v26, :cond_32

    .line 568
    const-string v4, "^https://"

    const-string v5, "http://"

    move-object/from16 v0, p4

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 569
    .local v31, httpFeedUrl:Ljava/lang/String;
    move-object/from16 v0, p7

    iget-object v0, v0, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData;->feedData:Ljava/util/Map;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    .end local v26           #feedSyncData:Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;
    check-cast v26, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;

    .line 572
    .end local v31           #httpFeedUrl:Ljava/lang/String;
    .restart local v26       #feedSyncData:Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;
    :cond_32
    const-wide/16 v33, 0x0

    .line 573
    .local v33, lastSyncTime:J
    if-eqz v26, :cond_3c

    .line 574
    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->lastUpdatedTime:J

    move-wide/from16 v33, v0

    .line 578
    :cond_3c
    new-instance v40, Landroid/text/format/Time;

    const-string v4, "UTC"

    move-object/from16 v0, v40

    move-object v1, v4

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 580
    .local v40, time:Landroid/text/format/Time;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/providers/AbstractGDataSyncAdapter;->getGDataServiceClient()Lcom/google/wireless/gdata/client/GDataServiceClient;

    move-result-object v16

    .line 582
    .local v16, client:Lcom/google/wireless/gdata/client/GDataServiceClient;
    invoke-virtual/range {v16 .. v16}, Lcom/google/wireless/gdata/client/GDataServiceClient;->createQueryParams()Lcom/google/wireless/gdata/client/QueryParams;

    move-result-object v36

    .line 583
    .local v36, params:Lcom/google/wireless/gdata/client/QueryParams;
    invoke-virtual/range {p2 .. p2}, Landroid/content/SyncableContentProvider;->getContainsDiffs()Z

    move-result v4

    if-eqz v4, :cond_7a

    .line 584
    const-wide/16 v9, 0x0

    cmp-long v4, v33, v9

    if-lez v4, :cond_7a

    .line 585
    move-object/from16 v0, v40

    move-wide/from16 v1, v33

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 586
    const/4 v4, 0x0

    move-object/from16 v0, v40

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v36

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata/client/QueryParams;->setUpdatedMin(Ljava/lang/String;)V

    .line 587
    const-string v4, "requirealldeleted"

    const-string v5, "true"

    move-object/from16 v0, v36

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/google/wireless/gdata/client/QueryParams;->setParamValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    :cond_7a
    const/16 v39, 0x1

    .line 592
    .local v39, startIndex:I
    const/16 v25, 0x0

    .line 593
    .local v25, expectedFirstId:Ljava/lang/String;
    if-eqz v26, :cond_ca

    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->hasMoreEntriesToFetch:Z

    move v4, v0

    if-eqz v4, :cond_ca

    .line 603
    move-object/from16 v0, v26

    iget v0, v0, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->endIndex:I

    move/from16 v39, v0

    .line 604
    if-gtz v39, :cond_b8

    .line 605
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bad startIndex, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", it must be greater than 0, SyncData is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 610
    :cond_b8
    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v36

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata/client/QueryParams;->setStartIndex(Ljava/lang/String;)V

    .line 611
    add-int/lit8 p6, p6, 0x1

    .line 612
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->lastId:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 615
    :cond_ca
    invoke-static/range {p6 .. p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v36

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata/client/QueryParams;->setMaxResults(Ljava/lang/String;)V

    .line 617
    const/4 v14, 0x0

    .line 618
    .local v14, lastId:Ljava/lang/String;
    const/16 v35, 0x0

    .line 619
    .local v35, numResults:I
    const/16 v37, 0x0

    .line 620
    .local v37, parser:Lcom/google/wireless/gdata/parser/GDataParser;
    const/16 v30, 0x0

    .line 622
    .local v30, feedUrlToQuery:Ljava/lang/String;
    :try_start_db
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/google/android/providers/AbstractGDataSyncAdapter;->updateQueryParameters(Lcom/google/wireless/gdata/client/QueryParams;)V

    .line 623
    move-object/from16 v0, v36

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata/client/QueryParams;->generateQueryUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_e9
    .catchall {:try_start_db .. :try_end_e9} :catchall_435
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_db .. :try_end_e9} :catch_2b3
    .catch Ljava/io/IOException; {:try_start_db .. :try_end_e9} :catch_313
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_db .. :try_end_e9} :catch_389

    move-result-object v30

    .line 626
    :try_start_ea
    new-instance v4, Ljava/net/URI;

    move-object v0, v4

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_f2
    .catchall {:try_start_ea .. :try_end_f2} :catchall_435
    .catch Ljava/net/URISyntaxException; {:try_start_ea .. :try_end_f2} :catch_176
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_ea .. :try_end_f2} :catch_2b3
    .catch Ljava/io/IOException; {:try_start_ea .. :try_end_f2} :catch_313
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_ea .. :try_end_f2} :catch_389

    .line 632
    :try_start_f2
    const-string v4, "Sync"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_132

    .line 633
    const-string v4, "Sync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Requesting feed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    const-string v4, "Sync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Using auth token "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/providers/AbstractGDataSyncAdapter;->getAuthToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    :cond_132
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/providers/AbstractGDataSyncAdapter;->getAuthToken()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    move-object/from16 v2, v30

    move-object v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/wireless/gdata/client/GDataServiceClient;->getParserForFeed(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/google/wireless/gdata/parser/GDataParser;

    move-result-object v37

    .line 637
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/providers/AbstractGDataSyncAdapter;->mServerQueries:I

    move v4, v0

    add-int/lit8 v4, v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/providers/AbstractGDataSyncAdapter;->mServerQueries:I

    .line 638
    invoke-interface/range {v37 .. v37}, Lcom/google/wireless/gdata/parser/GDataParser;->init()Lcom/google/wireless/gdata/data/Feed;

    move-result-object v5

    .line 639
    .local v5, feed:Lcom/google/wireless/gdata/data/Feed;
    invoke-virtual {v5}, Lcom/google/wireless/gdata/data/Feed;->getTotalResults()I

    move-result v41

    .line 640
    .local v41, totalResults:I
    invoke-virtual {v5}, Lcom/google/wireless/gdata/data/Feed;->getLastUpdated()Ljava/lang/String;

    move-result-object v27

    .line 642
    .local v27, feedUpdateDate:Ljava/lang/String;
    const/4 v7, 0x0

    .line 643
    .local v7, entry:Lcom/google/wireless/gdata/data/Entry;
    move-wide/from16 v23, v33

    .line 644
    .local v23, entryLastUpdated:J
    :goto_15c
    invoke-interface/range {v37 .. v37}, Lcom/google/wireless/gdata/parser/GDataParser;->hasMoreData()Z

    move-result v4

    if-eqz v4, :cond_4ac

    move/from16 v0, v35

    move/from16 v1, p6

    if-ge v0, v1, :cond_4ac

    .line 645
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/providers/AbstractGDataSyncAdapter;->mSyncCanceled:Z

    move v4, v0
    :try_end_16d
    .catchall {:try_start_f2 .. :try_end_16d} :catchall_435
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_f2 .. :try_end_16d} :catch_2b3
    .catch Ljava/io/IOException; {:try_start_f2 .. :try_end_16d} :catch_313
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_f2 .. :try_end_16d} :catch_389

    if-eqz v4, :cond_1b1

    .line 803
    if-eqz v37, :cond_7

    invoke-interface/range {v37 .. v37}, Lcom/google/wireless/gdata/parser/GDataParser;->close()V

    goto/16 :goto_7

    .line 627
    .end local v5           #feed:Lcom/google/wireless/gdata/data/Feed;
    .end local v7           #entry:Lcom/google/wireless/gdata/data/Entry;
    .end local v23           #entryLastUpdated:J
    .end local v27           #feedUpdateDate:Ljava/lang/String;
    .end local v41           #totalResults:I
    :catch_176
    move-exception v4

    move-object/from16 v20, v4

    .line 628
    .local v20, e:Ljava/net/URISyntaxException;
    :try_start_179
    const-string v4, "Sync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "the feed url "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not a valid URI"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 629
    move-object/from16 v0, p8

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v4, v0

    iget-wide v9, v4, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    iput-wide v9, v4, Landroid/content/SyncStats;->numParseExceptions:J
    :try_end_1aa
    .catchall {:try_start_179 .. :try_end_1aa} :catchall_435
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_179 .. :try_end_1aa} :catch_2b3
    .catch Ljava/io/IOException; {:try_start_179 .. :try_end_1aa} :catch_313
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_179 .. :try_end_1aa} :catch_389

    .line 803
    if-eqz v37, :cond_7

    invoke-interface/range {v37 .. v37}, Lcom/google/wireless/gdata/parser/GDataParser;->close()V

    goto/16 :goto_7

    .line 646
    .end local v20           #e:Ljava/net/URISyntaxException;
    .restart local v5       #feed:Lcom/google/wireless/gdata/data/Feed;
    .restart local v7       #entry:Lcom/google/wireless/gdata/data/Entry;
    .restart local v23       #entryLastUpdated:J
    .restart local v27       #feedUpdateDate:Ljava/lang/String;
    .restart local v41       #totalResults:I
    :cond_1b1
    :try_start_1b1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/providers/AbstractGDataSyncAdapter;->mServerEntries:I

    move v4, v0

    add-int/lit8 v4, v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/providers/AbstractGDataSyncAdapter;->mServerEntries:I
    :try_end_1bd
    .catchall {:try_start_1b1 .. :try_end_1bd} :catchall_435
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_1b1 .. :try_end_1bd} :catch_2b3
    .catch Ljava/io/IOException; {:try_start_1b1 .. :try_end_1bd} :catch_313
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_1b1 .. :try_end_1bd} :catch_389

    .line 647
    add-int/lit8 v35, v35, 0x1

    .line 649
    :try_start_1bf
    move-object/from16 v0, v37

    move-object v1, v7

    invoke-interface {v0, v1}, Lcom/google/wireless/gdata/parser/GDataParser;->readNextEntry(Lcom/google/wireless/gdata/data/Entry;)Lcom/google/wireless/gdata/data/Entry;
    :try_end_1c5
    .catchall {:try_start_1bf .. :try_end_1c5} :catchall_435
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_1bf .. :try_end_1c5} :catch_271
    .catch Ljava/io/IOException; {:try_start_1bf .. :try_end_1c5} :catch_313
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_1bf .. :try_end_1c5} :catch_389

    move-result-object v7

    .line 656
    add-int v4, v35, v39

    const/4 v6, 0x1

    sub-int v22, v4, v6

    .line 657
    .local v22, entryIndex:I
    :try_start_1cb
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Downloading "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v7}, Lcom/google/wireless/gdata/data/Entry;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/SyncContext;->setStatusText(Ljava/lang/String;)V

    .line 659
    const-string v4, "Sync"

    const/4 v6, 0x2

    invoke-static {v4, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_227

    .line 660
    const-string v4, "Sync"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Read entry: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v7}, Lcom/google/wireless/gdata/data/Entry;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    :cond_227
    invoke-virtual {v7}, Lcom/google/wireless/gdata/data/Entry;->getId()Ljava/lang/String;

    move-result-object v14

    .line 666
    const/4 v4, 0x1

    move/from16 v0, v35

    move v1, v4

    if-ne v0, v1, :cond_2dc

    if-eqz v25, :cond_2dc

    move-object/from16 v0, v25

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2dc

    .line 670
    const-string v4, "Sync"

    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5           #feed:Lcom/google/wireless/gdata/data/Feed;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "aborting paging since the first record is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " instead of the expected "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->hasMoreEntriesToFetch:Z

    .line 675
    invoke-virtual/range {p0 .. p8}, Lcom/google/android/providers/AbstractGDataSyncAdapter;->getServerDiffsImpl(Landroid/content/SyncContext;Landroid/content/SyncableContentProvider;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;ILcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData;Landroid/content/SyncResult;)V
    :try_end_26a
    .catchall {:try_start_1cb .. :try_end_26a} :catchall_435
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_1cb .. :try_end_26a} :catch_2b3
    .catch Ljava/io/IOException; {:try_start_1cb .. :try_end_26a} :catch_313
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_1cb .. :try_end_26a} :catch_389

    .line 803
    if-eqz v37, :cond_7

    invoke-interface/range {v37 .. v37}, Lcom/google/wireless/gdata/parser/GDataParser;->close()V

    goto/16 :goto_7

    .line 650
    .end local v22           #entryIndex:I
    .restart local v5       #feed:Lcom/google/wireless/gdata/data/Feed;
    :catch_271
    move-exception v20

    .line 651
    .local v20, e:Lcom/google/wireless/gdata/parser/ParseException;
    :try_start_272
    move-object/from16 v0, p8

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v4, v0

    iget-wide v9, v4, Landroid/content/SyncStats;->numSkippedEntries:J

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    iput-wide v9, v4, Landroid/content/SyncStats;->numSkippedEntries:J

    .line 652
    const-string v4, "Sync"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "error while parsing entry from account "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/providers/AbstractGDataSyncAdapter;->getAccount()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", feed "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", skipping"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v4

    move-object v1, v6

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2b1
    .catchall {:try_start_272 .. :try_end_2b1} :catchall_435
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_272 .. :try_end_2b1} :catch_2b3
    .catch Ljava/io/IOException; {:try_start_272 .. :try_end_2b1} :catch_313
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_272 .. :try_end_2b1} :catch_389

    goto/16 :goto_15c

    .line 757
    .end local v5           #feed:Lcom/google/wireless/gdata/data/Feed;
    .end local v7           #entry:Lcom/google/wireless/gdata/data/Entry;
    .end local v20           #e:Lcom/google/wireless/gdata/parser/ParseException;
    .end local v23           #entryLastUpdated:J
    .end local v27           #feedUpdateDate:Ljava/lang/String;
    .end local v41           #totalResults:I
    :catch_2b3
    move-exception v4

    move-object/from16 v38, v4

    .line 758
    .local v38, pe:Lcom/google/wireless/gdata/parser/ParseException;
    :try_start_2b6
    const-string v4, "Sync"

    const-string v5, "Unable to process gdata feed"

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v38

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 759
    const-string v4, "Could not parse feed."

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/SyncContext;->setStatusText(Ljava/lang/String;)V

    .line 760
    move-object/from16 v0, p8

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v4, v0

    iget-wide v9, v4, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    iput-wide v9, v4, Landroid/content/SyncStats;->numParseExceptions:J
    :try_end_2d5
    .catchall {:try_start_2b6 .. :try_end_2d5} :catchall_435

    .line 803
    if-eqz v37, :cond_7

    invoke-interface/range {v37 .. v37}, Lcom/google/wireless/gdata/parser/GDataParser;->close()V

    goto/16 :goto_7

    .line 680
    .end local v38           #pe:Lcom/google/wireless/gdata/parser/ParseException;
    .restart local v5       #feed:Lcom/google/wireless/gdata/data/Feed;
    .restart local v7       #entry:Lcom/google/wireless/gdata/data/Entry;
    .restart local v22       #entryIndex:I
    .restart local v23       #entryLastUpdated:J
    .restart local v27       #feedUpdateDate:Ljava/lang/String;
    .restart local v41       #totalResults:I
    :cond_2dc
    :try_start_2dc
    const-string v4, "Sync"

    const/4 v6, 0x2

    invoke-static {v4, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_301

    .line 681
    const-string v4, "Sync"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getServerDiffs: updating provider with entry "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v7}, Lcom/google/wireless/gdata/data/Entry;->getEditUri()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    :cond_301
    invoke-virtual/range {p2 .. p2}, Landroid/content/SyncableContentProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v19

    .line 686
    .local v19, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual/range {v19 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v4

    if-eqz v4, :cond_34d

    .line 687
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "we should not be in a transaction"

    .end local v5           #feed:Lcom/google/wireless/gdata/data/Feed;
    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_313
    .catchall {:try_start_2dc .. :try_end_313} :catchall_435
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_2dc .. :try_end_313} :catch_2b3
    .catch Ljava/io/IOException; {:try_start_2dc .. :try_end_313} :catch_313
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_2dc .. :try_end_313} :catch_389

    .line 761
    .end local v7           #entry:Lcom/google/wireless/gdata/data/Entry;
    .end local v19           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v22           #entryIndex:I
    .end local v23           #entryLastUpdated:J
    .end local v27           #feedUpdateDate:Ljava/lang/String;
    .end local v41           #totalResults:I
    :catch_313
    move-exception v4

    move-object/from16 v32, v4

    .line 762
    .local v32, ioe:Ljava/io/IOException;
    :try_start_316
    const-string v4, "Sync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to process gdata feed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v32 .. v32}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    const-string v4, "Could not download entire feed."

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/SyncContext;->setStatusText(Ljava/lang/String;)V

    .line 764
    move-object/from16 v0, p8

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v4, v0

    iget-wide v9, v4, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    iput-wide v9, v4, Landroid/content/SyncStats;->numIoExceptions:J
    :try_end_346
    .catchall {:try_start_316 .. :try_end_346} :catchall_435

    .line 803
    if-eqz v37, :cond_7

    invoke-interface/range {v37 .. v37}, Lcom/google/wireless/gdata/parser/GDataParser;->close()V

    goto/16 :goto_7

    .line 689
    .end local v32           #ioe:Ljava/io/IOException;
    .restart local v5       #feed:Lcom/google/wireless/gdata/data/Feed;
    .restart local v7       #entry:Lcom/google/wireless/gdata/data/Entry;
    .restart local v19       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v22       #entryIndex:I
    .restart local v23       #entryLastUpdated:J
    .restart local v27       #feedUpdateDate:Ljava/lang/String;
    .restart local v41       #totalResults:I
    :cond_34d
    :try_start_34d
    invoke-virtual/range {v19 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_350
    .catchall {:try_start_34d .. :try_end_350} :catchall_435
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_34d .. :try_end_350} :catch_2b3
    .catch Ljava/io/IOException; {:try_start_34d .. :try_end_350} :catch_313
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_34d .. :try_end_350} :catch_389

    .line 691
    const/4 v6, 0x0

    move-object/from16 v4, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p5

    :try_start_357
    invoke-virtual/range {v4 .. v9}, Lcom/google/android/providers/AbstractGDataSyncAdapter;->updateProvider(Lcom/google/wireless/gdata/data/Feed;Ljava/lang/Long;Lcom/google/wireless/gdata/data/Entry;Landroid/content/ContentProvider;Ljava/lang/Object;)V

    .line 693
    move-object/from16 v0, p8

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v4, v0

    iget-wide v9, v4, Landroid/content/SyncStats;->numEntries:J

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    iput-wide v9, v4, Landroid/content/SyncStats;->numEntries:J

    .line 695
    invoke-virtual {v7}, Lcom/google/wireless/gdata/data/Entry;->getUpdateDate()Ljava/lang/String;

    move-result-object v42

    .line 696
    .local v42, updateDate:Ljava/lang/String;
    if-eqz v42, :cond_381

    .line 697
    move-object/from16 v0, v40

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->parse3339(Ljava/lang/String;)Z

    .line 698
    const/4 v4, 0x0

    move-object/from16 v0, v40

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v43

    .line 699
    .local v43, updated:J
    cmp-long v4, v43, v23

    if-lez v4, :cond_381

    .line 700
    move-wide/from16 v23, v43

    .line 703
    .end local v43           #updated:J
    :cond_381
    invoke-virtual/range {v19 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_384
    .catchall {:try_start_357 .. :try_end_384} :catchall_4a7
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_357 .. :try_end_384} :catch_3ca
    .catch Ljava/lang/RuntimeException; {:try_start_357 .. :try_end_384} :catch_43c

    .line 717
    :try_start_384
    invoke-virtual/range {v19 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_387
    .catchall {:try_start_384 .. :try_end_387} :catchall_435
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_384 .. :try_end_387} :catch_2b3
    .catch Ljava/io/IOException; {:try_start_384 .. :try_end_387} :catch_313
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_384 .. :try_end_387} :catch_389

    goto/16 :goto_15c

    .line 765
    .end local v5           #feed:Lcom/google/wireless/gdata/data/Feed;
    .end local v7           #entry:Lcom/google/wireless/gdata/data/Entry;
    .end local v19           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v22           #entryIndex:I
    .end local v23           #entryLastUpdated:J
    .end local v27           #feedUpdateDate:Ljava/lang/String;
    .end local v41           #totalResults:I
    .end local v42           #updateDate:Ljava/lang/String;
    :catch_389
    move-exception v4

    move-object/from16 v20, v4

    .line 766
    .local v20, e:Lcom/google/wireless/gdata/client/HttpException;
    :try_start_38c
    invoke-virtual/range {v20 .. v20}, Lcom/google/wireless/gdata/client/HttpException;->getStatusCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_5bc

    .line 797
    const-string v4, "Sync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to process gdata feed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v20 .. v20}, Lcom/google/wireless/gdata/client/HttpException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    const-string v4, "Could not download entire feed."

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/SyncContext;->setStatusText(Ljava/lang/String;)V

    .line 799
    move-object/from16 v0, p8

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v4, v0

    iget-wide v9, v4, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    iput-wide v9, v4, Landroid/content/SyncStats;->numIoExceptions:J
    :try_end_3c3
    .catchall {:try_start_38c .. :try_end_3c3} :catchall_435

    .line 803
    :goto_3c3
    if-eqz v37, :cond_7

    invoke-interface/range {v37 .. v37}, Lcom/google/wireless/gdata/parser/GDataParser;->close()V

    goto/16 :goto_7

    .line 704
    .end local v20           #e:Lcom/google/wireless/gdata/client/HttpException;
    .restart local v5       #feed:Lcom/google/wireless/gdata/data/Feed;
    .restart local v7       #entry:Lcom/google/wireless/gdata/data/Entry;
    .restart local v19       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v22       #entryIndex:I
    .restart local v23       #entryLastUpdated:J
    .restart local v27       #feedUpdateDate:Ljava/lang/String;
    .restart local v41       #totalResults:I
    :catch_3ca
    move-exception v4

    move-object/from16 v20, v4

    .line 705
    .local v20, e:Lcom/google/wireless/gdata/parser/ParseException;
    :try_start_3cd
    const-string v4, "Sync"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateProvider failed, "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v7}, Lcom/google/wireless/gdata/data/Entry;->getEditUri()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v4

    move-object v1, v6

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 706
    move-object/from16 v0, p8

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v4, v0

    iget-wide v9, v4, Landroid/content/SyncStats;->numSkippedEntries:J

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    iput-wide v9, v4, Landroid/content/SyncStats;->numSkippedEntries:J

    .line 707
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failure: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ": "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v7}, Lcom/google/wireless/gdata/data/Entry;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/SyncContext;->setStatusText(Ljava/lang/String;)V
    :try_end_430
    .catchall {:try_start_3cd .. :try_end_430} :catchall_4a7

    .line 717
    :try_start_430
    invoke-virtual/range {v19 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_433
    .catchall {:try_start_430 .. :try_end_433} :catchall_435
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_430 .. :try_end_433} :catch_2b3
    .catch Ljava/io/IOException; {:try_start_430 .. :try_end_433} :catch_313
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_430 .. :try_end_433} :catch_389

    goto/16 :goto_15c

    .line 803
    .end local v5           #feed:Lcom/google/wireless/gdata/data/Feed;
    .end local v7           #entry:Lcom/google/wireless/gdata/data/Entry;
    .end local v19           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v20           #e:Lcom/google/wireless/gdata/parser/ParseException;
    .end local v22           #entryIndex:I
    .end local v23           #entryLastUpdated:J
    .end local v27           #feedUpdateDate:Ljava/lang/String;
    .end local v41           #totalResults:I
    :catchall_435
    move-exception v4

    if-eqz v37, :cond_43b

    invoke-interface/range {v37 .. v37}, Lcom/google/wireless/gdata/parser/GDataParser;->close()V

    :cond_43b
    throw v4

    .line 710
    .restart local v5       #feed:Lcom/google/wireless/gdata/data/Feed;
    .restart local v7       #entry:Lcom/google/wireless/gdata/data/Entry;
    .restart local v19       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v22       #entryIndex:I
    .restart local v23       #entryLastUpdated:J
    .restart local v27       #feedUpdateDate:Ljava/lang/String;
    .restart local v41       #totalResults:I
    :catch_43c
    move-exception v4

    move-object/from16 v20, v4

    .line 711
    .local v20, e:Ljava/lang/RuntimeException;
    :try_start_43f
    const-string v4, "Sync"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateProvider failed,  "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v7}, Lcom/google/wireless/gdata/data/Entry;->getEditUri()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v4

    move-object v1, v6

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 712
    move-object/from16 v0, p8

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v4, v0

    iget-wide v9, v4, Landroid/content/SyncStats;->numSkippedEntries:J

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    iput-wide v9, v4, Landroid/content/SyncStats;->numSkippedEntries:J

    .line 713
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failure: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ": "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v7}, Lcom/google/wireless/gdata/data/Entry;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/SyncContext;->setStatusText(Ljava/lang/String;)V
    :try_end_4a2
    .catchall {:try_start_43f .. :try_end_4a2} :catchall_4a7

    .line 717
    :try_start_4a2
    invoke-virtual/range {v19 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_15c

    .end local v20           #e:Ljava/lang/RuntimeException;
    :catchall_4a7
    move-exception v4

    invoke-virtual/range {v19 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4

    .line 724
    .end local v19           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v22           #entryIndex:I
    :cond_4ac
    if-nez v27, :cond_515

    .line 725
    const-wide/16 v23, 0x0

    .line 745
    :goto_4b0
    move/from16 v0, v35

    move/from16 v1, p6

    if-ne v0, v1, :cond_539

    const/4 v4, 0x1

    move v13, v4

    .line 746
    .local v13, moreRecordsToGet:Z
    :goto_4b8
    new-instance v8, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;

    if-eqz v13, :cond_53d

    move-wide/from16 v9, v33

    :goto_4be
    move/from16 v0, v35

    int-to-long v0, v0

    move-wide v11, v0

    add-int v4, v39, v35

    const/4 v5, 0x1

    sub-int v15, v4, v5

    invoke-direct/range {v8 .. v15}, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;-><init>(JJZLjava/lang/String;I)V

    .line 751
    .end local v5           #feed:Lcom/google/wireless/gdata/data/Feed;
    .local v8, newFeedSyncData:Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;
    iget-boolean v4, v8, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->hasMoreEntriesToFetch:Z

    move v0, v4

    move-object/from16 v1, p8

    iput-boolean v0, v1, Landroid/content/SyncResult;->moreRecordsToGet:Z

    .line 752
    move-object/from16 v0, p7

    iget-object v0, v0, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData;->feedData:Ljava/util/Map;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p4

    move-object v2, v8

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    const-string v4, "Sync"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_50e

    .line 754
    const-string v4, "Sync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "This call to getServerDiffsImpl for feed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is returning "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50e
    .catchall {:try_start_4a2 .. :try_end_50e} :catchall_435
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_4a2 .. :try_end_50e} :catch_2b3
    .catch Ljava/io/IOException; {:try_start_4a2 .. :try_end_50e} :catch_313
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_4a2 .. :try_end_50e} :catch_389

    .line 803
    :cond_50e
    if-eqz v37, :cond_7

    invoke-interface/range {v37 .. v37}, Lcom/google/wireless/gdata/parser/GDataParser;->close()V

    goto/16 :goto_7

    .line 729
    .end local v8           #newFeedSyncData:Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;
    .end local v13           #moreRecordsToGet:Z
    .restart local v5       #feed:Lcom/google/wireless/gdata/data/Feed;
    :cond_515
    :try_start_515
    move-object/from16 v0, v40

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->parse3339(Ljava/lang/String;)Z

    .line 730
    const/4 v4, 0x0

    move-object/from16 v0, v40

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v28

    .line 731
    .local v28, feedUpdateMillis:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_527
    .catchall {:try_start_515 .. :try_end_527} :catchall_435
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_515 .. :try_end_527} :catch_2b3
    .catch Ljava/io/IOException; {:try_start_515 .. :try_end_527} :catch_313
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_515 .. :try_end_527} :catch_389

    move-result-wide v17

    .line 732
    .local v17, currentMillis:J
    const-wide/32 v9, 0x493e0

    add-long v9, v9, v28

    cmp-long v4, v9, v17

    if-gez v4, :cond_535

    .line 740
    const-wide/16 v9, 0x3e8

    add-long v28, v28, v9

    .line 742
    :cond_535
    move-wide/from16 v23, v28

    goto/16 :goto_4b0

    .line 745
    .end local v17           #currentMillis:J
    .end local v28           #feedUpdateMillis:J
    :cond_539
    const/4 v4, 0x0

    move v13, v4

    goto/16 :goto_4b8

    .restart local v13       #moreRecordsToGet:Z
    :cond_53d
    move-wide/from16 v9, v23

    .line 746
    goto/16 :goto_4be

    .line 770
    .end local v5           #feed:Lcom/google/wireless/gdata/data/Feed;
    .end local v7           #entry:Lcom/google/wireless/gdata/data/Entry;
    .end local v13           #moreRecordsToGet:Z
    .end local v23           #entryLastUpdated:J
    .end local v27           #feedUpdateDate:Ljava/lang/String;
    .end local v41           #totalResults:I
    .local v20, e:Lcom/google/wireless/gdata/client/HttpException;
    :sswitch_541
    :try_start_541
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/providers/AbstractGDataSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/providers/AbstractGDataSyncAdapter;->mAuthToken:Ljava/lang/String;

    move-object v5, v0

    invoke-static {v4, v5}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->invalidateAuthToken(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_54d
    .catchall {:try_start_541 .. :try_end_54d} :catchall_435
    .catch Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException; {:try_start_541 .. :try_end_54d} :catch_56a

    .line 775
    :goto_54d
    :try_start_54d
    const-string v4, "Sync"

    const-string v5, "Bad authentication token"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    const-string v4, "Bad authentication token"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/SyncContext;->setStatusText(Ljava/lang/String;)V

    .line 777
    move-object/from16 v0, p8

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v4, v0

    iget-wide v9, v4, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    iput-wide v9, v4, Landroid/content/SyncStats;->numAuthExceptions:J

    goto/16 :goto_3c3

    .line 771
    :catch_56a
    move-exception v4

    move-object/from16 v21, v4

    .line 772
    .local v21, e1:Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException;
    const-string v4, "Sync"

    const-string v5, "Could not invalidate auth token"

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_54d

    .line 780
    .end local v21           #e1:Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException;
    :sswitch_579
    const-string v4, "Sync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The tombstones have expired for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/providers/AbstractGDataSyncAdapter;->handleAllDeletedUnavailable(Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5ac

    .line 783
    const-string v4, "Sync"

    const-string v5, "handleAllDeletedUnavailable returned true, recursively calling getServerDiffsImpl"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    invoke-virtual/range {p0 .. p8}, Lcom/google/android/providers/AbstractGDataSyncAdapter;->getServerDiffsImpl(Landroid/content/SyncContext;Landroid/content/SyncableContentProvider;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;ILcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData;Landroid/content/SyncResult;)V

    goto/16 :goto_3c3

    .line 790
    :cond_5ac
    const-string v4, "Sync"

    const-string v5, "handleAllDeletedUnavailable returned false, setting partialSyncUnavailable"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p8

    iput-boolean v0, v1, Landroid/content/SyncResult;->partialSyncUnavailable:Z
    :try_end_5b9
    .catchall {:try_start_54d .. :try_end_5b9} :catchall_435

    goto/16 :goto_3c3

    .line 766
    nop

    :sswitch_data_5bc
    .sparse-switch
        0x191 -> :sswitch_541
        0x193 -> :sswitch_541
        0x19a -> :sswitch_579
    .end sparse-switch
.end method

.method protected getStatsString(Ljava/lang/StringBuffer;Landroid/content/SyncResult;)V
    .registers 8
    .parameter "sb"
    .parameter "result"

    .prologue
    const-wide/16 v3, 0x0

    .line 115
    iget v0, p0, Lcom/google/android/providers/AbstractGDataSyncAdapter;->mServerQueries:I

    if-lez v0, :cond_11

    .line 116
    const-string v0, "Q"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lcom/google/android/providers/AbstractGDataSyncAdapter;->mServerQueries:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 118
    :cond_11
    iget v0, p0, Lcom/google/android/providers/AbstractGDataSyncAdapter;->mServerEntries:I

    if-lez v0, :cond_20

    .line 119
    const-string v0, "E"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lcom/google/android/providers/AbstractGDataSyncAdapter;->mServerEntries:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 121
    :cond_20
    iget-object v0, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numUpdates:J

    cmp-long v0, v0, v3

    if-lez v0, :cond_35

    .line 122
    const-string v0, "u"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v1, Landroid/content/SyncStats;->numUpdates:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 124
    :cond_35
    iget-object v0, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numInserts:J

    cmp-long v0, v0, v3

    if-lez v0, :cond_4a

    .line 125
    const-string v0, "i"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v1, Landroid/content/SyncStats;->numInserts:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 127
    :cond_4a
    iget-object v0, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numDeletes:J

    cmp-long v0, v0, v3

    if-lez v0, :cond_5f

    .line 128
    const-string v0, "d"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v1, Landroid/content/SyncStats;->numDeletes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 130
    :cond_5f
    invoke-virtual {p2}, Landroid/content/SyncResult;->toDebugString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    return-void
.end method

.method protected abstract handleAllDeletedUnavailable(Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData;Ljava/lang/String;)Z
.end method

.method invalidateAndUpdateAuthToken()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException;,
            Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper$AuthenticationException;
        }
    .end annotation

    .prologue
    .line 1111
    invoke-virtual {p0}, Lcom/google/android/providers/AbstractGDataSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/providers/AbstractGDataSyncAdapter;->mAuthToken:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->invalidateAuthToken(Landroid/content/Context;Ljava/lang/String;)V

    .line 1113
    invoke-virtual {p0}, Lcom/google/android/providers/AbstractGDataSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/providers/AbstractGDataSyncAdapter;->mAccount:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/providers/AbstractGDataSyncAdapter;->getGDataServiceClient()Lcom/google/wireless/gdata/client/GDataServiceClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/gdata/client/GDataServiceClient;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->getAuthToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/providers/AbstractGDataSyncAdapter;->mAuthToken:Ljava/lang/String;

    .line 1116
    return-void
.end method

.method public isReadOnly()Z
    .registers 2

    .prologue
    .line 812
    const/4 v0, 0x0

    return v0
.end method

.method protected logSyncDetails(JJLandroid/content/SyncResult;)V
    .registers 11
    .parameter "bytesSent"
    .parameter "bytesReceived"
    .parameter "result"

    .prologue
    .line 105
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 106
    .local v0, sb:Ljava/lang/StringBuffer;
    invoke-virtual {p0, v0, p5}, Lcom/google/android/providers/AbstractGDataSyncAdapter;->getStatsString(Ljava/lang/StringBuffer;Landroid/content/SyncResult;)V

    .line 107
    const/16 v1, 0xab7

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/providers/AbstractGDataSyncAdapter;->getGDataServiceClient()Lcom/google/wireless/gdata/client/GDataServiceClient;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/wireless/gdata/client/GDataServiceClient;->getServiceName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 109
    return-void
.end method

.method protected abstract newEntry()Lcom/google/wireless/gdata/data/Entry;
.end method

.method public bridge synthetic newSyncData()Landroid/content/TempProviderSyncAdapter$SyncData;
    .registers 2

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/google/android/providers/AbstractGDataSyncAdapter;->newSyncData()Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData;

    move-result-object v0

    return-object v0
.end method

.method public newSyncData()Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData;
    .registers 2

    .prologue
    .line 467
    new-instance v0, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData;

    invoke-direct {v0}, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData;-><init>()V

    return-object v0
.end method

.method public onSyncCanceled()V
    .registers 2

    .prologue
    .line 529
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/providers/AbstractGDataSyncAdapter;->mSyncCanceled:Z

    .line 530
    return-void
.end method

.method public onSyncEnding(Landroid/content/SyncContext;Z)V
    .registers 3
    .parameter "context"
    .parameter "success"

    .prologue
    .line 1165
    return-void
.end method

.method public onSyncStarting(Landroid/content/SyncContext;Ljava/lang/String;ZLandroid/content/SyncResult;)V
    .registers 11
    .parameter "context"
    .parameter "account"
    .parameter "forced"
    .parameter "result"

    .prologue
    const/4 v1, 0x0

    .line 1172
    iput-boolean v1, p0, Lcom/google/android/providers/AbstractGDataSyncAdapter;->mSyncCanceled:Z

    .line 1173
    iput v1, p0, Lcom/google/android/providers/AbstractGDataSyncAdapter;->mServerQueries:I

    .line 1174
    iput v1, p0, Lcom/google/android/providers/AbstractGDataSyncAdapter;->mServerEntries:I

    .line 1178
    :try_start_7
    invoke-virtual {p0}, Lcom/google/android/providers/AbstractGDataSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->getAccounts(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/providers/AbstractGDataSyncAdapter;->onAccountsChanged([Ljava/lang/String;)V

    .line 1180
    const-string v1, "Authenticating\u2026"

    invoke-virtual {p1, v1}, Landroid/content/SyncContext;->setStatusText(Ljava/lang/String;)V

    .line 1181
    iput-object p2, p0, Lcom/google/android/providers/AbstractGDataSyncAdapter;->mAccount:Ljava/lang/String;

    .line 1183
    invoke-virtual {p0}, Lcom/google/android/providers/AbstractGDataSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/providers/AbstractGDataSyncAdapter;->mAccount:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/providers/AbstractGDataSyncAdapter;->getGDataServiceClient()Lcom/google/wireless/gdata/client/GDataServiceClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/wireless/gdata/client/GDataServiceClient;->getServiceName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->getAuthToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/providers/AbstractGDataSyncAdapter;->mAuthToken:Ljava/lang/String;
    :try_end_2d
    .catch Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper$AuthenticationException; {:try_start_7 .. :try_end_2d} :catch_2e
    .catch Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException; {:try_start_7 .. :try_end_2d} :catch_3f

    .line 1191
    :goto_2d
    return-void

    .line 1185
    :catch_2e
    move-exception v1

    move-object v0, v1

    .line 1186
    .local v0, e:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper$AuthenticationException;
    iget-object v1, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v1, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v1, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 1187
    const-string v1, "Could not authenticate user."

    invoke-virtual {p1, v1}, Landroid/content/SyncContext;->setStatusText(Ljava/lang/String;)V

    goto :goto_2d

    .line 1188
    .end local v0           #e:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper$AuthenticationException;
    :catch_3f
    move-exception v1

    move-object v0, v1

    .line 1189
    .local v0, e:Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException;
    const-string v1, "Sync"

    const-string v2, "Google login service not found"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2d
.end method

.method public bridge synthetic readSyncData(Landroid/content/SyncableContentProvider;)Landroid/content/TempProviderSyncAdapter$SyncData;
    .registers 3
    .parameter "x0"

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/google/android/providers/AbstractGDataSyncAdapter;->readSyncData(Landroid/content/SyncableContentProvider;)Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData;

    move-result-object v0

    return-object v0
.end method

.method public readSyncData(Landroid/content/SyncableContentProvider;)Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData;
    .registers 9
    .parameter "contentProvider"

    .prologue
    const/4 v2, 0x0

    .line 453
    sget-object v1, Lcom/google/android/providers/AbstractGDataSyncAdapter;->SYNC_STATE_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_sync_account = ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/google/android/providers/AbstractGDataSyncAdapter;->mAccount:Ljava/lang/String;

    aput-object v5, v4, v0

    move-object v0, p1

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/SyncableContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 456
    .local v6, c:Landroid/database/Cursor;
    :try_start_13
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 457
    const-string v0, "data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/providers/AbstractGDataSyncAdapter;->newGDataSyncDataFromBytes([B)Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData;
    :try_end_26
    .catchall {:try_start_13 .. :try_end_26} :catchall_33

    move-result-object v0

    .line 460
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 462
    :goto_2a
    return-object v0

    .line 460
    :cond_2b
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 462
    invoke-virtual {p0}, Lcom/google/android/providers/AbstractGDataSyncAdapter;->newSyncData()Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData;

    move-result-object v0

    goto :goto_2a

    .line 460
    :catchall_33
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public sendClientDiffs(Landroid/content/SyncContext;Landroid/content/SyncableContentProvider;Landroid/content/SyncableContentProvider;Landroid/content/SyncResult;Z)V
    .registers 14
    .parameter "context"
    .parameter "clientDiffs"
    .parameter "serverDiffs"
    .parameter "syncResult"
    .parameter "dontSendDeletes"

    .prologue
    .line 821
    invoke-virtual {p0, p2}, Lcom/google/android/providers/AbstractGDataSyncAdapter;->initTempProvider(Landroid/content/SyncableContentProvider;)V

    .line 822
    invoke-virtual {p0}, Lcom/google/android/providers/AbstractGDataSyncAdapter;->createSyncInfo()Ljava/lang/Object;

    move-result-object v4

    .line 823
    .local v4, syncInfo:Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/google/android/providers/AbstractGDataSyncAdapter;->newEntry()Lcom/google/wireless/gdata/data/Entry;

    move-result-object v3

    .local v3, entry:Lcom/google/wireless/gdata/data/Entry;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    .line 824
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/providers/AbstractGDataSyncAdapter;->sendClientDiffsImpl(Landroid/content/SyncContext;Landroid/content/SyncableContentProvider;Lcom/google/wireless/gdata/data/Entry;Ljava/lang/Object;Landroid/content/SyncableContentProvider;Landroid/content/SyncResult;Z)V

    .line 826
    return-void
.end method

.method protected sendClientDiffsImpl(Landroid/content/SyncContext;Landroid/content/SyncableContentProvider;Lcom/google/wireless/gdata/data/Entry;Ljava/lang/Object;Landroid/content/SyncableContentProvider;Landroid/content/SyncResult;Z)V
    .registers 30
    .parameter "context"
    .parameter "clientDiffs"
    .parameter "entry"
    .parameter "syncInfo"
    .parameter "serverDiffs"
    .parameter "syncResult"
    .parameter "dontSendDeletes"

    .prologue
    .line 845
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/providers/AbstractGDataSyncAdapter;->mAccount:Ljava/lang/String;

    move-object v5, v0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 846
    const-string v5, "Sync"

    const-string v6, "no username, so skipping the merge"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    :goto_12
    return-void

    .line 857
    :cond_13
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/google/android/providers/AbstractGDataSyncAdapter;->getCursorForDeletedTable(Landroid/content/ContentProvider;Ljava/lang/Class;)Landroid/database/Cursor;

    move-result-object v17

    .line 859
    .local v17, c:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 861
    .local v7, entryToSave:Lcom/google/wireless/gdata/data/Entry;
    :try_start_21
    const-string v5, "_sync_local_id"

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 862
    .local v21, syncLocalIDColumn:I
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I
    :try_end_2d
    .catchall {:try_start_21 .. :try_end_2d} :catchall_1de

    move-result v20

    .local v20, numRows:I
    move-object/from16 v19, v7

    .end local v7           #entryToSave:Lcom/google/wireless/gdata/data/Entry;
    .local v19, entryToSave:Lcom/google/wireless/gdata/data/Entry;
    :goto_30
    :try_start_30
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_4a

    invoke-virtual/range {p6 .. p6}, Landroid/content/SyncResult;->madeSomeProgress()Z

    move-result v5

    if-nez v5, :cond_4a

    .line 863
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/providers/AbstractGDataSyncAdapter;->mSyncCanceled:Z

    move v5, v0

    if-eqz v5, :cond_87

    .line 864
    const-string v5, "Sync"

    const-string v6, "stopping since the sync was cancelled"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catchall {:try_start_30 .. :try_end_4a} :catchall_129

    .line 893
    :cond_4a
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->deactivate()V

    .line 900
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/google/android/providers/AbstractGDataSyncAdapter;->getCursorForTable(Landroid/content/ContentProvider;Ljava/lang/Class;)Landroid/database/Cursor;

    move-result-object v17

    .line 902
    :try_start_5a
    const-string v5, "_sync_local_id"

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 903
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I
    :try_end_66
    .catchall {:try_start_5a .. :try_end_66} :catchall_1da

    move-result v20

    move-object/from16 v7, v19

    .line 904
    .end local v19           #entryToSave:Lcom/google/wireless/gdata/data/Entry;
    .restart local v7       #entryToSave:Lcom/google/wireless/gdata/data/Entry;
    :cond_69
    :goto_69
    :try_start_69
    invoke-virtual/range {p6 .. p6}, Landroid/content/SyncResult;->madeSomeProgress()Z

    move-result v5

    if-nez v5, :cond_83

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_83

    .line 905
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/providers/AbstractGDataSyncAdapter;->mSyncCanceled:Z

    move v5, v0

    if-eqz v5, :cond_133

    .line 906
    const-string v5, "Sync"

    const-string v6, "stopping since the sync was cancelled"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_83
    .catchall {:try_start_69 .. :try_end_83} :catchall_195

    .line 940
    :cond_83
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->deactivate()V

    goto :goto_12

    .line 867
    .end local v7           #entryToSave:Lcom/google/wireless/gdata/data/Entry;
    .restart local v19       #entryToSave:Lcom/google/wireless/gdata/data/Entry;
    :cond_87
    :try_start_87
    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/gdata/data/Entry;->clear()V
    :try_end_8a
    .catchall {:try_start_87 .. :try_end_8a} :catchall_129

    .line 869
    :try_start_8a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/providers/AbstractGDataSyncAdapter;->deletedCursorToEntry(Landroid/content/SyncContext;Landroid/database/Cursor;Lcom/google/wireless/gdata/data/Entry;)V
    :try_end_95
    .catchall {:try_start_8a .. :try_end_95} :catchall_129
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_8a .. :try_end_95} :catch_ee

    .line 879
    :try_start_95
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleting, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    sub-int v6, v20, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to go"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/SyncContext;->setStatusText(Ljava/lang/String;)V

    .line 880
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata/data/Entry;->setDeleted(Z)V

    .line 881
    if-nez p7, :cond_130

    .line 882
    sget-object v6, Lcom/google/android/providers/AbstractGDataSyncAdapter$ClientDiffType;->DELETE:Lcom/google/android/providers/AbstractGDataSyncAdapter$ClientDiffType;

    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/gdata/data/Entry;->getEditUri()Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x1

    move-object/from16 v5, p0

    move-object/from16 v8, p3

    move-object/from16 v9, p6

    invoke-virtual/range {v5 .. v10}, Lcom/google/android/providers/AbstractGDataSyncAdapter;->sendSingleClientDiff(Lcom/google/android/providers/AbstractGDataSyncAdapter$ClientDiffType;Ljava/lang/String;Lcom/google/wireless/gdata/data/Entry;Landroid/content/SyncResult;Z)Lcom/google/wireless/gdata/data/Entry;
    :try_end_d0
    .catchall {:try_start_95 .. :try_end_d0} :catchall_129

    move-result-object v7

    .line 887
    .end local v19           #entryToSave:Lcom/google/wireless/gdata/data/Entry;
    .restart local v7       #entryToSave:Lcom/google/wireless/gdata/data/Entry;
    :goto_d1
    if-eqz v7, :cond_1e1

    .line 888
    :try_start_d3
    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v5, p0

    move-object/from16 v6, p5

    move-object/from16 v9, p4

    move-object/from16 v10, p6

    invoke-virtual/range {v5 .. v10}, Lcom/google/android/providers/AbstractGDataSyncAdapter;->updateProviderInTransaction(Landroid/content/SyncableContentProvider;Lcom/google/wireless/gdata/data/Entry;Ljava/lang/Long;Ljava/lang/Object;Landroid/content/SyncResult;)V
    :try_end_ea
    .catchall {:try_start_d3 .. :try_end_ea} :catchall_1de

    move-object/from16 v19, v7

    .end local v7           #entryToSave:Lcom/google/wireless/gdata/data/Entry;
    .restart local v19       #entryToSave:Lcom/google/wireless/gdata/data/Entry;
    goto/16 :goto_30

    .line 870
    :catch_ee
    move-exception v18

    .line 872
    .local v18, e:Lcom/google/wireless/gdata/parser/ParseException;
    :try_start_ef
    const-string v5, "Sync"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unable to convert row to an Entry, skipping. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_id"

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v17

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 875
    move-object/from16 v0, p6

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v5, v0

    iget-wide v6, v5, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroid/content/SyncStats;->numParseExceptions:J
    :try_end_127
    .catchall {:try_start_ef .. :try_end_127} :catchall_129

    goto/16 :goto_30

    .line 893
    .end local v18           #e:Lcom/google/wireless/gdata/parser/ParseException;
    :catchall_129
    move-exception v5

    move-object/from16 v7, v19

    .end local v19           #entryToSave:Lcom/google/wireless/gdata/data/Entry;
    .end local v20           #numRows:I
    .end local v21           #syncLocalIDColumn:I
    .restart local v7       #entryToSave:Lcom/google/wireless/gdata/data/Entry;
    :goto_12c
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->deactivate()V

    throw v5

    .line 885
    .end local v7           #entryToSave:Lcom/google/wireless/gdata/data/Entry;
    .restart local v19       #entryToSave:Lcom/google/wireless/gdata/data/Entry;
    .restart local v20       #numRows:I
    .restart local v21       #syncLocalIDColumn:I
    :cond_130
    move-object/from16 v7, p3

    .end local v19           #entryToSave:Lcom/google/wireless/gdata/data/Entry;
    .restart local v7       #entryToSave:Lcom/google/wireless/gdata/data/Entry;
    goto :goto_d1

    .line 910
    :cond_133
    :try_start_133
    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/gdata/data/Entry;->clear()V

    .line 911
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Updating, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    sub-int v6, v20, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to go"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/SyncContext;->setStatusText(Ljava/lang/String;)V
    :try_end_158
    .catchall {:try_start_133 .. :try_end_158} :catchall_195

    .line 917
    :try_start_158
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/providers/AbstractGDataSyncAdapter;->cursorToEntry(Landroid/content/SyncContext;Landroid/database/Cursor;Lcom/google/wireless/gdata/data/Entry;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 918
    .local v10, targetUrl:Ljava/lang/String;
    if-nez v10, :cond_19a

    .line 919
    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/gdata/data/Entry;->getEditUri()Ljava/lang/String;

    move-result-object v10

    .line 920
    sget-object v9, Lcom/google/android/providers/AbstractGDataSyncAdapter$ClientDiffType;->UPDATE:Lcom/google/android/providers/AbstractGDataSyncAdapter$ClientDiffType;
    :try_end_16e
    .catchall {:try_start_158 .. :try_end_16e} :catchall_195
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_158 .. :try_end_16e} :catch_19d

    .line 932
    .local v9, op:Lcom/google/android/providers/AbstractGDataSyncAdapter$ClientDiffType;
    :goto_16e
    const/4 v13, 0x1

    move-object/from16 v8, p0

    move-object/from16 v11, p3

    move-object/from16 v12, p6

    :try_start_175
    invoke-virtual/range {v8 .. v13}, Lcom/google/android/providers/AbstractGDataSyncAdapter;->sendSingleClientDiff(Lcom/google/android/providers/AbstractGDataSyncAdapter$ClientDiffType;Ljava/lang/String;Lcom/google/wireless/gdata/data/Entry;Landroid/content/SyncResult;Z)Lcom/google/wireless/gdata/data/Entry;

    move-result-object v7

    .line 934
    if-eqz v7, :cond_69

    .line 935
    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-object/from16 v11, p0

    move-object/from16 v12, p5

    move-object v13, v7

    move-object/from16 v15, p4

    move-object/from16 v16, p6

    invoke-virtual/range {v11 .. v16}, Lcom/google/android/providers/AbstractGDataSyncAdapter;->updateProviderInTransaction(Landroid/content/SyncableContentProvider;Lcom/google/wireless/gdata/data/Entry;Ljava/lang/Long;Ljava/lang/Object;Landroid/content/SyncResult;)V
    :try_end_193
    .catchall {:try_start_175 .. :try_end_193} :catchall_195

    goto/16 :goto_69

    .line 940
    .end local v9           #op:Lcom/google/android/providers/AbstractGDataSyncAdapter$ClientDiffType;
    .end local v10           #targetUrl:Ljava/lang/String;
    :catchall_195
    move-exception v5

    :goto_196
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->deactivate()V

    throw v5

    .line 922
    .restart local v10       #targetUrl:Ljava/lang/String;
    :cond_19a
    :try_start_19a
    sget-object v9, Lcom/google/android/providers/AbstractGDataSyncAdapter$ClientDiffType;->INSERT:Lcom/google/android/providers/AbstractGDataSyncAdapter$ClientDiffType;
    :try_end_19c
    .catchall {:try_start_19a .. :try_end_19c} :catchall_195
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_19a .. :try_end_19c} :catch_19d

    .restart local v9       #op:Lcom/google/android/providers/AbstractGDataSyncAdapter$ClientDiffType;
    goto :goto_16e

    .line 924
    .end local v9           #op:Lcom/google/android/providers/AbstractGDataSyncAdapter$ClientDiffType;
    .end local v10           #targetUrl:Ljava/lang/String;
    :catch_19d
    move-exception v5

    move-object/from16 v18, v5

    .line 925
    .restart local v18       #e:Lcom/google/wireless/gdata/parser/ParseException;
    :try_start_1a0
    const-string v5, "Sync"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unable to convert row to an Entry, skipping. "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "_id"

    move-object/from16 v0, v17

    move-object v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, v17

    move v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 927
    move-object/from16 v0, p6

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v5, v0

    iget-wide v8, v5, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, v5, Landroid/content/SyncStats;->numParseExceptions:J
    :try_end_1d8
    .catchall {:try_start_1a0 .. :try_end_1d8} :catchall_195

    goto/16 :goto_69

    .line 940
    .end local v7           #entryToSave:Lcom/google/wireless/gdata/data/Entry;
    .end local v18           #e:Lcom/google/wireless/gdata/parser/ParseException;
    .restart local v19       #entryToSave:Lcom/google/wireless/gdata/data/Entry;
    :catchall_1da
    move-exception v5

    move-object/from16 v7, v19

    .end local v19           #entryToSave:Lcom/google/wireless/gdata/data/Entry;
    .restart local v7       #entryToSave:Lcom/google/wireless/gdata/data/Entry;
    goto :goto_196

    .line 893
    .end local v20           #numRows:I
    .end local v21           #syncLocalIDColumn:I
    :catchall_1de
    move-exception v5

    goto/16 :goto_12c

    .restart local v20       #numRows:I
    .restart local v21       #syncLocalIDColumn:I
    :cond_1e1
    move-object/from16 v19, v7

    .end local v7           #entryToSave:Lcom/google/wireless/gdata/data/Entry;
    .restart local v19       #entryToSave:Lcom/google/wireless/gdata/data/Entry;
    goto/16 :goto_30
.end method

.method public sendSingleClientDiff(Lcom/google/android/providers/AbstractGDataSyncAdapter$ClientDiffType;Ljava/lang/String;Lcom/google/wireless/gdata/data/Entry;Landroid/content/SyncResult;Z)Lcom/google/wireless/gdata/data/Entry;
    .registers 16
    .parameter "op"
    .parameter "targetUrl"
    .parameter "entry"
    .parameter "syncResult"
    .parameter "retryAuthentication"

    .prologue
    const/4 v9, 0x0

    const-wide/16 v7, 0x1

    const-string v5, ", skipping"

    const-string v4, " of "

    const-string v3, "Sync"

    .line 966
    :try_start_9
    sget-object v0, Lcom/google/android/providers/AbstractGDataSyncAdapter$1;->$SwitchMap$com$google$android$providers$AbstractGDataSyncAdapter$ClientDiffType:[I

    invoke-virtual {p1}, Lcom/google/android/providers/AbstractGDataSyncAdapter$ClientDiffType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_28e

    :goto_14
    move-object v0, p3

    .line 1096
    :goto_15
    return-object v0

    .line 968
    :pswitch_16
    const-string v0, "Sync"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 969
    const-string v0, "Sync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating entry "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    :cond_37
    invoke-virtual {p3}, Lcom/google/wireless/gdata/data/Entry;->isDeleted()Z

    move-result v0

    if-eqz v0, :cond_78

    .line 972
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "entry is marked as deleted but op is UPDATE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_45
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_9 .. :try_end_45} :catch_45
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_45} :catch_8a
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_45} :catch_ff
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_9 .. :try_end_45} :catch_156

    .line 1001
    :catch_45
    move-exception v0

    move-object v6, v0

    .line 1002
    .local v6, e:Lcom/google/wireless/gdata/parser/ParseException;
    const-string v0, "Sync"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parse error during "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " of "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", skipping"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1003
    iget-object v0, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numParseExceptions:J

    add-long/2addr v1, v7

    iput-wide v1, v0, Landroid/content/SyncStats;->numParseExceptions:J

    move-object v0, v9

    .line 1004
    goto :goto_15

    .line 975
    .end local v6           #e:Lcom/google/wireless/gdata/parser/ParseException;
    :cond_78
    :try_start_78
    invoke-virtual {p0}, Lcom/google/android/providers/AbstractGDataSyncAdapter;->getGDataServiceClient()Lcom/google/wireless/gdata/client/GDataServiceClient;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/providers/AbstractGDataSyncAdapter;->mAuthToken:Ljava/lang/String;

    invoke-virtual {v0, p3, v1}, Lcom/google/wireless/gdata/client/GDataServiceClient;->updateEntry(Lcom/google/wireless/gdata/data/Entry;Ljava/lang/String;)Lcom/google/wireless/gdata/data/Entry;

    move-result-object p3

    .line 976
    iget-object v0, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numUpdates:J

    add-long/2addr v1, v7

    iput-wide v1, v0, Landroid/content/SyncStats;->numUpdates:J
    :try_end_89
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_78 .. :try_end_89} :catch_45
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_89} :catch_8a
    .catch Ljava/lang/RuntimeException; {:try_start_78 .. :try_end_89} :catch_ff
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_78 .. :try_end_89} :catch_156

    goto :goto_14

    .line 1005
    :catch_8a
    move-exception v0

    move-object v6, v0

    .line 1007
    .local v6, e:Ljava/io/IOException;
    const-string v0, "Sync"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "io error during "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/providers/AbstractGDataSyncAdapter$ClientDiffType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " of "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", due to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", skipping"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    iget-object v0, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numIoExceptions:J

    add-long/2addr v1, v7

    iput-wide v1, v0, Landroid/content/SyncStats;->numIoExceptions:J

    move-object v0, v9

    .line 1011
    goto/16 :goto_15

    .line 980
    .end local v6           #e:Ljava/io/IOException;
    :pswitch_d0
    :try_start_d0
    const-string v0, "Sync"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_f1

    .line 981
    const-string v0, "Sync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inserting entry "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    :cond_f1
    invoke-virtual {p3}, Lcom/google/wireless/gdata/data/Entry;->isDeleted()Z

    move-result v0

    if-eqz v0, :cond_143

    .line 984
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "entry is marked as deleted but op is INSERT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_ff
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_d0 .. :try_end_ff} :catch_45
    .catch Ljava/io/IOException; {:try_start_d0 .. :try_end_ff} :catch_8a
    .catch Ljava/lang/RuntimeException; {:try_start_d0 .. :try_end_ff} :catch_ff
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_d0 .. :try_end_ff} :catch_156

    .line 1012
    :catch_ff
    move-exception v0

    move-object v6, v0

    .line 1013
    .local v6, e:Ljava/lang/RuntimeException;
    const-string v0, "Sync"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "object "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " caught an exception during "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/providers/AbstractGDataSyncAdapter$ClientDiffType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " of "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1015
    iget-object v0, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numSkippedEntries:J

    add-long/2addr v1, v7

    iput-wide v1, v0, Landroid/content/SyncStats;->numSkippedEntries:J

    move-object v0, v9

    .line 1016
    goto/16 :goto_15

    .line 987
    .end local v6           #e:Ljava/lang/RuntimeException;
    :cond_143
    :try_start_143
    invoke-virtual {p0}, Lcom/google/android/providers/AbstractGDataSyncAdapter;->getGDataServiceClient()Lcom/google/wireless/gdata/client/GDataServiceClient;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/providers/AbstractGDataSyncAdapter;->mAuthToken:Ljava/lang/String;

    invoke-virtual {v0, p2, v1, p3}, Lcom/google/wireless/gdata/client/GDataServiceClient;->createEntry(Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/gdata/data/Entry;)Lcom/google/wireless/gdata/data/Entry;

    move-result-object p3

    .line 988
    iget-object v0, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numInserts:J

    add-long/2addr v1, v7

    iput-wide v1, v0, Landroid/content/SyncStats;->numInserts:J
    :try_end_154
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_143 .. :try_end_154} :catch_45
    .catch Ljava/io/IOException; {:try_start_143 .. :try_end_154} :catch_8a
    .catch Ljava/lang/RuntimeException; {:try_start_143 .. :try_end_154} :catch_ff
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_143 .. :try_end_154} :catch_156

    goto/16 :goto_14

    .line 1017
    :catch_156
    move-exception v0

    move-object v6, v0

    .line 1018
    .local v6, e:Lcom/google/wireless/gdata/client/HttpException;
    invoke-virtual {v6}, Lcom/google/wireless/gdata/client/HttpException;->getStatusCode()I

    move-result v0

    packed-switch v0, :pswitch_data_298

    .line 1092
    :pswitch_15f
    const-string v0, "Sync"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "other error during "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/providers/AbstractGDataSyncAdapter$ClientDiffType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " of "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", due to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Lcom/google/wireless/gdata/client/HttpException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", skipping"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    iget-object v0, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numIoExceptions:J

    add-long/2addr v1, v7

    iput-wide v1, v0, Landroid/content/SyncStats;->numIoExceptions:J

    move-object v0, v9

    .line 1096
    goto/16 :goto_15

    .line 992
    .end local v6           #e:Lcom/google/wireless/gdata/client/HttpException;
    :pswitch_1a3
    :try_start_1a3
    invoke-virtual {p3}, Lcom/google/wireless/gdata/data/Entry;->isDeleted()Z

    move-result v0

    if-nez v0, :cond_1b1

    .line 993
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "entry is not marked as deleted but op is DELETE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 996
    :cond_1b1
    invoke-virtual {p0}, Lcom/google/android/providers/AbstractGDataSyncAdapter;->getGDataServiceClient()Lcom/google/wireless/gdata/client/GDataServiceClient;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/providers/AbstractGDataSyncAdapter;->mAuthToken:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Lcom/google/wireless/gdata/client/GDataServiceClient;->deleteEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    iget-object v0, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numDeletes:J

    add-long/2addr v1, v7

    iput-wide v1, v0, Landroid/content/SyncStats;->numDeletes:J
    :try_end_1c1
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_1a3 .. :try_end_1c1} :catch_45
    .catch Ljava/io/IOException; {:try_start_1a3 .. :try_end_1c1} :catch_8a
    .catch Ljava/lang/RuntimeException; {:try_start_1a3 .. :try_end_1c1} :catch_ff
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_1a3 .. :try_end_1c1} :catch_156

    goto/16 :goto_14

    .line 1021
    .restart local v6       #e:Lcom/google/wireless/gdata/client/HttpException;
    :pswitch_1c3
    sget-object v0, Lcom/google/android/providers/AbstractGDataSyncAdapter$ClientDiffType;->UPDATE:Lcom/google/android/providers/AbstractGDataSyncAdapter$ClientDiffType;

    if-ne p1, v0, :cond_1e9

    .line 1023
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p3}, Lcom/google/wireless/gdata/data/Entry;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/providers/AbstractGDataSyncAdapter;->getSingleEntry(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/wireless/gdata/data/Entry;

    move-result-object p3

    .line 1024
    if-nez p3, :cond_1df

    .line 1025
    iget-object v0, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numIoExceptions:J

    add-long/2addr v1, v7

    iput-wide v1, v0, Landroid/content/SyncStats;->numIoExceptions:J

    move-object v0, v9

    .line 1026
    goto/16 :goto_15

    .line 1028
    :cond_1df
    iget-object v0, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numUpdates:J

    add-long/2addr v1, v7

    iput-wide v1, v0, Landroid/content/SyncStats;->numUpdates:J

    :cond_1e6
    :goto_1e6
    move-object v0, p3

    .line 1036
    goto/16 :goto_15

    .line 1029
    :cond_1e9
    sget-object v0, Lcom/google/android/providers/AbstractGDataSyncAdapter$ClientDiffType;->INSERT:Lcom/google/android/providers/AbstractGDataSyncAdapter$ClientDiffType;

    if-ne p1, v0, :cond_1f9

    .line 1031
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Lcom/google/wireless/gdata/data/Entry;->setDeleted(Z)V

    .line 1032
    iget-object v0, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numDeletes:J

    add-long/2addr v1, v7

    iput-wide v1, v0, Landroid/content/SyncStats;->numDeletes:J

    goto :goto_1e6

    .line 1033
    :cond_1f9
    sget-object v0, Lcom/google/android/providers/AbstractGDataSyncAdapter$ClientDiffType;->DELETE:Lcom/google/android/providers/AbstractGDataSyncAdapter$ClientDiffType;

    if-ne p1, v0, :cond_1e6

    .line 1034
    iget-object v0, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numDeletes:J

    add-long/2addr v1, v7

    iput-wide v1, v0, Landroid/content/SyncStats;->numDeletes:J

    goto :goto_1e6

    .line 1039
    :pswitch_205
    sget-object v0, Lcom/google/android/providers/AbstractGDataSyncAdapter$ClientDiffType;->UPDATE:Lcom/google/android/providers/AbstractGDataSyncAdapter$ClientDiffType;

    if-ne p1, v0, :cond_20d

    .line 1040
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Lcom/google/wireless/gdata/data/Entry;->setDeleted(Z)V

    .line 1042
    :cond_20d
    iget-object v0, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numDeletes:J

    add-long/2addr v1, v7

    iput-wide v1, v0, Landroid/content/SyncStats;->numDeletes:J

    move-object v0, p3

    .line 1043
    goto/16 :goto_15

    .line 1050
    :pswitch_217
    if-eqz p5, :cond_229

    .line 1052
    :try_start_219
    invoke-virtual {p0}, Lcom/google/android/providers/AbstractGDataSyncAdapter;->invalidateAndUpdateAuthToken()V

    .line 1053
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/providers/AbstractGDataSyncAdapter;->sendSingleClientDiff(Lcom/google/android/providers/AbstractGDataSyncAdapter$ClientDiffType;Ljava/lang/String;Lcom/google/wireless/gdata/data/Entry;Landroid/content/SyncResult;Z)Lcom/google/wireless/gdata/data/Entry;
    :try_end_225
    .catch Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper$AuthenticationException; {:try_start_219 .. :try_end_225} :catch_28b
    .catch Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException; {:try_start_219 .. :try_end_225} :catch_228

    move-result-object v0

    goto/16 :goto_15

    .line 1057
    :catch_228
    move-exception v0

    .line 1061
    :cond_229
    :goto_229
    iget-object v0, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numAuthExceptions:J

    add-long/2addr v1, v7

    iput-wide v1, v0, Landroid/content/SyncStats;->numAuthExceptions:J

    move-object v0, v9

    .line 1062
    goto/16 :goto_15

    .line 1065
    :pswitch_233
    sget-object v0, Lcom/google/android/providers/AbstractGDataSyncAdapter$ClientDiffType;->INSERT:Lcom/google/android/providers/AbstractGDataSyncAdapter$ClientDiffType;

    if-ne p1, v0, :cond_241

    .line 1067
    iget-object v0, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    add-long/2addr v1, v7

    iput-wide v1, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    move-object v0, v9

    .line 1068
    goto/16 :goto_15

    .line 1078
    :cond_241
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/providers/AbstractGDataSyncAdapter;->getSingleEntry(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/wireless/gdata/data/Entry;

    move-result-object p3

    .line 1079
    if-nez p3, :cond_281

    .line 1081
    const-string v0, "Sync"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "conflict detected during "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/providers/AbstractGDataSyncAdapter$ClientDiffType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " of "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", skipping"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1084
    iget-object v0, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    add-long/2addr v1, v7

    iput-wide v1, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    move-object v0, v9

    .line 1085
    goto/16 :goto_15

    .line 1087
    :cond_281
    iget-object v0, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numUpdates:J

    add-long/2addr v1, v7

    iput-wide v1, v0, Landroid/content/SyncStats;->numUpdates:J

    move-object v0, p3

    .line 1088
    goto/16 :goto_15

    .line 1055
    :catch_28b
    move-exception v0

    goto :goto_229

    .line 966
    nop

    :pswitch_data_28e
    .packed-switch 0x1
        :pswitch_16
        :pswitch_d0
        :pswitch_1a3
    .end packed-switch

    .line 1018
    :pswitch_data_298
    .packed-switch 0x190
        :pswitch_1c3
        :pswitch_217
        :pswitch_15f
        :pswitch_1c3
        :pswitch_205
        :pswitch_15f
        :pswitch_15f
        :pswitch_15f
        :pswitch_15f
        :pswitch_233
    .end packed-switch
.end method

.method protected setAuthToken(Ljava/lang/String;)V
    .registers 2
    .parameter "authToken"

    .prologue
    .line 419
    iput-object p1, p0, Lcom/google/android/providers/AbstractGDataSyncAdapter;->mAuthToken:Ljava/lang/String;

    .line 420
    return-void
.end method

.method protected abstract updateProvider(Lcom/google/wireless/gdata/data/Feed;Ljava/lang/Long;Lcom/google/wireless/gdata/data/Entry;Landroid/content/ContentProvider;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation
.end method

.method updateProviderInTransaction(Landroid/content/SyncableContentProvider;Lcom/google/wireless/gdata/data/Entry;Ljava/lang/Long;Ljava/lang/Object;Landroid/content/SyncResult;)V
    .registers 14
    .parameter "provider"
    .parameter "entry"
    .parameter "syncLocalId"
    .parameter "syncInfo"
    .parameter "syncResult"

    .prologue
    const-string v0, "Sync"

    .line 1126
    invoke-virtual {p1}, Landroid/content/SyncableContentProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 1127
    .local v6, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1129
    :try_start_9
    const-string v0, "Sync"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1130
    const-string v0, "Sync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendClientDiffs: updating provider with entry "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    :cond_2a
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p3

    move-object v3, p2

    move-object v4, p1

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/providers/AbstractGDataSyncAdapter;->updateProvider(Lcom/google/wireless/gdata/data/Feed;Ljava/lang/Long;Lcom/google/wireless/gdata/data/Entry;Landroid/content/ContentProvider;Ljava/lang/Object;)V

    .line 1133
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_36
    .catchall {:try_start_9 .. :try_end_36} :catchall_61
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_36} :catch_3a

    .line 1138
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1140
    :goto_39
    return-void

    .line 1134
    :catch_3a
    move-exception v0

    move-object v7, v0

    .line 1135
    .local v7, e:Ljava/lang/Exception;
    :try_start_3c
    const-string v0, "Sync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateProvider failed, entry "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1136
    iget-object v0, p5, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numSkippedEntries:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/content/SyncStats;->numSkippedEntries:J
    :try_end_5d
    .catchall {:try_start_3c .. :try_end_5d} :catchall_61

    .line 1138
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_39

    .end local v7           #e:Ljava/lang/Exception;
    :catchall_61
    move-exception v0

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method protected updateQueryParameters(Lcom/google/wireless/gdata/client/QueryParams;)V
    .registers 2
    .parameter "params"

    .prologue
    .line 355
    return-void
.end method

.method public writeSyncData(Landroid/content/TempProviderSyncAdapter$SyncData;Landroid/content/SyncableContentProvider;)V
    .registers 11
    .parameter "syncData"
    .parameter "contentProvider"

    .prologue
    const-string v7, "data"

    const-string v6, "_sync_account"

    .line 476
    sget-object v1, Lcom/google/android/providers/AbstractGDataSyncAdapter;->SYNC_STATE_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "_sync_account = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/providers/AbstractGDataSyncAdapter;->mAccount:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {p2, v1, v2, v3}, Landroid/content/SyncableContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 477
    if-nez p1, :cond_2f

    .line 478
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 479
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "data"

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    const-string v1, "_sync_account"

    iget-object v1, p0, Lcom/google/android/providers/AbstractGDataSyncAdapter;->mAccount:Ljava/lang/String;

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    sget-object v1, Lcom/google/android/providers/AbstractGDataSyncAdapter;->SYNC_STATE_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2, v1, v0}, Landroid/content/SyncableContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 488
    .end local p1
    :goto_2e
    return-void

    .line 484
    .end local v0           #values:Landroid/content/ContentValues;
    .restart local p1
    :cond_2f
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 485
    .restart local v0       #values:Landroid/content/ContentValues;
    const-string v1, "data"

    check-cast p1, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData;

    .end local p1
    invoke-static {p1}, Lcom/google/android/providers/AbstractGDataSyncAdapter;->newBytesFromGDataSyncData(Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData;)[B

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 486
    const-string v1, "_sync_account"

    iget-object v1, p0, Lcom/google/android/providers/AbstractGDataSyncAdapter;->mAccount:Ljava/lang/String;

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    sget-object v1, Lcom/google/android/providers/AbstractGDataSyncAdapter;->SYNC_STATE_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2, v1, v0}, Landroid/content/SyncableContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_2e
.end method
