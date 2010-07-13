.class public Lcom/android/globalsearch/SuggestionSources;
.super Ljava/lang/Object;
.source "SuggestionSources.java"

# interfaces
.implements Lcom/android/globalsearch/SourceLookup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/globalsearch/SuggestionSources$ShowWebSuggestionsSettingChangeObserver;,
        Lcom/android/globalsearch/SuggestionSources$SourceList;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field public static final PREFERENCES_NAME:Ljava/lang/String; = "SuggestionSources"

.field private static final TAG:Ljava/lang/String; = "SuggestionSources"

.field private static final WEB_RESULTS_OVERRIDE_LIMIT:I = 0x14

.field public static final WEB_SEARCH_SOURCE_PREF:Ljava/lang/String; = "web_search_source"


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mEnabledSuggestionSources:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/globalsearch/SuggestionSource;",
            ">;"
        }
    .end annotation
.end field

.field private mLoaded:Z

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mSearchManager:Landroid/app/SearchManager;

.field private mSelectedWebSearchSource:Lcom/android/globalsearch/SuggestionSource;

.field private mShowWebSuggestionsSettingChangeObserver:Lcom/android/globalsearch/SuggestionSources$ShowWebSuggestionsSettingChangeObserver;

.field private mSuggestionSources:Lcom/android/globalsearch/SuggestionSources$SourceList;

.field private mTrustedPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    new-instance v0, Lcom/android/globalsearch/SuggestionSources$1;

    invoke-direct {v0, p0}, Lcom/android/globalsearch/SuggestionSources$1;-><init>(Lcom/android/globalsearch/SuggestionSources;)V

    iput-object v0, p0, Lcom/android/globalsearch/SuggestionSources;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 82
    iput-object p1, p0, Lcom/android/globalsearch/SuggestionSources;->mContext:Landroid/content/Context;

    .line 83
    const-string v0, "search"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    iput-object v0, p0, Lcom/android/globalsearch/SuggestionSources;->mSearchManager:Landroid/app/SearchManager;

    .line 84
    const-string v0, "SuggestionSources"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/globalsearch/SuggestionSources;->mPreferences:Landroid/content/SharedPreferences;

    .line 85
    iput-boolean v1, p0, Lcom/android/globalsearch/SuggestionSources;->mLoaded:Z

    .line 86
    return-void
.end method

.method private addExternalSources()V
    .registers 8

    .prologue
    .line 250
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 251
    .local v4, trusted:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/globalsearch/SuggestionSource;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 252
    .local v5, untrusted:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/globalsearch/SuggestionSource;>;"
    iget-object v6, p0, Lcom/android/globalsearch/SuggestionSources;->mSearchManager:Landroid/app/SearchManager;

    invoke-virtual {v6}, Landroid/app/SearchManager;->getSearchablesInGlobalSearch()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/server/search/SearchableInfo;

    .line 253
    .local v2, searchable:Landroid/server/search/SearchableInfo;
    new-instance v3, Lcom/android/globalsearch/SearchableSuggestionSource;

    iget-object v6, p0, Lcom/android/globalsearch/SuggestionSources;->mContext:Landroid/content/Context;

    invoke-direct {v3, v6, v2}, Lcom/android/globalsearch/SearchableSuggestionSource;-><init>(Landroid/content/Context;Landroid/server/search/SearchableInfo;)V

    .line 254
    .local v3, source:Lcom/android/globalsearch/SuggestionSource;
    invoke-virtual {p0, v3}, Lcom/android/globalsearch/SuggestionSources;->isTrustedSource(Lcom/android/globalsearch/SuggestionSource;)Z

    move-result v6

    if-eqz v6, :cond_31

    .line 255
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 257
    :cond_31
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 260
    .end local v2           #searchable:Landroid/server/search/SearchableInfo;
    .end local v3           #source:Lcom/android/globalsearch/SuggestionSource;
    :cond_35
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_39
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/globalsearch/SuggestionSource;

    .line 261
    .local v1, s:Lcom/android/globalsearch/SuggestionSource;
    invoke-direct {p0, v1}, Lcom/android/globalsearch/SuggestionSources;->addSuggestionSource(Lcom/android/globalsearch/SuggestionSource;)V

    goto :goto_39

    .line 263
    .end local v1           #s:Lcom/android/globalsearch/SuggestionSource;
    :cond_49
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/globalsearch/SuggestionSource;

    .line 264
    .restart local v1       #s:Lcom/android/globalsearch/SuggestionSource;
    invoke-direct {p0, v1}, Lcom/android/globalsearch/SuggestionSources;->addSuggestionSource(Lcom/android/globalsearch/SuggestionSource;)V

    goto :goto_4d

    .line 266
    .end local v1           #s:Lcom/android/globalsearch/SuggestionSource;
    :cond_5d
    return-void
