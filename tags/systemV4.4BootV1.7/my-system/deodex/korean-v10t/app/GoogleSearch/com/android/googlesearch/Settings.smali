.class public Lcom/android/googlesearch/Settings;
.super Landroid/preference/PreferenceActivity;
.source "Settings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final SHOW_WEB_SUGGESTIONS_PREF:Ljava/lang/String; = "show_web_suggestions"


# instance fields
.field private mShowWebSuggestionsPreference:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const/high16 v1, 0x7f03

    invoke-virtual {p0, v1}, Lcom/android/googlesearch/Settings;->addPreferencesFromResource(I)V

    .line 40
    invoke-virtual {p0}, Lcom/android/googlesearch/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 41
    .local v0, preferenceScreen:Landroid/preference/PreferenceScreen;
    const-string v1, "show_web_suggestions"

    invoke-virtual {p0, v1}, Lcom/android/googlesearch/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/googlesearch/Settings;->mShowWebSuggestionsPreference:Landroid/preference/CheckBoxPreference;

    .line 43
    iget-object v1, p0, Lcom/android/googlesearch/Settings;->mShowWebSuggestionsPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 44
    return-void
.end method

.method public declared-synchronized onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 7
    .parameter "preference"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 47
    monitor-enter p0

    :try_start_3
    iget-object v0, p0, Lcom/android/googlesearch/Settings;->mShowWebSuggestionsPreference:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_1e

    .line 48
    invoke-virtual {p0}, Lcom/android/googlesearch/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "show_web_suggestions"

    iget-object v2, p0, Lcom/android/googlesearch/Settings;->mShowWebSuggestionsPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1c

    move v2, v4

    :goto_16
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_20

    move v0, v4

    .line 54
    :goto_1a
    monitor-exit p0

    return v0

    :cond_1c
    move v2, v3

    .line 48
    goto :goto_16

    :cond_1e
    move v0, v3

    .line 54
    goto :goto_1a

    .line 47
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method
