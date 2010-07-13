.class public Lcom/android/globalsearch/SuggestionProvider;
.super Landroid/content/ContentProvider;
.source "SuggestionProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/globalsearch/SuggestionProvider$SuggestionThread;
    }
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.android.globalsearch.SuggestionProvider"

.field private static final DBG:Z = false

.field private static final PER_SOURCE_CONCURRENT_QUERY_LIMIT:I = 0x3

.field private static final QUERY_THREAD_CORE_POOL_SIZE:I = 0x4

.field private static final QUERY_THREAD_MAX_POOL_SIZE:I = 0x6

.field private static final SEARCH_SUGGEST:I = 0x0

.field private static final SHORTCUT_REFRESH_POOL_SIZE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "GlobalSearch"

.field private static final THREAD_KEEPALIVE_SECONDS:I = 0x5

.field private static sThreadFactory:Ljava/util/concurrent/ThreadFactory;

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mNotifyHandler:Landroid/os/Handler;

.field private mQueryExecutor:Ljava/util/concurrent/ExecutorService;

.field private mRefreshExecutor:Ljava/util/concurrent/ExecutorService;

.field private mSessionManager:Lcom/android/globalsearch/SessionManager;

.field private mSources:Lcom/android/globalsearch/SuggestionSources;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 66
    invoke-static {}, Lcom/android/globalsearch/SuggestionProvider;->buildUriMatcher()Landroid/content/UriMatcher;

    move-result-object v0

    sput-object v0, Lcom/android/globalsearch/SuggestionProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 79
    new-instance v0, Lcom/android/globalsearch/SuggestionProvider$1;

    invoke-direct {v0}, Lcom/android/globalsearch/SuggestionProvider$1;-><init>()V

    sput-object v0, Lcom/android/globalsearch/SuggestionProvider;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 108
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 109
    return-void
.end method

.method private static buildUriMatcher()Landroid/content/UriMatcher;
    .registers 4

    .prologue
    const/4 v2, 0x0

    const-string v3, "com.android.globalsearch.SuggestionProvider"

    .line 193
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    .line 194
    .local v0, matcher:Landroid/content/UriMatcher;
    const-string v1, "com.android.globalsearch.SuggestionProvider"

    const-string v1, "search_suggest_query"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 196
    const-string v1, "com.android.globalsearch.SuggestionProvider"

    const-string v1, "search_suggest_query/*"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 198
    return-object v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 189
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .parameter "uri"

    .prologue
    .line 147
    const-string v0, "vnd.android.cursor.dir/vnd.android.search.suggest"

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 4
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 178
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onCreate()Z
    .registers 10

    .prologue
    const-wide/16 v3, 0x5

    const/4 v8, 0x3

    .line 114
    new-instance v0, Lcom/android/globalsearch/SuggestionSources;

    invoke-virtual {p0}, Lcom/android/globalsearch/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/globalsearch/SuggestionSources;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/globalsearch/SuggestionProvider;->mSources:Lcom/android/globalsearch/SuggestionSources;

    .line 115
    iget-object v0, p0, Lcom/android/globalsearch/SuggestionProvider;->mSources:Lcom/android/globalsearch/SuggestionSources;

    invoke-virtual {v0}, Lcom/android/globalsearch/SuggestionSources;->load()V

    .line 117
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/globalsearch/SuggestionProvider;->mNotifyHandler:Landroid/os/Handler;

    .line 119
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x4

    const/4 v2, 0x6

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sget-object v7, Lcom/android/globalsearch/SuggestionProvider;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/android/globalsearch/SuggestionProvider;->mQueryExecutor:Ljava/util/concurrent/ExecutorService;

    .line 125
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sget-object v7, Lcom/android/globalsearch/SuggestionProvider;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    move v1, v8

    move v2, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/android/globalsearch/SuggestionProvider;->mRefreshExecutor:Ljava/util/concurrent/ExecutorService;

    .line 131
    invoke-virtual {p0}, Lcom/android/globalsearch/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/globalsearch/SuggestionProvider;->mSources:Lcom/android/globalsearch/SuggestionSources;

    invoke-virtual {p0}, Lcom/android/globalsearch/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/globalsearch/ShortcutRepositoryImplLog;->create(Landroid/content/Context;)Lcom/android/globalsearch/ShortcutRepository;

    move-result-object v2

    new-instance v3, Lcom/android/globalsearch/PerTagExecutor;

    iget-object v4, p0, Lcom/android/globalsearch/SuggestionProvider;->mQueryExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v3, v4, v8}, Lcom/android/globalsearch/PerTagExecutor;-><init>(Ljava/util/concurrent/Executor;I)V

    iget-object v4, p0, Lcom/android/globalsearch/SuggestionProvider;->mRefreshExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v5, p0, Lcom/android/globalsearch/SuggestionProvider;->mNotifyHandler:Landroid/os/Handler;

    invoke-static/range {v0 .. v5}, Lcom/android/globalsearch/SessionManager;->refreshSessionmanager(Landroid/content/Context;Lcom/android/globalsearch/SuggestionSources;Lcom/android/globalsearch/ShortcutRepository;Lcom/android/globalsearch/PerTagExecutor;Ljava/util/concurrent/Executor;Landroid/os/Handler;)Lcom/android/globalsearch/SessionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/globalsearch/SuggestionProvider;->mSessionManager:Lcom/android/globalsearch/SessionManager;

    .line 138
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 10
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 162
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_35

    .line 163
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, query:Ljava/lang/String;
    :goto_13
    sget-object v1, Lcom/android/globalsearch/SuggestionProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_44

    .line 172
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 165
    .end local v0           #query:Ljava/lang/String;
    :cond_35
    const-string v0, ""

    .restart local v0       #query:Ljava/lang/String;
    goto :goto_13

    .line 170
    :pswitch_38
    iget-object v1, p0, Lcom/android/globalsearch/SuggestionProvider;->mSessionManager:Lcom/android/globalsearch/SessionManager;

    invoke-virtual {p0}, Lcom/android/globalsearch/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/globalsearch/SessionManager;->query(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1

    .line 168
    nop

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_38
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 184
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
