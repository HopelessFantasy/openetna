.class Lcom/android/globalsearch/TestSuggestionSource;
.super Lcom/android/globalsearch/AbstractSuggestionSource;
.source "TestSuggestionSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/globalsearch/TestSuggestionSource$1;,
        Lcom/android/globalsearch/TestSuggestionSource$Builder;
    }
.end annotation


# instance fields
.field private final mCannedResponses:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/globalsearch/SuggestionData;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mComponent:Landroid/content/ComponentName;

.field private final mDelay:J

.field private final mErrorQueries:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLabel:Ljava/lang/String;

.field private final mQueryAfterZeroResults:Z


# direct methods
.method private constructor <init>(Landroid/content/ComponentName;JLjava/util/Map;Ljava/util/HashSet;ZLjava/lang/String;)V
    .registers 8
    .parameter "component"
    .parameter "delay"
    .parameter
    .parameter
    .parameter "queryAfterZeroResults"
    .parameter "label"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/globalsearch/SuggestionData;",
            ">;>;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 43
    .local p4, cannedResponses:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/globalsearch/SuggestionData;>;>;"
    .local p5, errorQueries:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/globalsearch/AbstractSuggestionSource;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/globalsearch/TestSuggestionSource;->mComponent:Landroid/content/ComponentName;

    .line 45
    iput-wide p2, p0, Lcom/android/globalsearch/TestSuggestionSource;->mDelay:J

    .line 46
    iput-object p4, p0, Lcom/android/globalsearch/TestSuggestionSource;->mCannedResponses:Ljava/util/Map;

    .line 47
    iput-object p5, p0, Lcom/android/globalsearch/TestSuggestionSource;->mErrorQueries:Ljava/util/HashSet;

    .line 48
    iput-boolean p6, p0, Lcom/android/globalsearch/TestSuggestionSource;->mQueryAfterZeroResults:Z

    .line 49
    iput-object p7, p0, Lcom/android/globalsearch/TestSuggestionSource;->mLabel:Ljava/lang/String;

    .line 50
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/ComponentName;JLjava/util/Map;Ljava/util/HashSet;ZLjava/lang/String;Lcom/android/globalsearch/TestSuggestionSource$1;)V
    .registers 9
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 30
    invoke-direct/range {p0 .. p7}, Lcom/android/globalsearch/TestSuggestionSource;-><init>(Landroid/content/ComponentName;JLjava/util/Map;Ljava/util/HashSet;ZLjava/lang/String;)V

    return-void
.end method

