.class public interface abstract Lcom/android/globalsearch/SuggestionSource;
.super Ljava/lang/Object;
.source "SuggestionSource.java"


# virtual methods
.method public abstract getComponentName()Landroid/content/ComponentName;
.end method

.method public abstract getIcon()Ljava/lang/String;
.end method

.method public abstract getLabel()Ljava/lang/String;
.end method

.method public abstract getQueryThreshold()I
.end method

.method public abstract getSettingsDescription()Ljava/lang/String;
.end method

.method public abstract getShortcutValidationTask(Lcom/android/globalsearch/SuggestionData;)Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/globalsearch/SuggestionData;",
            ")",
            "Ljava/util/concurrent/Callable",
            "<",
            "Lcom/android/globalsearch/SuggestionData;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSuggestionTask(Ljava/lang/String;II)Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/concurrent/Callable",
            "<",
            "Lcom/android/globalsearch/SuggestionResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryAfterZeroResults()Z
.end method