.end method

.method private addSuggestionSource(Lcom/android/globalsearch/SuggestionSource;)V
    .registers 6
    .parameter "source"

    .prologue
    .line 270
    iget-object v1, p0, Lcom/android/globalsearch/SuggestionSources;->mSuggestionSources:Lcom/android/globalsearch/SuggestionSources$SourceList;

    invoke-virtual {v1, p1}, Lcom/android/globalsearch/SuggestionSources$SourceList;->put(Lcom/android/globalsearch/SuggestionSource;)Lcom/android/globalsearch/SuggestionSource;

    move-result-object v0

    .line 271
    .local v0, old:Lcom/android/globalsearch/SuggestionSource;
    if-eqz v0, :cond_2e

    .line 272
    const-string v1, "SuggestionSources"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Replaced source "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/android/globalsearch/SuggestionSource;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_2e
    return-void
.end method

.method private findEnabledSuggestionSources()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/globalsearch/SuggestionSource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 280
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 281
    .local v0, enabledSources:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/globalsearch/SuggestionSource;>;"
    iget-object v3, p0, Lcom/android/globalsearch/SuggestionSources;->mSuggestionSources:Lcom/android/globalsearch/SuggestionSources$SourceList;

    invoke-virtual {v3}, Lcom/android/globalsearch/SuggestionSources$SourceList;->values()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/globalsearch/SuggestionSource;

    .line 282
    .local v2, source:Lcom/android/globalsearch/SuggestionSource;
    invoke-direct {p0, v2}, Lcom/android/globalsearch/SuggestionSources;->isSourceEnabled(Lcom/android/globalsearch/SuggestionSource;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 284
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 287
    .end local v2           #source:Lcom/android/globalsearch/SuggestionSource;
    :cond_25
    return-object v0
.end method

.method private findWebSearchSource()Lcom/android/globalsearch/SuggestionSource;
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 310
    const/4 v0, 0x0

    .line 311
    .local v0, webSearchSource:Lcom/android/globalsearch/SuggestionSource;
    iget-object v2, p0, Lcom/android/globalsearch/SuggestionSources;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_web_suggestions"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_24

    .line 314
    iget-object v2, p0, Lcom/android/globalsearch/SuggestionSources;->mSearchManager:Landroid/app/SearchManager;

    invoke-virtual {v2}, Landroid/app/SearchManager;->getDefaultSearchableForWebSearch()Landroid/server/search/SearchableInfo;

    move-result-object v1

    .line 315
    .local v1, webSearchable:Landroid/server/search/SearchableInfo;
    if-eqz v1, :cond_24

    .line 320
    iget-object v2, p0, Lcom/android/globalsearch/SuggestionSources;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/server/search/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v3

    const/16 v4, 0x14

    invoke-static {v2, v3, v4}, Lcom/android/globalsearch/SearchableSuggestionSource;->create(Landroid/content/Context;Landroid/content/ComponentName;I)Lcom/android/globalsearch/SearchableSuggestionSource;

    move-result-object v0

    .line 324
    .end local v1           #webSearchable:Landroid/server/search/SearchableInfo;
    :cond_24
    return-object v0
.end method

.method private isSourceEnabled(Lcom/android/globalsearch/SuggestionSource;)Z
    .registers 6
    .parameter "source"

    .prologue
    .line 291
    invoke-virtual {p0, p1}, Lcom/android/globalsearch/SuggestionSources;->isSourceDefaultEnabled(Lcom/android/globalsearch/SuggestionSource;)Z

    move-result v0

    .line 292
    .local v0, defaultEnabled:Z
    iget-object v2, p0, Lcom/android/globalsearch/SuggestionSources;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v2, :cond_11

    .line 293
    const-string v2, "SuggestionSources"

    const-string v3, "Search preferences SuggestionSources not found."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const/4 v2, 0x1

    .line 297
    :goto_10
    return v2

    .line 296
    :cond_11
    invoke-virtual {p0, p1}, Lcom/android/globalsearch/SuggestionSources;->getSourceEnabledPreference(Lcom/android/globalsearch/SuggestionSource;)Ljava/lang/String;

    move-result-object v1

    .line 297
    .local v1, sourceEnabledPref:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/globalsearch/SuggestionSources;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_10
.end method

.method private loadTrustedPackages()V
    .registers 8

    .prologue
    .line 221
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v5, p0, Lcom/android/globalsearch/SuggestionSources;->mTrustedPackages:Ljava/util/HashSet;

    .line 224
    iget-object v5, p0, Lcom/android/globalsearch/SuggestionSources;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f06

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 227
    .local v4, trustedPackages:[Ljava/lang/String;
    if-nez v4, :cond_1d

    .line 228
    const-string v5, "SuggestionSources"

    const-string v6, "Could not load list of trusted search providers, trusting none"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_1c
    return-void

    .line 232
    :cond_1d
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_20
    if-ge v1, v2, :cond_1c

    aget-object v3, v0, v1

    .line 233
    .local v3, trustedPackage:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/globalsearch/SuggestionSources;->mTrustedPackages:Ljava/util/HashSet;

    invoke-virtual {v5, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 232
    add-int/lit8 v1, v1, 0x1

    goto :goto_20
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 3

    .prologue
    .line 206
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/android/globalsearch/SuggestionSources;->mLoaded:Z

    if-nez v0, :cond_e

    .line 207
    const-string v0, "SuggestionSources"

    const-string v1, "Not loaded, ignoring call to close()."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_2d

    .line 218
    :goto_c
    monitor-exit p0

    return-void

    .line 210
    :cond_e
    :try_start_e
    iget-object v0, p0, Lcom/android/globalsearch/SuggestionSources;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/globalsearch/SuggestionSources;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 211
    iget-object v0, p0, Lcom/android/globalsearch/SuggestionSources;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/globalsearch/SuggestionSources;->mShowWebSuggestionsSettingChangeObserver:Lcom/android/globalsearch/SuggestionSources$ShowWebSuggestionsSettingChangeObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 214
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/globalsearch/SuggestionSources;->mSuggestionSources:Lcom/android/globalsearch/SuggestionSources$SourceList;

    .line 215
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/globalsearch/SuggestionSources;->mSelectedWebSearchSource:Lcom/android/globalsearch/SuggestionSource;

    .line 216
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/globalsearch/SuggestionSources;->mEnabledSuggestionSources:Ljava/util/ArrayList;

    .line 217
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/globalsearch/SuggestionSources;->mLoaded:Z
    :try_end_2c
    .catchall {:try_start_e .. :try_end_2c} :catchall_2d

    goto :goto_c

    .line 206
    :catchall_2d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getEnabledSuggestionSources()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/globalsearch/SuggestionSource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/android/globalsearch/SuggestionSources;->mLoaded:Z

    if-nez v0, :cond_12

    .line 124
    const-string v0, "SuggestionSources"

    const-string v1, "getEnabledSuggestionSources() called, but sources not loaded."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_15

    move-result-object v0

    .line 127
    :goto_10
    monitor-exit p0

    return-object v0

    :cond_12
    :try_start_12
    iget-object v0, p0, Lcom/android/globalsearch/SuggestionSources;->mEnabledSuggestionSources:Ljava/util/ArrayList;
    :try_end_14
    .catchall {:try_start_12 .. :try_end_14} :catchall_15

    goto :goto_10

    .line 123
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSelectedWebSearchSource()Lcom/android/globalsearch/SuggestionSource;
    .registers 3

    .prologue
    .line 139
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/android/globalsearch/SuggestionSources;->mLoaded:Z

    if-nez v0, :cond_f

    .line 140
    const-string v0, "SuggestionSources"

    const-string v1, "getSelectedWebSearchSource() called, but sources not loaded."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_12

    .line 141
    const/4 v0, 0x0

    .line 143
    :goto_d
    monitor-exit p0

    return-object v0

    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/android/globalsearch/SuggestionSources;->mSelectedWebSearchSource:Lcom/android/globalsearch/SuggestionSource;
    :try_end_11
    .catchall {:try_start_f .. :try_end_11} :catchall_12

    goto :goto_d

    .line 139
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSourceByComponentName(Landroid/content/ComponentName;)Lcom/android/globalsearch/SuggestionSource;
    .registers 4
    .parameter "componentName"

    .prologue
    .line 104
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/globalsearch/SuggestionSources;->mSuggestionSources:Lcom/android/globalsearch/SuggestionSources$SourceList;

    invoke-virtual {v1, p1}, Lcom/android/globalsearch/SuggestionSources$SourceList;->get(Landroid/content/ComponentName;)Lcom/android/globalsearch/SuggestionSource;

    move-result-object v0

    .line 107
    .local v0, source:Lcom/android/globalsearch/SuggestionSource;
    if-nez v0, :cond_1b

    .line 108
    iget-object v1, p0, Lcom/android/globalsearch/SuggestionSources;->mSelectedWebSearchSource:Lcom/android/globalsearch/SuggestionSource;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/android/globalsearch/SuggestionSources;->mSelectedWebSearchSource:Lcom/android/globalsearch/SuggestionSource;

    invoke-interface {v1}, Lcom/android/globalsearch/SuggestionSource;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 110
    iget-object v0, p0, Lcom/android/globalsearch/SuggestionSources;->mSelectedWebSearchSource:Lcom/android/globalsearch/SuggestionSource;
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    .line 113
    :cond_1b
    monitor-exit p0

    return-object v0

    .line 104
    .end local v0           #source:Lcom/android/globalsearch/SuggestionSource;
    :catchall_1d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getSourceEnabledPreference(Lcom/android/globalsearch/SuggestionSource;)Ljava/lang/String;
    .registers 4
    .parameter "source"

    .prologue
    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enable_source_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/globalsearch/SuggestionSource;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getSuggestionSources()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/globalsearch/SuggestionSource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/android/globalsearch/SuggestionSources;->mLoaded:Z

    if-nez v0, :cond_12

    .line 96
    const-string v0, "SuggestionSources"

    const-string v1, "getSuggestionSources() called, but sources not loaded."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_19

    move-result-object v0

    .line 99
    :goto_10
    monitor-exit p0

    return-object v0

    :cond_12
    :try_start_12
    iget-object v0, p0, Lcom/android/globalsearch/SuggestionSources;->mSuggestionSources:Lcom/android/globalsearch/SuggestionSources$SourceList;

    invoke-virtual {v0}, Lcom/android/globalsearch/SuggestionSources$SourceList;->values()Ljava/util/ArrayList;
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_19

    move-result-object v0

    goto :goto_10

    .line 95
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isSourceDefaultEnabled(Lcom/android/globalsearch/SuggestionSource;)Z
    .registers 3
    .parameter "source"

    .prologue
    .line 134
    invoke-virtual {p0, p1}, Lcom/android/globalsearch/SuggestionSources;->isTrustedSource(Lcom/android/globalsearch/SuggestionSource;)Z

    move-result v0

    return v0
.end method

.method public isTrustedSource(Lcom/android/globalsearch/SuggestionSource;)Z
    .registers 5
    .parameter "source"

    .prologue
    const/4 v2, 0x0

    .line 301
    if-nez p1, :cond_5

    move v1, v2

    .line 303
    :goto_4
    return v1

    .line 302
    :cond_5
    invoke-interface {p1}, Lcom/android/globalsearch/SuggestionSource;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, packageName:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/globalsearch/SuggestionSources;->mTrustedPackages:Ljava/util/HashSet;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/android/globalsearch/SuggestionSources;->mTrustedPackages:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v1, 0x1

    goto :goto_4

    :cond_1b
    move v1, v2

    goto :goto_4
.end method

.method public declared-synchronized load()V
    .registers 5

    .prologue
    .line 175
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/android/globalsearch/SuggestionSources;->mLoaded:Z

    if-eqz v0, :cond_e

    .line 176
    const-string v0, "SuggestionSources"

    const-string v1, "Already loaded, ignoring call to load()."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_4d

    .line 199
    :goto_c
    monitor-exit p0

    return-void

    .line 180
    :cond_e
    :try_start_e
    invoke-direct {p0}, Lcom/android/globalsearch/SuggestionSources;->loadTrustedPackages()V

    .line 183
    iget-object v0, p0, Lcom/android/globalsearch/SuggestionSources;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/globalsearch/SuggestionSources;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.search.action.SEARCHABLES_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 187
    iget-object v0, p0, Lcom/android/globalsearch/SuggestionSources;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/globalsearch/SuggestionSources;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.search.action.SETTINGS_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 190
    new-instance v0, Lcom/android/globalsearch/SuggestionSources$ShowWebSuggestionsSettingChangeObserver;

    invoke-direct {v0, p0}, Lcom/android/globalsearch/SuggestionSources$ShowWebSuggestionsSettingChangeObserver;-><init>(Lcom/android/globalsearch/SuggestionSources;)V

    iput-object v0, p0, Lcom/android/globalsearch/SuggestionSources;->mShowWebSuggestionsSettingChangeObserver:Lcom/android/globalsearch/SuggestionSources$ShowWebSuggestionsSettingChangeObserver;

    .line 191
    iget-object v0, p0, Lcom/android/globalsearch/SuggestionSources;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "show_web_suggestions"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/globalsearch/SuggestionSources;->mShowWebSuggestionsSettingChangeObserver:Lcom/android/globalsearch/SuggestionSources$ShowWebSuggestionsSettingChangeObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 197
    invoke-virtual {p0}, Lcom/android/globalsearch/SuggestionSources;->updateSources()V

    .line 198
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/globalsearch/SuggestionSources;->mLoaded:Z
    :try_end_4c
    .catchall {:try_start_e .. :try_end_4c} :catchall_4d

    goto :goto_c

    .line 175
    :catchall_4d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized updateSources()V
    .registers 2

    .prologue
    .line 242
    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/android/globalsearch/SuggestionSources$SourceList;

    invoke-direct {v0}, Lcom/android/globalsearch/SuggestionSources$SourceList;-><init>()V

    iput-object v0, p0, Lcom/android/globalsearch/SuggestionSources;->mSuggestionSources:Lcom/android/globalsearch/SuggestionSources$SourceList;

    .line 243
    invoke-direct {p0}, Lcom/android/globalsearch/SuggestionSources;->addExternalSources()V

    .line 245
    invoke-direct {p0}, Lcom/android/globalsearch/SuggestionSources;->findEnabledSuggestionSources()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/globalsearch/SuggestionSources;->mEnabledSuggestionSources:Ljava/util/ArrayList;

    .line 246
    invoke-direct {p0}, Lcom/android/globalsearch/SuggestionSources;->findWebSearchSource()Lcom/android/globalsearch/SuggestionSource;

    move-result-object v0

    iput-object v0, p0, Lcom/android/globalsearch/SuggestionSources;->mSelectedWebSearchSource:Lcom/android/globalsearch/SuggestionSource;
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 247
    monitor-exit p0

    return-void

    .line 242
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method
