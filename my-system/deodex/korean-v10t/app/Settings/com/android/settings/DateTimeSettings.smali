.class public Lcom/android/settings/DateTimeSettings;
.super Landroid/preference/PreferenceActivity;
.source "DateTimeSettings.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# static fields
.field private static final DIALOG_DATEPICKER:I = 0x0

.field private static final DIALOG_TIMEPICKER:I = 0x1

.field private static final HOURS_12:Ljava/lang/String; = "12"

.field private static final HOURS_24:Ljava/lang/String; = "24"

.field private static final KEY_AUTO_TIME:Ljava/lang/String; = "auto_time"

.field private static final KEY_DATE_FORMAT:Ljava/lang/String; = "date_format"

.field private static final TAG:Ljava/lang/String; = "DateTimeSettings"


# instance fields
.field private mAutoPref:Landroid/preference/CheckBoxPreference;

.field private mDateFormat:Landroid/preference/ListPreference;

.field private mDatePref:Landroid/preference/Preference;

.field private mDummyDate:Ljava/util/Calendar;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mTime24Pref:Landroid/preference/Preference;

.field private mTimePref:Landroid/preference/Preference;

.field private mTimeZone:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 394
    new-instance v0, Lcom/android/settings/DateTimeSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/DateTimeSettings$1;-><init>(Lcom/android/settings/DateTimeSettings;)V

    iput-object v0, p0, Lcom/android/settings/DateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/DateTimeSettings;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay()V

    return-void
.end method

.method private enableManualTime(ZZ)V
    .registers 8
    .parameter "enable"
    .parameter "autoEnabled"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 297
    if-nez p1, :cond_27

    .line 298
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mAutoPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 299
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mAutoPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 305
    :goto_e
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    if-nez p2, :cond_36

    move v1, v4

    :goto_13
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 306
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    if-nez p2, :cond_38

    move v1, v4

    :goto_1b
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 307
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    if-nez p2, :cond_3a

    move v1, v4

    :goto_23
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 309
    return-void

    .line 302
    :cond_27
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_time"

    if-eqz p2, :cond_34

    move v2, v4

    :goto_30
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_e

    :cond_34
    move v2, v3

    goto :goto_30

    :cond_36
    move v1, v3

    .line 305
    goto :goto_13

    :cond_38
    move v1, v3

    .line 306
    goto :goto_1b

    :cond_3a
    move v1, v3

    .line 307
    goto :goto_23
.end method

