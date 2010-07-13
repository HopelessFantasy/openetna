.class public Lcom/android/globalsearch/SearchSettings;
.super Landroid/preference/PreferenceActivity;
.source "SearchSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final CLEAR_SHORTCUTS_CONFIRM_DIALOG:I = 0x0

.field private static final CLEAR_SHORTCUTS_PREF:Ljava/lang/String; = "clear_shortcuts"

.field private static final DBG:Z = false

.field private static final SEARCH_ENGINE_SETTINGS_PREF:Ljava/lang/String; = "search_engine_settings"

.field private static final SEARCH_SOURCES_PREF:Ljava/lang/String; = "search_sources"

.field private static final TAG:Ljava/lang/String; = "SearchSettings"


# instance fields
.field private mClearShortcutsPreference:Landroid/preference/Preference;

.field private mSearchEngineSettingsPreference:Landroid/preference/PreferenceScreen;

.field private mSearchManager:Landroid/app/SearchManager;

.field private mShortcuts:Lcom/android/globalsearch/ShortcutRepository;

.field private mSourcePreferences:Landroid/preference/PreferenceGroup;

.field private mSources:Lcom/android/globalsearch/SuggestionSources;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/globalsearch/SearchSettings;)Lcom/android/globalsearch/ShortcutRepository;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/globalsearch/SearchSettings;->mShortcuts:Lcom/android/globalsearch/ShortcutRepository;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/globalsearch/SearchSettings;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/globalsearch/SearchSettings;->updateClearShortcutsPreference()V

    return-void
.end method

.method private broadcastSettingsChanged()V
    .registers 5

    .prologue
    .line 266
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.search.action.SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 267
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "SearchSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcasting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-virtual {p0, v0}, Lcom/android/globalsearch/SearchSettings;->sendBroadcast(Landroid/content/Intent;)V

    .line 269
    return-void
.end method

