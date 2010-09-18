.class public abstract Lcom/android/globalsearch/SuggestionFilter;
.super Ljava/lang/Object;
.source "SuggestionFilter.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Lcom/android/globalsearch/SuggestionResult;)Lcom/android/globalsearch/SuggestionResult;
    .registers 10
    .parameter "result"

    .prologue
    .line 44
    invoke-virtual {p1}, Lcom/android/globalsearch/SuggestionResult;->getSuggestions()Ljava/util/List;

    move-result-object v2

    .line 47
    .local v2, old:Ljava/util/List;,"Ljava/util/List<Lcom/android/globalsearch/SuggestionData;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 48
    .local v0, filtered:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/globalsearch/SuggestionData;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/globalsearch/SuggestionData;

    .line 49
    .local v3, suggestion:Lcom/android/globalsearch/SuggestionData;
    invoke-virtual {p0, v3}, Lcom/android/globalsearch/SuggestionFilter;->shouldKeepSuggestion(Lcom/android/globalsearch/SuggestionData;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 50
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 53
    .end local v3           #suggestion:Lcom/android/globalsearch/SuggestionData;
    :cond_27
    new-instance v4, Lcom/android/globalsearch/SuggestionResult;

    invoke-virtual {p1}, Lcom/android/globalsearch/SuggestionResult;->getSource()Lcom/android/globalsearch/SuggestionSource;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/globalsearch/SuggestionResult;->getCount()I

    move-result v6

    invoke-virtual {p1}, Lcom/android/globalsearch/SuggestionResult;->getQueryLimit()I

    move-result v7

    invoke-direct {v4, v5, v0, v6, v7}, Lcom/android/globalsearch/SuggestionResult;-><init>(Lcom/android/globalsearch/SuggestionSource;Ljava/util/List;II)V

    return-object v4
.end method

.method public abstract shouldKeepSuggestion(Lcom/android/globalsearch/SuggestionData;)Z
.end method
