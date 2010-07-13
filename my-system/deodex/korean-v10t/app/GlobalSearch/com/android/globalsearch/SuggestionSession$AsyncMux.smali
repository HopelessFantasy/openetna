.class Lcom/android/globalsearch/SuggestionSession$AsyncMux;
.super Lcom/android/globalsearch/SuggestionBacker;
.source "SuggestionSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/globalsearch/SuggestionSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AsyncMux"
.end annotation


# instance fields
.field private mAdditionalSourcesQueryMux:Lcom/android/globalsearch/QueryMultiplexer;

.field private final mBackerToReportTo:Lcom/android/globalsearch/SourceSuggestionBacker;

.field private volatile mCanceled:Z

.field private final mDelayedExecutor:Lcom/android/globalsearch/DelayedExecutor;

.field private final mPromotedSources:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mPromotedSourcesQueryMux:Lcom/android/globalsearch/QueryMultiplexer;

.field private final mQuery:Ljava/lang/String;

.field private final mQueryExecutor:Lcom/android/globalsearch/PerTagExecutor;

.field private final mRefreshExecutor:Ljava/util/concurrent/Executor;

.field private final mRepo:Lcom/android/globalsearch/ShortcutRepository;

.field private final mSessionCache:Lcom/android/globalsearch/SuggestionSession$SessionCache;

.field private mShortcutRefresher:Lcom/android/globalsearch/ShortcutRefresher;

.field private final mShortcutsToValidate:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/globalsearch/SuggestionData;",
            ">;"
        }
    .end annotation
.end field

.field private final mSourcesToQuery:Ljava/util/ArrayList;
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
.method constructor <init>(Lcom/android/globalsearch/PerTagExecutor;Ljava/util/concurrent/Executor;Lcom/android/globalsearch/DelayedExecutor;Lcom/android/globalsearch/SuggestionSession$SessionCache;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashSet;Lcom/android/globalsearch/SourceSuggestionBacker;Lcom/android/globalsearch/ShortcutRepository;)V
    .registers 12
    .parameter "queryExecutor"
    .parameter "refreshExecutor"
    .parameter "delayedExecutor"
    .parameter "sessionCache"
    .parameter "query"
    .parameter
    .parameter
    .parameter
    .parameter "backerToReportTo"
    .parameter "repo"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/globalsearch/PerTagExecutor;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/globalsearch/DelayedExecutor;",
            "Lcom/android/globalsearch/SuggestionSession$SessionCache;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/globalsearch/SuggestionData;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/globalsearch/SuggestionSource;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/ComponentName;",
            ">;",
            "Lcom/android/globalsearch/SourceSuggestionBacker;",
            "Lcom/android/globalsearch/ShortcutRepository;",
            ")V"
        }
    .end annotation

    .prologue
    .line 728
    .local p6, shortcutsToValidate:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/globalsearch/SuggestionData;>;"
    .local p7, sourcesToQuery:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/globalsearch/SuggestionSource;>;"
    .local p8, promotedSources:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    invoke-direct {p0}, Lcom/android/globalsearch/SuggestionBacker;-><init>()V

    .line 704
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/globalsearch/SuggestionSession$AsyncMux;->mCanceled:Z

    .line 729
    iput-object p1, p0, Lcom/android/globalsearch/SuggestionSession$AsyncMux;->mQueryExecutor:Lcom/android/globalsearch/PerTagExecutor;

    .line 730
    iput-object p2, p0, Lcom/android/globalsearch/SuggestionSession$AsyncMux;->mRefreshExecutor:Ljava/util/concurrent/Executor;

    .line 731
    iput-object p3, p0, Lcom/android/globalsearch/SuggestionSession$AsyncMux;->mDelayedExecutor:Lcom/android/globalsearch/DelayedExecutor;

    .line 732
    iput-object p4, p0, Lcom/android/globalsearch/SuggestionSession$AsyncMux;->mSessionCache:Lcom/android/globalsearch/SuggestionSession$SessionCache;

    .line 733
    iput-object p5, p0, Lcom/android/globalsearch/SuggestionSession$AsyncMux;->mQuery:Ljava/lang/String;

    .line 734
    iput-object p6, p0, Lcom/android/globalsearch/SuggestionSession$AsyncMux;->mShortcutsToValidate:Ljava/util/ArrayList;

    .line 735
    iput-object p7, p0, Lcom/android/globalsearch/SuggestionSession$AsyncMux;->mSourcesToQuery:Ljava/util/ArrayList;

    .line 736
    iput-object p8, p0, Lcom/android/globalsearch/SuggestionSession$AsyncMux;->mPromotedSources:Ljava/util/HashSet;

    .line 737
    iput-object p9, p0, Lcom/android/globalsearch/SuggestionSession$AsyncMux;->mBackerToReportTo:Lcom/android/globalsearch/SourceSuggestionBacker;

    .line 738
    iput-object p10, p0, Lcom/android/globalsearch/SuggestionSession$AsyncMux;->mRepo:Lcom/android/globalsearch/ShortcutRepository;

    .line 739
    return-void
