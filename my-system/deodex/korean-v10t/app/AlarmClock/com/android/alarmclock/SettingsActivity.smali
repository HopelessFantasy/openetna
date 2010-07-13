.class public Lcom/android/alarmclock/SettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "SettingsActivity.java"


# static fields
.field private static final ALARM_STREAM_TYPE_BIT:I = 0x10

.field private static final KEY_ALARM_IN_SILENT_MODE:Ljava/lang/String; = "alarm_in_silent_mode"


# instance fields
.field private mAlarmInSilentModePref:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private refresh()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 89
    invoke-virtual {p0}, Lcom/android/alarmclock/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mode_ringer_streams_affected"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 91
    .local v0, silentModeStreams:I
    iget-object v1, p0, Lcom/android/alarmclock/SettingsActivity;->mAlarmInSilentModePref:Landroid/preference/CheckBoxPreference;

    and-int/lit8 v2, v0, 0x10

    if-nez v2, :cond_16

    const/4 v2, 0x1

    :goto_12
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 93
    return-void

    :cond_16
    move v2, v3

    .line 91
    goto :goto_12
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v0, 0x7f040003

    invoke-virtual {p0, v0}, Lcom/android/alarmclock/SettingsActivity;->addPreferencesFromResource(I)V

    .line 47
    const-string v0, "alarm_in_silent_mode"

    invoke-virtual {p0, v0}, Lcom/android/alarmclock/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/alarmclock/SettingsActivity;->mAlarmInSilentModePref:Landroid/preference/CheckBoxPreference;

    .line 49
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 10
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v5, 0x0

    const-string v6, "mode_ringer_streams_affected"

    .line 61
    iget-object v3, p0, Lcom/android/alarmclock/SettingsActivity;->mAlarmInSilentModePref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_41

    .line 63
    invoke-virtual {p0}, Lcom/android/alarmclock/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mode_ringer_streams_affected"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 67
    .local v2, ringerModeStreamTypes:I
    iget-object v3, p0, Lcom/android/alarmclock/SettingsActivity;->mAlarmInSilentModePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 68
    and-int/lit8 v2, v2, -0x11

    .line 73
    :goto_1b
    invoke-virtual {p0}, Lcom/android/alarmclock/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mode_ringer_streams_affected"

    invoke-static {v3, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 76
    const-string v3, "AlarmClock"

    invoke-virtual {p0, v3, v5}, Lcom/android/alarmclock/SettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 77
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 79
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "alarm_in_silent_mode"

    iget-object v4, p0, Lcom/android/alarmclock/SettingsActivity;->mAlarmInSilentModePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 80
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 82
    const/4 v3, 0x1

    .line 85
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #pref:Landroid/content/SharedPreferences;
    .end local v2           #ringerModeStreamTypes:I
    :goto_3d
    return v3

    .line 70
    .restart local v2       #ringerModeStreamTypes:I
    :cond_3e
    or-int/lit8 v2, v2, 0x10

    goto :goto_1b

    .line 85
    .end local v2           #ringerModeStreamTypes:I
    :cond_41
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    goto :goto_3d
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 53
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 54
    invoke-direct {p0}, Lcom/android/alarmclock/SettingsActivity;->refresh()V

    .line 55
    return-void
.end method
