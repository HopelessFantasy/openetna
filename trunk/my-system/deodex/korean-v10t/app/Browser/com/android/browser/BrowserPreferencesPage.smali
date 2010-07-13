.class public Lcom/android/browser/BrowserPreferencesPage;
.super Landroid/preference/PreferenceActivity;
.source "BrowserPreferencesPage.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "browser"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private getVisualTextSizeName(Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 8
    .parameter "enumName"

    .prologue
    const-string v5, ""

    .line 138
    invoke-virtual {p0}, Lcom/android/browser/BrowserPreferencesPage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f09

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 140
    .local v2, visualNames:[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/browser/BrowserPreferencesPage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 144
    .local v0, enumNames:[Ljava/lang/CharSequence;
    array-length v3, v2

    array-length v4, v0

    if-eq v3, v4, :cond_1f

    .line 145
    const-string v3, ""

    move-object v3, v5

    .line 154
    :goto_1e
    return-object v3

    .line 148
    :cond_1f
    const/4 v1, 0x0

    .local v1, i:I
    :goto_20
    array-length v3, v0

    if-ge v1, v3, :cond_31

    .line 149
    aget-object v3, v0, v1

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 150
    aget-object v3, v2, v1

    goto :goto_1e

    .line 148
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 154
    :cond_31
    const-string v3, ""

    move-object v3, v5

    goto :goto_1e
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    const-string v5, "text_size"

    const-string v4, "homepage"

    .line 38
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const/high16 v1, 0x7f05

    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserPreferencesPage;->addPreferencesFromResource(I)V

    .line 43
    const-string v1, "homepage"

    invoke-virtual {p0, v4}, Lcom/android/browser/BrowserPreferencesPage;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 44
    .local v0, e:Landroid/preference/Preference;
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 45
    invoke-virtual {p0}, Lcom/android/browser/BrowserPreferencesPage;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "homepage"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 48
    const-string v1, "reset_default_preferences"

    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserPreferencesPage;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 49
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 51
    const-string v1, "text_size"

    invoke-virtual {p0, v5}, Lcom/android/browser/BrowserPreferencesPage;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 52
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 53
    invoke-virtual {p0}, Lcom/android/browser/BrowserPreferencesPage;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "text_size"

    invoke-interface {v1, v5, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/browser/BrowserPreferencesPage;->getVisualTextSizeName(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 57
    const-string v1, "default_text_encoding"

    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserPreferencesPage;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 58
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 60
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/BrowserSettings;->showDebugSettings()Z

    move-result v1

    if-eqz v1, :cond_67

    .line 61
    const v1, 0x7f050001

    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserPreferencesPage;->addPreferencesFromResource(I)V

    .line 64
    :cond_67
    const-string v1, "gears_settings"

    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserPreferencesPage;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 65
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 66
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 70
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 73
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/browser/BrowserPreferencesPage;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserSettings;->syncSharedPreferences(Landroid/content/SharedPreferences;)V

    .line 75
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 11
    .parameter "pref"
    .parameter "objValue"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 78
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "reset_default_preferences"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 79
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    move-object v2, v0

    .line 80
    .local v2, value:Ljava/lang/Boolean;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-ne v3, v6, :cond_1b

    .line 81
    invoke-virtual {p0}, Lcom/android/browser/BrowserPreferencesPage;->finish()V

    .end local v2           #value:Ljava/lang/Boolean;
    :cond_1b
    move v3, v7

    .line 120
    .end local p1
    .end local p2
    :goto_1c
    return v3

    .line 83
    .restart local p1
    .restart local p2
    :cond_1d
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "homepage"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_79

    .line 84
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 85
    .local v2, value:Ljava/lang/String;
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_75

    move v1, v6

    .line 86
    .local v1, needUpdate:Z
    :goto_37
    if-eqz v1, :cond_45

    .line 87
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    const-string v5, "%20"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 89
    :cond_45
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_69

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_69

    .line 90
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 91
    const/4 v1, 0x1

    .line 94
    :cond_69
    invoke-virtual {p1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 99
    if-eqz v1, :cond_77

    .line 102
    check-cast p1, Landroid/preference/EditTextPreference;

    .end local p1
    invoke-virtual {p1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    move v3, v7

    .line 107
    goto :goto_1c

    .end local v1           #needUpdate:Z
    .restart local p1
    :cond_75
    move v1, v7

    .line 85
    goto :goto_37

    .restart local v1       #needUpdate:Z
    :cond_77
    move v3, v6

    .line 109
    goto :goto_1c

    .line 111
    .end local v1           #needUpdate:Z
    .end local v2           #value:Ljava/lang/String;
    :cond_79
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "text_size"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_90

    .line 112
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-direct {p0, p2}, Lcom/android/browser/BrowserPreferencesPage;->getVisualTextSizeName(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    move v3, v6

    .line 113
    goto :goto_1c

    .line 114
    .restart local p2
    :cond_90
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "default_text_encoding"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 116
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    move v3, v6

    .line 117
    goto/16 :goto_1c
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 8
    .parameter "pref"

    .prologue
    const/4 v5, 0x1

    .line 124
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "gears_settings"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 125
    invoke-static {}, Landroid/webkit/WebView;->getPluginList()Landroid/webkit/PluginList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/PluginList;->getList()Ljava/util/List;

    move-result-object v1

    .line 126
    .local v1, loadedPlugins:Ljava/util/List;,"Ljava/util/List<Landroid/webkit/Plugin;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/webkit/Plugin;

    .line 127
    .local v2, p:Landroid/webkit/Plugin;
    invoke-virtual {v2}, Landroid/webkit/Plugin;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "gears"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 128
    invoke-virtual {v2, p0}, Landroid/webkit/Plugin;->dispatchClickEvent(Landroid/content/Context;)V

    move v3, v5

    .line 134
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #loadedPlugins:Ljava/util/List;,"Ljava/util/List<Landroid/webkit/Plugin;>;"
    .end local v2           #p:Landroid/webkit/Plugin;
    :goto_35
    return v3

    :cond_36
    move v3, v5

    goto :goto_35
.end method