.end method


# virtual methods
.method protected addSourceResults(Lcom/android/globalsearch/SuggestionResult;)Z
    .registers 4
    .parameter "suggestionResult"

    .prologue
    .line 777
    invoke-virtual {p1}, Lcom/android/globalsearch/SuggestionResult;->getResultCode()I

    move-result v0

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_f

    .line 778
    iget-object v0, p0, Lcom/android/globalsearch/SuggestionSession$AsyncMux;->mSessionCache:Lcom/android/globalsearch/SuggestionSession$SessionCache;

    iget-object v1, p0, Lcom/android/globalsearch/SuggestionSession$AsyncMux;->mQuery:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/android/globalsearch/SuggestionSession$SessionCache;->reportSourceResult(Ljava/lang/String;Lcom/android/globalsearch/SuggestionResult;)V

    .line 780
    :cond_f
    iget-object v0, p0, Lcom/android/globalsearch/SuggestionSession$AsyncMux;->mBackerToReportTo:Lcom/android/globalsearch/SourceSuggestionBacker;

    invoke-virtual {v0, p1}, Lcom/android/globalsearch/SourceSuggestionBacker;->addSourceResults(Lcom/android/globalsearch/SuggestionResult;)Z

    move-result v0

    return v0
.end method

.method cancel()V
    .registers 2

    .prologue
    .line 854
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/globalsearch/SuggestionSession$AsyncMux;->mCanceled:Z

    .line 856
    iget-object v0, p0, Lcom/android/globalsearch/SuggestionSession$AsyncMux;->mShortcutRefresher:Lcom/android/globalsearch/ShortcutRefresher;

    if-eqz v0, :cond_c

    .line 857
    iget-object v0, p0, Lcom/android/globalsearch/SuggestionSession$AsyncMux;->mShortcutRefresher:Lcom/android/globalsearch/ShortcutRefresher;

    invoke-virtual {v0}, Lcom/android/globalsearch/ShortcutRefresher;->cancel()V

    .line 859
    :cond_c
    iget-object v0, p0, Lcom/android/globalsearch/SuggestionSession$AsyncMux;->mPromotedSourcesQueryMux:Lcom/android/globalsearch/QueryMultiplexer;

    if-eqz v0, :cond_15

    .line 860
    iget-object v0, p0, Lcom/android/globalsearch/SuggestionSession$AsyncMux;->mPromotedSourcesQueryMux:Lcom/android/globalsearch/QueryMultiplexer;

    invoke-virtual {v0}, Lcom/android/globalsearch/QueryMultiplexer;->cancel()V

    .line 862
    :cond_15
    iget-object v0, p0, Lcom/android/globalsearch/SuggestionSession$AsyncMux;->mAdditionalSourcesQueryMux:Lcom/android/globalsearch/QueryMultiplexer;

    if-eqz v0, :cond_1e

    .line 863
    iget-object v0, p0, Lcom/android/globalsearch/SuggestionSession$AsyncMux;->mAdditionalSourcesQueryMux:Lcom/android/globalsearch/QueryMultiplexer;

    invoke-virtual {v0}, Lcom/android/globalsearch/QueryMultiplexer;->cancel()V

    .line 865
    :cond_1e
    return-void
.end method

