.class public interface abstract Lcom/android/globalsearch/ShortcutRepository;
.super Ljava/lang/Object;
.source "ShortcutRepository.java"


# static fields
.field public static final DAY_MILLIS:J = 0x5265c00L

.field public static final MAX_SHORTCUTS_RETURNED:I = 0xc

.field public static final MAX_SOURCE_EVENT_AGE_MILLIS:J = 0x9a7ec800L

.field public static final MAX_STAT_AGE_MILLIS:J = 0x240c8400L

.field public static final MIN_CLICKS_FOR_SOURCE_RANKING:I = 0x3

.field public static final MIN_IMPRESSIONS_FOR_SOURCE_RANKING:I = 0x5


# virtual methods
.method public abstract clearHistory()V
.end method

.method public abstract close()V
.end method

.method public abstract deleteRepository()V
.end method

.method public abstract getShortcutsForQuery(Ljava/lang/String;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/globalsearch/SuggestionData;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSourceRanking()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasHistory()Z
.end method

.method public abstract refreshShortcut(Landroid/content/ComponentName;Ljava/lang/String;Lcom/android/globalsearch/SuggestionData;)V
.end method

.method public abstract reportStats(Lcom/android/globalsearch/SessionStats;)V
.end method
