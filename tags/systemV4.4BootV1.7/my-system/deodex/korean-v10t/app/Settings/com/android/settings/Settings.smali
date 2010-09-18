.class public Lcom/android/settings/Settings;
.super Landroid/preference/PreferenceActivity;
.source "Settings.java"


# static fields
.field private static final KEY_CALL_SETTINGS:Ljava/lang/String; = "call_settings"

.field private static final KEY_PARENT:Ljava/lang/String; = "parent"

.field private static final KEY_SEARCH_SETTINGS:Ljava/lang/String; = "search_settings"

.field private static final KEY_SYNC_SETTINGS:Ljava/lang/String; = "sync_settings"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 33
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v1, 0x7f040016

    invoke-virtual {p0, v1}, Lcom/android/settings/Settings;->addPreferencesFromResource(I)V

    .line 37
    const-string v1, "parent"

    invoke-virtual {p0, v1}, Lcom/android/settings/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 38
    .local v0, parent:Landroid/preference/PreferenceGroup;
    const-string v1, "sync_settings"

    invoke-static {p0, v0, v1, v2}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 39
    const-string v1, "search_settings"

    invoke-static {p0, v0, v1, v2}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 40
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 44
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 45
    const-string v0, "call_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-static {p0}, Lcom/android/settings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_14

    const/4 v1, 0x1

    :goto_10
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 46
    return-void

    .line 45
    :cond_14
    const/4 v1, 0x0

    goto :goto_10
.end method