.method private createSourcePreference(Lcom/android/globalsearch/SuggestionSource;)Landroid/preference/Preference;
    .registers 5
    .parameter "source"

    .prologue
    .line 218
    new-instance v1, Landroid/preference/CheckBoxPreference;

    invoke-direct {v1, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 219
    .local v1, sourcePref:Landroid/preference/CheckBoxPreference;
    iget-object v2, p0, Lcom/android/globalsearch/SearchSettings;->mSources:Lcom/android/globalsearch/SuggestionSources;

    invoke-virtual {v2, p1}, Lcom/android/globalsearch/SuggestionSources;->getSourceEnabledPreference(Lcom/android/globalsearch/SuggestionSource;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 220
    iget-object v2, p0, Lcom/android/globalsearch/SearchSettings;->mSources:Lcom/android/globalsearch/SuggestionSources;

    invoke-virtual {v2, p1}, Lcom/android/globalsearch/SuggestionSources;->isSourceDefaultEnabled(Lcom/android/globalsearch/SuggestionSource;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 221
    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 222
    invoke-interface {p1}, Lcom/android/globalsearch/SuggestionSource;->getLabel()Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, label:Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 224
    invoke-interface {p1}, Lcom/android/globalsearch/SuggestionSource;->getSettingsDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 225
    invoke-interface {p1}, Lcom/android/globalsearch/SuggestionSource;->getSettingsDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 226
    return-object v1
.end method

.method private createWebSearchSettingsIntent(Landroid/content/pm/ResolveInfo;)Landroid/content/Intent;
    .registers 6
    .parameter "info"

    .prologue
    .line 195
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.search.action.WEB_SEARCH_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 196
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 198
    return-object v0
.end method

.method private findWebSearchSettingsActivity(Landroid/content/ComponentName;)Landroid/content/pm/ResolveInfo;
    .registers 10
    .parameter "component"

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/android/globalsearch/SearchSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 166
    .local v5, pm:Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.search.action.WEB_SEARCH_SETTINGS"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 167
    .local v2, intent:Landroid/content/Intent;
    const/4 v7, 0x0

    invoke-virtual {v5, v2, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 169
    .local v0, activitiesWithWebSearchSettings:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 170
    .local v4, packageName:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 173
    .local v3, name:Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 174
    .local v6, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1c

    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1c

    move-object v7, v6

    .line 187
    .end local v6           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :goto_3d
    return-object v7

    .line 181
    :cond_3e
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_42
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 182
    .restart local v6       #resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_42

    move-object v7, v6

    .line 183
    goto :goto_3d

    .line 187
    .end local v6           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_5a
    const/4 v7, 0x0

    goto :goto_3d
.end method

.method private populateSearchEnginePreference()V
    .registers 10

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/android/globalsearch/SearchSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 131
    .local v4, pm:Landroid/content/pm/PackageManager;
    :try_start_4
    sget-object v7, Landroid/server/search/Searchables;->ENHANCED_GOOGLE_SEARCH_COMPONENT_NAME:Ljava/lang/String;

    invoke-static {v7}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    .line 133
    .local v6, webSearchComponent:Landroid/content/ComponentName;
    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_e} :catch_1c

    .line 145
    :goto_e
    invoke-direct {p0, v6}, Lcom/android/globalsearch/SearchSettings;->findWebSearchSettingsActivity(Landroid/content/ComponentName;)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 146
    .local v3, matchedInfo:Landroid/content/pm/ResolveInfo;
    if-nez v3, :cond_33

    .line 147
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "could not find settings for web search provider"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 134
    .end local v3           #matchedInfo:Landroid/content/pm/ResolveInfo;
    .end local v6           #webSearchComponent:Landroid/content/ComponentName;
    :catch_1c
    move-exception v7

    move-object v0, v7

    .line 137
    .local v0, e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1e
    sget-object v7, Landroid/server/search/Searchables;->GOOGLE_SEARCH_COMPONENT_NAME:Ljava/lang/String;

    invoke-static {v7}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    .line 139
    .restart local v6       #webSearchComponent:Landroid/content/ComponentName;
    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_28
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1e .. :try_end_28} :catch_29

    goto :goto_e

    .line 140
    .end local v6           #webSearchComponent:Landroid/content/ComponentName;
    :catch_29
    move-exception v7

    move-object v1, v7

    .line 141
    .local v1, e2:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "could not find a web search provider"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 150
    .end local v0           #e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v1           #e2:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3       #matchedInfo:Landroid/content/pm/ResolveInfo;
    .restart local v6       #webSearchComponent:Landroid/content/ComponentName;
    :cond_33
    invoke-direct {p0, v3}, Lcom/android/globalsearch/SearchSettings;->createWebSearchSettingsIntent(Landroid/content/pm/ResolveInfo;)Landroid/content/Intent;

    move-result-object v2

    .line 151
    .local v2, intent:Landroid/content/Intent;
    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v7, v4}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 153
    .local v5, searchEngineSettingsLabel:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/globalsearch/SearchSettings;->mSearchEngineSettingsPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v5}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v7, p0, Lcom/android/globalsearch/SearchSettings;->mSearchEngineSettingsPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v2}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 156
    return-void
.end method

.method private populateSourcePreference()V
    .registers 5

    .prologue
    .line 205
    iget-object v3, p0, Lcom/android/globalsearch/SearchSettings;->mSources:Lcom/android/globalsearch/SuggestionSources;

    invoke-virtual {v3}, Lcom/android/globalsearch/SuggestionSources;->getSuggestionSources()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/globalsearch/SuggestionSource;

    .line 206
    .local v2, source:Lcom/android/globalsearch/SuggestionSource;
    invoke-direct {p0, v2}, Lcom/android/globalsearch/SearchSettings;->createSourcePreference(Lcom/android/globalsearch/SuggestionSource;)Landroid/preference/Preference;

    move-result-object v1

    .line 207
    .local v1, pref:Landroid/preference/Preference;
    if-eqz v1, :cond_a

    .line 209
    iget-object v3, p0, Lcom/android/globalsearch/SearchSettings;->mSourcePreferences:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_a

    .line 212
    .end local v1           #pref:Landroid/preference/Preference;
    .end local v2           #source:Lcom/android/globalsearch/SuggestionSource;
    :cond_22
    return-void
.end method

