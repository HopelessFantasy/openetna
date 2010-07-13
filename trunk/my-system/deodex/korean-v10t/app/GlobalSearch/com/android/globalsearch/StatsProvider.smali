.class public Lcom/android/globalsearch/StatsProvider;
.super Landroid/content/ContentProvider;
.source "StatsProvider.java"


# instance fields
.field private mShortcutRepo:Lcom/android/globalsearch/ShortcutRepository;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 91
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .parameter "uri"

    .prologue
    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 12
    .parameter "uri"
    .parameter "values"

    .prologue
    const/4 v8, 0x0

    .line 53
    const-string v6, "component"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 55
    .local v1, name:Landroid/content/ComponentName;
    const-string v6, "query"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 58
    .local v3, query:Ljava/lang/String;
    const/4 v2, 0x0

    .line 59
    .local v2, promotedSource:Z
    iget-object v6, p0, Lcom/android/globalsearch/StatsProvider;->mShortcutRepo:Lcom/android/globalsearch/ShortcutRepository;

    invoke-interface {v6}, Lcom/android/globalsearch/ShortcutRepository;->getSourceRanking()Ljava/util/ArrayList;

    move-result-object v4

    .line 60
    .local v4, sourceRanking:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_19
    const/4 v6, 0x4

    if-ge v0, v6, :cond_30

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_30

    .line 62
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 63
    const/4 v2, 0x1

    .line 61
    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 66
    :cond_30
    if-nez v2, :cond_34

    move-object v6, v8

    .line 86
    :goto_33
    return-object v6

    .line 68
    :cond_34
    new-instance v6, Lcom/android/globalsearch/SuggestionData$Builder;

    invoke-direct {v6, v1}, Lcom/android/globalsearch/SuggestionData$Builder;-><init>(Landroid/content/ComponentName;)V

    const-string v7, "suggest_format"

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/globalsearch/SuggestionData$Builder;->format(Ljava/lang/String;)Lcom/android/globalsearch/SuggestionData$Builder;

    move-result-object v6

    const-string v7, "suggest_text_1"

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/globalsearch/SuggestionData$Builder;->title(Ljava/lang/String;)Lcom/android/globalsearch/SuggestionData$Builder;

    move-result-object v6

    const-string v7, "suggest_text_2"

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/globalsearch/SuggestionData$Builder;->description(Ljava/lang/String;)Lcom/android/globalsearch/SuggestionData$Builder;

    move-result-object v6

    const-string v7, "suggest_icon_1"

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/globalsearch/SuggestionData$Builder;->icon1(Ljava/lang/String;)Lcom/android/globalsearch/SuggestionData$Builder;

    move-result-object v6

    const-string v7, "suggest_icon_2"

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/globalsearch/SuggestionData$Builder;->icon2(Ljava/lang/String;)Lcom/android/globalsearch/SuggestionData$Builder;

    move-result-object v6

    const-string v7, "suggest_intent_query"

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/globalsearch/SuggestionData$Builder;->intentQuery(Ljava/lang/String;)Lcom/android/globalsearch/SuggestionData$Builder;

    move-result-object v6

    const-string v7, "suggest_intent_action"

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/globalsearch/SuggestionData$Builder;->intentAction(Ljava/lang/String;)Lcom/android/globalsearch/SuggestionData$Builder;

    move-result-object v6

    const-string v7, "suggest_intent_data"

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/globalsearch/SuggestionData$Builder;->intentData(Ljava/lang/String;)Lcom/android/globalsearch/SuggestionData$Builder;

    move-result-object v6

    const-string v7, "suggest_intent_extra_data"

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/globalsearch/SuggestionData$Builder;->intentExtraData(Ljava/lang/String;)Lcom/android/globalsearch/SuggestionData$Builder;

    move-result-object v6

    const-string v7, "suggest_intent_component"

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/globalsearch/SuggestionData$Builder;->intentComponentName(Ljava/lang/String;)Lcom/android/globalsearch/SuggestionData$Builder;

    move-result-object v6

    const-string v7, "suggest_shortcut_id"

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/globalsearch/SuggestionData$Builder;->shortcutId(Ljava/lang/String;)Lcom/android/globalsearch/SuggestionData$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/globalsearch/SuggestionData$Builder;->build()Lcom/android/globalsearch/SuggestionData;

    move-result-object v5

    .line 85
    .local v5, suggestionData:Lcom/android/globalsearch/SuggestionData;
    iget-object v6, p0, Lcom/android/globalsearch/StatsProvider;->mShortcutRepo:Lcom/android/globalsearch/ShortcutRepository;

    new-instance v7, Lcom/android/globalsearch/SessionStats;

    invoke-direct {v7, v3, v5}, Lcom/android/globalsearch/SessionStats;-><init>(Ljava/lang/String;Lcom/android/globalsearch/SuggestionData;)V

    invoke-interface {v6, v7}, Lcom/android/globalsearch/ShortcutRepository;->reportStats(Lcom/android/globalsearch/SessionStats;)V

    move-object v6, v8

    .line 86
    goto/16 :goto_33
.end method

.method public onCreate()Z
    .registers 2

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/android/globalsearch/StatsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/globalsearch/ShortcutRepositoryImplLog;->create(Landroid/content/Context;)Lcom/android/globalsearch/ShortcutRepository;

    move-result-object v0

    iput-object v0, p0, Lcom/android/globalsearch/StatsProvider;->mShortcutRepo:Lcom/android/globalsearch/ShortcutRepository;

    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 7
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 43
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 96
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