.method public static makeCanned(Ljava/lang/String;Ljava/lang/String;J)Lcom/android/globalsearch/SuggestionSource;
    .registers 9
    .parameter "query"
    .parameter "s"
    .parameter "delay"

    .prologue
    .line 145
    new-instance v0, Landroid/content/ComponentName;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "com.test."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Class$"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .local v0, name:Landroid/content/ComponentName;
    new-instance v2, Lcom/android/globalsearch/SuggestionData$Builder;

    invoke-direct {v2, v0}, Lcom/android/globalsearch/SuggestionData$Builder;-><init>(Landroid/content/ComponentName;)V

    invoke-virtual {v2, p1}, Lcom/android/globalsearch/SuggestionData$Builder;->title(Ljava/lang/String;)Lcom/android/globalsearch/SuggestionData$Builder;

    move-result-object v2

    const-string v3, "view"

    invoke-virtual {v2, v3}, Lcom/android/globalsearch/SuggestionData$Builder;->intentAction(Ljava/lang/String;)Lcom/android/globalsearch/SuggestionData$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/globalsearch/SuggestionData$Builder;->intentData(Ljava/lang/String;)Lcom/android/globalsearch/SuggestionData$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/globalsearch/SuggestionData$Builder;->build()Lcom/android/globalsearch/SuggestionData;

    move-result-object v1

    .line 153
    .local v1, suggestion:Lcom/android/globalsearch/SuggestionData;
    new-instance v2, Lcom/android/globalsearch/TestSuggestionSource$Builder;

    invoke-direct {v2}, Lcom/android/globalsearch/TestSuggestionSource$Builder;-><init>()V

    invoke-virtual {v2, v0}, Lcom/android/globalsearch/TestSuggestionSource$Builder;->setComponent(Landroid/content/ComponentName;)Lcom/android/globalsearch/TestSuggestionSource$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/globalsearch/TestSuggestionSource$Builder;->setLabel(Ljava/lang/String;)Lcom/android/globalsearch/TestSuggestionSource$Builder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Lcom/android/globalsearch/TestSuggestionSource$Builder;->setDelay(J)Lcom/android/globalsearch/TestSuggestionSource$Builder;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/android/globalsearch/SuggestionData;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, p0, v3}, Lcom/android/globalsearch/TestSuggestionSource$Builder;->addCannedResponse(Ljava/lang/String;[Lcom/android/globalsearch/SuggestionData;)Lcom/android/globalsearch/TestSuggestionSource$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/globalsearch/TestSuggestionSource$Builder;->create()Lcom/android/globalsearch/TestSuggestionSource;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .parameter "o"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 114
    if-ne p0, p1, :cond_6

    move v2, v7

    .line 128
    :goto_5
    return v2

    .line 115
    :cond_6
    if-eqz p1, :cond_12

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_14

    :cond_12
    move v2, v6

    goto :goto_5

    .line 117
    :cond_14
    move-object v0, p1

    check-cast v0, Lcom/android/globalsearch/TestSuggestionSource;

    move-object v1, v0

    .line 119
    .local v1, that:Lcom/android/globalsearch/TestSuggestionSource;
    iget-wide v2, p0, Lcom/android/globalsearch/TestSuggestionSource;->mDelay:J

    iget-wide v4, v1, Lcom/android/globalsearch/TestSuggestionSource;->mDelay:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_22

    move v2, v6

    goto :goto_5

    .line 120
    :cond_22
    iget-boolean v2, p0, Lcom/android/globalsearch/TestSuggestionSource;->mQueryAfterZeroResults:Z

    iget-boolean v3, v1, Lcom/android/globalsearch/TestSuggestionSource;->mQueryAfterZeroResults:Z

    if-eq v2, v3, :cond_2a

    move v2, v6

    goto :goto_5

    .line 121
    :cond_2a
    iget-object v2, p0, Lcom/android/globalsearch/TestSuggestionSource;->mCannedResponses:Ljava/util/Map;

    if-eqz v2, :cond_3a

    iget-object v2, p0, Lcom/android/globalsearch/TestSuggestionSource;->mCannedResponses:Ljava/util/Map;

    iget-object v3, v1, Lcom/android/globalsearch/TestSuggestionSource;->mCannedResponses:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3e

    :cond_38
    move v2, v6

    .line 124
    goto :goto_5

    .line 121
    :cond_3a
    iget-object v2, v1, Lcom/android/globalsearch/TestSuggestionSource;->mCannedResponses:Ljava/util/Map;

    if-nez v2, :cond_38

    .line 125
    :cond_3e
    iget-object v2, p0, Lcom/android/globalsearch/TestSuggestionSource;->mComponent:Landroid/content/ComponentName;

    iget-object v3, v1, Lcom/android/globalsearch/TestSuggestionSource;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4a

    move v2, v6

    goto :goto_5

    .line 126
    :cond_4a
    iget-object v2, p0, Lcom/android/globalsearch/TestSuggestionSource;->mLabel:Ljava/lang/String;

    if-eqz v2, :cond_5a

    iget-object v2, p0, Lcom/android/globalsearch/TestSuggestionSource;->mLabel:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/globalsearch/TestSuggestionSource;->mLabel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5e

    :cond_58
    move v2, v6

    goto :goto_5

    :cond_5a
    iget-object v2, v1, Lcom/android/globalsearch/TestSuggestionSource;->mLabel:Ljava/lang/String;

    if-nez v2, :cond_58

    :cond_5e
    move v2, v7

    .line 128
    goto :goto_5
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/globalsearch/TestSuggestionSource;->mComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .registers 2

    .prologue
    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/globalsearch/TestSuggestionSource;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getSettingsDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 66
    const-string v0, "settings description"

    return-object v0
.end method

.method protected getSuggestions(Ljava/lang/String;II)Lcom/android/globalsearch/SuggestionResult;
    .registers 10
    .parameter "query"
    .parameter "maxResults"
    .parameter "queryLimit"

    .prologue
    .line 71
    iget-wide v2, p0, Lcom/android/globalsearch/TestSuggestionSource;->mDelay:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_d

    .line 73
    :try_start_8
    iget-wide v2, p0, Lcom/android/globalsearch/TestSuggestionSource;->mDelay:J

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_d} :catch_1a

    .line 80
    :cond_d
    iget-object v2, p0, Lcom/android/globalsearch/TestSuggestionSource;->mErrorQueries:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 81
    invoke-static {p0}, Lcom/android/globalsearch/SuggestionResult;->createErrorResult(Lcom/android/globalsearch/SuggestionSource;)Lcom/android/globalsearch/SuggestionResult;

    move-result-object v2

    .line 85
    :goto_19
    return-object v2

    .line 74
    :catch_1a
    move-exception v2

    move-object v0, v2

    .line 75
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 76
    iget-object v2, p0, Lcom/android/globalsearch/TestSuggestionSource;->mEmptyResult:Lcom/android/globalsearch/SuggestionResult;

    goto :goto_19

    .line 84
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_26
    iget-object v2, p0, Lcom/android/globalsearch/TestSuggestionSource;->mCannedResponses:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 85
    .local v1, result:Ljava/util/List;,"Ljava/util/List<Lcom/android/globalsearch/SuggestionData;>;"
    if-eqz v1, :cond_36

    new-instance v2, Lcom/android/globalsearch/SuggestionResult;

    invoke-direct {v2, p0, v1}, Lcom/android/globalsearch/SuggestionResult;-><init>(Lcom/android/globalsearch/SuggestionSource;Ljava/util/List;)V

    goto :goto_19

    :cond_36
    iget-object v2, p0, Lcom/android/globalsearch/TestSuggestionSource;->mEmptyResult:Lcom/android/globalsearch/SuggestionResult;

    goto :goto_19
