.class public Lcom/android/globalsearch/SuggestionSession;
.super Ljava/lang/Object;
.source "SuggestionSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/globalsearch/SuggestionSession$AsyncMux;,
        Lcom/android/globalsearch/SuggestionSession$QueryCacheResults;,
        Lcom/android/globalsearch/SuggestionSession$SessionCache;,
        Lcom/android/globalsearch/SuggestionSession$SessionCursorListener;,
        Lcom/android/globalsearch/SuggestionSession$SessionCallback;
    }
.end annotation


# static fields
.field static final CACHE_SUGGESTION_RESULTS:Z = false

.field private static final DBG:Z = false

.field private static final MAX_RESULTS_PER_SOURCE:I = 0x3a

.field private static final MAX_RESULTS_TO_DISPLAY:I = 0x7

.field static final NUM_PROMOTED_SOURCES:I = 0x4

.field static final PREFILL_MILLIS:J = 0x190L

.field private static final PROMOTED_SOURCE_DEADLINE:J = 0x1770L

.field static final SOURCE_TIMEOUT_MILLIS:J = 0x2710L

.field private static final SPEW:Z = false

.field private static final TAG:Ljava/lang/String; = "GlobalSearch"


# instance fields
.field private mAllowShortcutsFrom:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final mDelayedExecutor:Lcom/android/globalsearch/DelayedExecutor;

.field private mListener:Lcom/android/globalsearch/SuggestionSession$SessionCallback;

.field private mNumPromotedSources:I

.field private final mOutstandingQueryCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mPreviousCursor:Lcom/android/globalsearch/SuggestionCursor;

.field private final mPromotableSources:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/globalsearch/SuggestionSource;",
            ">;"
        }
    .end annotation
.end field

.field private final mQueryExecutor:Lcom/android/globalsearch/PerTagExecutor;

.field private final mRefreshExecutor:Ljava/util/concurrent/Executor;

.field private final mSessionCache:Lcom/android/globalsearch/SuggestionSession$SessionCache;

.field private mShortcutRepo:Lcom/android/globalsearch/ShortcutRepository;

.field private final mSourceLookup:Lcom/android/globalsearch/SourceLookup;

.field private final mSuggestionFactory:Lcom/android/globalsearch/SuggestionFactory;

