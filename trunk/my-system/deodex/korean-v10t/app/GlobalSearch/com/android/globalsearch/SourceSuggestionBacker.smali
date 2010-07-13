.class public Lcom/android/globalsearch/SourceSuggestionBacker;
.super Lcom/android/globalsearch/SuggestionBacker;
.source "SourceSuggestionBacker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/globalsearch/SourceSuggestionBacker$SourceStat;,
        Lcom/android/globalsearch/SourceSuggestionBacker$CorpusResultFactory;,
        Lcom/android/globalsearch/SourceSuggestionBacker$MoreExpanderFactory;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "GlobalSearch"


# instance fields
.field private final mCorpusFactory:Lcom/android/globalsearch/SourceSuggestionBacker$CorpusResultFactory;

.field private final mGoToWebsiteSuggestion:Lcom/android/globalsearch/SuggestionData;

.field private mIndexOfMore:I

.field private final mMaxPromotedSlots:I

.field private final mMoreFactory:Lcom/android/globalsearch/SourceSuggestionBacker$MoreExpanderFactory;

.field private final mPendingSources:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mPinToBottomSuggestion:Lcom/android/globalsearch/SuggestionData;

.field private mPromotedQueryStartTime:J

.field private final mPromotedSourceDeadline:J

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

.field private final mQuery:Ljava/lang/String;

.field private final mReportedBeforeDeadline:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final mReportedResults:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/globalsearch/SuggestionResult;",
            ">;"
        }
    .end annotation
.end field

.field private final mSearchTheWebSuggestion:Lcom/android/globalsearch/SuggestionData;

.field private final mSelectedWebSearchSource:Lcom/android/globalsearch/SuggestionSource;

.field private final mShortcuts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/globalsearch/SuggestionData;",
            ">;"
        }
    .end annotation
.end field

.field private mShowingMore:Z

.field private final mSources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/globalsearch/SuggestionSource;",
            ">;"
        }
    .end annotation
.end field

