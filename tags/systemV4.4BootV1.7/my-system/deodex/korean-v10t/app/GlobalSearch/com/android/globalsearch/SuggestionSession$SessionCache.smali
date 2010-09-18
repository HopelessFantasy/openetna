.class Lcom/android/globalsearch/SuggestionSession$SessionCache;
.super Ljava/lang/Object;
.source "SuggestionSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/globalsearch/SuggestionSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SessionCache"
.end annotation


# static fields
.field static final EMPTY:Lcom/android/globalsearch/SuggestionSession$QueryCacheResults; = null

.field private static final NO_ICON:Ljava/lang/String; = "NO_ICON"


# instance fields
.field private final mRefreshedShortcuts:Ljava/util/HashMap;
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

.field private final mResultsCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/android/globalsearch/SuggestionSession$QueryCacheResults;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mZeroResultSources:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/ComponentName;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 534
    new-instance v0, Lcom/android/globalsearch/SuggestionSession$QueryCacheResults;

    invoke-direct {v0}, Lcom/android/globalsearch/SuggestionSession$QueryCacheResults;-><init>()V

    sput-object v0, Lcom/android/globalsearch/SuggestionSession$SessionCache;->EMPTY:Lcom/android/globalsearch/SuggestionSession$QueryCacheResults;

    return-void
.end method

.method constructor <init>(Z)V
    .registers 3
    .parameter "cacheQueryResults"

    .prologue
    .line 543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 537
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/globalsearch/SuggestionSession$SessionCache;->mZeroResultSources:Ljava/util/HashMap;

    .line 541
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/globalsearch/SuggestionSession$SessionCache;->mRefreshedShortcuts:Ljava/util/HashMap;

    .line 544
    if-eqz p1, :cond_1b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_18
    iput-object v0, p0, Lcom/android/globalsearch/SuggestionSession$SessionCache;->mResultsCache:Ljava/util/HashMap;

    .line 547
    return-void

    .line 544
    :cond_1b
    const/4 v0, 0x0

    goto :goto_18
.end method

.method private getCachedResult(Ljava/lang/String;)Lcom/android/globalsearch/SuggestionSession$QueryCacheResults;
    .registers 5
    .parameter "query"

    .prologue
    const/4 v2, 0x0

    .line 645
    iget-object v1, p0, Lcom/android/globalsearch/SuggestionSession$SessionCache;->mResultsCache:Ljava/util/HashMap;

    if-nez v1, :cond_7

    move-object v1, v2

    .line 653
    .end local p0
    :goto_6
    return-object v1

    .line 647
    .restart local p0
    :cond_7
    iget-object v1, p0, Lcom/android/globalsearch/SuggestionSession$SessionCache;->mResultsCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 648
    .local v0, ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lcom/android/globalsearch/SuggestionSession$QueryCacheResults;>;"
    if-nez v0, :cond_13

    move-object v1, v2

    goto :goto_6

    .line 650
    :cond_13
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_19

    .line 653
    :cond_19
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/globalsearch/SuggestionSession$QueryCacheResults;

    move-object v1, p0

    goto :goto_6
.end method