.field private final mUnpromotableSources:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/globalsearch/SuggestionSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/globalsearch/SourceLookup;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/globalsearch/PerTagExecutor;Ljava/util/concurrent/Executor;Lcom/android/globalsearch/DelayedExecutor;Lcom/android/globalsearch/SuggestionFactory;Z)V
    .registers 14
    .parameter "sourceLookup"
    .parameter
    .parameter
    .parameter "queryExecutor"
    .parameter "refreshExecutor"
    .parameter "delayedExecutor"
    .parameter "suggestionFactory"
    .parameter "cacheSuggestionResults"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/globalsearch/SourceLookup;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/globalsearch/SuggestionSource;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/globalsearch/SuggestionSource;",
            ">;",
            "Lcom/android/globalsearch/PerTagExecutor;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/globalsearch/DelayedExecutor;",
            "Lcom/android/globalsearch/SuggestionFactory;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p2, promotableSources:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/globalsearch/SuggestionSource;>;"
    .local p3, unpromotableSources:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/globalsearch/SuggestionSource;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v3, 0x4

    iput v3, p0, Lcom/android/globalsearch/SuggestionSession;->mNumPromotedSources:I

    .line 78
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/globalsearch/SuggestionSession;->mPreviousCursor:Lcom/android/globalsearch/SuggestionCursor;

    .line 81
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v3, p0, Lcom/android/globalsearch/SuggestionSession;->mOutstandingQueryCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 151
    iput-object p1, p0, Lcom/android/globalsearch/SuggestionSession;->mSourceLookup:Lcom/android/globalsearch/SourceLookup;

    .line 152
    iput-object p2, p0, Lcom/android/globalsearch/SuggestionSession;->mPromotableSources:Ljava/util/ArrayList;

    .line 153
    iput-object p3, p0, Lcom/android/globalsearch/SuggestionSession;->mUnpromotableSources:Ljava/util/ArrayList;

    .line 154
    iput-object p4, p0, Lcom/android/globalsearch/SuggestionSession;->mQueryExecutor:Lcom/android/globalsearch/PerTagExecutor;

    .line 155
    iput-object p5, p0, Lcom/android/globalsearch/SuggestionSession;->mRefreshExecutor:Ljava/util/concurrent/Executor;

    .line 156
    iput-object p6, p0, Lcom/android/globalsearch/SuggestionSession;->mDelayedExecutor:Lcom/android/globalsearch/DelayedExecutor;

    .line 157
    iput-object p7, p0, Lcom/android/globalsearch/SuggestionSession;->mSuggestionFactory:Lcom/android/globalsearch/SuggestionFactory;

    .line 158
    new-instance v3, Lcom/android/globalsearch/SuggestionSession$SessionCache;

    invoke-direct {v3, p8}, Lcom/android/globalsearch/SuggestionSession$SessionCache;-><init>(Z)V

    iput-object v3, p0, Lcom/android/globalsearch/SuggestionSession;->mSessionCache:Lcom/android/globalsearch/SuggestionSession$SessionCache;

    .line 160
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 161
    .local v1, numPromotable:I
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 162
    .local v2, numUnpromotable:I
    new-instance v3, Ljava/util/HashSet;

    add-int v4, v1, v2

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    iput-object v3, p0, Lcom/android/globalsearch/SuggestionSession;->mAllowShortcutsFrom:Ljava/util/HashSet;

    .line 163
    const/4 v0, 0x0

    .local v0, i:I
    :goto_38
    if-ge v0, v1, :cond_4c

    .line 164
    iget-object v4, p0, Lcom/android/globalsearch/SuggestionSession;->mAllowShortcutsFrom:Ljava/util/HashSet;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/globalsearch/SuggestionSource;

    invoke-interface {v3}, Lcom/android/globalsearch/SuggestionSource;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    .line 166
    :cond_4c
    const/4 v0, 0x0

    :goto_4d
    if-ge v0, v2, :cond_61

    .line 167
    iget-object v4, p0, Lcom/android/globalsearch/SuggestionSession;->mAllowShortcutsFrom:Ljava/util/HashSet;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/globalsearch/SuggestionSource;

    invoke-interface {v3}, Lcom/android/globalsearch/SuggestionSource;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_4d

    .line 171
    :cond_61
    return-void
.end method

.method static synthetic access$000(Lcom/android/globalsearch/SuggestionSession;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/globalsearch/SuggestionSession;->mOutstandingQueryCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/globalsearch/SuggestionSession;)Lcom/android/globalsearch/SourceLookup;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/globalsearch/SuggestionSession;->mSourceLookup:Lcom/android/globalsearch/SourceLookup;

    return-object v0
.end method

