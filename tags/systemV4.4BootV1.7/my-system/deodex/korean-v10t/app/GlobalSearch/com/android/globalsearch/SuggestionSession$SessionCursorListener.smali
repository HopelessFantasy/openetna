.class Lcom/android/globalsearch/SuggestionSession$SessionCursorListener;
.super Ljava/lang/Object;
.source "SuggestionSession.java"

# interfaces
.implements Lcom/android/globalsearch/SuggestionCursor$CursorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/globalsearch/SuggestionSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SessionCursorListener"
.end annotation


# instance fields
.field private mAsyncMux:Lcom/android/globalsearch/SuggestionSession$AsyncMux;

.field final synthetic this$0:Lcom/android/globalsearch/SuggestionSession;


# direct methods
.method public constructor <init>(Lcom/android/globalsearch/SuggestionSession;Lcom/android/globalsearch/SuggestionSession$AsyncMux;)V
    .registers 3
    .parameter
    .parameter "asyncMux"

    .prologue
    .line 346
    iput-object p1, p0, Lcom/android/globalsearch/SuggestionSession$SessionCursorListener;->this$0:Lcom/android/globalsearch/SuggestionSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 347
    iput-object p2, p0, Lcom/android/globalsearch/SuggestionSession$SessionCursorListener;->mAsyncMux:Lcom/android/globalsearch/SuggestionSession$AsyncMux;

    .line 348
    return-void
.end method

.method private isCorpusSelector(Lcom/android/globalsearch/SuggestionData;)Z
    .registers 4
    .parameter "suggestion"

    .prologue
    .line 408
    const-string v0, "android.search.action.CHANGE_SEARCH_SOURCE"

    invoke-virtual {p1}, Lcom/android/globalsearch/SuggestionData;->getIntentAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isSourceSuggestion(Lcom/android/globalsearch/SuggestionData;)Z
    .registers 4
    .parameter "suggestion"

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/globalsearch/SuggestionSession$SessionCursorListener;->this$0:Lcom/android/globalsearch/SuggestionSession;

    invoke-static {v0}, Lcom/android/globalsearch/SuggestionSession;->access$100(Lcom/android/globalsearch/SuggestionSession;)Lcom/android/globalsearch/SourceLookup;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/globalsearch/SuggestionData;->getSource()Landroid/content/ComponentName;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/globalsearch/SourceLookup;->getSourceByComponentName(Landroid/content/ComponentName;)Lcom/android/globalsearch/SuggestionSource;

    move-result-object v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method


# virtual methods
.method public onClose()V
    .registers 3

    .prologue
    .line 352
    iget-object v1, p0, Lcom/android/globalsearch/SuggestionSession$SessionCursorListener;->mAsyncMux:Lcom/android/globalsearch/SuggestionSession$AsyncMux;

    invoke-virtual {v1}, Lcom/android/globalsearch/SuggestionSession$AsyncMux;->cancel()V

    .line 356
    iget-object v1, p0, Lcom/android/globalsearch/SuggestionSession$SessionCursorListener;->this$0:Lcom/android/globalsearch/SuggestionSession;

    invoke-static {v1}, Lcom/android/globalsearch/SuggestionSession;->access$000(Lcom/android/globalsearch/SuggestionSession;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    .line 358
    .local v0, refCount:I
    if-nez v0, :cond_16

    .line 359
    iget-object v1, p0, Lcom/android/globalsearch/SuggestionSession$SessionCursorListener;->this$0:Lcom/android/globalsearch/SuggestionSession;

    invoke-virtual {v1}, Lcom/android/globalsearch/SuggestionSession;->close()V

    .line 361
    :cond_16
    return-void
.end method

.method public onItemClicked(Lcom/android/globalsearch/SuggestionData;Ljava/util/List;)V
    .registers 12
    .parameter "clicked"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/globalsearch/SuggestionData;",
            "Ljava/util/List",
            "<",
            "Lcom/android/globalsearch/SuggestionData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 368
    .local p2, viewedSuggestions:Ljava/util/List;,"Ljava/util/List<Lcom/android/globalsearch/SuggestionData;>;"
    const/4 v0, 0x0

    .line 370
    .local v0, clickedSuggestion:Lcom/android/globalsearch/SuggestionData;
    invoke-direct {p0, p1}, Lcom/android/globalsearch/SuggestionSession$SessionCursorListener;->isSourceSuggestion(Lcom/android/globalsearch/SuggestionData;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 371
    move-object v0, p1

    .line 375
    :cond_8
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    .line 376
    .local v3, numViewed:I
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 377
    .local v4, sourceImpressions:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_12
    if-ge v2, v3, :cond_46

    .line 378
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/globalsearch/SuggestionData;

    .line 381
    .local v5, viewed:Lcom/android/globalsearch/SuggestionData;
    invoke-direct {p0, v5}, Lcom/android/globalsearch/SuggestionSession$SessionCursorListener;->isSourceSuggestion(Lcom/android/globalsearch/SuggestionData;)Z

    move-result v6

    if-eqz v6, :cond_2a

    .line 382
    invoke-virtual {v5}, Lcom/android/globalsearch/SuggestionData;->getSource()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 377
    :cond_27
    :goto_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 383
    :cond_2a
    invoke-direct {p0, v5}, Lcom/android/globalsearch/SuggestionSession$SessionCursorListener;->isCorpusSelector(Lcom/android/globalsearch/SuggestionData;)Z

    move-result v6

    if-eqz v6, :cond_27

    .line 385
    invoke-virtual {v5}, Lcom/android/globalsearch/SuggestionData;->getIntentData()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 387
    .local v1, corpusName:Landroid/content/ComponentName;
    if-eqz v1, :cond_27

    iget-object v6, p0, Lcom/android/globalsearch/SuggestionSession$SessionCursorListener;->mAsyncMux:Lcom/android/globalsearch/SuggestionSession$AsyncMux;

    invoke-virtual {v6, v1}, Lcom/android/globalsearch/SuggestionSession$AsyncMux;->hasSourceStarted(Landroid/content/ComponentName;)Z

    move-result v6

    if-eqz v6, :cond_27

    .line 390
    invoke-virtual {v4, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 395
    .end local v1           #corpusName:Landroid/content/ComponentName;
    .end local v5           #viewed:Lcom/android/globalsearch/SuggestionData;
    :cond_46
    iget-object v6, p0, Lcom/android/globalsearch/SuggestionSession$SessionCursorListener;->this$0:Lcom/android/globalsearch/SuggestionSession;

    new-instance v7, Lcom/android/globalsearch/SessionStats;

    iget-object v8, p0, Lcom/android/globalsearch/SuggestionSession$SessionCursorListener;->mAsyncMux:Lcom/android/globalsearch/SuggestionSession$AsyncMux;

    invoke-virtual {v8}, Lcom/android/globalsearch/SuggestionSession$AsyncMux;->getQuery()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v0, v4}, Lcom/android/globalsearch/SessionStats;-><init>(Ljava/lang/String;Lcom/android/globalsearch/SuggestionData;Ljava/util/Collection;)V

    invoke-virtual {v6, v7}, Lcom/android/globalsearch/SuggestionSession;->reportStats(Lcom/android/globalsearch/SessionStats;)V

    .line 397
    return-void
.end method

.method public onMoreVisible()V
    .registers 2

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/globalsearch/SuggestionSession$SessionCursorListener;->mAsyncMux:Lcom/android/globalsearch/SuggestionSession$AsyncMux;

    invoke-virtual {v0}, Lcom/android/globalsearch/SuggestionSession$AsyncMux;->sendOffAdditionalSourcesQueries()V

    .line 415
    return-void
.end method
