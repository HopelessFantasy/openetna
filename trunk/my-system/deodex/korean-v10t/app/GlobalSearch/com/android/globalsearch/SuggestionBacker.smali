.class public abstract Lcom/android/globalsearch/SuggestionBacker;
.super Ljava/lang/Object;
.source "SuggestionBacker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/globalsearch/SuggestionBacker$Listener;
    }
.end annotation


# instance fields
.field private volatile mListener:Lcom/android/globalsearch/SuggestionBacker$Listener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method


# virtual methods
.method protected abstract addSourceResults(Lcom/android/globalsearch/SuggestionResult;)Z
.end method

.method public abstract getMoreResultPosition()I
.end method

.method protected getNow()J
    .registers 3

    .prologue
    .line 166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract hasSourceStarted(Landroid/content/ComponentName;)Z
.end method

.method public abstract isResultsPending()Z
.end method

.method public abstract isShowingMore()Z
.end method

.method public final notifyListener()V
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/globalsearch/SuggestionBacker;->mListener:Lcom/android/globalsearch/SuggestionBacker$Listener;

    .line 159
    .local v0, listener:Lcom/android/globalsearch/SuggestionBacker$Listener;
    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/android/globalsearch/SuggestionBacker$Listener;->onNewResults()V

    .line 160
    :cond_7
    return-void
.end method

.method public onNewSuggestionResult(Lcom/android/globalsearch/SuggestionResult;)V
    .registers 3
    .parameter "suggestionResult"

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Lcom/android/globalsearch/SuggestionBacker;->addSourceResults(Lcom/android/globalsearch/SuggestionResult;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 78
    invoke-virtual {p0}, Lcom/android/globalsearch/SuggestionBacker;->notifyListener()V

    .line 80
    :cond_9
    return-void
.end method

.method public onRefreshShortcut(Landroid/content/ComponentName;Ljava/lang/String;Lcom/android/globalsearch/SuggestionData;)V
    .registers 5
    .parameter "source"
    .parameter "shortcutId"
    .parameter "suggestionData"

    .prologue
    .line 92
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/globalsearch/SuggestionBacker;->refreshShortcut(Landroid/content/ComponentName;Ljava/lang/String;Lcom/android/globalsearch/SuggestionData;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 93
    invoke-virtual {p0}, Lcom/android/globalsearch/SuggestionBacker;->notifyListener()V

    .line 95
    :cond_9
    return-void
.end method

.method public onSourceQueryStart(Landroid/content/ComponentName;)V
    .registers 3
    .parameter "source"

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/android/globalsearch/SuggestionBacker;->reportSourceStarted(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 67
    invoke-virtual {p0}, Lcom/android/globalsearch/SuggestionBacker;->notifyListener()V

    .line 69
    :cond_9
    return-void
.end method

.method protected abstract refreshShortcut(Landroid/content/ComponentName;Ljava/lang/String;Lcom/android/globalsearch/SuggestionData;)Z
.end method

.method protected abstract reportSourceStarted(Landroid/content/ComponentName;)Z
.end method

.method public setListener(Lcom/android/globalsearch/SuggestionBacker$Listener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/globalsearch/SuggestionBacker;->mListener:Lcom/android/globalsearch/SuggestionBacker$Listener;

    .line 41
    return-void
.end method

.method public abstract snapshotSuggestions(Ljava/util/ArrayList;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/globalsearch/SuggestionData;",
            ">;Z)V"
        }
    .end annotation
.end method