.method public getMoreResultPosition()I
    .registers 2

    .prologue
    .line 762
    iget-object v0, p0, Lcom/android/globalsearch/SuggestionSession$AsyncMux;->mBackerToReportTo:Lcom/android/globalsearch/SourceSuggestionBacker;

    invoke-virtual {v0}, Lcom/android/globalsearch/SourceSuggestionBacker;->getMoreResultPosition()I

    move-result v0

    return v0
.end method

.method public getQuery()Ljava/lang/String;
    .registers 2

    .prologue
    .line 742
    iget-object v0, p0, Lcom/android/globalsearch/SuggestionSession$AsyncMux;->mQuery:Ljava/lang/String;

    return-object v0
.end method

.method public hasSourceStarted(Landroid/content/ComponentName;)Z
    .registers 3
    .parameter "source"

    .prologue
    .line 772
    iget-object v0, p0, Lcom/android/globalsearch/SuggestionSession$AsyncMux;->mBackerToReportTo:Lcom/android/globalsearch/SourceSuggestionBacker;

    invoke-virtual {v0, p1}, Lcom/android/globalsearch/SourceSuggestionBacker;->hasSourceStarted(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public isResultsPending()Z
    .registers 2

    .prologue
    .line 752
    iget-object v0, p0, Lcom/android/globalsearch/SuggestionSession$AsyncMux;->mBackerToReportTo:Lcom/android/globalsearch/SourceSuggestionBacker;

    invoke-virtual {v0}, Lcom/android/globalsearch/SourceSuggestionBacker;->isResultsPending()Z

    move-result v0

    return v0
.end method

.method public isShowingMore()Z
    .registers 2

    .prologue
    .line 757
    iget-object v0, p0, Lcom/android/globalsearch/SuggestionSession$AsyncMux;->mBackerToReportTo:Lcom/android/globalsearch/SourceSuggestionBacker;

    invoke-virtual {v0}, Lcom/android/globalsearch/SourceSuggestionBacker;->isShowingMore()Z

    move-result v0

    return v0
.end method

.method protected refreshShortcut(Landroid/content/ComponentName;Ljava/lang/String;Lcom/android/globalsearch/SuggestionData;)Z
    .registers 5
    .parameter "source"
    .parameter "shortcutId"
    .parameter "shortcut"

    .prologue
    .line 786
    iget-object v0, p0, Lcom/android/globalsearch/SuggestionSession$AsyncMux;->mSessionCache:Lcom/android/globalsearch/SuggestionSession$SessionCache;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/globalsearch/SuggestionSession$SessionCache;->reportRefreshedShortcut(Landroid/content/ComponentName;Ljava/lang/String;Lcom/android/globalsearch/SuggestionData;)V

    .line 787
    iget-object v0, p0, Lcom/android/globalsearch/SuggestionSession$AsyncMux;->mBackerToReportTo:Lcom/android/globalsearch/SourceSuggestionBacker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/globalsearch/SourceSuggestionBacker;->refreshShortcut(Landroid/content/ComponentName;Ljava/lang/String;Lcom/android/globalsearch/SuggestionData;)Z

    move-result v0

    return v0
.end method

.method public reportSourceStarted(Landroid/content/ComponentName;)Z
    .registers 3
    .parameter "source"

    .prologue
    .line 767
    iget-object v0, p0, Lcom/android/globalsearch/SuggestionSession$AsyncMux;->mBackerToReportTo:Lcom/android/globalsearch/SourceSuggestionBacker;

    invoke-virtual {v0, p1}, Lcom/android/globalsearch/SourceSuggestionBacker;->reportSourceStarted(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method sendOffAdditionalSourcesQueries()V
    .registers 12

    .prologue
    .line 827
    iget-boolean v0, p0, Lcom/android/globalsearch/SuggestionSession$AsyncMux;->mCanceled:Z

    if-eqz v0, :cond_5

    .line 851
    :cond_4
    :goto_4
    return-void

    .line 828
    :cond_5
    iget-object v0, p0, Lcom/android/globalsearch/SuggestionSession$AsyncMux;->mAdditionalSourcesQueryMux:Lcom/android/globalsearch/QueryMultiplexer;

    if-eqz v0, :cond_11

    .line 829
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already queried once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 832
    :cond_11
    iget-object v0, p0, Lcom/android/globalsearch/SuggestionSession$AsyncMux;->mSourcesToQuery:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/globalsearch/SuggestionSession$AsyncMux;->mPromotedSources:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    sub-int v9, v0, v1

    .line 834
    .local v9, numAdditional:I
    if-lez v9, :cond_4

    .line 838
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 839
    .local v2, additional:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/globalsearch/SuggestionSource;>;"
    iget-object v0, p0, Lcom/android/globalsearch/SuggestionSession$AsyncMux;->mSourcesToQuery:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_2c
    :goto_2c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/globalsearch/SuggestionSource;

    .line 840
    .local v10, source:Lcom/android/globalsearch/SuggestionSource;
    iget-object v0, p0, Lcom/android/globalsearch/SuggestionSession$AsyncMux;->mPromotedSources:Ljava/util/HashSet;

    invoke-interface {v10}, Lcom/android/globalsearch/SuggestionSource;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 841
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    .line 845
    .end local v10           #source:Lcom/android/globalsearch/SuggestionSource;
    :cond_48
    new-instance v0, Lcom/android/globalsearch/QueryMultiplexer;

    iget-object v1, p0, Lcom/android/globalsearch/SuggestionSession$AsyncMux;->mQuery:Ljava/lang/String;

    const/4 v3, 0x7

    const/16 v4, 0x3a

    iget-object v6, p0, Lcom/android/globalsearch/SuggestionSession$AsyncMux;->mQueryExecutor:Lcom/android/globalsearch/PerTagExecutor;

    iget-object v7, p0, Lcom/android/globalsearch/SuggestionSession$AsyncMux;->mDelayedExecutor:Lcom/android/globalsearch/DelayedExecutor;

    move-object v5, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/globalsearch/QueryMultiplexer;-><init>(Ljava/lang/String;Ljava/util/List;IILcom/android/globalsearch/SuggestionBacker;Lcom/android/globalsearch/PerTagExecutor;Lcom/android/globalsearch/DelayedExecutor;)V

    iput-object v0, p0, Lcom/android/globalsearch/SuggestionSession$AsyncMux;->mAdditionalSourcesQueryMux:Lcom/android/globalsearch/QueryMultiplexer;

    .line 850
    iget-object v0, p0, Lcom/android/globalsearch/SuggestionSession$AsyncMux;->mAdditionalSourcesQueryMux:Lcom/android/globalsearch/QueryMultiplexer;

    invoke-virtual {v0}, Lcom/android/globalsearch/QueryMultiplexer;->sendQuery()V

    goto :goto_4
.end method

.method sendOffPromotedSourceQueries()V
    .registers 11

    .prologue
    const/16 v3, 0x3a

    .line 804
    iget-boolean v0, p0, Lcom/android/globalsearch/SuggestionSession$AsyncMux;->mCanceled:Z

    if-eqz v0, :cond_7

    .line 824
    :goto_6
    return-void

    .line 805
    :cond_7
    iget-object v0, p0, Lcom/android/globalsearch/SuggestionSession$AsyncMux;->mPromotedSourcesQueryMux:Lcom/android/globalsearch/QueryMultiplexer;

    if-eqz v0, :cond_13

    .line 806
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already queried once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 809
    :cond_13
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/globalsearch/SuggestionSession$AsyncMux;->mPromotedSources:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 812
    .local v2, promotedSources:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/globalsearch/SuggestionSource;>;"
    iget-object v0, p0, Lcom/android/globalsearch/SuggestionSession$AsyncMux;->mSourcesToQuery:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_24
    :goto_24
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/globalsearch/SuggestionSource;

    .line 813
    .local v9, source:Lcom/android/globalsearch/SuggestionSource;
    iget-object v0, p0, Lcom/android/globalsearch/SuggestionSession$AsyncMux;->mPromotedSources:Ljava/util/HashSet;

    invoke-interface {v9}, Lcom/android/globalsearch/SuggestionSource;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 814
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 817
    .end local v9           #source:Lcom/android/globalsearch/SuggestionSource;
    :cond_40
    new-instance v0, Lcom/android/globalsearch/QueryMultiplexer;

    iget-object v1, p0, Lcom/android/globalsearch/SuggestionSession$AsyncMux;->mQuery:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/globalsearch/SuggestionSession$AsyncMux;->mQueryExecutor:Lcom/android/globalsearch/PerTagExecutor;

    iget-object v7, p0, Lcom/android/globalsearch/SuggestionSession$AsyncMux;->mDelayedExecutor:Lcom/android/globalsearch/DelayedExecutor;

    move v4, v3

    move-object v5, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/globalsearch/QueryMultiplexer;-><init>(Ljava/lang/String;Ljava/util/List;IILcom/android/globalsearch/SuggestionBacker;Lcom/android/globalsearch/PerTagExecutor;Lcom/android/globalsearch/DelayedExecutor;)V

    iput-object v0, p0, Lcom/android/globalsearch/SuggestionSession$AsyncMux;->mPromotedSourcesQueryMux:Lcom/android/globalsearch/QueryMultiplexer;

    .line 822
    iget-object v0, p0, Lcom/android/globalsearch/SuggestionSession$AsyncMux;->mBackerToReportTo:Lcom/android/globalsearch/SourceSuggestionBacker;

    invoke-virtual {v0}, Lcom/android/globalsearch/SourceSuggestionBacker;->reportPromotedQueryStartTime()V

    .line 823
    iget-object v0, p0, Lcom/android/globalsearch/SuggestionSession$AsyncMux;->mPromotedSourcesQueryMux:Lcom/android/globalsearch/QueryMultiplexer;

    invoke-virtual {v0}, Lcom/android/globalsearch/QueryMultiplexer;->sendQuery()V

    goto :goto_6
.end method

.method sendOffShortcutRefreshers(Lcom/android/globalsearch/SourceLookup;)V
    .registers 9
    .parameter "sourceLookup"

    .prologue
    .line 791
    iget-boolean v0, p0, Lcom/android/globalsearch/SuggestionSession$AsyncMux;->mCanceled:Z

    if-eqz v0, :cond_5

    .line 801
    :goto_4
    return-void

    .line 792
    :cond_5
    iget-object v0, p0, Lcom/android/globalsearch/SuggestionSession$AsyncMux;->mShortcutRefresher:Lcom/android/globalsearch/ShortcutRefresher;

    if-eqz v0, :cond_11

    .line 793
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already refreshed once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 795
    :cond_11
    new-instance v0, Lcom/android/globalsearch/ShortcutRefresher;

    iget-object v1, p0, Lcom/android/globalsearch/SuggestionSession$AsyncMux;->mRefreshExecutor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/globalsearch/SuggestionSession$AsyncMux;->mShortcutsToValidate:Ljava/util/ArrayList;

    const/4 v4, 0x7

    iget-object v6, p0, Lcom/android/globalsearch/SuggestionSession$AsyncMux;->mRepo:Lcom/android/globalsearch/ShortcutRepository;

    move-object v2, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/globalsearch/ShortcutRefresher;-><init>(Ljava/util/concurrent/Executor;Lcom/android/globalsearch/SourceLookup;Ljava/util/ArrayList;ILcom/android/globalsearch/SuggestionBacker;Lcom/android/globalsearch/ShortcutRepository;)V

    iput-object v0, p0, Lcom/android/globalsearch/SuggestionSession$AsyncMux;->mShortcutRefresher:Lcom/android/globalsearch/ShortcutRefresher;

    .line 800
    iget-object v0, p0, Lcom/android/globalsearch/SuggestionSession$AsyncMux;->mShortcutRefresher:Lcom/android/globalsearch/ShortcutRefresher;

    invoke-virtual {v0}, Lcom/android/globalsearch/ShortcutRefresher;->refresh()V

    goto :goto_4
.end method

.method public snapshotSuggestions(Ljava/util/ArrayList;Z)V
    .registers 4
    .parameter
    .parameter "expandAdditional"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/globalsearch/SuggestionData;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 747
    .local p1, dest:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/globalsearch/SuggestionData;>;"
    iget-object v0, p0, Lcom/android/globalsearch/SuggestionSession$AsyncMux;->mBackerToReportTo:Lcom/android/globalsearch/SourceSuggestionBacker;

    invoke-virtual {v0, p1, p2}, Lcom/android/globalsearch/SourceSuggestionBacker;->snapshotSuggestions(Ljava/util/ArrayList;Z)V

    .line 748
    return-void
.end method