.method private static makeShortcutKey(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "name"
    .parameter "shortcutId"

    .prologue
    .line 601
    invoke-virtual {p0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v0

    .line 602
    .local v0, nameStr:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method declared-synchronized getRefreshedShortcutIcon2(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "source"
    .parameter "shortcutId"

    .prologue
    .line 596
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/globalsearch/SuggestionSession$SessionCache;->mRefreshedShortcuts:Ljava/util/HashMap;

    invoke-static {p1, p2}, Lcom/android/globalsearch/SuggestionSession$SessionCache;->makeShortcutKey(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 597
    .local v0, icon2:Ljava/lang/String;
    if-eqz v0, :cond_13

    const-string v1, "NO_ICON"
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_18

    if-ne v0, v1, :cond_16

    :cond_13
    const/4 v1, 0x0

    :goto_14
    monitor-exit p0

    return-object v1

    :cond_16
    move-object v1, v0

    goto :goto_14

    .line 596
    .end local v0           #icon2:Ljava/lang/String;
    :catchall_18
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized getSourceResults(Ljava/lang/String;)Lcom/android/globalsearch/SuggestionSession$QueryCacheResults;
    .registers 4
    .parameter "query"

    .prologue
    .line 611
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/globalsearch/SuggestionSession$SessionCache;->getCachedResult(Ljava/lang/String;)Lcom/android/globalsearch/SuggestionSession$QueryCacheResults;

    move-result-object v0

    .line 612
    .local v0, queryCacheResults:Lcom/android/globalsearch/SuggestionSession$QueryCacheResults;
    if-nez v0, :cond_b

    sget-object v1, Lcom/android/globalsearch/SuggestionSession$SessionCache;->EMPTY:Lcom/android/globalsearch/SuggestionSession$QueryCacheResults;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_d

    :goto_9
    monitor-exit p0

    return-object v1

    :cond_b
    move-object v1, v0

    goto :goto_9

    .line 611
    .end local v0           #queryCacheResults:Lcom/android/globalsearch/SuggestionSession$QueryCacheResults;
    :catchall_d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized hasReportedZeroResultsForPrefix(Ljava/lang/String;Landroid/content/ComponentName;)Z
    .registers 10
    .parameter "query"
    .parameter "source"

    .prologue
    const/4 v6, 0x0

    .line 557
    monitor-enter p0

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 558
    .local v1, queryLength:I
    const/4 v0, 0x1

    .local v0, i:I
    :goto_7
    if-ge v0, v1, :cond_26

    .line 559
    const/4 v4, 0x0

    sub-int v5, v1, v0

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 560
    .local v2, subQuery:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/globalsearch/SuggestionSession$SessionCache;->mZeroResultSources:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    .line 561
    .local v3, zeros:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    if-eqz v3, :cond_23

    invoke-virtual {v3, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_1d
    .catchall {:try_start_2 .. :try_end_1d} :catchall_28

    move-result v4

    if-eqz v4, :cond_23

    .line 562
    const/4 v4, 0x1

    .line 565
    .end local v2           #subQuery:Ljava/lang/String;
    .end local v3           #zeros:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    :goto_21
    monitor-exit p0

    return v4

    .line 558
    .restart local v2       #subQuery:Ljava/lang/String;
    .restart local v3       #zeros:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .end local v2           #subQuery:Ljava/lang/String;
    .end local v3           #zeros:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    :cond_26
    move v4, v6

    .line 565
    goto :goto_21

    .line 557
    .end local v0           #i:I
    .end local v1           #queryLength:I
    :catchall_28
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method declared-synchronized hasShortcutBeenRefreshed(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 5
    .parameter "source"
    .parameter "shortcutId"

    .prologue
    .line 586
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/globalsearch/SuggestionSession$SessionCache;->mRefreshedShortcuts:Ljava/util/HashMap;

    invoke-static {p1, p2}, Lcom/android/globalsearch/SuggestionSession$SessionCache;->makeShortcutKey(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_d

    move-result v0

    monitor-exit p0

    return v0

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized reportRefreshedShortcut(Landroid/content/ComponentName;Ljava/lang/String;Lcom/android/globalsearch/SuggestionData;)V
    .registers 7
    .parameter "source"
    .parameter "shortcutId"
    .parameter "shortcut"

    .prologue
    const-string v2, "NO_ICON"

    .line 573
    monitor-enter p0

    if-eqz p3, :cond_b

    :try_start_5
    invoke-virtual {p3}, Lcom/android/globalsearch/SuggestionData;->isSpinnerWhileRefreshing()Z

    move-result v1

    if-nez v1, :cond_19

    :cond_b
    const-string v1, "NO_ICON"

    move-object v0, v2

    .line 576
    .local v0, icon2:Ljava/lang/String;
    :goto_e
    iget-object v1, p0, Lcom/android/globalsearch/SuggestionSession$SessionCache;->mRefreshedShortcuts:Ljava/util/HashMap;

    invoke-static {p1, p2}, Lcom/android/globalsearch/SuggestionSession$SessionCache;->makeShortcutKey(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_29

    .line 577
    monitor-exit p0

    return-void

    .line 573
    .end local v0           #icon2:Ljava/lang/String;
    :cond_19
    :try_start_19
    invoke-virtual {p3}, Lcom/android/globalsearch/SuggestionData;->getIcon2()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_23

    const-string v1, "NO_ICON"

    move-object v0, v2

    goto :goto_e

    :cond_23
    invoke-virtual {p3}, Lcom/android/globalsearch/SuggestionData;->getIcon2()Ljava/lang/String;
    :try_end_26
    .catchall {:try_start_19 .. :try_end_26} :catchall_29

    move-result-object v1

    move-object v0, v1

    goto :goto_e

    :catchall_29
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized reportSourceResult(Ljava/lang/String;Lcom/android/globalsearch/SuggestionResult;)V
    .registers 7
    .parameter "query"
    .parameter "sourceResult"

    .prologue
    .line 622
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/android/globalsearch/SuggestionSession$SessionCache;->mResultsCache:Ljava/util/HashMap;

    if-eqz v2, :cond_1d

    .line 623
    invoke-direct {p0, p1}, Lcom/android/globalsearch/SuggestionSession$SessionCache;->getCachedResult(Ljava/lang/String;)Lcom/android/globalsearch/SuggestionSession$QueryCacheResults;

    move-result-object v0

    .line 624
    .local v0, queryCacheResults:Lcom/android/globalsearch/SuggestionSession$QueryCacheResults;
    if-nez v0, :cond_1a

    .line 625
    new-instance v0, Lcom/android/globalsearch/SuggestionSession$QueryCacheResults;

    .end local v0           #queryCacheResults:Lcom/android/globalsearch/SuggestionSession$QueryCacheResults;
    invoke-direct {v0}, Lcom/android/globalsearch/SuggestionSession$QueryCacheResults;-><init>()V

    .line 626
    .restart local v0       #queryCacheResults:Lcom/android/globalsearch/SuggestionSession$QueryCacheResults;
    iget-object v2, p0, Lcom/android/globalsearch/SuggestionSession$SessionCache;->mResultsCache:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    :cond_1a
    invoke-virtual {v0, p2}, Lcom/android/globalsearch/SuggestionSession$QueryCacheResults;->addResult(Lcom/android/globalsearch/SuggestionResult;)V

    .line 633
    .end local v0           #queryCacheResults:Lcom/android/globalsearch/SuggestionSession$QueryCacheResults;
    :cond_1d
    invoke-virtual {p2}, Lcom/android/globalsearch/SuggestionResult;->getSource()Lcom/android/globalsearch/SuggestionSource;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/globalsearch/SuggestionSource;->queryAfterZeroResults()Z

    move-result v2

    if-nez v2, :cond_50

    invoke-virtual {p2}, Lcom/android/globalsearch/SuggestionResult;->getSuggestions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_50

    .line 635
    iget-object v2, p0, Lcom/android/globalsearch/SuggestionSession$SessionCache;->mZeroResultSources:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    .line 636
    .local v1, zeros:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    if-nez v1, :cond_45

    .line 637
    new-instance v1, Ljava/util/HashSet;

    .end local v1           #zeros:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 638
    .restart local v1       #zeros:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    iget-object v2, p0, Lcom/android/globalsearch/SuggestionSession$SessionCache;->mZeroResultSources:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    :cond_45
    invoke-virtual {p2}, Lcom/android/globalsearch/SuggestionResult;->getSource()Lcom/android/globalsearch/SuggestionSource;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/globalsearch/SuggestionSource;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_50
    .catchall {:try_start_1 .. :try_end_50} :catchall_52

    .line 642
    .end local v1           #zeros:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    :cond_50
    monitor-exit p0

    return-void

    .line 622
    :catchall_52
    move-exception v2

    monitor-exit p0

    throw v2
.end method