.method private updateClearShortcutsPreference()V
    .registers 3

    .prologue
    .line 116
    iget-object v1, p0, Lcom/android/globalsearch/SearchSettings;->mShortcuts:Lcom/android/globalsearch/ShortcutRepository;

    invoke-interface {v1}, Lcom/android/globalsearch/ShortcutRepository;->hasHistory()Z

    move-result v0

    .line 118
    .local v0, hasHistory:Z
    iget-object v1, p0, Lcom/android/globalsearch/SearchSettings;->mClearShortcutsPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 119
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    const-string v1, "search"

    invoke-virtual {p0, v1}, Lcom/android/globalsearch/SearchSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    iput-object v1, p0, Lcom/android/globalsearch/SearchSettings;->mSearchManager:Landroid/app/SearchManager;

    .line 83
    new-instance v1, Lcom/android/globalsearch/SuggestionSources;

    invoke-direct {v1, p0}, Lcom/android/globalsearch/SuggestionSources;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/globalsearch/SearchSettings;->mSources:Lcom/android/globalsearch/SuggestionSources;

    .line 84
    iget-object v1, p0, Lcom/android/globalsearch/SearchSettings;->mSources:Lcom/android/globalsearch/SuggestionSources;

    invoke-virtual {v1}, Lcom/android/globalsearch/SuggestionSources;->load()V

    .line 85
    invoke-static {p0}, Lcom/android/globalsearch/ShortcutRepositoryImplLog;->create(Landroid/content/Context;)Lcom/android/globalsearch/ShortcutRepository;

    move-result-object v1

    iput-object v1, p0, Lcom/android/globalsearch/SearchSettings;->mShortcuts:Lcom/android/globalsearch/ShortcutRepository;

    .line 86
    invoke-virtual {p0}, Lcom/android/globalsearch/SearchSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    const-string v2, "SuggestionSources"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 88
    const/high16 v1, 0x7f03

    invoke-virtual {p0, v1}, Lcom/android/globalsearch/SearchSettings;->addPreferencesFromResource(I)V

    .line 90
    invoke-virtual {p0}, Lcom/android/globalsearch/SearchSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 91
    .local v0, preferenceScreen:Landroid/preference/PreferenceScreen;
    const-string v1, "clear_shortcuts"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/globalsearch/SearchSettings;->mClearShortcutsPreference:Landroid/preference/Preference;

    .line 92
    const-string v1, "search_engine_settings"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/globalsearch/SearchSettings;->mSearchEngineSettingsPreference:Landroid/preference/PreferenceScreen;

    .line 94
    invoke-virtual {p0}, Lcom/android/globalsearch/SearchSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "search_sources"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    iput-object v1, p0, Lcom/android/globalsearch/SearchSettings;->mSourcePreferences:Landroid/preference/PreferenceGroup;

    .line 97
    iget-object v1, p0, Lcom/android/globalsearch/SearchSettings;->mClearShortcutsPreference:Landroid/preference/Preference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 99
    invoke-direct {p0}, Lcom/android/globalsearch/SearchSettings;->updateClearShortcutsPreference()V

    .line 100
    invoke-direct {p0}, Lcom/android/globalsearch/SearchSettings;->populateSourcePreference()V

    .line 101
    invoke-direct {p0}, Lcom/android/globalsearch/SearchSettings;->populateSearchEnginePreference()V

    .line 102
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 6
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 242
    packed-switch p1, :pswitch_data_4a

    .line 256
    const-string v0, "SearchSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown dialog"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    .line 257
    :goto_1d
    return-object v0

    .line 244
    :pswitch_1e
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f040012

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f040015

    new-instance v2, Lcom/android/globalsearch/SearchSettings$1;

    invoke-direct {v2, p0}, Lcom/android/globalsearch/SearchSettings$1;-><init>(Lcom/android/globalsearch/SearchSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f040016

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_1d

    .line 242
    nop

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_1e
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/globalsearch/SearchSettings;->mSources:Lcom/android/globalsearch/SuggestionSources;

    invoke-virtual {v0}, Lcom/android/globalsearch/SuggestionSources;->close()V

    .line 107
    iget-object v0, p0, Lcom/android/globalsearch/SearchSettings;->mShortcuts:Lcom/android/globalsearch/ShortcutRepository;

    invoke-interface {v0}, Lcom/android/globalsearch/ShortcutRepository;->close()V

    .line 108
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 109
    return-void
.end method

.method public declared-synchronized onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 4
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 272
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/android/globalsearch/SearchSettings;->broadcastSettingsChanged()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    .line 273
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 272
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 4
    .parameter "preference"

    .prologue
    const/4 v1, 0x0

    .line 233
    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lcom/android/globalsearch/SearchSettings;->mClearShortcutsPreference:Landroid/preference/Preference;

    if-ne p1, v0, :cond_d

    .line 234
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/globalsearch/SearchSettings;->showDialog(I)V
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_f

    .line 235
    const/4 v0, 0x1

    .line 237
    :goto_b
    monitor-exit p0

    return v0

    :cond_d
    move v0, v1

    goto :goto_b

    .line 233
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