.method private formatOffset(I)[C
    .registers 8
    .parameter "off"

    .prologue
    const/4 v5, 0x3

    .line 366
    div-int/lit16 v3, p1, 0x3e8

    div-int/lit8 p1, v3, 0x3c

    .line 368
    const/16 v3, 0x9

    new-array v0, v3, [C

    .line 369
    .local v0, buf:[C
    const/4 v3, 0x0

    const/16 v4, 0x47

    aput-char v4, v0, v3

    .line 370
    const/4 v3, 0x1

    const/16 v4, 0x4d

    aput-char v4, v0, v3

    .line 371
    const/4 v3, 0x2

    const/16 v4, 0x54

    aput-char v4, v0, v3

    .line 373
    if-gez p1, :cond_4a

    .line 374
    const/16 v3, 0x2d

    aput-char v3, v0, v5

    .line 375
    neg-int p1, p1

    .line 380
    :goto_1f
    div-int/lit8 v1, p1, 0x3c

    .line 381
    .local v1, hours:I
    rem-int/lit8 v2, p1, 0x3c

    .line 383
    .local v2, minutes:I
    const/4 v3, 0x4

    div-int/lit8 v4, v1, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 384
    const/4 v3, 0x5

    rem-int/lit8 v4, v1, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 386
    const/4 v3, 0x6

    const/16 v4, 0x3a

    aput-char v4, v0, v3

    .line 388
    const/4 v3, 0x7

    div-int/lit8 v4, v2, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 389
    const/16 v3, 0x8

    rem-int/lit8 v4, v2, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 391
    return-object v0

    .line 377
    .end local v1           #hours:I
    .end local v2           #minutes:I
    :cond_4a
    const/16 v3, 0x2b

    aput-char v3, v0, v5

    goto :goto_1f
.end method

.method private getAutoState()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 335
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_time"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_a} :catch_11

    move-result v1

    if-lez v1, :cond_f

    move v1, v3

    .line 338
    :goto_e
    return v1

    .line 335
    :cond_f
    const/4 v1, 0x0

    goto :goto_e

    .line 337
    :catch_11
    move-exception v1

    move-object v0, v1

    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    move v1, v3

    .line 338
    goto :goto_e
.end method

.method private getDateFormat()Ljava/lang/String;
    .registers 3

    .prologue
    .line 329
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "date_format"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTimeZoneText()Ljava/lang/String;
    .registers 6

    .prologue
    .line 353
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    .line 354
    .local v2, tz:Ljava/util/TimeZone;
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    .line 355
    .local v0, daylight:Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 357
    .local v1, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    if-eqz v0, :cond_3c

    invoke-virtual {v2}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v4

    :goto_20
    add-int/2addr v3, v4

    invoke-direct {p0, v3}, Lcom/android/settings/DateTimeSettings;->formatOffset(I)[C

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v4}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 357
    :cond_3c
    const/4 v4, 0x0

    goto :goto_20
.end method

.method private initUI()V
    .registers 16

    .prologue
    const v14, 0x7f050001

    const/4 v13, 0x1

    const/4 v5, 0x0

    .line 80
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->getAutoState()Z

    move-result v7

    .line 82
    .local v7, autoEnabled:Z
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    .line 83
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v1, v13}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xb

    const/16 v3, 0x1f

    const/16 v4, 0xd

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 85
    const-string v0, "auto_time"

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/DateTimeSettings;->mAutoPref:Landroid/preference/CheckBoxPreference;

    .line 86
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mAutoPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 87
    const-string v0, "time"

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    .line 88
    const-string v0, "24 hour"

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    .line 89
    const-string v0, "timezone"

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    .line 90
    const-string v0, "date"

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    .line 91
    const-string v0, "date_format"

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    .line 94
    .local v9, dateFormats:[Ljava/lang/String;
    array-length v0, v9

    new-array v11, v0, [Ljava/lang/String;

    .line 95
    .local v11, formattedDates:[Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->getDateFormat()Ljava/lang/String;

    move-result-object v8

    .line 98
    .local v8, currentFormat:Ljava/lang/String;
    if-nez v8, :cond_6d

    .line 99
    const-string v8, ""

    .line 101
    :cond_6d
    const/4 v12, 0x0

    .local v12, i:I
    :goto_6e
    array-length v0, v11

    if-ge v12, v0, :cond_a0

    .line 102
    aget-object v0, v9, v12

    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->getDateFormatForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    .line 106
    .local v10, formatted:Ljava/lang/String;
    aget-object v0, v9, v12

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9d

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08006c

    new-array v2, v13, [Ljava/lang/Object;

    aput-object v10, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v11, v12

    .line 101
    :goto_9a
    add-int/lit8 v12, v12, 0x1

    goto :goto_6e

    .line 110
    :cond_9d
    aput-object v10, v11, v12

    goto :goto_9a

    .line 114
    .end local v10           #formatted:Ljava/lang/String;
    :cond_a0
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    invoke-virtual {v0, v11}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 115
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    invoke-virtual {v0, v14}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 116
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    invoke-virtual {v0, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    if-nez v7, :cond_c8

    move v1, v13

    :goto_b4
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 119
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    if-nez v7, :cond_ca

    move v1, v13

    :goto_bc
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 120
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    if-nez v7, :cond_cc

    move v1, v13

    :goto_c4
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 121
    return-void

    :cond_c8
    move v1, v5

    .line 118
    goto :goto_b4

    :cond_ca
    move v1, v5

    .line 119
    goto :goto_bc

    :cond_cc
    move v1, v5

    .line 120
    goto :goto_c4
.end method

.method private is24Hour()Z
    .registers 2

    .prologue
    .line 319
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private set24Hour(Z)V
    .registers 5
    .parameter "is24Hour"

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "time_12_24"

    if-eqz p1, :cond_e

    const-string v2, "24"

    :goto_a
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 326
    return-void

    .line 323
    :cond_e
    const-string v2, "12"

    goto :goto_a
.end method

.method private setDateFormat(Ljava/lang/String;)V
    .registers 4
    .parameter "format"

    .prologue
    .line 343
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_7

    .line 344
    const/4 p1, 0x0

    .line 347
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "date_format"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 348
    return-void
.end method

.method private timeUpdated()V
    .registers 3

    .prologue
    .line 312
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 313
    .local v0, timeChanged:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->sendBroadcast(Landroid/content/Intent;)V

    .line 314
    return-void
.end method

.method private updateTimeAndDateDisplay()V
    .registers 6

    .prologue
    .line 153
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    .line 154
    .local v2, shortDateFormat:Ljava/text/DateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 155
    .local v1, now:Ljava/util/Date;
    iget-object v3, p0, Lcom/android/settings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 156
    .local v0, dummyDate:Ljava/util/Date;
    iget-object v3, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v3, p0, Lcom/android/settings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->getTimeZoneText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v3, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v3, p0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 160
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 289
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay()V

    .line 290
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "icicle"

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const v0, 0x7f040008

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->addPreferencesFromResource(I)V

    .line 76
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->initUI()V

    .line 77
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .registers 9
    .parameter "id"

    .prologue
    .line 210
    packed-switch p1, :pswitch_data_58

    .line 234
    const/4 v0, 0x0

    .line 238
    .local v0, d:Landroid/app/Dialog;
    :goto_4
    return-object v0

    .line 212
    .end local v0           #d:Landroid/app/Dialog;
    :pswitch_5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 213
    .local v6, calendar:Ljava/util/Calendar;
    new-instance v0, Landroid/app/DatePickerDialog;

    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v1, 0x2

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v1, 0x5

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 219
    .restart local v0       #d:Landroid/app/Dialog;
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080069

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 223
    .end local v0           #d:Landroid/app/Dialog;
    .end local v6           #calendar:Ljava/util/Calendar;
    :pswitch_2e
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 224
    .restart local v6       #calendar:Ljava/util/Calendar;
    new-instance v0, Landroid/app/TimePickerDialog;

    const/16 v1, 0xb

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v1, 0xc

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 230
    .restart local v0       #d:Landroid/app/Dialog;
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080068

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 210
    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_5
        :pswitch_2e
    .end packed-switch
.end method

.method public onDateSet(Landroid/widget/DatePicker;III)V
    .registers 12
    .parameter "view"
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    .line 163
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 165
    .local v0, c:Ljava/util/Calendar;
    const/4 v3, 0x1

    invoke-virtual {v0, v3, p2}, Ljava/util/Calendar;->set(II)V

    .line 166
    const/4 v3, 0x2

    invoke-virtual {v0, v3, p3}, Ljava/util/Calendar;->set(II)V

    .line 167
    const/4 v3, 0x5

    invoke-virtual {v0, v3, p4}, Ljava/util/Calendar;->set(II)V

    .line 168
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 170
    .local v1, when:J
    const-wide/16 v3, 0x3e8

    div-long v3, v1, v3

    const-wide/32 v5, 0x7fffffff

    cmp-long v3, v3, v5

    if-gez v3, :cond_22

    .line 171
    invoke-static {v1, v2}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 173
    :cond_22
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay()V

    .line 174
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 147
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 148
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 150
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 7
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 268
    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    if-ne p2, v1, :cond_a

    .line 269
    invoke-virtual {p0, v2}, Lcom/android/settings/DateTimeSettings;->showDialog(I)V

    .line 283
    :cond_9
    :goto_9
    return v2

    .line 270
    :cond_a
    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    if-ne p2, v1, :cond_15

    .line 272
    invoke-virtual {p0, v3}, Lcom/android/settings/DateTimeSettings;->removeDialog(I)V

    .line 273
    invoke-virtual {p0, v3}, Lcom/android/settings/DateTimeSettings;->showDialog(I)V

    goto :goto_9

    .line 274
    :cond_15
    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    if-ne p2, v1, :cond_2b

    .line 275
    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    check-cast v1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/DateTimeSettings;->set24Hour(Z)V

    .line 276
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay()V

    .line 277
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->timeUpdated()V

    goto :goto_9

    .line 278
    :cond_2b
    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    if-ne p2, v1, :cond_9

    .line 279
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 280
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/android/settings/ZoneList;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 281
    invoke-virtual {p0, v0, v2}, Lcom/android/settings/DateTimeSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_9
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 10
    .parameter "id"
    .parameter "d"

    .prologue
    .line 243
    packed-switch p1, :pswitch_data_38

    .line 264
    :goto_3
    return-void

    .line 245
    :pswitch_4
    move-object v0, p2

    check-cast v0, Landroid/app/DatePickerDialog;

    move-object v2, v0

    .line 246
    .local v2, datePicker:Landroid/app/DatePickerDialog;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 247
    .local v1, calendar:Ljava/util/Calendar;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x5

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v2, v4, v5, v6}, Landroid/app/DatePickerDialog;->updateDate(III)V

    goto :goto_3

    .line 254
    .end local v1           #calendar:Ljava/util/Calendar;
    .end local v2           #datePicker:Landroid/app/DatePickerDialog;
    :pswitch_1f
    move-object v0, p2

    check-cast v0, Landroid/app/TimePickerDialog;

    move-object v3, v0

    .line 255
    .local v3, timePicker:Landroid/app/TimePickerDialog;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 256
    .restart local v1       #calendar:Ljava/util/Calendar;
    const/16 v4, 0xb

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v5, 0xc

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/app/TimePickerDialog;->updateTime(II)V

    goto :goto_3

    .line 243
    nop

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_4
        :pswitch_1f
    .end packed-switch
.end method

.method protected onResume()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 126
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 129
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    .line 132
    .local v0, activePhoneType:I
    const/4 v2, 0x2

    if-ne v2, v0, :cond_1f

    .line 133
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/settings/DateTimeSettings;->enableManualTime(ZZ)V

    .line 135
    :cond_1f
    iget-object v2, p0, Lcom/android/settings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    check-cast v2, Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->is24Hour()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 137
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 138
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.TIME_TICK"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    iget-object v2, p0, Lcom/android/settings/DateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1, v4, v4}, Lcom/android/settings/DateTimeSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 142
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay()V

    .line 143
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 8
    .parameter "preferences"
    .parameter "key"

    .prologue
    const/4 v3, 0x1

    const-string v4, "date_format"

    .line 194
    const-string v2, "date_format"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08006b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 197
    .local v1, format:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "date_format"

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 199
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay()V

    .line 204
    .end local v1           #format:Ljava/lang/String;
    :cond_26
    :goto_26
    return-void

    .line 200
    :cond_27
    const-string v2, "auto_time"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 201
    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 202
    .local v0, autoEnabled:Z
    invoke-direct {p0, v3, v0}, Lcom/android/settings/DateTimeSettings;->enableManualTime(ZZ)V

    goto :goto_26
.end method

.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .registers 11
    .parameter "view"
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    .line 177
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 179
    .local v0, c:Ljava/util/Calendar;
    const/16 v3, 0xb

    invoke-virtual {v0, v3, p2}, Ljava/util/Calendar;->set(II)V

    .line 180
    const/16 v3, 0xc

    invoke-virtual {v0, v3, p3}, Ljava/util/Calendar;->set(II)V

    .line 181
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 183
    .local v1, when:J
    const-wide/16 v3, 0x3e8

    div-long v3, v1, v3

    const-wide/32 v5, 0x7fffffff

    cmp-long v3, v3, v5

    if-gez v3, :cond_20

    .line 184
    invoke-static {v1, v2}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 186
    :cond_20
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay()V

    .line 191
    return-void
.end method