.field private final mSuggestionKeys:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mViewedNonPromoted:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/HashSet;Lcom/android/globalsearch/SuggestionSource;Ljava/util/Collection;Lcom/android/globalsearch/SuggestionData;Lcom/android/globalsearch/SuggestionData;IJLcom/android/globalsearch/SourceSuggestionBacker$MoreExpanderFactory;Lcom/android/globalsearch/SourceSuggestionBacker$CorpusResultFactory;)V
    .registers 24
    .parameter "query"
    .parameter
    .parameter
    .parameter
    .parameter "selectedWebSearchSource"
    .parameter
    .parameter "goToWebsiteSuggestion"
    .parameter "searchTheWebSuggestion"
    .parameter "maxPromotedSlots"
    .parameter "promotedSourceDeadline"
    .parameter "moreFactory"
    .parameter "corpusFactory"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/globalsearch/SuggestionData;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/globalsearch/SuggestionSource;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/ComponentName;",
            ">;",
            "Lcom/android/globalsearch/SuggestionSource;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/globalsearch/SuggestionResult;",
            ">;",
            "Lcom/android/globalsearch/SuggestionData;",
            "Lcom/android/globalsearch/SuggestionData;",
            "IJ",
            "Lcom/android/globalsearch/SourceSuggestionBacker$MoreExpanderFactory;",
            "Lcom/android/globalsearch/SourceSuggestionBacker$CorpusResultFactory;",
            ")V"
        }
    .end annotation

    .prologue
    .line 141
    .local p2, shortcuts:Ljava/util/List;,"Ljava/util/List<Lcom/android/globalsearch/SuggestionData;>;"
    .local p3, sources:Ljava/util/List;,"Ljava/util/List<Lcom/android/globalsearch/SuggestionSource;>;"
    .local p4, promotedSources:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    .local p6, cachedResults:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/globalsearch/SuggestionResult;>;"
    invoke-direct {p0}, Lcom/android/globalsearch/SuggestionBacker;-><init>()V

    .line 97
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v8, p0, Lcom/android/globalsearch/SourceSuggestionBacker;->mReportedResults:Ljava/util/LinkedHashMap;

    .line 99
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    iput-object v8, p0, Lcom/android/globalsearch/SourceSuggestionBacker;->mReportedBeforeDeadline:Ljava/util/HashSet;

    .line 102
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    iput-object v8, p0, Lcom/android/globalsearch/SourceSuggestionBacker;->mSuggestionKeys:Ljava/util/HashSet;

    .line 104
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    iput-object v8, p0, Lcom/android/globalsearch/SourceSuggestionBacker;->mPendingSources:Ljava/util/HashSet;

    .line 110
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    iput-object v8, p0, Lcom/android/globalsearch/SourceSuggestionBacker;->mViewedNonPromoted:Ljava/util/HashSet;

    .line 143
    invoke-virtual {p4}, Ljava/util/HashSet;->size()I

    move-result v8

    move v0, v8

    move/from16 v1, p9

    if-le v0, v1, :cond_37

    .line 144
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "more promoted sources than there are slots provided"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 148
    :cond_37
    iput-object p1, p0, Lcom/android/globalsearch/SourceSuggestionBacker;->mQuery:Ljava/lang/String;

    .line 149
    iput-object p2, p0, Lcom/android/globalsearch/SourceSuggestionBacker;->mShortcuts:Ljava/util/List;

    .line 150
    move-object/from16 v0, p7

    move-object v1, p0

    iput-object v0, v1, Lcom/android/globalsearch/SourceSuggestionBacker;->mGoToWebsiteSuggestion:Lcom/android/globalsearch/SuggestionData;

    .line 151
    move-object/from16 v0, p8

    move-object v1, p0

    iput-object v0, v1, Lcom/android/globalsearch/SourceSuggestionBacker;->mSearchTheWebSuggestion:Lcom/android/globalsearch/SuggestionData;

    .line 152
    move-object/from16 v0, p12

    move-object v1, p0

    iput-object v0, v1, Lcom/android/globalsearch/SourceSuggestionBacker;->mMoreFactory:Lcom/android/globalsearch/SourceSuggestionBacker$MoreExpanderFactory;

    .line 153
    move-wide/from16 v0, p10

    move-object v2, p0

    iput-wide v0, v2, Lcom/android/globalsearch/SourceSuggestionBacker;->mPromotedSourceDeadline:J

    .line 154
    move-object/from16 v0, p13

    move-object v1, p0

    iput-object v0, v1, Lcom/android/globalsearch/SourceSuggestionBacker;->mCorpusFactory:Lcom/android/globalsearch/SourceSuggestionBacker$CorpusResultFactory;

    .line 155
    iput-object p3, p0, Lcom/android/globalsearch/SourceSuggestionBacker;->mSources:Ljava/util/List;

    .line 156
    iput-object p4, p0, Lcom/android/globalsearch/SourceSuggestionBacker;->mPromotedSources:Ljava/util/HashSet;

    .line 157
    move/from16 v0, p9

    move-object v1, p0

    iput v0, v1, Lcom/android/globalsearch/SourceSuggestionBacker;->mMaxPromotedSlots:I

    .line 158
    iput-object p5, p0, Lcom/android/globalsearch/SourceSuggestionBacker;->mSelectedWebSearchSource:Lcom/android/globalsearch/SuggestionSource;

    .line 160
    invoke-virtual {p0}, Lcom/android/globalsearch/SourceSuggestionBacker;->getNow()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/globalsearch/SourceSuggestionBacker;->mPromotedQueryStartTime:J

    .line 162
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    .line 163
    .local v6, numShortcuts:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_6a
    if-ge v4, v6, :cond_7e

    .line 164
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/globalsearch/SuggestionData;

    .line 165
    .local v7, shortcut:Lcom/android/globalsearch/SuggestionData;
    iget-object v8, p0, Lcom/android/globalsearch/SourceSuggestionBacker;->mSuggestionKeys:Ljava/util/HashSet;

    invoke-direct {p0, v7}, Lcom/android/globalsearch/SourceSuggestionBacker;->makeSuggestionKey(Lcom/android/globalsearch/SuggestionData;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 163
    add-int/lit8 v4, v4, 0x1

    goto :goto_6a

    .line 168
    .end local v7           #shortcut:Lcom/android/globalsearch/SuggestionData;
    :cond_7e
    invoke-interface/range {p6 .. p6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_82
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_92

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/globalsearch/SuggestionResult;

    .line 169
    .local v3, cachedResult:Lcom/android/globalsearch/SuggestionResult;
    invoke-virtual {p0, v3}, Lcom/android/globalsearch/SourceSuggestionBacker;->addSourceResults(Lcom/android/globalsearch/SuggestionResult;)Z

    goto :goto_82

    .line 171
    .end local v3           #cachedResult:Lcom/android/globalsearch/SuggestionResult;
    :cond_92
    return-void
.end method

.method private anyCorpusSourceVisible(Ljava/util/ArrayList;)Z
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/globalsearch/SourceSuggestionBacker$SourceStat;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 393
    .local p1, sourceStats:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/globalsearch/SourceSuggestionBacker$SourceStat;>;"
    const/4 v2, 0x0

    .line 394
    .local v2, needMore:Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 395
    .local v3, num:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    if-ge v0, v3, :cond_18

    .line 396
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/globalsearch/SourceSuggestionBacker$SourceStat;

    .line 397
    .local v1, moreSource:Lcom/android/globalsearch/SourceSuggestionBacker$SourceStat;
    invoke-direct {p0, v1}, Lcom/android/globalsearch/SourceSuggestionBacker;->shouldCorpusEntryBeVisible(Lcom/android/globalsearch/SourceSuggestionBacker$SourceStat;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 398
    const/4 v2, 0x1

    .line 395
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 401
    .end local v1           #moreSource:Lcom/android/globalsearch/SourceSuggestionBacker$SourceStat;
    :cond_18
    return v2
.end method

.method private isPastDeadline()Z
    .registers 5

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/android/globalsearch/SourceSuggestionBacker;->getNow()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/globalsearch/SourceSuggestionBacker;->mPromotedQueryStartTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/globalsearch/SourceSuggestionBacker;->mPromotedSourceDeadline:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private isWebSuggestionSource(Lcom/android/globalsearch/SuggestionSource;)Z
    .registers 4
    .parameter "source"

    .prologue
    .line 494
    iget-object v0, p0, Lcom/android/globalsearch/SourceSuggestionBacker;->mSelectedWebSearchSource:Lcom/android/globalsearch/SuggestionSource;

    if-eqz v0, :cond_16

    invoke-interface {p1}, Lcom/android/globalsearch/SuggestionSource;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    iget-object v1, p0, Lcom/android/globalsearch/SourceSuggestionBacker;->mSelectedWebSearchSource:Lcom/android/globalsearch/SuggestionSource;

    invoke-interface {v1}, Lcom/android/globalsearch/SuggestionSource;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private makeSuggestionKey(Lcom/android/globalsearch/SuggestionData;)Ljava/lang/String;
    .registers 9
    .parameter "suggestion"

    .prologue
    const/16 v6, 0x23

    const-string v5, "none"

    .line 417
    invoke-virtual {p1}, Lcom/android/globalsearch/SuggestionData;->getIntentAction()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5a

    const-string v4, "none"

    move-object v0, v5

    .line 419
    .local v0, action:Ljava/lang/String;
    :goto_d
    invoke-virtual {p1}, Lcom/android/globalsearch/SuggestionData;->getIntentData()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_60

    const-string v4, "none"

    move-object v2, v5

    .line 421
    .local v2, intentData:Ljava/lang/String;
    :goto_16
    invoke-virtual {p1}, Lcom/android/globalsearch/SuggestionData;->getIntentQuery()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_66

    const-string v4, ""

    move-object v3, v4

    .line 423
    .local v3, intentQuery:Ljava/lang/String;
    :goto_1f
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int v1, v4, v5

    .line 424
    .local v1, alloc:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p1}, Lcom/android/globalsearch/SuggestionData;->getIntentAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/globalsearch/SuggestionData;->getIntentData()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/globalsearch/SuggestionData;->getIntentQuery()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 417
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #alloc:I
    .end local v2           #intentData:Ljava/lang/String;
    .end local v3           #intentQuery:Ljava/lang/String;
    :cond_5a
    invoke-virtual {p1}, Lcom/android/globalsearch/SuggestionData;->getIntentAction()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_d

    .line 419
    .restart local v0       #action:Ljava/lang/String;
    :cond_60
    invoke-virtual {p1}, Lcom/android/globalsearch/SuggestionData;->getIntentData()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    goto :goto_16

    .line 421
    .restart local v2       #intentData:Ljava/lang/String;
    :cond_66
    invoke-virtual {p1}, Lcom/android/globalsearch/SuggestionData;->getIntentQuery()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    goto :goto_1f
.end method

.method private shouldCorpusEntryBeVisible(Lcom/android/globalsearch/SourceSuggestionBacker$SourceStat;)Z
    .registers 4
    .parameter "sourceStat"

    .prologue
    .line 409
    invoke-virtual {p1}, Lcom/android/globalsearch/SourceSuggestionBacker$SourceStat;->getNumResults()I

    move-result v0

    if-gtz v0, :cond_1a

    invoke-virtual {p1}, Lcom/android/globalsearch/SourceSuggestionBacker$SourceStat;->getResponseStatus()I

    move-result v0

    const/16 v1, 0x4f

    if-ne v0, v1, :cond_1a

    iget-object v0, p0, Lcom/android/globalsearch/SourceSuggestionBacker;->mViewedNonPromoted:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/android/globalsearch/SourceSuggestionBacker$SourceStat;->getName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method private snapshotSuggestionsInternal(Ljava/util/ArrayList;Z)I
    .registers 55
    .parameter
    .parameter "expandAdditional"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/globalsearch/SuggestionData;",
            ">;Z)I"
        }
    .end annotation

    .prologue
    .line 203
    .local p1, dest:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/globalsearch/SuggestionData;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->clear()V

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/globalsearch/SourceSuggestionBacker;->mGoToWebsiteSuggestion:Lcom/android/globalsearch/SuggestionData;

    move-object v3, v0

    if-eqz v3, :cond_15

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/globalsearch/SourceSuggestionBacker;->mGoToWebsiteSuggestion:Lcom/android/globalsearch/SuggestionData;

    move-object v3, v0

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/globalsearch/SourceSuggestionBacker;->mShortcuts:Ljava/util/List;

    move-object v3, v0

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 214
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/globalsearch/SourceSuggestionBacker;->mMaxPromotedSlots:I

    move v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/globalsearch/SourceSuggestionBacker;->mShortcuts:Ljava/util/List;

    move-object v4, v0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int v39, v3, v4

    .line 215
    .local v39, promotedSlotsAvailable:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/globalsearch/SourceSuggestionBacker;->mPromotedSources:Ljava/util/HashSet;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_a5

    const/4 v3, 0x0

    move/from16 v27, v3

    .line 220
    .local v27, chunkSize:I
    :goto_3e
    new-instance v43, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/globalsearch/SourceSuggestionBacker;->mReportedResults:Ljava/util/LinkedHashMap;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    move-object/from16 v0, v43

    move v1, v3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 222
    .local v43, reportedResults:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/Iterator<Lcom/android/globalsearch/SuggestionData;>;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/globalsearch/SourceSuggestionBacker;->mReportedResults:Ljava/util/LinkedHashMap;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .local v30, i$:Ljava/util/Iterator;
    :cond_5c
    :goto_5c
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b8

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Lcom/android/globalsearch/SuggestionResult;

    .line 223
    .local v51, suggestionResult:Lcom/android/globalsearch/SuggestionResult;
    invoke-virtual/range {v51 .. v51}, Lcom/android/globalsearch/SuggestionResult;->getSource()Lcom/android/globalsearch/SuggestionSource;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/globalsearch/SuggestionSource;->getComponentName()Landroid/content/ComponentName;

    move-result-object v34

    .line 224
    .local v34, name:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/globalsearch/SourceSuggestionBacker;->mPromotedSources:Ljava/util/HashSet;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/globalsearch/SourceSuggestionBacker;->mReportedBeforeDeadline:Ljava/util/HashSet;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c

    invoke-virtual/range {v51 .. v51}, Lcom/android/globalsearch/SuggestionResult;->getSuggestions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5c

    .line 227
    invoke-virtual/range {v51 .. v51}, Lcom/android/globalsearch/SuggestionResult;->getSuggestions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object/from16 v0, v43

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5c

    .line 215
    .end local v27           #chunkSize:I
    .end local v30           #i$:Ljava/util/Iterator;
    .end local v34           #name:Landroid/content/ComponentName;
    .end local v43           #reportedResults:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/Iterator<Lcom/android/globalsearch/SuggestionData;>;>;"
    .end local v51           #suggestionResult:Lcom/android/globalsearch/SuggestionResult;
    :cond_a5
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/globalsearch/SourceSuggestionBacker;->mPromotedSources:Ljava/util/HashSet;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    div-int v4, v39, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    move/from16 v27, v3

    goto :goto_3e

    .line 231
    .restart local v27       #chunkSize:I
    .restart local v30       #i$:Ljava/util/Iterator;
    .restart local v43       #reportedResults:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/Iterator<Lcom/android/globalsearch/SuggestionData;>;>;"
    :cond_b8
    new-instance v48, Ljava/util/HashMap;

    invoke-direct/range {v48 .. v48}, Ljava/util/HashMap;-><init>()V

    .line 235
    .local v48, sourceToNumDisplayed:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Ljava/lang/Integer;>;"
    const/16 v37, 0x0

    .line 236
    .local v37, numSlotsUsed:I
    invoke-virtual/range {v43 .. v43}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :cond_c3
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_115

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Ljava/util/Iterator;

    .line 237
    .local v42, reportedResult:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/globalsearch/SuggestionData;>;"
    const/16 v29, 0x0

    .local v29, i:I
    :goto_d1
    move/from16 v0, v29

    move/from16 v1, v27

    if-ge v0, v1, :cond_c3

    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c3

    .line 238
    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Lcom/android/globalsearch/SuggestionData;

    .line 239
    .local v49, suggestionData:Lcom/android/globalsearch/SuggestionData;
    move-object/from16 v0, p1

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    invoke-virtual/range {v49 .. v49}, Lcom/android/globalsearch/SuggestionData;->getSource()Landroid/content/ComponentName;

    move-result-object v3

    move-object/from16 v0, v48

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Integer;

    .line 241
    .local v28, displayed:Ljava/lang/Integer;
    invoke-virtual/range {v49 .. v49}, Lcom/android/globalsearch/SuggestionData;->getSource()Landroid/content/ComponentName;

    move-result-object v3

    if-nez v28, :cond_10e

    const/4 v4, 0x1

    :goto_fe
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v48

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    add-int/lit8 v37, v37, 0x1

    .line 237
    add-int/lit8 v29, v29, 0x1

    goto :goto_d1

    .line 241
    :cond_10e
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_fe

    .line 250
    .end local v28           #displayed:Ljava/lang/Integer;
    .end local v29           #i:I
    .end local v42           #reportedResult:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/globalsearch/SuggestionData;>;"
    .end local v49           #suggestionData:Lcom/android/globalsearch/SuggestionData;
    :cond_115
    invoke-direct/range {p0 .. p0}, Lcom/android/globalsearch/SourceSuggestionBacker;->isPastDeadline()Z

    move-result v38

    .line 251
    .local v38, pastDeadline:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/globalsearch/SourceSuggestionBacker;->mReportedResults:Ljava/util/LinkedHashMap;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/globalsearch/SourceSuggestionBacker;->mPromotedSources:Ljava/util/HashSet;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    if-lt v3, v4, :cond_166

    const/4 v3, 0x1

    move/from16 v25, v3

    .line 252
    .local v25, allPromotedResponded:Z
    :goto_130
    if-nez v38, :cond_134

    if-eqz v25, :cond_16a

    :cond_134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/globalsearch/SourceSuggestionBacker;->mSources:Ljava/util/List;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_16a

    const/4 v3, 0x1

    :goto_140
    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/globalsearch/SourceSuggestionBacker;->mShowingMore:Z

    .line 253
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/globalsearch/SourceSuggestionBacker;->mShowingMore:Z

    move v3, v0

    if-eqz v3, :cond_3b3

    .line 258
    invoke-virtual/range {v43 .. v43}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v40

    .line 259
    .local v40, pruner:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Iterator<Lcom/android/globalsearch/SuggestionData;>;>;"
    :cond_150
    :goto_150
    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_16c

    .line 260
    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Ljava/util/Iterator;

    .line 261
    .local v50, suggestionDataIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/globalsearch/SuggestionData;>;"
    invoke-interface/range {v50 .. v50}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_150

    .line 262
    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->remove()V

    goto :goto_150

    .line 251
    .end local v25           #allPromotedResponded:Z
    .end local v40           #pruner:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Iterator<Lcom/android/globalsearch/SuggestionData;>;>;"
    .end local v50           #suggestionDataIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/globalsearch/SuggestionData;>;"
    :cond_166
    const/4 v3, 0x0

    move/from16 v25, v3

    goto :goto_130

    .line 252
    .restart local v25       #allPromotedResponded:Z
    :cond_16a
    const/4 v3, 0x0

    goto :goto_140

    .line 268
    .restart local v40       #pruner:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Iterator<Lcom/android/globalsearch/SuggestionData;>;>;"
    :cond_16c
    sub-int v45, v39, v37

    .line 269
    .local v45, slotsRemaining:I
    invoke-virtual/range {v43 .. v43}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_216

    const/4 v3, 0x0

    move/from16 v35, v3

    .line 271
    .local v35, newChunk:I
    :goto_177
    invoke-virtual/range {v43 .. v43}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :cond_17b
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_189

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Ljava/util/Iterator;

    .line 272
    .restart local v42       #reportedResult:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/globalsearch/SuggestionData;>;"
    if-gtz v45, :cond_225

    .line 289
    .end local v42           #reportedResult:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/globalsearch/SuggestionData;>;"
    :cond_189
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 290
    .local v33, moreSources:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/globalsearch/SourceSuggestionBacker$SourceStat;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/globalsearch/SourceSuggestionBacker;->mPinToBottomSuggestion:Lcom/android/globalsearch/SuggestionData;

    move-object v3, v0

    if-eqz v3, :cond_26d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/globalsearch/SourceSuggestionBacker;->mReportedBeforeDeadline:Ljava/util/HashSet;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/globalsearch/SourceSuggestionBacker;->mPinToBottomSuggestion:Lcom/android/globalsearch/SuggestionData;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/globalsearch/SuggestionData;->getSource()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26d

    const/4 v3, 0x1

    move/from16 v44, v3

    .line 292
    .local v44, showingPinToBottom:Z
    :goto_1ac
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/globalsearch/SourceSuggestionBacker;->mSources:Ljava/util/List;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :cond_1b5
    :goto_1b5
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_327

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/android/globalsearch/SuggestionSource;

    .line 293
    .local v46, source:Lcom/android/globalsearch/SuggestionSource;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/globalsearch/SourceSuggestionBacker;->mPromotedSources:Ljava/util/HashSet;

    move-object v3, v0

    invoke-interface/range {v46 .. v46}, Lcom/android/globalsearch/SuggestionSource;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    .line 294
    .local v5, promoted:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/globalsearch/SourceSuggestionBacker;->mReportedResults:Ljava/util/LinkedHashMap;

    move-object v3, v0

    invoke-interface/range {v46 .. v46}, Lcom/android/globalsearch/SuggestionSource;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v41

    .line 295
    .local v41, reported:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/globalsearch/SourceSuggestionBacker;->mReportedBeforeDeadline:Ljava/util/HashSet;

    move-object v3, v0

    invoke-interface/range {v46 .. v46}, Lcom/android/globalsearch/SuggestionSource;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v26

    .line 298
    .local v26, beforeDeadline:Z
    if-nez v41, :cond_276

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/globalsearch/SourceSuggestionBacker;->mPendingSources:Ljava/util/HashSet;

    move-object v3, v0

    invoke-interface/range {v46 .. v46}, Lcom/android/globalsearch/SuggestionSource;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_272

    const/16 v3, 0x4e

    move v8, v3

    .line 304
    .local v8, responseStatus:I
    :goto_1fc
    new-instance v3, Lcom/android/globalsearch/SourceSuggestionBacker$SourceStat;

    invoke-interface/range {v46 .. v46}, Lcom/android/globalsearch/SuggestionSource;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-interface/range {v46 .. v46}, Lcom/android/globalsearch/SuggestionSource;->getLabel()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v46 .. v46}, Lcom/android/globalsearch/SuggestionSource;->getIcon()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v10}, Lcom/android/globalsearch/SourceSuggestionBacker$SourceStat;-><init>(Landroid/content/ComponentName;ZLjava/lang/String;Ljava/lang/String;III)V

    move-object/from16 v0, v33

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b5

    .line 269
    .end local v5           #promoted:Z
    .end local v8           #responseStatus:I
    .end local v26           #beforeDeadline:Z
    .end local v33           #moreSources:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/globalsearch/SourceSuggestionBacker$SourceStat;>;"
    .end local v35           #newChunk:I
    .end local v41           #reported:Z
    .end local v44           #showingPinToBottom:Z
    .end local v46           #source:Lcom/android/globalsearch/SuggestionSource;
    :cond_216
    const/4 v3, 0x1

    invoke-virtual/range {v43 .. v43}, Ljava/util/ArrayList;->size()I

    move-result v4

    div-int v4, v45, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    move/from16 v35, v3

    goto/16 :goto_177

    .line 273
    .restart local v35       #newChunk:I
    .restart local v42       #reportedResult:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/globalsearch/SuggestionData;>;"
    :cond_225
    const/16 v29, 0x0

    .restart local v29       #i:I
    :goto_227
    move/from16 v0, v29

    move/from16 v1, v35

    if-ge v0, v1, :cond_17b

    if-lez v45, :cond_17b

    .line 274
    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17b

    .line 275
    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Lcom/android/globalsearch/SuggestionData;

    .line 276
    .restart local v49       #suggestionData:Lcom/android/globalsearch/SuggestionData;
    move-object/from16 v0, p1

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    invoke-virtual/range {v49 .. v49}, Lcom/android/globalsearch/SuggestionData;->getSource()Landroid/content/ComponentName;

    move-result-object v3

    move-object/from16 v0, v48

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Integer;

    .line 279
    .restart local v28       #displayed:Ljava/lang/Integer;
    invoke-virtual/range {v49 .. v49}, Lcom/android/globalsearch/SuggestionData;->getSource()Landroid/content/ComponentName;

    move-result-object v3

    if-nez v28, :cond_266

    const/4 v4, 0x1

    :goto_256
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v48

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    add-int/lit8 v45, v45, -0x1

    .line 273
    add-int/lit8 v29, v29, 0x1

    goto :goto_227

    .line 279
    :cond_266
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_256

    .line 290
    .end local v28           #displayed:Ljava/lang/Integer;
    .end local v29           #i:I
    .end local v42           #reportedResult:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/globalsearch/SuggestionData;>;"
    .end local v49           #suggestionData:Lcom/android/globalsearch/SuggestionData;
    .restart local v33       #moreSources:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/globalsearch/SourceSuggestionBacker$SourceStat;>;"
    :cond_26d
    const/4 v3, 0x0

    move/from16 v44, v3

    goto/16 :goto_1ac

    .line 300
    .restart local v5       #promoted:Z
    .restart local v26       #beforeDeadline:Z
    .restart local v41       #reported:Z
    .restart local v44       #showingPinToBottom:Z
    .restart local v46       #source:Lcom/android/globalsearch/SuggestionSource;
    :cond_272
    const/16 v3, 0x4d

    move v8, v3

    goto :goto_1fc

    .line 307
    :cond_276
    if-eqz v26, :cond_2f2

    if-eqz v5, :cond_2f2

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/globalsearch/SourceSuggestionBacker;->mReportedResults:Ljava/util/LinkedHashMap;

    move-object v3, v0

    invoke-interface/range {v46 .. v46}, Lcom/android/globalsearch/SuggestionSource;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/globalsearch/SuggestionResult;

    .line 312
    .local v47, sourceResult:Lcom/android/globalsearch/SuggestionResult;
    invoke-interface/range {v46 .. v46}, Lcom/android/globalsearch/SuggestionSource;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    move-object/from16 v0, v48

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2ee

    invoke-interface/range {v46 .. v46}, Lcom/android/globalsearch/SuggestionSource;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    move-object/from16 v0, v48

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move/from16 v36, v3

    .line 315
    .local v36, numDisplayed:I
    :goto_2a9
    invoke-virtual/range {v47 .. v47}, Lcom/android/globalsearch/SuggestionResult;->getSuggestions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v36

    move v1, v3

    if-ge v0, v1, :cond_1b5

    .line 319
    invoke-virtual/range {v47 .. v47}, Lcom/android/globalsearch/SuggestionResult;->getCount()I

    move-result v3

    sub-int v15, v3, v36

    .line 320
    .local v15, numResultsRemaining:I
    invoke-virtual/range {v47 .. v47}, Lcom/android/globalsearch/SuggestionResult;->getQueryLimit()I

    move-result v3

    sub-int v16, v3, v36

    .line 321
    .local v16, queryLimit:I
    if-eqz v44, :cond_2d2

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Lcom/android/globalsearch/SourceSuggestionBacker;->isWebSuggestionSource(Lcom/android/globalsearch/SuggestionSource;)Z

    move-result v3

    if-eqz v3, :cond_2d2

    .line 322
    add-int/lit8 v15, v15, -0x1

    .line 323
    add-int/lit8 v16, v16, -0x1

    .line 326
    :cond_2d2
    new-instance v9, Lcom/android/globalsearch/SourceSuggestionBacker$SourceStat;

    invoke-interface/range {v46 .. v46}, Lcom/android/globalsearch/SuggestionSource;->getComponentName()Landroid/content/ComponentName;

    move-result-object v10

    invoke-interface/range {v46 .. v46}, Lcom/android/globalsearch/SuggestionSource;->getLabel()Ljava/lang/String;

    move-result-object v12

    invoke-interface/range {v46 .. v46}, Lcom/android/globalsearch/SuggestionSource;->getIcon()Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x4f

    move v11, v5

    invoke-direct/range {v9 .. v16}, Lcom/android/globalsearch/SourceSuggestionBacker$SourceStat;-><init>(Landroid/content/ComponentName;ZLjava/lang/String;Ljava/lang/String;III)V

    move-object/from16 v0, v33

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1b5

    .line 312
    .end local v15           #numResultsRemaining:I
    .end local v16           #queryLimit:I
    .end local v36           #numDisplayed:I
    :cond_2ee
    const/4 v3, 0x0

    move/from16 v36, v3

    goto :goto_2a9

    .line 338
    .end local v47           #sourceResult:Lcom/android/globalsearch/SuggestionResult;
    :cond_2f2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/globalsearch/SourceSuggestionBacker;->mReportedResults:Ljava/util/LinkedHashMap;

    move-object v3, v0

    invoke-interface/range {v46 .. v46}, Lcom/android/globalsearch/SuggestionSource;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/globalsearch/SuggestionResult;

    .line 340
    .restart local v47       #sourceResult:Lcom/android/globalsearch/SuggestionResult;
    new-instance v17, Lcom/android/globalsearch/SourceSuggestionBacker$SourceStat;

    invoke-interface/range {v46 .. v46}, Lcom/android/globalsearch/SuggestionSource;->getComponentName()Landroid/content/ComponentName;

    move-result-object v18

    const/16 v19, 0x0

    invoke-interface/range {v46 .. v46}, Lcom/android/globalsearch/SuggestionSource;->getLabel()Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v46 .. v46}, Lcom/android/globalsearch/SuggestionSource;->getIcon()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x4f

    invoke-virtual/range {v47 .. v47}, Lcom/android/globalsearch/SuggestionResult;->getCount()I

    move-result v23

    invoke-virtual/range {v47 .. v47}, Lcom/android/globalsearch/SuggestionResult;->getQueryLimit()I

    move-result v24

    invoke-direct/range {v17 .. v24}, Lcom/android/globalsearch/SourceSuggestionBacker$SourceStat;-><init>(Landroid/content/ComponentName;ZLjava/lang/String;Ljava/lang/String;III)V

    move-object/from16 v0, v33

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1b5

    .line 353
    .end local v5           #promoted:Z
    .end local v26           #beforeDeadline:Z
    .end local v41           #reported:Z
    .end local v46           #source:Lcom/android/globalsearch/SuggestionSource;
    .end local v47           #sourceResult:Lcom/android/globalsearch/SuggestionResult;
    :cond_327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/globalsearch/SourceSuggestionBacker;->mSearchTheWebSuggestion:Lcom/android/globalsearch/SuggestionData;

    move-object v3, v0

    if-eqz v3, :cond_339

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/globalsearch/SourceSuggestionBacker;->mSearchTheWebSuggestion:Lcom/android/globalsearch/SuggestionData;

    move-object v3, v0

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    :cond_339
    if-eqz v44, :cond_346

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/globalsearch/SourceSuggestionBacker;->mPinToBottomSuggestion:Lcom/android/globalsearch/SuggestionData;

    move-object v3, v0

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    :cond_346
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v31

    .line 368
    .local v31, indexOfMore:I
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/globalsearch/SourceSuggestionBacker;->anyCorpusSourceVisible(Ljava/util/ArrayList;)Z

    move-result v3

    if-eqz v3, :cond_3b0

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/globalsearch/SourceSuggestionBacker;->mMoreFactory:Lcom/android/globalsearch/SourceSuggestionBacker$MoreExpanderFactory;

    move-object v3, v0

    move-object v0, v3

    move/from16 v1, p2

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Lcom/android/globalsearch/SourceSuggestionBacker$MoreExpanderFactory;->getMoreEntry(ZLjava/util/List;)Lcom/android/globalsearch/SuggestionData;

    move-result-object v3

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    if-eqz p2, :cond_3b0

    .line 373
    const/16 v29, 0x0

    .restart local v29       #i:I
    :goto_36c
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v29

    move v1, v3

    if-ge v0, v1, :cond_3b0

    .line 374
    move-object/from16 v0, v33

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/globalsearch/SourceSuggestionBacker$SourceStat;

    .line 375
    .local v32, moreSource:Lcom/android/globalsearch/SourceSuggestionBacker$SourceStat;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/globalsearch/SourceSuggestionBacker;->shouldCorpusEntryBeVisible(Lcom/android/globalsearch/SourceSuggestionBacker$SourceStat;)Z

    move-result v3

    if-eqz v3, :cond_3ad

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/globalsearch/SourceSuggestionBacker;->mCorpusFactory:Lcom/android/globalsearch/SourceSuggestionBacker$CorpusResultFactory;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/globalsearch/SourceSuggestionBacker;->mQuery:Ljava/lang/String;

    move-object v4, v0

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lcom/android/globalsearch/SourceSuggestionBacker$CorpusResultFactory;->getCorpusEntry(Ljava/lang/String;Lcom/android/globalsearch/SourceSuggestionBacker$SourceStat;)Lcom/android/globalsearch/SuggestionData;

    move-result-object v3

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/globalsearch/SourceSuggestionBacker;->mViewedNonPromoted:Ljava/util/HashSet;

    move-object v3, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/globalsearch/SourceSuggestionBacker$SourceStat;->getName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 373
    :cond_3ad
    add-int/lit8 v29, v29, 0x1

    goto :goto_36c

    .end local v29           #i:I
    .end local v32           #moreSource:Lcom/android/globalsearch/SourceSuggestionBacker$SourceStat;
    :cond_3b0
    move/from16 v3, v31

    .line 385
    .end local v31           #indexOfMore:I
    .end local v33           #moreSources:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/globalsearch/SourceSuggestionBacker$SourceStat;>;"
    .end local v35           #newChunk:I
    .end local v40           #pruner:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Iterator<Lcom/android/globalsearch/SuggestionData;>;>;"
    .end local v44           #showingPinToBottom:Z
    .end local v45           #slotsRemaining:I
    :goto_3b2
    return v3

    :cond_3b3
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    goto :goto_3b2
.end method


