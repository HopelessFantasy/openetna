.class public Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider;
.super Landroid/content/AbstractSyncableContentProvider;
.source "SubscribedFeedsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;
    }
.end annotation


# static fields
.field private static final ACCOUNTS:I = 0x4

.field private static final ACCOUNTS_PROJECTION_MAP:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DATABASE_NAME:Ljava/lang/String; = "subscribedfeeds.db"

.field private static final DATABASE_VERSION:I = 0xa

.field private static final DELETED_FEEDS:I = 0x3

.field private static final FEEDS:I = 0x1

.field private static final FEED_ID:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SubscribedFeedsProvider"

.field private static sDeletedFeedsTable:Ljava/lang/String;

.field private static sDeletedFeedsUrl:Landroid/net/Uri;

.field private static sFeedsTable:Ljava/lang/String;

.field private static sFeedsUrl:Landroid/net/Uri;

.field private static final sURLMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const-string v3, "feeds"

    const-string v5, "_sync_account"

    const-string v4, "subscribedfeeds"

    .line 51
    new-instance v1, Landroid/content/UriMatcher;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v1, Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    .line 54
    const-string v1, "feeds"

    sput-object v3, Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider;->sFeedsTable:Ljava/lang/String;

    .line 55
    const-string v1, "content://subscribedfeeds/feeds/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider;->sFeedsUrl:Landroid/net/Uri;

    .line 57
    const-string v1, "_deleted_feeds"

    sput-object v1, Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider;->sDeletedFeedsTable:Ljava/lang/String;

    .line 58
    const-string v1, "content://subscribedfeeds/deleted_feeds/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider;->sDeletedFeedsUrl:Landroid/net/Uri;

    .line 66
    sget-object v1, Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v2, "subscribedfeeds"

    const-string v2, "feeds"

    const/4 v2, 0x1

    invoke-virtual {v1, v4, v3, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 67
    sget-object v1, Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v2, "subscribedfeeds"

    const-string v2, "feeds/#"

    const/4 v3, 0x2

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 68
    sget-object v1, Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v2, "subscribedfeeds"

    const-string v2, "deleted_feeds"

    const/4 v3, 0x3

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 69
    sget-object v1, Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v2, "subscribedfeeds"

    const-string v2, "accounts"

    const/4 v3, 0x4

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 368
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 369
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sput-object v0, Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider;->ACCOUNTS_PROJECTION_MAP:Ljava/util/Map;

    .line 370
    const-string v1, "_count"

    const-string v2, "COUNT(*) AS _count"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    const-string v1, "_sync_account"

    const-string v1, "_sync_account"

    invoke-interface {v0, v5, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    .line 62
    const-string v0, "subscribedfeeds.db"

    const/16 v1, 0xa

    sget-object v2, Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider;->sFeedsUrl:Landroid/net/Uri;

    invoke-direct {p0, v0, v1, v2}, Landroid/content/AbstractSyncableContentProvider;-><init>(Ljava/lang/String;ILandroid/net/Uri;)V

    .line 63
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 39
    sget-object v0, Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider;->sFeedsTable:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Landroid/net/Uri;
    .registers 1

    .prologue
    .line 39
    sget-object v0, Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider;->sFeedsUrl:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .prologue
    .line 39
    sget-object v0, Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider;->sDeletedFeedsTable:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Landroid/net/Uri;
    .registers 1

    .prologue
    .line 39
    sget-object v0, Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider;->sDeletedFeedsUrl:Landroid/net/Uri;

    return-object v0
.end method

.method private static addIdToWhereClause(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "id"
    .parameter "where"

    .prologue
    .line 274
    if-eqz p0, :cond_24

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 276
    .local v0, whereSb:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 278
    const-string v1, " AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 282
    :cond_1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 284
    .end local v0           #whereSb:Ljava/lang/StringBuilder;
    :goto_23
    return-object v1

    :cond_24
    move-object v1, p1

    goto :goto_23
.end method


# virtual methods
.method protected bootstrapDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .parameter "db"

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/content/AbstractSyncableContentProvider;->bootstrapDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 88
    const-string v0, "CREATE TABLE feeds (_id INTEGER PRIMARY KEY,_sync_account TEXT,_sync_id TEXT,_sync_time TEXT,_sync_version TEXT,_sync_local_id INTEGER,_sync_dirty INTEGER,_sync_mark INTEGER,feed TEXT,authority TEXT,service TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 105
    const-string v0, "CREATE TRIGGER feed_cleanup DELETE ON feeds WHEN old._sync_id is not null BEGIN INSERT INTO _deleted_feeds (_sync_id, _sync_account, _sync_version) VALUES (old._sync_id, old._sync_account, old._sync_version);END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE _deleted_feeds (_sync_version TEXT,_sync_id TEXT,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider;->isTemporary()Z

    move-result v1

    if-eqz v1, :cond_3e

    const-string v1, "_sync_local_id INTEGER,"

    :goto_20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_sync_account TEXT,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_sync_mark INTEGER, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UNIQUE(_sync_id))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 121
    return-void

    .line 114
    :cond_3e
    const-string v1, ""

    goto :goto_20
.end method

.method public deleteInternal(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 10
    .parameter "url"
    .parameter "userWhere"
    .parameter "whereArgs"

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 231
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v3, Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    packed-switch v3, :pswitch_data_3e

    .line 239
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot delete that URL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 233
    :pswitch_26
    const/4 v0, 0x0

    .line 243
    .local v0, changedItemId:Ljava/lang/String;
    :goto_27
    invoke-static {v0, p2}, Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider;->addIdToWhereClause(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 244
    .local v2, where:Ljava/lang/String;
    sget-object v3, Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider;->sFeedsTable:Ljava/lang/String;

    invoke-virtual {v1, v3, v2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    return v3

    .line 236
    .end local v0           #changedItemId:Ljava/lang/String;
    .end local v2           #where:Ljava/lang/String;
    :pswitch_32
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 237
    .restart local v0       #changedItemId:Ljava/lang/String;
    goto :goto_27

    .line 231
    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_26
        :pswitch_32
    .end packed-switch
.end method

.method protected getMergers()Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    new-instance v0, Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;

    invoke-direct {v0, p0}, Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;-><init>(Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5
    .parameter "url"

    .prologue
    .line 135
    sget-object v1, Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 136
    .local v0, match:I
    packed-switch v0, :pswitch_data_18

    .line 142
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unknown URL"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 138
    :pswitch_11
    const-string v1, "vnd.android.cursor.dir/subscribedfeeds"

    .line 140
    :goto_13
    return-object v1

    :pswitch_14
    const-string v1, "vnd.android.cursor.item/subscribedfeed"

    goto :goto_13

    .line 136
    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_11
        :pswitch_14
    .end packed-switch
.end method

.method public insertInternal(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 13
    .parameter "url"
    .parameter "initialValues"

    .prologue
    const-wide/16 v8, 0x0

    .line 190
    invoke-virtual {p0}, Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 191
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    .line 194
    .local v2, resultUri:Landroid/net/Uri;
    sget-object v6, Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 195
    .local v1, match:I
    packed-switch v1, :pswitch_data_8c

    .line 219
    :pswitch_10
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot insert into URL: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 197
    :pswitch_29
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 198
    .local v5, values:Landroid/content/ContentValues;
    const-string v6, "_sync_dirty"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 199
    sget-object v6, Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider;->sFeedsTable:Ljava/lang/String;

    const-string v7, "feed"

    invoke-virtual {v0, v6, v7, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 200
    .local v3, rowID:J
    cmp-long v6, v3, v8

    if-lez v6, :cond_5b

    .line 201
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "content://subscribedfeeds/feeds/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 223
    .end local v5           #values:Landroid/content/ContentValues;
    :cond_5b
    :goto_5b
    return-object v2

    .line 207
    .end local v3           #rowID:J
    :pswitch_5c
    invoke-virtual {p0}, Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider;->isTemporary()Z

    move-result v6

    if-nez v6, :cond_68

    .line 208
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v6}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v6

    .line 210
    :cond_68
    sget-object v6, Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider;->sDeletedFeedsTable:Ljava/lang/String;

    const-string v7, "_sync_id"

    invoke-virtual {v0, v6, v7, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 212
    .restart local v3       #rowID:J
    cmp-long v6, v3, v8

    if-lez v6, :cond_5b

    .line 213
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "content://subscribedfeeds/deleted_feeds/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_5b

    .line 195
    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_29
        :pswitch_10
        :pswitch_5c
    .end packed-switch
.end method

.method protected onDatabaseOpened(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .parameter "db"

    .prologue
    .line 125
    const-string v0, "feeds"

    const-string v1, "_deleted_feeds"

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->markTableSyncable(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public queryInternal(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 15
    .parameter "url"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 149
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 153
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    sget-object v1, Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v8

    .line 158
    .local v8, match:I
    packed-switch v8, :pswitch_data_96

    .line 180
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 160
    :pswitch_29
    sget-object v1, Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider;->sFeedsTable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 184
    :goto_2e
    invoke-virtual {p0}, Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v6

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :goto_3b
    return-object v1

    .line 163
    :pswitch_3c
    invoke-virtual {p0}, Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider;->isTemporary()Z

    move-result v1

    if-nez v1, :cond_48

    .line 164
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    .line 166
    :cond_48
    sget-object v1, Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider;->sDeletedFeedsTable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_2e

    .line 169
    :pswitch_4e
    sget-object v1, Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider;->sFeedsTable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 171
    sget-object v1, Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider;->ACCOUNTS_PROJECTION_MAP:Ljava/util/Map;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 172
    invoke-virtual {p0}, Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v5, "_sync_account"

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_3b

    .line 175
    :pswitch_6a
    sget-object v1, Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider;->sFeedsTable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider;->sFeedsTable:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "._id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 177
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_2e

    .line 158
    nop

    :pswitch_data_96
    .packed-switch 0x1
        :pswitch_29
        :pswitch_6a
        :pswitch_3c
        :pswitch_4e
    .end packed-switch
.end method

.method public updateInternal(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 12
    .parameter "url"
    .parameter "initialValues"
    .parameter "userWhere"
    .parameter "whereArgs"

    .prologue
    const/4 v6, 0x1

    .line 250
    invoke-virtual {p0}, Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 251
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 252
    .local v2, values:Landroid/content/ContentValues;
    const-string v4, "_sync_dirty"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 255
    sget-object v4, Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    packed-switch v4, :pswitch_data_4c

    .line 265
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot update URL: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 257
    :pswitch_35
    const/4 v0, 0x0

    .line 269
    .local v0, changedItemId:Ljava/lang/String;
    :goto_36
    invoke-static {v0, p3}, Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider;->addIdToWhereClause(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 270
    .local v3, where:Ljava/lang/String;
    sget-object v4, Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider;->sFeedsTable:Ljava/lang/String;

    invoke-virtual {v1, v4, v2, v3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    return v4

    .line 261
    .end local v0           #changedItemId:Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    :pswitch_41
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 262
    .restart local v0       #changedItemId:Ljava/lang/String;
    goto :goto_36

    .line 255
    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_35
        :pswitch_41
    .end packed-switch
.end method

.method protected upgradeDatabase(Landroid/database/sqlite/SQLiteDatabase;II)Z
    .registers 7
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 75
    const-string v0, "SubscribedFeedsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which will destroy all old data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const-string v0, "DROP TRIGGER IF EXISTS feed_cleanup"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 79
    const-string v0, "DROP TABLE IF EXISTS _deleted_feeds"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 80
    const-string v0, "DROP TABLE IF EXISTS feeds"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0, p1}, Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider;->bootstrapDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 82
    const/4 v0, 0x0

    return v0
.end method