.method private filterOnlyEnabled(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/globalsearch/SuggestionData;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/globalsearch/SuggestionData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 440
    .local p1, shortcutsForQuery:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/globalsearch/SuggestionData;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 441
    .local v1, numShortcuts:I
    if-nez v1, :cond_8

    move-object v4, p1

    .line 451
    :goto_7
    return-object v4

    .line 443
    :cond_8
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 445
    .local v2, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/globalsearch/SuggestionData;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_12
    if-ge v0, v1, :cond_2c

    .line 446
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/globalsearch/SuggestionData;

    .line 447
    .local v3, shortcut:Lcom/android/globalsearch/SuggestionData;
    iget-object v4, p0, Lcom/android/globalsearch/SuggestionSession;->mAllowShortcutsFrom:Ljava/util/HashSet;

    invoke-virtual {v3}, Lcom/android/globalsearch/SuggestionData;->getSource()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 448
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .end local v3           #shortcut:Lcom/android/globalsearch/SuggestionData;
    :cond_2c
    move-object v4, v2

    .line 451
    goto :goto_7
.end method

.method private filterSourcesForQuery(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 10
    .parameter "query"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/globalsearch/SuggestionSource;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/globalsearch/SuggestionSource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 482
    .local p2, enabledSources:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/globalsearch/SuggestionSource;>;"
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 483
    .local v3, queryLength:I
    const/4 v6, 0x1

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 484
    .local v0, cutoff:I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 486
    .local v5, sourcesToQuery:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/globalsearch/SuggestionSource;>;"
    if-nez v3, :cond_11

    .line 515
    :cond_10
    return-object v5

    .line 489
    :cond_11
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_15
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/globalsearch/SuggestionSource;

    .line 492
    .local v1, enabledSource:Lcom/android/globalsearch/SuggestionSource;
    invoke-interface {v1}, Lcom/android/globalsearch/SuggestionSource;->getQueryThreshold()I

    move-result v6

    if-gt v6, v0, :cond_15

    .line 499
    invoke-interface {v1}, Lcom/android/globalsearch/SuggestionSource;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    .line 502
    .local v4, sourceName:Landroid/content/ComponentName;
    invoke-interface {v1}, Lcom/android/globalsearch/SuggestionSource;->queryAfterZeroResults()Z

    move-result v6

    if-nez v6, :cond_39

    iget-object v6, p0, Lcom/android/globalsearch/SuggestionSession;->mSessionCache:Lcom/android/globalsearch/SuggestionSession$SessionCache;

    invoke-virtual {v6, p1, v4}, Lcom/android/globalsearch/SuggestionSession$SessionCache;->hasReportedZeroResultsForPrefix(Ljava/lang/String;Landroid/content/ComponentName;)Z

    move-result v6

    if-nez v6, :cond_15

    .line 513
    :cond_39
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15
.end method

.method private fireStuffOff(Lcom/android/globalsearch/SuggestionCursor;Ljava/lang/String;)V
    .registers 31
    .parameter "cursor"
    .parameter "query"

    .prologue
    .line 234
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/globalsearch/SuggestionSession;->getShortcuts(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 237
    .local v5, shortcuts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/globalsearch/SuggestionData;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/globalsearch/SuggestionSession;->mPromotableSources:Ljava/util/ArrayList;

    move-object v4, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/globalsearch/SuggestionSession;->filterSourcesForQuery(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v22

    .line 239
    .local v22, promotableSourcesToQuery:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/globalsearch/SuggestionSource;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/globalsearch/SuggestionSession;->mUnpromotableSources:Ljava/util/ArrayList;

    move-object v4, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/globalsearch/SuggestionSession;->filterSourcesForQuery(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v27

    .line 241
    .local v27, unpromotableSourcesToQuery:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/globalsearch/SuggestionSource;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/2addr v4, v7

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 244
    .local v6, sourcesToQuery:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/globalsearch/SuggestionSource;>;"
    move-object v0, v6

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 245
    move-object v0, v6

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 253
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 254
    .local v26, shortcutsToRefresh:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/globalsearch/SuggestionData;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v21

    .line 255
    .local v21, numShortcuts:I
    const/16 v20, 0x0

    .local v20, i:I
    :goto_49
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_a7

    .line 256
    move-object v0, v5

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/globalsearch/SuggestionData;

    .line 258
    .local v24, shortcut:Lcom/android/globalsearch/SuggestionData;
    invoke-virtual/range {v24 .. v24}, Lcom/android/globalsearch/SuggestionData;->getShortcutId()Ljava/lang/String;

    move-result-object v25

    .line 259
    .local v25, shortcutId:Ljava/lang/String;
    if-nez v25, :cond_61

    .line 255
    :cond_5e
    :goto_5e
    add-int/lit8 v20, v20, 0x1

    goto :goto_49

    .line 261
    :cond_61
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/globalsearch/SuggestionSession;->mSessionCache:Lcom/android/globalsearch/SuggestionSession$SessionCache;

    move-object v4, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/globalsearch/SuggestionData;->getSource()Landroid/content/ComponentName;

    move-result-object v7

    move-object v0, v4

    move-object v1, v7

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/globalsearch/SuggestionSession$SessionCache;->hasShortcutBeenRefreshed(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9f

    .line 265
    invoke-virtual/range {v24 .. v24}, Lcom/android/globalsearch/SuggestionData;->isSpinnerWhileRefreshing()Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 266
    invoke-virtual/range {v24 .. v24}, Lcom/android/globalsearch/SuggestionData;->buildUpon()Lcom/android/globalsearch/SuggestionData$Builder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/globalsearch/SuggestionSession;->mSessionCache:Lcom/android/globalsearch/SuggestionSession$SessionCache;

    move-object v7, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/globalsearch/SuggestionData;->getSource()Landroid/content/ComponentName;

    move-result-object v8

    move-object v0, v7

    move-object v1, v8

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/globalsearch/SuggestionSession$SessionCache;->getRefreshedShortcutIcon2(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/android/globalsearch/SuggestionData$Builder;->icon2(Ljava/lang/String;)Lcom/android/globalsearch/SuggestionData$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/globalsearch/SuggestionData$Builder;->build()Lcom/android/globalsearch/SuggestionData;

    move-result-object v4

    move-object v0, v5

    move/from16 v1, v20

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_5e

    .line 274
    :cond_9f
    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5e

    .line 278
    .end local v24           #shortcut:Lcom/android/globalsearch/SuggestionData;
    .end local v25           #shortcutId:Ljava/lang/String;
    :cond_a7
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/globalsearch/SuggestionSession;->pickPromotedSources(Ljava/util/ArrayList;)Ljava/util/HashSet;

    move-result-object v7

    .line 281
    .local v7, promoted:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/globalsearch/SuggestionSession;->mSessionCache:Lcom/android/globalsearch/SuggestionSession$SessionCache;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/globalsearch/SuggestionSession$SessionCache;->getSourceResults(Ljava/lang/String;)Lcom/android/globalsearch/SuggestionSession$QueryCacheResults;

    move-result-object v23

    .line 283
    .local v23, queryCacheResults:Lcom/android/globalsearch/SuggestionSession$QueryCacheResults;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/globalsearch/SuggestionSession;->mSourceLookup:Lcom/android/globalsearch/SourceLookup;

    move-object v4, v0

    invoke-interface {v4}, Lcom/android/globalsearch/SourceLookup;->getSelectedWebSearchSource()Lcom/android/globalsearch/SuggestionSource;

    move-result-object v8

    .line 284
    .local v8, webSearchSource:Lcom/android/globalsearch/SuggestionSource;
    new-instance v3, Lcom/android/globalsearch/SourceSuggestionBacker;

    invoke-virtual/range {v23 .. v23}, Lcom/android/globalsearch/SuggestionSession$QueryCacheResults;->getResults()Ljava/util/Collection;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/globalsearch/SuggestionSession;->mSuggestionFactory:Lcom/android/globalsearch/SuggestionFactory;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Lcom/android/globalsearch/SuggestionFactory;->createGoToWebsiteSuggestion(Ljava/lang/String;)Lcom/android/globalsearch/SuggestionData;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/globalsearch/SuggestionSession;->mSuggestionFactory:Lcom/android/globalsearch/SuggestionFactory;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Lcom/android/globalsearch/SuggestionFactory;->createSearchTheWebSuggestion(Ljava/lang/String;)Lcom/android/globalsearch/SuggestionData;

    move-result-object v11

    const/4 v12, 0x7

    const-wide/16 v13, 0x1770

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/globalsearch/SuggestionSession;->mSuggestionFactory:Lcom/android/globalsearch/SuggestionFactory;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/globalsearch/SuggestionSession;->mSuggestionFactory:Lcom/android/globalsearch/SuggestionFactory;

    move-object/from16 v16, v0

    move-object/from16 v4, p2

    invoke-direct/range {v3 .. v16}, Lcom/android/globalsearch/SourceSuggestionBacker;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/HashSet;Lcom/android/globalsearch/SuggestionSource;Ljava/util/Collection;Lcom/android/globalsearch/SuggestionData;Lcom/android/globalsearch/SuggestionData;IJLcom/android/globalsearch/SourceSuggestionBacker$MoreExpanderFactory;Lcom/android/globalsearch/SourceSuggestionBacker$CorpusResultFactory;)V

    .line 307
    .local v3, backer:Lcom/android/globalsearch/SourceSuggestionBacker;
    new-instance v9, Lcom/android/globalsearch/SuggestionSession$AsyncMux;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/globalsearch/SuggestionSession;->mQueryExecutor:Lcom/android/globalsearch/PerTagExecutor;

    move-object v10, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/globalsearch/SuggestionSession;->mRefreshExecutor:Ljava/util/concurrent/Executor;

    move-object v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/globalsearch/SuggestionSession;->mDelayedExecutor:Lcom/android/globalsearch/DelayedExecutor;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/globalsearch/SuggestionSession;->mSessionCache:Lcom/android/globalsearch/SuggestionSession$SessionCache;

    move-object v13, v0

    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/globalsearch/SuggestionSession;->removeCached(Ljava/util/ArrayList;Lcom/android/globalsearch/SuggestionSession$QueryCacheResults;)Ljava/util/ArrayList;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/globalsearch/SuggestionSession;->mShortcutRepo:Lcom/android/globalsearch/ShortcutRepository;

    move-object/from16 v19, v0

    move-object/from16 v14, p2

    move-object/from16 v15, v26

    move-object/from16 v17, v7

    move-object/from16 v18, v3

    invoke-direct/range {v9 .. v19}, Lcom/android/globalsearch/SuggestionSession$AsyncMux;-><init>(Lcom/android/globalsearch/PerTagExecutor;Ljava/util/concurrent/Executor;Lcom/android/globalsearch/DelayedExecutor;Lcom/android/globalsearch/SuggestionSession$SessionCache;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashSet;Lcom/android/globalsearch/SourceSuggestionBacker;Lcom/android/globalsearch/ShortcutRepository;)V

    .line 319
    .local v9, asyncMux:Lcom/android/globalsearch/SuggestionSession$AsyncMux;
    move-object/from16 v0, p1

    move-object v1, v9

    invoke-virtual {v0, v1}, Lcom/android/globalsearch/SuggestionCursor;->attachBacker(Lcom/android/globalsearch/SuggestionBacker;)V

    .line 320
    move-object v0, v9

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/globalsearch/SuggestionSession$AsyncMux;->setListener(Lcom/android/globalsearch/SuggestionBacker$Listener;)V

    .line 322
    new-instance v4, Lcom/android/globalsearch/SuggestionSession$SessionCursorListener;

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v2, v9

    invoke-direct {v0, v1, v2}, Lcom/android/globalsearch/SuggestionSession$SessionCursorListener;-><init>(Lcom/android/globalsearch/SuggestionSession;Lcom/android/globalsearch/SuggestionSession$AsyncMux;)V

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/globalsearch/SuggestionCursor;->setListener(Lcom/android/globalsearch/SuggestionCursor$CursorListener;)V

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/globalsearch/SuggestionSession;->mSourceLookup:Lcom/android/globalsearch/SourceLookup;

    move-object v4, v0

    invoke-virtual {v9, v4}, Lcom/android/globalsearch/SuggestionSession$AsyncMux;->sendOffShortcutRefreshers(Lcom/android/globalsearch/SourceLookup;)V

    .line 325
    invoke-virtual {v9}, Lcom/android/globalsearch/SuggestionSession$AsyncMux;->sendOffPromotedSourceQueries()V

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/globalsearch/SuggestionSession;->mDelayedExecutor:Lcom/android/globalsearch/DelayedExecutor;

    move-object v4, v0

    new-instance v5, Lcom/android/globalsearch/SuggestionSession$2;

    .end local v5           #shortcuts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/globalsearch/SuggestionData;>;"
    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/globalsearch/SuggestionSession$2;-><init>(Lcom/android/globalsearch/SuggestionSession;Lcom/android/globalsearch/SuggestionCursor;)V

    const-wide/16 v10, 0x1770

    invoke-interface {v4, v5, v10, v11}, Lcom/android/globalsearch/DelayedExecutor;->postDelayed(Ljava/lang/Runnable;J)V

    .line 334
    return-void
.end method

.method private getShortcuts(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 3
    .parameter "query"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/globalsearch/SuggestionData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 419
    iget-object v0, p0, Lcom/android/globalsearch/SuggestionSession;->mShortcutRepo:Lcom/android/globalsearch/ShortcutRepository;

    if-nez v0, :cond_a

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 420
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/android/globalsearch/SuggestionSession;->mShortcutRepo:Lcom/android/globalsearch/ShortcutRepository;

    invoke-interface {v0, p1}, Lcom/android/globalsearch/ShortcutRepository;->getShortcutsForQuery(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/globalsearch/SuggestionSession;->filterOnlyEnabled(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_9
.end method

.method private pickPromotedSources(Ljava/util/ArrayList;)Ljava/util/HashSet;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/globalsearch/SuggestionSource;",
            ">;)",
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 337
    .local p1, sources:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/globalsearch/SuggestionSource;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 338
    .local v1, promoted:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    iget v2, p0, Lcom/android/globalsearch/SuggestionSession;->mNumPromotedSources:I

    if-ge v0, v2, :cond_24

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_24

    .line 339
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/globalsearch/SuggestionSource;

    invoke-interface {v2}, Lcom/android/globalsearch/SuggestionSource;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 338
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 341
    :cond_24
    return-object v1
.end method

.method private removeCached(Ljava/util/ArrayList;Lcom/android/globalsearch/SuggestionSession$QueryCacheResults;)Ljava/util/ArrayList;
    .registers 8
    .parameter
    .parameter "queryCacheResults"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/globalsearch/SuggestionSource;",
            ">;",
            "Lcom/android/globalsearch/SuggestionSession$QueryCacheResults;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/globalsearch/SuggestionSource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 461
    .local p1, sources:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/globalsearch/SuggestionSource;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 462
    .local v1, numSources:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 464
    .local v3, unCached:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/globalsearch/SuggestionSource;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    if-ge v0, v1, :cond_22

    .line 465
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/globalsearch/SuggestionSource;

    .line 466
    .local v2, source:Lcom/android/globalsearch/SuggestionSource;
    invoke-interface {v2}, Lcom/android/globalsearch/SuggestionSource;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/android/globalsearch/SuggestionSession$QueryCacheResults;->getResult(Landroid/content/ComponentName;)Lcom/android/globalsearch/SuggestionResult;

    move-result-object v4

    if-nez v4, :cond_1f

    .line 467
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 470
    .end local v2           #source:Lcom/android/globalsearch/SuggestionSource;
    :cond_22
    return-object v3
.end method


# virtual methods
.method declared-synchronized close()V
    .registers 3

    .prologue
    .line 428
    monitor-enter p0

    :try_start_1
    const-string v0, "GlobalSearch"

    const-string v1, "close()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-object v0, p0, Lcom/android/globalsearch/SuggestionSession;->mListener:Lcom/android/globalsearch/SuggestionSession$SessionCallback;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/globalsearch/SuggestionSession;->mListener:Lcom/android/globalsearch/SuggestionSession$SessionCallback;

    invoke-interface {v0}, Lcom/android/globalsearch/SuggestionSession$SessionCallback;->closeSession()V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 430
    :cond_11
    monitor-exit p0

    return-void

    .line 428
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getNow()J
    .registers 3

    .prologue
    .line 519
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized query(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 7
    .parameter "query"

    .prologue
    .line 199
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/globalsearch/SuggestionSession;->mOutstandingQueryCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 201
    new-instance v0, Lcom/android/globalsearch/SuggestionCursor;

    iget-object v1, p0, Lcom/android/globalsearch/SuggestionSession;->mDelayedExecutor:Lcom/android/globalsearch/DelayedExecutor;

    invoke-direct {v0, v1, p1}, Lcom/android/globalsearch/SuggestionCursor;-><init>(Lcom/android/globalsearch/DelayedExecutor;Ljava/lang/String;)V

    .line 203
    .local v0, cursor:Lcom/android/globalsearch/SuggestionCursor;
    invoke-direct {p0, v0, p1}, Lcom/android/globalsearch/SuggestionSession;->fireStuffOff(Lcom/android/globalsearch/SuggestionCursor;Ljava/lang/String;)V

    .line 207
    iget-object v1, p0, Lcom/android/globalsearch/SuggestionSession;->mPreviousCursor:Lcom/android/globalsearch/SuggestionCursor;

    if-eqz v1, :cond_3a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_3a

    invoke-virtual {v0}, Lcom/android/globalsearch/SuggestionCursor;->getCount()I

    move-result v1

    if-nez v1, :cond_3a

    iget-object v1, p0, Lcom/android/globalsearch/SuggestionSession;->mPreviousCursor:Lcom/android/globalsearch/SuggestionCursor;

    invoke-virtual {v1}, Lcom/android/globalsearch/SuggestionCursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3a

    .line 211
    iget-object v1, p0, Lcom/android/globalsearch/SuggestionSession;->mPreviousCursor:Lcom/android/globalsearch/SuggestionCursor;

    invoke-virtual {v0, v1}, Lcom/android/globalsearch/SuggestionCursor;->prefill(Lcom/android/globalsearch/SuggestionCursor;)V

    .line 214
    iget-object v1, p0, Lcom/android/globalsearch/SuggestionSession;->mDelayedExecutor:Lcom/android/globalsearch/DelayedExecutor;

    new-instance v2, Lcom/android/globalsearch/SuggestionSession$1;

    invoke-direct {v2, p0, v0}, Lcom/android/globalsearch/SuggestionSession$1;-><init>(Lcom/android/globalsearch/SuggestionSession;Lcom/android/globalsearch/SuggestionCursor;)V

    const-wide/16 v3, 0x190

    invoke-interface {v1, v2, v3, v4}, Lcom/android/globalsearch/DelayedExecutor;->postDelayed(Ljava/lang/Runnable;J)V

    .line 220
    :cond_3a
    iput-object v0, p0, Lcom/android/globalsearch/SuggestionSession;->mPreviousCursor:Lcom/android/globalsearch/SuggestionCursor;
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_3e

    .line 221
    monitor-exit p0

    return-object v0

    .line 199
    .end local v0           #cursor:Lcom/android/globalsearch/SuggestionCursor;
    :catchall_3e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method reportStats(Lcom/android/globalsearch/SessionStats;)V
    .registers 3
    .parameter "stats"

    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/globalsearch/SuggestionSession;->mShortcutRepo:Lcom/android/globalsearch/ShortcutRepository;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/globalsearch/SuggestionSession;->mShortcutRepo:Lcom/android/globalsearch/ShortcutRepository;

    invoke-interface {v0, p1}, Lcom/android/globalsearch/ShortcutRepository;->reportStats(Lcom/android/globalsearch/SessionStats;)V

    .line 425
    :cond_9
    return-void
.end method

.method public declared-synchronized setListener(Lcom/android/globalsearch/SuggestionSession$SessionCallback;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 177
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/android/globalsearch/SuggestionSession;->mListener:Lcom/android/globalsearch/SuggestionSession$SessionCallback;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 178
    monitor-exit p0

    return-void

    .line 177
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setNumPromotedSources(I)V
    .registers 3
    .parameter "numPromotedSources"

    .prologue
    .line 188
    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/android/globalsearch/SuggestionSession;->mNumPromotedSources:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 189
    monitor-exit p0

    return-void

    .line 188
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setShortcutRepo(Lcom/android/globalsearch/ShortcutRepository;)V
    .registers 3
    .parameter "shortcutRepo"

    .prologue
    .line 181
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/android/globalsearch/SuggestionSession;->mShortcutRepo:Lcom/android/globalsearch/ShortcutRepository;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 182
    monitor-exit p0

    return-void

    .line 181
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
