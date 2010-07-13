.class public interface abstract Lcom/android/globalsearch/SuggestionFactory;
.super Ljava/lang/Object;
.source "SuggestionFactory.java"

# interfaces
.implements Lcom/android/globalsearch/SourceSuggestionBacker$MoreExpanderFactory;
.implements Lcom/android/globalsearch/SourceSuggestionBacker$CorpusResultFactory;


# virtual methods
.method public abstract createGoToWebsiteSuggestion(Ljava/lang/String;)Lcom/android/globalsearch/SuggestionData;
.end method

.method public abstract createSearchTheWebSuggestion(Ljava/lang/String;)Lcom/android/globalsearch/SuggestionData;
.end method
