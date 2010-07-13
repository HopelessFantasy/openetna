.class public Lcom/android/providers/applications/ApplicationsProvider;
.super Landroid/content/ContentProvider;
.source "ApplicationsProvider.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/applications/ApplicationsProvider$UpdateRunnable;,
        Lcom/android/providers/applications/ApplicationsProvider$WorkerThread;
    }
.end annotation


# static fields
.field private static final APPLICATIONS_TABLE:Ljava/lang/String; = "applications"

.field public static final CLASS:Ljava/lang/String; = "class"

.field private static final DBG:Z = false

.field public static final DESCRIPTION:Ljava/lang/String; = "description"

.field public static final ICON:Ljava/lang/String; = "icon"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final PACKAGE:Ljava/lang/String; = "package"

.field private static final SEARCH_SUGGEST:I = 0x0

.field private static final SHORTCUT_REFRESH:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ApplicationsProvider"

.field private static final UPDATE_DELAY_MILLIS:J = 0x3e8L

.field public static final _ID:Ljava/lang/String; = "_id"

.field private static final sSearchSuggestionsProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sURIMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mExecutor:Ljava/util/concurrent/Executor;

.field private final mPending:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/providers/applications/ApplicationsProvider$UpdateRunnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mQLock:Ljava/lang/Object;

.field private final mThreadCount:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 67
    invoke-static {}, Lcom/android/providers/applications/ApplicationsProvider;->buildUriMatcher()Landroid/content/UriMatcher;

    move-result-object v0

    sput-object v0, Lcom/android/providers/applications/ApplicationsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    .line 79
    invoke-static {}, Lcom/android/providers/applications/ApplicationsProvider;->buildSuggestionsProjectionMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/applications/ApplicationsProvider;->sSearchSuggestionsProjectionMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 83
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/providers/applications/ApplicationsProvider;->mThreadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/providers/applications/ApplicationsProvider;->mQLock:Ljava/lang/Object;

    .line 88
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/providers/applications/ApplicationsProvider;->mPending:Ljava/util/LinkedList;

    .line 110
    new-instance v0, Lcom/android/providers/applications/ApplicationsProvider$1;

    invoke-direct {v0, p0}, Lcom/android/providers/applications/ApplicationsProvider$1;-><init>(Lcom/android/providers/applications/ApplicationsProvider;)V

    iput-object v0, p0, Lcom/android/providers/applications/ApplicationsProvider;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 187
    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/applications/ApplicationsProvider;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/providers/applications/ApplicationsProvider;->postAppsUpdate()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/providers/applications/ApplicationsProvider;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/providers/applications/ApplicationsProvider;->updateApplicationsList()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/providers/applications/ApplicationsProvider;Lcom/android/providers/applications/ApplicationsProvider$UpdateRunnable;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/providers/applications/ApplicationsProvider;->doneRunning(Lcom/android/providers/applications/ApplicationsProvider$UpdateRunnable;)V

    return-void
.end method

