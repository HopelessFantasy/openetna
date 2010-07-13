.class public Lcom/android/calendar/CalendarPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "CalendarPreferenceActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field static final ALERT_TYPE_ALERTS:Ljava/lang/String; = "0"

.field static final ALERT_TYPE_OFF:Ljava/lang/String; = "2"

.field static final ALERT_TYPE_STATUS_BAR:Ljava/lang/String; = "1"

.field static final DEFAULT_DETAILED_VIEW:Ljava/lang/String; = null

.field static final DEFAULT_START_VIEW:Ljava/lang/String; = null

.field static final KEY_ALERTS_RINGTONE:Ljava/lang/String; = "preferences_alerts_ringtone"

.field static final KEY_ALERTS_TYPE:Ljava/lang/String; = "preferences_alerts_type"

.field static final KEY_ALERTS_VIBRATE:Ljava/lang/String; = "preferences_alerts_vibrate"

.field static final KEY_DEFAULT_REMINDER:Ljava/lang/String; = "preferences_default_reminder"

.field static final KEY_DETAILED_VIEW:Ljava/lang/String; = "preferredDetailedView"

.field static final KEY_HIDE_DECLINED:Ljava/lang/String; = "preferences_hide_declined"

.field static final KEY_START_VIEW:Ljava/lang/String; = "startView"


# instance fields
.field mAlertType:Landroid/preference/ListPreference;

.field mRingtone:Landroid/preference/RingtonePreference;

.field mVibrate:Landroid/preference/CheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 44
    sget-object v0, Lcom/android/calendar/CalendarApplication;->ACTIVITY_NAMES:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sput-object v0, Lcom/android/calendar/CalendarPreferenceActivity;->DEFAULT_START_VIEW:Ljava/lang/String;

    .line 46
    sget-object v0, Lcom/android/calendar/CalendarApplication;->ACTIVITY_NAMES:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    sput-object v0, Lcom/android/calendar/CalendarPreferenceActivity;->DEFAULT_DETAILED_VIEW:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private updateChildPreferences()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 76
    iget-object v0, p0, Lcom/android/calendar/CalendarPreferenceActivity;->mAlertType:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 77
    iget-object v0, p0, Lcom/android/calendar/CalendarPreferenceActivity;->mVibrate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 78
    iget-object v0, p0, Lcom/android/calendar/CalendarPreferenceActivity;->mVibrate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 79
    iget-object v0, p0, Lcom/android/calendar/CalendarPreferenceActivity;->mRingtone:Landroid/preference/RingtonePreference;

    invoke-virtual {v0, v2}, Landroid/preference/RingtonePreference;->setEnabled(Z)V

    .line 84
    :goto_1f
    return-void

    .line 81
    :cond_20
    iget-object v0, p0, Lcom/android/calendar/CalendarPreferenceActivity;->mVibrate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 82
    iget-object v0, p0, Lcom/android/calendar/CalendarPreferenceActivity;->mRingtone:Landroid/preference/RingtonePreference;

    invoke-virtual {v0, v3}, Landroid/preference/RingtonePreference;->setEnabled(Z)V

    goto :goto_1f
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const/high16 v1, 0x7f05

    invoke-virtual {p0, v1}, Lcom/android/calendar/CalendarPreferenceActivity;->addPreferencesFromResource(I)V

    .line 60
    invoke-virtual {p0}, Lcom/android/calendar/CalendarPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 61
    .local v0, preferenceScreen:Landroid/preference/PreferenceScreen;
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 62
    const-string v1, "preferences_alerts_type"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/calendar/CalendarPreferenceActivity;->mAlertType:Landroid/preference/ListPreference;

    .line 63
    const-string v1, "preferences_alerts_vibrate"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/calendar/CalendarPreferenceActivity;->mVibrate:Landroid/preference/CheckBoxPreference;

    .line 64
    const-string v1, "preferences_alerts_ringtone"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/RingtonePreference;

    iput-object v1, p0, Lcom/android/calendar/CalendarPreferenceActivity;->mRingtone:Landroid/preference/RingtonePreference;

    .line 66
    invoke-direct {p0}, Lcom/android/calendar/CalendarPreferenceActivity;->updateChildPreferences()V

    .line 67
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 4
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 70
    const-string v0, "preferences_alerts_type"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 71
    invoke-direct {p0}, Lcom/android/calendar/CalendarPreferenceActivity;->updateChildPreferences()V

    .line 73
    :cond_b
    return-void
.end method
