.class Lcom/android/globalsearch/SuggestionSession$QueryCacheResults;
.super Ljava/lang/Object;
.source "SuggestionSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/globalsearch/SuggestionSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "QueryCacheResults"
.end annotation


# instance fields
.field private final mSourceResults:Ljava/util/LinkedHashMap;
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


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 663
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 665
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/globalsearch/SuggestionSession$QueryCacheResults;->mSourceResults:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method public addResult(Lcom/android/globalsearch/SuggestionResult;)V
    .registers 4
    .parameter "result"

    .prologue
    .line 669
    iget-object v0, p0, Lcom/android/globalsearch/SuggestionSession$QueryCacheResults;->mSourceResults:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lcom/android/globalsearch/SuggestionResult;->getSource()Lcom/android/globalsearch/SuggestionSource;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/globalsearch/SuggestionSource;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    return-void
.end method

.method public getResult(Landroid/content/ComponentName;)Lcom/android/globalsearch/SuggestionResult;
    .registers 3
    .parameter "source"

    .prologue
    .line 677
    iget-object v0, p0, Lcom/android/globalsearch/SuggestionSession$QueryCacheResults;->mSourceResults:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/globalsearch/SuggestionResult;

    return-object p0
.end method

.method public getResults()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/globalsearch/SuggestionResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 673
    iget-object v0, p0, Lcom/android/globalsearch/SuggestionSession$QueryCacheResults;->mSourceResults:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