# virtual methods
.method protected declared-synchronized addSourceResults(Lcom/android/globalsearch/SuggestionResult;)Z
    .registers 13
    .parameter "suggestionResult"

    .prologue
    const/4 v10, 0x1

    .line 450
    monitor-enter p0

    :try_start_2
    invoke-virtual {p1}, Lcom/android/globalsearch/SuggestionResult;->getSource()Lcom/android/globalsearch/SuggestionSource;

    move-result-object v6

    .line 456
    .local v6, source:Lcom/android/globalsearch/SuggestionSource;
    invoke-virtual {p1}, Lcom/android/globalsearch/SuggestionResult;->getSuggestions()Ljava/util/List;

    move-result-object v7

    .line 457
    .local v7, suggestions:Ljava/util/List;,"Ljava/util/List<Lcom/android/globalsearch/SuggestionData;>;"
    invoke-direct {p0, v6}, Lcom/android/globalsearch/SourceSuggestionBacker;->isWebSuggestionSource(Lcom/android/globalsearch/SuggestionSource;)Z

    move-result v8

    if-eqz v8, :cond_2d

    .line 458
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2d

    .line 459
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    sub-int v2, v8, v10

    .line 460
    .local v2, lastPosition:I
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/globalsearch/SuggestionData;

    .line 461
    .local v3, lastSuggestion:Lcom/android/globalsearch/SuggestionData;
    invoke-virtual {v3}, Lcom/android/globalsearch/SuggestionData;->isPinToBottom()Z

    move-result v8

    if-eqz v8, :cond_2d

    .line 462
    iput-object v3, p0, Lcom/android/globalsearch/SourceSuggestionBacker;->mPinToBottomSuggestion:Lcom/android/globalsearch/SuggestionData;

    .line 463
    invoke-interface {v7, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 468
    .end local v2           #lastPosition:I
    .end local v3           #lastSuggestion:Lcom/android/globalsearch/SuggestionData;
    :cond_2d
    iget-object v8, p0, Lcom/android/globalsearch/SourceSuggestionBacker;->mPendingSources:Ljava/util/HashSet;

    invoke-interface {v6}, Lcom/android/globalsearch/SuggestionSource;->getComponentName()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 471
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 472
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/globalsearch/SuggestionData;>;"
    :goto_3a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5f

    .line 473
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/globalsearch/SuggestionData;

    .line 474
    .local v5, s:Lcom/android/globalsearch/SuggestionData;
    invoke-direct {p0, v5}, Lcom/android/globalsearch/SourceSuggestionBacker;->makeSuggestionKey(Lcom/android/globalsearch/SuggestionData;)Ljava/lang/String;

    move-result-object v1

    .line 475
    .local v1, key:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/globalsearch/SourceSuggestionBacker;->mSuggestionKeys:Ljava/util/HashSet;

    invoke-virtual {v8, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_59

    .line 476
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_55
    .catchall {:try_start_2 .. :try_end_55} :catchall_56

    goto :goto_3a

    .line 450
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/globalsearch/SuggestionData;>;"
    .end local v1           #key:Ljava/lang/String;
    .end local v5           #s:Lcom/android/globalsearch/SuggestionData;
    .end local v6           #source:Lcom/android/globalsearch/SuggestionSource;
    .end local v7           #suggestions:Ljava/util/List;,"Ljava/util/List<Lcom/android/globalsearch/SuggestionData;>;"
    :catchall_56
    move-exception v8

    monitor-exit p0

    throw v8

    .line 478
    .restart local v0       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/globalsearch/SuggestionData;>;"
    .restart local v1       #key:Ljava/lang/String;
    .restart local v5       #s:Lcom/android/globalsearch/SuggestionData;
    .restart local v6       #source:Lcom/android/globalsearch/SuggestionSource;
    .restart local v7       #suggestions:Ljava/util/List;,"Ljava/util/List<Lcom/android/globalsearch/SuggestionData;>;"
    :cond_59
    :try_start_59
    iget-object v8, p0, Lcom/android/globalsearch/SourceSuggestionBacker;->mSuggestionKeys:Ljava/util/HashSet;

    invoke-virtual {v8, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3a

    .line 482
    .end local v1           #key:Ljava/lang/String;
    .end local v5           #s:Lcom/android/globalsearch/SuggestionData;
    :cond_5f
    iget-object v8, p0, Lcom/android/globalsearch/SourceSuggestionBacker;->mReportedResults:Ljava/util/LinkedHashMap;

    invoke-interface {v6}, Lcom/android/globalsearch/SuggestionSource;->getComponentName()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v8, v9, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    invoke-direct {p0}, Lcom/android/globalsearch/SourceSuggestionBacker;->isPastDeadline()Z

    move-result v4

    .line 484
    .local v4, pastDeadline:Z
    if-nez v4, :cond_77

    .line 485
    iget-object v8, p0, Lcom/android/globalsearch/SourceSuggestionBacker;->mReportedBeforeDeadline:Ljava/util/HashSet;

    invoke-interface {v6}, Lcom/android/globalsearch/SuggestionSource;->getComponentName()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 487
    :cond_77
    if-nez v4, :cond_83

    invoke-virtual {p1}, Lcom/android/globalsearch/SuggestionResult;->getSuggestions()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z
    :try_end_80
    .catchall {:try_start_59 .. :try_end_80} :catchall_56

    move-result v8

    if-nez v8, :cond_86

    :cond_83
    move v8, v10

    :goto_84
    monitor-exit p0

    return v8

    :cond_86
    const/4 v8, 0x0

    goto :goto_84
.end method

.method public getMoreResultPosition()I
    .registers 2

    .prologue
    .line 535
    iget v0, p0, Lcom/android/globalsearch/SourceSuggestionBacker;->mIndexOfMore:I

    return v0
.end method

.method public hasSourceStarted(Landroid/content/ComponentName;)Z
    .registers 3
    .parameter "source"

    .prologue
    .line 445
    iget-object v0, p0, Lcom/android/globalsearch/SourceSuggestionBacker;->mReportedResults:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized isResultsPending()Z
    .registers 3

    .prologue
    .line 525
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/globalsearch/SourceSuggestionBacker;->mReportedResults:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/globalsearch/SourceSuggestionBacker;->mPromotedSources:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_14

    move-result v1

    if-ge v0, v1, :cond_12

    const/4 v0, 0x1

    :goto_10
    monitor-exit p0

    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_10

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isShowingMore()Z
    .registers 2

    .prologue
    .line 530
    iget-boolean v0, p0, Lcom/android/globalsearch/SourceSuggestionBacker;->mShowingMore:Z

    return v0
.end method

.method protected declared-synchronized refreshShortcut(Landroid/content/ComponentName;Ljava/lang/String;Lcom/android/globalsearch/SuggestionData;)Z
    .registers 11
    .parameter "source"
    .parameter "shortcutId"
    .parameter "refreshed"

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 501
    monitor-enter p0

    :try_start_3
    iget-object v3, p0, Lcom/android/globalsearch/SourceSuggestionBacker;->mShortcuts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 502
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    if-ge v0, v2, :cond_47

    .line 503
    iget-object v3, p0, Lcom/android/globalsearch/SourceSuggestionBacker;->mShortcuts:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/globalsearch/SuggestionData;

    .line 504
    .local v1, shortcut:Lcom/android/globalsearch/SuggestionData;
    invoke-virtual {v1}, Lcom/android/globalsearch/SuggestionData;->getShortcutId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 505
    if-nez p3, :cond_3d

    .line 508
    invoke-virtual {v1}, Lcom/android/globalsearch/SuggestionData;->isSpinnerWhileRefreshing()Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 509
    iget-object v3, p0, Lcom/android/globalsearch/SourceSuggestionBacker;->mShortcuts:Ljava/util/List;

    invoke-virtual {v1}, Lcom/android/globalsearch/SuggestionData;->buildUpon()Lcom/android/globalsearch/SuggestionData$Builder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/globalsearch/SuggestionData$Builder;->icon2(Ljava/lang/String;)Lcom/android/globalsearch/SuggestionData$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/globalsearch/SuggestionData$Builder;->build()Lcom/android/globalsearch/SuggestionData;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_49

    move v3, v6

    .line 520
    .end local v1           #shortcut:Lcom/android/globalsearch/SuggestionData;
    :goto_39
    monitor-exit p0

    return v3

    .restart local v1       #shortcut:Lcom/android/globalsearch/SuggestionData;
    :cond_3b
    move v3, v4

    .line 512
    goto :goto_39

    .line 515
    :cond_3d
    :try_start_3d
    iget-object v3, p0, Lcom/android/globalsearch/SourceSuggestionBacker;->mShortcuts:Ljava/util/List;

    invoke-interface {v3, v0, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_42
    .catchall {:try_start_3d .. :try_end_42} :catchall_49

    move v3, v6

    .line 517
    goto :goto_39

    .line 502
    :cond_44
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .end local v1           #shortcut:Lcom/android/globalsearch/SuggestionData;
    :cond_47
    move v3, v4

    .line 520
    goto :goto_39

    .line 501
    .end local v0           #i:I
    .end local v2           #size:I
    :catchall_49
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized reportPromotedQueryStartTime()V
    .registers 3

    .prologue
    .line 179
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/globalsearch/SourceSuggestionBacker;->getNow()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/globalsearch/SourceSuggestionBacker;->mPromotedQueryStartTime:J
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 180
    monitor-exit p0

    return-void

    .line 179
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reportSourceStarted(Landroid/content/ComponentName;)Z
    .registers 3
    .parameter "source"

    .prologue
    .line 435
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/globalsearch/SourceSuggestionBacker;->mPendingSources:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 440
    iget-object v0, p0, Lcom/android/globalsearch/SourceSuggestionBacker;->mPromotedSources:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_13

    move-result v0

    if-nez v0, :cond_11

    const/4 v0, 0x1

    :goto_f
    monitor-exit p0

    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_f

    .line 435
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized snapshotSuggestions(Ljava/util/ArrayList;Z)V
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
    .line 194
    .local p1, dest:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/globalsearch/SuggestionData;>;"
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/globalsearch/SourceSuggestionBacker;->snapshotSuggestionsInternal(Ljava/util/ArrayList;Z)I

    move-result v0

    iput v0, p0, Lcom/android/globalsearch/SourceSuggestionBacker;->mIndexOfMore:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 195
    monitor-exit p0

    return-void

    .line 194
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method