.end method

.method public hashCode()I
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 133
    iget-object v1, p0, Lcom/android/globalsearch/TestSuggestionSource;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->hashCode()I

    move-result v0

    .line 134
    .local v0, result:I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/android/globalsearch/TestSuggestionSource;->mDelay:J

    iget-wide v4, p0, Lcom/android/globalsearch/TestSuggestionSource;->mDelay:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 135
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/globalsearch/TestSuggestionSource;->mCannedResponses:Ljava/util/Map;

    if-eqz v2, :cond_3a

    iget-object v2, p0, Lcom/android/globalsearch/TestSuggestionSource;->mCannedResponses:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_20
    add-int v0, v1, v2

    .line 136
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/android/globalsearch/TestSuggestionSource;->mQueryAfterZeroResults:Z

    if-eqz v2, :cond_3c

    const/4 v2, 0x1

    :goto_29
    add-int v0, v1, v2

    .line 137
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/globalsearch/TestSuggestionSource;->mLabel:Ljava/lang/String;

    if-eqz v2, :cond_3e

    iget-object v2, p0, Lcom/android/globalsearch/TestSuggestionSource;->mLabel:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_37
    add-int v0, v1, v2

    .line 138
    return v0

    :cond_3a
    move v2, v7

    .line 135
    goto :goto_20

    :cond_3c
    move v2, v7

    .line 136
    goto :goto_29

    :cond_3e
    move v2, v7

    .line 137
    goto :goto_37
.end method

.method public queryAfterZeroResults()Z
    .registers 2

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/android/globalsearch/TestSuggestionSource;->mQueryAfterZeroResults:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/globalsearch/TestSuggestionSource;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected validateShortcut(Lcom/android/globalsearch/SuggestionData;)Lcom/android/globalsearch/SuggestionData;
    .registers 8
    .parameter "shortcut"

    .prologue
    .line 92
    invoke-virtual {p1}, Lcom/android/globalsearch/SuggestionData;->getShortcutId()Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, shortcutId:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/globalsearch/TestSuggestionSource;->mCannedResponses:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 94
    .local v4, suggestionDatas:Ljava/util/List;,"Ljava/util/List<Lcom/android/globalsearch/SuggestionData;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/globalsearch/SuggestionData;

    .line 95
    .local v3, suggestionData:Lcom/android/globalsearch/SuggestionData;
    invoke-virtual {v3}, Lcom/android/globalsearch/SuggestionData;->getShortcutId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    move-object v5, v3

    .line 100
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #suggestionData:Lcom/android/globalsearch/SuggestionData;
    .end local v4           #suggestionDatas:Ljava/util/List;,"Ljava/util/List<Lcom/android/globalsearch/SuggestionData;>;"
    :goto_35
    return-object v5

    :cond_36
    const/4 v5, 0x0

    goto :goto_35
.end method
