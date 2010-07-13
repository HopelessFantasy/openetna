.class public abstract Lcom/android/globalsearch/AbstractSuggestionSource;
.super Ljava/lang/Object;
.source "AbstractSuggestionSource.java"

# interfaces
.implements Lcom/android/globalsearch/SuggestionSource;


# static fields
.field private static final STRIP_URL_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field protected final mEmptyResult:Lcom/android/globalsearch/SuggestionResult;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    const-string v0, "^(https?://)(.*?)(/$)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/globalsearch/AbstractSuggestionSource;->STRIP_URL_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/android/globalsearch/SuggestionResult;

    invoke-direct {v0, p0}, Lcom/android/globalsearch/SuggestionResult;-><init>(Lcom/android/globalsearch/SuggestionSource;)V

    iput-object v0, p0, Lcom/android/globalsearch/AbstractSuggestionSource;->mEmptyResult:Lcom/android/globalsearch/SuggestionResult;

    .line 39
    return-void
.end method

.method public static stripUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "url"

    .prologue
    .line 120
    if-nez p0, :cond_4

    const/4 v1, 0x0

    .line 125
    :goto_3
    return-object v1

    .line 121
    :cond_4
    sget-object v1, Lcom/android/globalsearch/AbstractSuggestionSource;->STRIP_URL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 122
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1d

    .line 123
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_1d
    move-object v1, p0

    .line 125
    goto :goto_3
.end method


# virtual methods
.method public getQueryThreshold()I
    .registers 2

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public getShortcutValidationTask(Lcom/android/globalsearch/SuggestionData;)Ljava/util/concurrent/Callable;
    .registers 5
    .parameter "shortcut"
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

    .prologue
    .line 82
    if-nez p1, :cond_a

    .line 83
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "shortcut must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 85
    :cond_a
    invoke-virtual {p1}, Lcom/android/globalsearch/SuggestionData;->getShortcutId()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, shortcutId:Ljava/lang/String;
    if-nez v0, :cond_18

    .line 87
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "shortcut id must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 89
    :cond_18
    const-string v1, "_-1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 90
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "makes no sense to validate a shortcut that is never valid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 93
    :cond_28
    new-instance v1, Lcom/android/globalsearch/AbstractSuggestionSource$2;

    invoke-direct {v1, p0, p1}, Lcom/android/globalsearch/AbstractSuggestionSource$2;-><init>(Lcom/android/globalsearch/AbstractSuggestionSource;Lcom/android/globalsearch/SuggestionData;)V

    return-object v1
.end method

.method public getSuggestionTask(Ljava/lang/String;II)Ljava/util/concurrent/Callable;
    .registers 5
    .parameter "query"
    .parameter "maxResults"
    .parameter "queryLimit"
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

    .prologue
    .line 66
    new-instance v0, Lcom/android/globalsearch/AbstractSuggestionSource$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/globalsearch/AbstractSuggestionSource$1;-><init>(Lcom/android/globalsearch/AbstractSuggestionSource;Ljava/lang/String;II)V

    return-object v0
.end method

.method protected abstract getSuggestions(Ljava/lang/String;II)Lcom/android/globalsearch/SuggestionResult;
.end method

.method protected abstract validateShortcut(Lcom/android/globalsearch/SuggestionData;)Lcom/android/globalsearch/SuggestionData;
.end method