.method private static buildSuggestionsProjectionMap()Ljava/util/HashMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v2, "_id"

    .line 385
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 386
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "_id"

    const-string v1, "_id"

    invoke-virtual {v0, v2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    const-string v1, "suggest_text_1"

    const-string v2, "name AS suggest_text_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    const-string v1, "suggest_text_2"

    const-string v2, "description AS suggest_text_2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    const-string v1, "suggest_intent_data"

    const-string v2, "\'content://applications/applications/\' || package || \'/\' || class AS suggest_intent_data"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    const-string v1, "suggest_icon_1"

    const-string v2, "icon AS suggest_icon_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    const-string v1, "suggest_icon_2"

    const-string v2, "NULL AS suggest_icon_2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    const-string v1, "suggest_shortcut_id"

    const-string v2, "package || \'/\' || class AS suggest_shortcut_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    return-object v0
.end method

.method private buildTokenFilter(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "filterParam"

    .prologue
    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "token GLOB "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 379
    .local v0, filter:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/database/DatabaseUtils;->getHexCollationKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 381
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static buildUriMatcher()Landroid/content/UriMatcher;
    .registers 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v2, "applications"

    .line 97
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    .line 98
    .local v0, matcher:Landroid/content/UriMatcher;
    const-string v1, "applications"

    const-string v1, "search_suggest_query"

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 100
    const-string v1, "applications"

    const-string v1, "search_suggest_query/*"

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 102
    const-string v1, "applications"

    const-string v1, "search_suggest_shortcut"

    invoke-virtual {v0, v2, v1, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 104
    const-string v1, "applications"

    const-string v1, "search_suggest_shortcut/*"

    invoke-virtual {v0, v2, v1, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 106
    return-object v0
.end method

.method private createDatabase()V
    .registers 3

    .prologue
    .line 228
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/database/sqlite/SQLiteDatabase;->create(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/applications/ApplicationsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 229
    iget-object v0, p0, Lcom/android/providers/applications/ApplicationsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE IF NOT EXISTS applications (_id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT COLLATE LOCALIZED,description description TEXT,package TEXT,class TEXT,icon TEXT);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/android/providers/applications/ApplicationsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX applicationsComponentIndex ON applications (package,class);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/android/providers/applications/ApplicationsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE applicationsLookup (token TEXT,source INTEGER REFERENCES applications(_id),token_index INTEGER);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/android/providers/applications/ApplicationsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX applicationsLookupIndex ON applicationsLookup (token,source);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/android/providers/applications/ApplicationsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TRIGGER applicationsLookup_update UPDATE OF name ON applications BEGIN DELETE FROM applicationsLookup WHERE source = new._id;SELECT _TOKENIZE(\'applicationsLookup\', new._id, new.name, \' \', 1);END"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/android/providers/applications/ApplicationsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TRIGGER applicationsLookup_insert AFTER INSERT ON applications BEGIN SELECT _TOKENIZE(\'applicationsLookup\', new._id, new.name, \' \', 1);END"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/android/providers/applications/ApplicationsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TRIGGER applicationsLookup_delete DELETE ON applications BEGIN DELETE FROM applicationsLookup WHERE source = old._id;END"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 267
    return-void
.end method

.method private doneRunning(Lcom/android/providers/applications/ApplicationsProvider$UpdateRunnable;)V
    .registers 4
    .parameter "runnable"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/providers/applications/ApplicationsProvider;->mQLock:Ljava/lang/Object;

    monitor-enter v0

    .line 179
    :try_start_3
    iget-object v1, p0, Lcom/android/providers/applications/ApplicationsProvider;->mPending:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 180
    monitor-exit v0

    .line 181
    return-void

    .line 180
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public static getComponentName(Landroid/net/Uri;)Landroid/content/ComponentName;
    .registers 7
    .parameter "appUri"

    .prologue
    const/4 v5, 0x0

    .line 492
    if-nez p0, :cond_5

    move-object v3, v5

    .line 501
    :goto_4
    return-object v3

    .line 495
    :cond_5
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    .line 496
    .local v2, pathSegments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x3

    if-ge v3, v4, :cond_12

    move-object v3, v5

    .line 497
    goto :goto_4

    .line 499
    :cond_12
    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 500
    .local v1, packageName:Ljava/lang/String;
    const/4 v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 501
    .local v0, name:Ljava/lang/String;
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method private getSuggestions(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 12
    .parameter "query"
    .parameter "projectionIn"

    .prologue
    const/4 v3, 0x0

    .line 330
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    move-object v1, v3

    .line 349
    :goto_8
    return-object v1

    .line 335
    :cond_9
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 336
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v1, "applicationsLookup JOIN applications ON applicationsLookup.source = applications._id"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 338
    sget-object v1, Lcom/android/providers/applications/ApplicationsProvider;->sSearchSuggestionsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 339
    invoke-direct {p0, p1}, Lcom/android/providers/applications/ApplicationsProvider;->buildTokenFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 341
    const-string v5, "applications._id"

    .line 346
    .local v5, groupBy:Ljava/lang/String;
    const-string v7, "MIN(token_index) != 0, name"

    .line 347
    .local v7, order:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/providers/applications/ApplicationsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v2, p2

    move-object v4, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .local v8, cursor:Landroid/database/Cursor;
    move-object v1, v8

    .line 349
    goto :goto_8
.end method

.method public static getUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 4
    .parameter "packageName"
    .parameter "className"

    .prologue
    .line 514
    sget-object v0, Landroid/provider/Applications;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "applications"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private postAppsUpdate()V
    .registers 6

    .prologue
    .line 167
    new-instance v1, Lcom/android/providers/applications/ApplicationsProvider$UpdateRunnable;

    invoke-direct {v1, p0}, Lcom/android/providers/applications/ApplicationsProvider$UpdateRunnable;-><init>(Lcom/android/providers/applications/ApplicationsProvider;)V

    .line 168
    .local v1, r:Lcom/android/providers/applications/ApplicationsProvider$UpdateRunnable;
    iget-object v3, p0, Lcom/android/providers/applications/ApplicationsProvider;->mQLock:Ljava/lang/Object;

    monitor-enter v3

    .line 169
    :try_start_8
    iget-object v4, p0, Lcom/android/providers/applications/ApplicationsProvider;->mPending:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/providers/applications/ApplicationsProvider$UpdateRunnable;

    .line 170
    .local v2, updateRunnable:Lcom/android/providers/applications/ApplicationsProvider$UpdateRunnable;
    invoke-virtual {v2}, Lcom/android/providers/applications/ApplicationsProvider$UpdateRunnable;->cancel()V

    goto :goto_e

    .line 173
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #updateRunnable:Lcom/android/providers/applications/ApplicationsProvider$UpdateRunnable;
    :catchall_1e
    move-exception v4

    monitor-exit v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_1e

    throw v4

    .line 172
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_21
    :try_start_21
    iget-object v4, p0, Lcom/android/providers/applications/ApplicationsProvider;->mPending:Ljava/util/LinkedList;

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 173
    monitor-exit v3
    :try_end_27
    .catchall {:try_start_21 .. :try_end_27} :catchall_1e

    .line 174
    iget-object v3, p0, Lcom/android/providers/applications/ApplicationsProvider;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v3, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 175
    return-void
.end method

.method private refreshShortcut(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 13
    .parameter "shortcutId"
    .parameter "projectionIn"

    .prologue
    const/4 v3, 0x0

    .line 358
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v8

    .line 359
    .local v8, component:Landroid/content/ComponentName;
    if-nez v8, :cond_21

    .line 360
    const-string v1, "ApplicationsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad shortcut id: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    .line 370
    :goto_20
    return-object v1

    .line 363
    :cond_21
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 364
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v1, "applications"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 365
    sget-object v1, Lcom/android/providers/applications/ApplicationsProvider;->sSearchSuggestionsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 366
    const-string v1, "package = ? AND class = ?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 367
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x1

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    .line 368
    .local v4, selectionArgs:[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/providers/applications/ApplicationsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v2, p2

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .local v9, cursor:Landroid/database/Cursor;
    move-object v1, v9

    .line 370
    goto :goto_20
.end method

.method private registerBroadcastReceiver()V
    .registers 4

    .prologue
    .line 274
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 275
    .local v0, packageFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 276
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 277
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 278
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p0}, Lcom/android/providers/applications/ApplicationsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/applications/ApplicationsProvider;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 280
    return-void
.end method

.method private updateApplicationsList()V
    .registers 16

    .prologue
    .line 415
    new-instance v7, Landroid/database/DatabaseUtils$InsertHelper;

    iget-object v13, p0, Lcom/android/providers/applications/ApplicationsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v14, "applications"

    invoke-direct {v7, v13, v14}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 417
    .local v7, inserter:Landroid/database/DatabaseUtils$InsertHelper;
    const-string v13, "name"

    invoke-virtual {v7, v13}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 418
    .local v10, nameCol:I
    const-string v13, "description"

    invoke-virtual {v7, v13}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 419
    .local v2, descriptionCol:I
    const-string v13, "package"

    invoke-virtual {v7, v13}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 420
    .local v11, packageCol:I
    const-string v13, "class"

    invoke-virtual {v7, v13}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 421
    .local v0, classCol:I
    const-string v13, "icon"

    invoke-virtual {v7, v13}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 423
    .local v5, iconCol:I
    iget-object v13, p0, Lcom/android/providers/applications/ApplicationsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 425
    :try_start_2c
    iget-object v13, p0, Lcom/android/providers/applications/ApplicationsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v14, "DELETE FROM applications"

    invoke-virtual {v13, v14}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 426
    invoke-virtual {p0}, Lcom/android/providers/applications/ApplicationsProvider;->getContext()Landroid/content/Context;

    move-result-object v13

    const v14, 0x7f030001

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 428
    .local v1, description:Ljava/lang/String;
    new-instance v8, Landroid/content/Intent;

    const-string v13, "android.intent.action.MAIN"

    const/4 v14, 0x0

    invoke-direct {v8, v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 429
    .local v8, mainIntent:Landroid/content/Intent;
    const-string v13, "android.intent.category.LAUNCHER"

    invoke-virtual {v8, v13}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 430
    invoke-virtual {p0}, Lcom/android/providers/applications/ApplicationsProvider;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 431
    .local v9, manager:Landroid/content/pm/PackageManager;
    const/4 v13, 0x0

    invoke-virtual {v9, v8, v13}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_5c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_d8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 432
    .local v6, info:Landroid/content/pm/ResolveInfo;
    invoke-virtual {v6, v9}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 433
    .local v12, title:Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_7a

    .line 434
    iget-object v13, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v13, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 438
    :cond_7a
    iget-object v13, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v13}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v13

    if-eqz v13, :cond_d0

    .line 440
    new-instance v13, Landroid/net/Uri$Builder;

    invoke-direct {v13}, Landroid/net/Uri$Builder;-><init>()V

    const-string v14, "android.resource"

    invoke-virtual {v13, v14}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v13

    iget-object v14, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v13

    iget-object v14, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v14}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 449
    .local v4, icon:Ljava/lang/String;
    :goto_a9
    invoke-virtual {v7}, Landroid/database/DatabaseUtils$InsertHelper;->prepareForInsert()V

    .line 450
    invoke-virtual {v7, v10, v12}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 451
    invoke-virtual {v7, v2, v1}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 452
    iget-object v13, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v11, v13}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 453
    iget-object v13, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v0, v13}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 454
    invoke-virtual {v7, v5, v4}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 455
    invoke-virtual {v7}, Landroid/database/DatabaseUtils$InsertHelper;->execute()J
    :try_end_c8
    .catchall {:try_start_2c .. :try_end_c8} :catchall_c9

    goto :goto_5c

    .line 459
    .end local v1           #description:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #icon:Ljava/lang/String;
    .end local v6           #info:Landroid/content/pm/ResolveInfo;
    .end local v8           #mainIntent:Landroid/content/Intent;
    .end local v9           #manager:Landroid/content/pm/PackageManager;
    .end local v12           #title:Ljava/lang/String;
    :catchall_c9
    move-exception v13

    iget-object v14, p0, Lcom/android/providers/applications/ApplicationsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v13

    .line 447
    .restart local v1       #description:Ljava/lang/String;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v6       #info:Landroid/content/pm/ResolveInfo;
    .restart local v8       #mainIntent:Landroid/content/Intent;
    .restart local v9       #manager:Landroid/content/pm/PackageManager;
    .restart local v12       #title:Ljava/lang/String;
    :cond_d0
    const v13, 0x1080093

    :try_start_d3
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #icon:Ljava/lang/String;
    goto :goto_a9

    .line 457
    .end local v4           #icon:Ljava/lang/String;
    .end local v6           #info:Landroid/content/pm/ResolveInfo;
    .end local v12           #title:Ljava/lang/String;
    :cond_d8
    iget-object v13, p0, Lcom/android/providers/applications/ApplicationsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_dd
    .catchall {:try_start_d3 .. :try_end_dd} :catchall_c9

    .line 459
    iget-object v13, p0, Lcom/android/providers/applications/ApplicationsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 462
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 478
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .parameter "uri"

    .prologue
    .line 288
    const-string v0, "vnd.android.cursor.dir/vnd.android.search.suggest"

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 4
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 467
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 5
    .parameter "r"

    .prologue
    .line 146
    new-instance v0, Lcom/android/providers/applications/ApplicationsProvider$WorkerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ApplicationsProvider #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/applications/ApplicationsProvider;->mThreadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/android/providers/applications/ApplicationsProvider$WorkerThread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;Lcom/android/providers/applications/ApplicationsProvider$1;)V

    return-object v0
.end method

.method public onCreate()Z
    .registers 9

    .prologue
    const/4 v1, 0x1

    .line 126
    invoke-direct {p0}, Lcom/android/providers/applications/ApplicationsProvider;->createDatabase()V

    .line 127
    invoke-direct {p0}, Lcom/android/providers/applications/ApplicationsProvider;->registerBroadcastReceiver()V

    .line 128
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0x5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move v2, v1

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/android/providers/applications/ApplicationsProvider;->mExecutor:Ljava/util/concurrent/Executor;

    .line 132
    invoke-direct {p0}, Lcom/android/providers/applications/ApplicationsProvider;->postAppsUpdate()V

    .line 133
    return v1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 11
    .parameter "uri"
    .parameter "projectionIn"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v3, 0x1

    .line 300
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 301
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selection not allowed for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 303
    :cond_20
    if-eqz p4, :cond_3e

    array-length v2, p4

    if-eqz v2, :cond_3e

    .line 304
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selectionArgs not allowed for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 306
    :cond_3e
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5d

    .line 307
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sortOrder not allowed for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 310
    :cond_5d
    sget-object v2, Lcom/android/providers/applications/ApplicationsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_ac

    .line 324
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown URL "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 312
    :pswitch_7f
    const/4 v0, 0x0

    .line 313
    .local v0, query:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v3, :cond_92

    .line 314
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 316
    :cond_92
    invoke-direct {p0, v0, p2}, Lcom/android/providers/applications/ApplicationsProvider;->getSuggestions(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 322
    .end local v0           #query:Ljava/lang/String;
    :goto_96
    return-object v2

    .line 318
    :pswitch_97
    const/4 v1, 0x0

    .line 319
    .local v1, shortcutId:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v3, :cond_a6

    .line 320
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 322
    :cond_a6
    invoke-direct {p0, v1, p2}, Lcom/android/providers/applications/ApplicationsProvider;->refreshShortcut(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_96

    .line 310
    nop

    :pswitch_data_ac
    .packed-switch 0x0
        :pswitch_7f
        :pswitch_97
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 473
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
