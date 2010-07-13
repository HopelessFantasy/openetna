.class public Lcom/android/globalsearch/SessionManager;
.super Ljava/lang/Object;
.source "SessionManager.java"

# interfaces
.implements Lcom/android/globalsearch/SuggestionSession$SessionCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/globalsearch/SessionManager$Sources;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "SessionManager"

.field private static sInstance:Lcom/android/globalsearch/SessionManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mQueryExecutor:Lcom/android/globalsearch/PerTagExecutor;

.field private final mRefreshExecutor:Ljava/util/concurrent/Executor;

.field private mSession:Lcom/android/globalsearch/SuggestionSession;

.field private final mShortcutRepo:Lcom/android/globalsearch/ShortcutRepository;

.field private final mSources:Lcom/android/globalsearch/SuggestionSources;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/globalsearch/SuggestionSources;Lcom/android/globalsearch/ShortcutRepository;Lcom/android/globalsearch/PerTagExecutor;Ljava/util/concurrent/Executor;Landroid/os/Handler;)V
    .registers 7
    .parameter "context"
    .parameter "sources"
    .parameter "shortcutRepo"
    .parameter "queryExecutor"
    .parameter "refreshExecutor"
    .parameter "handler"

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/android/globalsearch/SessionManager;->mContext:Landroid/content/Context;

    .line 75
    iput-object p2, p0, Lcom/android/globalsearch/SessionManager;->mSources:Lcom/android/globalsearch/SuggestionSources;

    .line 76
    iput-object p3, p0, Lcom/android/globalsearch/SessionManager;->mShortcutRepo:Lcom/android/globalsearch/ShortcutRepository;

    .line 77
    iput-object p4, p0, Lcom/android/globalsearch/SessionManager;->mQueryExecutor:Lcom/android/globalsearch/PerTagExecutor;

    .line 78
    iput-object p5, p0, Lcom/android/globalsearch/SessionManager;->mRefreshExecutor:Ljava/util/concurrent/Executor;

    .line 79
    iput-object p6, p0, Lcom/android/globalsearch/SessionManager;->mHandler:Landroid/os/Handler;

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/android/globalsearch/SessionManager;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/globalsearch/SessionManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private createSession()Lcom/android/globalsearch/SuggestionSession;
    .registers 12

    .prologue
    .line 112
    iget-object v1, p0, Lcom/android/globalsearch/SessionManager;->mSources:Lcom/android/globalsearch/SuggestionSources;

    invoke-virtual {v1}, Lcom/android/globalsearch/SuggestionSources;->getSelectedWebSearchSource()Lcom/android/globalsearch/SuggestionSource;

    move-result-object v10

    .line 117
    .local v10, webSearchSource:Lcom/android/globalsearch/SuggestionSource;
    if-eqz v10, :cond_b

    .line 118
    invoke-direct {p0, v10}, Lcom/android/globalsearch/SessionManager;->warmUpWebSource(Lcom/android/globalsearch/SuggestionSource;)V

    .line 121
    :cond_b
    iget-object v1, p0, Lcom/android/globalsearch/SessionManager;->mSources:Lcom/android/globalsearch/SuggestionSources;

    invoke-virtual {v1}, Lcom/android/globalsearch/SuggestionSources;->getEnabledSuggestionSources()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/globalsearch/SessionManager;->mSources:Lcom/android/globalsearch/SuggestionSources;

    iget-object v3, p0, Lcom/android/globalsearch/SessionManager;->mShortcutRepo:Lcom/android/globalsearch/ShortcutRepository;

    invoke-interface {v3}, Lcom/android/globalsearch/ShortcutRepository;->getSourceRanking()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v1, v2, v3, v4}, Lcom/android/globalsearch/SessionManager;->orderSources(Ljava/util/List;Lcom/android/globalsearch/SourceLookup;Ljava/util/ArrayList;I)Lcom/android/globalsearch/SessionManager$Sources;

    move-result-object v9

    .line 128
    .local v9, sources:Lcom/android/globalsearch/SessionManager$Sources;
    new-instance v6, Lcom/android/globalsearch/SessionManager$1;

    invoke-direct {v6, p0}, Lcom/android/globalsearch/SessionManager$1;-><init>(Lcom/android/globalsearch/SessionManager;)V

    .line 138
    .local v6, delayedExecutor:Lcom/android/globalsearch/DelayedExecutor;
    new-instance v0, Lcom/android/globalsearch/SuggestionSession;

    iget-object v1, p0, Lcom/android/globalsearch/SessionManager;->mSources:Lcom/android/globalsearch/SuggestionSources;

    iget-object v2, v9, Lcom/android/globalsearch/SessionManager$Sources;->mPromotableSources:Ljava/util/ArrayList;

    iget-object v3, v9, Lcom/android/globalsearch/SessionManager$Sources;->mUnpromotableSources:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/globalsearch/SessionManager;->mQueryExecutor:Lcom/android/globalsearch/PerTagExecutor;

    iget-object v5, p0, Lcom/android/globalsearch/SessionManager;->mRefreshExecutor:Ljava/util/concurrent/Executor;

    new-instance v7, Lcom/android/globalsearch/SuggestionFactoryImpl;

    iget-object v8, p0, Lcom/android/globalsearch/SessionManager;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Lcom/android/globalsearch/SuggestionFactoryImpl;-><init>(Landroid/content/Context;)V

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/android/globalsearch/SuggestionSession;-><init>(Lcom/android/globalsearch/SourceLookup;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/globalsearch/PerTagExecutor;Ljava/util/concurrent/Executor;Lcom/android/globalsearch/DelayedExecutor;Lcom/android/globalsearch/SuggestionFactory;Z)V

    .line 144
    .local v0, session:Lcom/android/globalsearch/SuggestionSession;
    invoke-virtual {v0, p0}, Lcom/android/globalsearch/SuggestionSession;->setListener(Lcom/android/globalsearch/SuggestionSession$SessionCallback;)V

    .line 145
    iget-object v1, p0, Lcom/android/globalsearch/SessionManager;->mShortcutRepo:Lcom/android/globalsearch/ShortcutRepository;

    invoke-virtual {v0, v1}, Lcom/android/globalsearch/SuggestionSession;->setShortcutRepo(Lcom/android/globalsearch/ShortcutRepository;)V

    .line 146
    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/android/globalsearch/SessionManager;
    .registers 2

    .prologue
    .line 47
    const-class v0, Lcom/android/globalsearch/SessionManager;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/globalsearch/SessionManager;->sInstance:Lcom/android/globalsearch/SessionManager;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static orderSources(Ljava/util/List;Lcom/android/globalsearch/SourceLookup;Ljava/util/ArrayList;I)Lcom/android/globalsearch/SessionManager$Sources;
    .registers 10
    .parameter
    .parameter "sourceLookup"
    .parameter
    .parameter "numPromoted"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/globalsearch/SuggestionSource;",
            ">;",
            "Lcom/android/globalsearch/SourceLookup;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;I)",
            "Lcom/android/globalsearch/SessionManager$Sources;"
        }
    .end annotation

    .prologue
    .line 197
    .local p0, enabledSources:Ljava/util/List;,"Ljava/util/List<Lcom/android/globalsearch/SuggestionSource;>;"
    .local p2, sourceRanking:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 198
    .local v2, numSources:I
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 200
    .local v1, linkMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/android/globalsearch/SuggestionSource;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    if-ge v0, v2, :cond_1c

    .line 201
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/globalsearch/SuggestionSource;

    .line 202
    .local v3, source:Lcom/android/globalsearch/SuggestionSource;
    invoke-interface {v3}, Lcom/android/globalsearch/SuggestionSource;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 205
    .end local v3           #source:Lcom/android/globalsearch/SuggestionSource;
    :cond_1c
    new-instance v4, Lcom/android/globalsearch/SessionManager$Sources;

    invoke-direct {v4}, Lcom/android/globalsearch/SessionManager$Sources;-><init>()V

    .line 208
    .local v4, sources:Lcom/android/globalsearch/SessionManager$Sources;
    new-instance p0, Ljava/util/HashSet;

    .end local p0           #enabledSources:Ljava/util/List;,"Ljava/util/List<Lcom/android/globalsearch/SuggestionSource;>;"
    invoke-direct {p0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 211
    .local p0, allRanked:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    invoke-interface {p1}, Lcom/android/globalsearch/SourceLookup;->getSelectedWebSearchSource()Lcom/android/globalsearch/SuggestionSource;

    move-result-object v0

    .line 212
    .local v0, webSearchSource:Lcom/android/globalsearch/SuggestionSource;
    if-eqz v0, :cond_30

    .line 214
    const/4 v2, 0x1

    invoke-virtual {v4, v0, v2}, Lcom/android/globalsearch/SessionManager$Sources;->add(Lcom/android/globalsearch/SuggestionSource;Z)V

    .line 218
    .end local v2           #numSources:I
    :cond_30
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 219
    .local v2, numRanked:I
    const/4 v0, 0x0

    .line 220
    .local v0, nextRanked:I
    :goto_35
    if-ge v0, v2, :cond_52

    iget-object v3, v4, Lcom/android/globalsearch/SessionManager$Sources;->mPromotableSources:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v3, p3, :cond_52

    .line 222
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 223
    .local v3, ranked:Landroid/content/ComponentName;
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #ranked:Landroid/content/ComponentName;
    check-cast v3, Lcom/android/globalsearch/SuggestionSource;

    .line 225
    .local v3, source:Lcom/android/globalsearch/SuggestionSource;
    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Lcom/android/globalsearch/SessionManager$Sources;->add(Lcom/android/globalsearch/SuggestionSource;Z)V

    .line 221
    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    .line 229
    .end local v3           #source:Lcom/android/globalsearch/SuggestionSource;
    :cond_52
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p3

    .end local p3
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 230
    .local v3, sourceIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/globalsearch/SuggestionSource;>;"
    :cond_5a
    :goto_5a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_7b

    .line 231
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/globalsearch/SuggestionSource;

    .line 232
    .local p3, source:Lcom/android/globalsearch/SuggestionSource;
    invoke-interface {p3}, Lcom/android/globalsearch/SuggestionSource;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5a

    .line 237
    invoke-interface {p1, p3}, Lcom/android/globalsearch/SourceLookup;->isTrustedSource(Lcom/android/globalsearch/SuggestionSource;)Z

    move-result v5

    invoke-virtual {v4, p3, v5}, Lcom/android/globalsearch/SessionManager$Sources;->add(Lcom/android/globalsearch/SuggestionSource;Z)V

    .line 238
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_5a

    .line 243
    .end local p3           #source:Lcom/android/globalsearch/SuggestionSource;
    :cond_7b
    move p0, v0

    .end local v0           #nextRanked:I
    .local p0, i:I
    :goto_7c
    if-ge p0, v2, :cond_96

    .line 244
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/ComponentName;

    .line 245
    .local p3, ranked:Landroid/content/ComponentName;
    invoke-virtual {v1, p3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .end local p3           #ranked:Landroid/content/ComponentName;
    check-cast p3, Lcom/android/globalsearch/SuggestionSource;

    .line 246
    .local p3, source:Lcom/android/globalsearch/SuggestionSource;
    if-eqz p3, :cond_93

    .line 248
    invoke-interface {p1, p3}, Lcom/android/globalsearch/SourceLookup;->isTrustedSource(Lcom/android/globalsearch/SuggestionSource;)Z

    move-result v0

    invoke-virtual {v4, p3, v0}, Lcom/android/globalsearch/SessionManager$Sources;->add(Lcom/android/globalsearch/SuggestionSource;Z)V

    .line 243
    :cond_93
    add-int/lit8 p0, p0, 0x1

    goto :goto_7c

    .line 255
    .end local p3           #source:Lcom/android/globalsearch/SuggestionSource;
    :cond_96
    return-object v4
.end method

.method public static declared-synchronized refreshSessionmanager(Landroid/content/Context;Lcom/android/globalsearch/SuggestionSources;Lcom/android/globalsearch/ShortcutRepository;Lcom/android/globalsearch/PerTagExecutor;Ljava/util/concurrent/Executor;Landroid/os/Handler;)Lcom/android/globalsearch/SessionManager;
    .registers 14
    .parameter "context"
    .parameter "sources"
    .parameter "shortcutRepo"
    .parameter "queryExecutor"
    .parameter "refreshExecutor"
    .parameter "handler"

    .prologue
    .line 66
    const-class v7, Lcom/android/globalsearch/SessionManager;

    monitor-enter v7

    :try_start_3
    new-instance v0, Lcom/android/globalsearch/SessionManager;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/globalsearch/SessionManager;-><init>(Landroid/content/Context;Lcom/android/globalsearch/SuggestionSources;Lcom/android/globalsearch/ShortcutRepository;Lcom/android/globalsearch/PerTagExecutor;Ljava/util/concurrent/Executor;Landroid/os/Handler;)V

    sput-object v0, Lcom/android/globalsearch/SessionManager;->sInstance:Lcom/android/globalsearch/SessionManager;

    .line 68
    sget-object v0, Lcom/android/globalsearch/SessionManager;->sInstance:Lcom/android/globalsearch/SessionManager;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_14

    monitor-exit v7

    return-object v0

    .line 66
    :catchall_14
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method private warmUpWebSource(Lcom/android/globalsearch/SuggestionSource;)V
    .registers 5
    .parameter "webSearchSource"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/globalsearch/SessionManager;->mQueryExecutor:Lcom/android/globalsearch/PerTagExecutor;

    const-string v1, "warmup"

    new-instance v2, Lcom/android/globalsearch/SessionManager$2;

    invoke-direct {v2, p0, p1}, Lcom/android/globalsearch/SessionManager$2;-><init>(Lcom/android/globalsearch/SessionManager;Lcom/android/globalsearch/SuggestionSource;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/globalsearch/PerTagExecutor;->execute(Ljava/lang/String;Ljava/lang/Runnable;)Z

    .line 159
    return-void
.end method


# virtual methods
.method public declared-synchronized closeSession()V
    .registers 2

    .prologue
    .line 107
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/android/globalsearch/SessionManager;->mSession:Lcom/android/globalsearch/SuggestionSession;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 108
    monitor-exit p0

    return-void

    .line 107
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized query(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 4
    .parameter "context"
    .parameter "query"

    .prologue
    .line 97
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/globalsearch/SessionManager;->mSession:Lcom/android/globalsearch/SuggestionSession;

    if-eqz v0, :cond_b

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 98
    :cond_b
    invoke-direct {p0}, Lcom/android/globalsearch/SessionManager;->createSession()Lcom/android/globalsearch/SuggestionSession;

    move-result-object v0

    iput-object v0, p0, Lcom/android/globalsearch/SessionManager;->mSession:Lcom/android/globalsearch/SuggestionSession;

    .line 101
    :cond_11
    iget-object v0, p0, Lcom/android/globalsearch/SessionManager;->mSession:Lcom/android/globalsearch/SuggestionSession;

    invoke-virtual {v0, p2}, Lcom/android/globalsearch/SuggestionSession;->query(Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_19

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 97
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method
