.class public Lcom/android/settings/TextToSpeechSettings;
.super Landroid/preference/PreferenceActivity;
.source "TextToSpeechSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# static fields
.field private static final FALLBACK_TTS_DEFAULT_SYNTH:Ljava/lang/String; = "com.svox.pico"

.field private static final KEY_TTS_DEFAULT_COUNTRY:Ljava/lang/String; = "tts_default_country"

.field private static final KEY_TTS_DEFAULT_LANG:Ljava/lang/String; = "tts_default_lang"

.field private static final KEY_TTS_DEFAULT_RATE:Ljava/lang/String; = "tts_default_rate"

.field private static final KEY_TTS_DEFAULT_VARIANT:Ljava/lang/String; = "tts_default_variant"

.field private static final KEY_TTS_INSTALL_DATA:Ljava/lang/String; = "tts_install_data"

.field private static final KEY_TTS_PLAY_EXAMPLE:Ljava/lang/String; = "tts_play_example"

.field private static final KEY_TTS_USE_DEFAULT:Ljava/lang/String; = "toggle_use_default_tts_settings"

.field private static final LOCALE_DELIMITER:Ljava/lang/String; = "-"

.field private static final TAG:Ljava/lang/String; = "TextToSpeechSettings"

.field private static final VOICE_DATA_INSTALLATION:I = 0x7bc

.field private static final VOICE_DATA_INTEGRITY_CHECK:I = 0x7b9


# instance fields
.field private mDefaultCountry:Ljava/lang/String;

.field private mDefaultEng:Ljava/lang/String;

.field private mDefaultLanguage:Ljava/lang/String;

.field private mDefaultLocPref:Landroid/preference/ListPreference;

.field private mDefaultLocVariant:Ljava/lang/String;

.field private mDefaultRatePref:Landroid/preference/ListPreference;

.field private mEnableDemo:Z

.field private mInstallData:Landroid/preference/Preference;

.field private mPlayExample:Landroid/preference/Preference;

.field private mTts:Landroid/speech/tts/TextToSpeech;

.field private mUseDefaultPref:Landroid/preference/CheckBoxPreference;

.field private operateLanguage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 66
    iput-object v1, p0, Lcom/android/settings/TextToSpeechSettings;->mPlayExample:Landroid/preference/Preference;

    .line 67
    iput-object v1, p0, Lcom/android/settings/TextToSpeechSettings;->mInstallData:Landroid/preference/Preference;

    .line 68
    iput-object v1, p0, Lcom/android/settings/TextToSpeechSettings;->mUseDefaultPref:Landroid/preference/CheckBoxPreference;

    .line 69
    iput-object v1, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultRatePref:Landroid/preference/ListPreference;

    .line 70
    iput-object v1, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLocPref:Landroid/preference/ListPreference;

    .line 71
    iput-object v1, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLanguage:Ljava/lang/String;

    .line 72
    iput-object v1, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultCountry:Ljava/lang/String;

    .line 73
    iput-object v1, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLocVariant:Ljava/lang/String;

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultEng:Ljava/lang/String;

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/TextToSpeechSettings;->mEnableDemo:Z

    .line 77
    iput-object v1, p0, Lcom/android/settings/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    return-void
.end method

.method private checkVoiceData()V
    .registers 8

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/android/settings/TextToSpeechSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 229
    .local v3, pm:Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 230
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "android.speech.tts.engine.CHECK_TTS_DATA"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 233
    .local v4, resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_14
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_3b

    .line 234
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 235
    .local v0, currentActivityInfo:Landroid/content/pm/ActivityInfo;
    iget-object v5, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultEng:Ljava/lang/String;

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_38

    .line 236
    iget-object v5, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultEng:Ljava/lang/String;

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    const/16 v5, 0x7b9

    invoke-virtual {p0, v2, v5}, Lcom/android/settings/TextToSpeechSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 233
    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 240
    .end local v0           #currentActivityInfo:Landroid/content/pm/ActivityInfo;
    :cond_3b
    return-void
.end method

.method private initClickers()V
    .registers 2

    .prologue
    .line 127
    const-string v0, "tts_play_example"

    invoke-virtual {p0, v0}, Lcom/android/settings/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/TextToSpeechSettings;->mPlayExample:Landroid/preference/Preference;

    .line 128
    iget-object v0, p0, Lcom/android/settings/TextToSpeechSettings;->mPlayExample:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 130
    const-string v0, "tts_install_data"

    invoke-virtual {p0, v0}, Lcom/android/settings/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/TextToSpeechSettings;->mInstallData:Landroid/preference/Preference;

    .line 131
    iget-object v0, p0, Lcom/android/settings/TextToSpeechSettings;->mInstallData:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 132
    return-void
.end method

.method private initDefaultSettings()V
    .registers 15

    .prologue
    const/4 v9, 0x1

    const-string v13, "tts_default_rate"

    const-string v12, "tts_default_lang"

    const-string v11, "tts_default_country"

    const-string v10, "tts_default_variant"

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 137
    .local v6, resolver:Landroid/content/ContentResolver;
    const/4 v4, 0x0

    .line 143
    .local v4, intVal:I
    const-string v8, "toggle_use_default_tts_settings"

    invoke-virtual {p0, v8}, Lcom/android/settings/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/settings/TextToSpeechSettings;->mUseDefaultPref:Landroid/preference/CheckBoxPreference;

    .line 145
    :try_start_18
    const-string v8, "tts_use_defaults"

    invoke-static {v6, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1d
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_18 .. :try_end_1d} :catch_d3

    move-result v4

    .line 151
    :goto_1e
    iget-object v8, p0, Lcom/android/settings/TextToSpeechSettings;->mUseDefaultPref:Landroid/preference/CheckBoxPreference;

    if-ne v4, v9, :cond_dd

    :goto_22
    invoke-virtual {v8, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 152
    iget-object v8, p0, Lcom/android/settings/TextToSpeechSettings;->mUseDefaultPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 155
    const-string v8, "tts_default_synth"

    invoke-static {v6, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 156
    .local v3, engine:Ljava/lang/String;
    if-nez v3, :cond_39

    .line 158
    const-string v3, "com.svox.pico"

    .line 159
    const-string v8, "tts_default_synth"

    invoke-static {v6, v8, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 161
    :cond_39
    iput-object v3, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultEng:Ljava/lang/String;

    .line 164
    const-string v8, "tts_default_rate"

    invoke-virtual {p0, v13}, Lcom/android/settings/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/ListPreference;

    iput-object v8, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultRatePref:Landroid/preference/ListPreference;

    .line 166
    :try_start_45
    const-string v8, "tts_default_rate"

    invoke-static {v6, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_4a
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_45 .. :try_end_4a} :catch_e0

    move-result v4

    .line 172
    :goto_4b
    iget-object v8, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultRatePref:Landroid/preference/ListPreference;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 173
    iget-object v8, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultRatePref:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 177
    const/4 v5, 0x0

    .line 178
    .local v5, language:Ljava/lang/String;
    const/4 v0, 0x0

    .line 179
    .local v0, country:Ljava/lang/String;
    const/4 v7, 0x0

    .line 180
    .local v7, variant:Ljava/lang/String;
    const-string v8, "tts_default_lang"

    invoke-virtual {p0, v12}, Lcom/android/settings/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/ListPreference;

    iput-object v8, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLocPref:Landroid/preference/ListPreference;

    .line 181
    const-string v8, "tts_default_lang"

    invoke-static {v6, v12}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 182
    if-nez v5, :cond_8d

    .line 184
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 185
    .local v1, currentLocale:Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v5

    .line 186
    invoke-virtual {v1}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v0

    .line 187
    invoke-virtual {v1}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v7

    .line 188
    const-string v8, "tts_default_lang"

    invoke-static {v6, v12, v5}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 189
    const-string v8, "tts_default_country"

    invoke-static {v6, v11, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 190
    const-string v8, "tts_default_variant"

    invoke-static {v6, v10, v7}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 192
    .end local v1           #currentLocale:Ljava/util/Locale;
    :cond_8d
    iput-object v5, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLanguage:Ljava/lang/String;

    .line 193
    if-nez v0, :cond_af

    .line 195
    const-string v8, "tts_default_country"

    invoke-static {v6, v11}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    if-nez v0, :cond_af

    .line 198
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 199
    .restart local v1       #currentLocale:Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v0

    .line 200
    invoke-virtual {v1}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v7

    .line 201
    const-string v8, "tts_default_country"

    invoke-static {v6, v11, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 202
    const-string v8, "tts_default_variant"

    invoke-static {v6, v10, v7}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 205
    .end local v1           #currentLocale:Ljava/util/Locale;
    :cond_af
    iput-object v0, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultCountry:Ljava/lang/String;

    .line 206
    if-nez v7, :cond_c8

    .line 208
    const-string v8, "tts_default_variant"

    invoke-static {v6, v10}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 209
    if-nez v7, :cond_c8

    .line 211
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 212
    .restart local v1       #currentLocale:Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v7

    .line 213
    const-string v8, "tts_default_variant"

    invoke-static {v6, v10, v7}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 216
    .end local v1           #currentLocale:Ljava/util/Locale;
    :cond_c8
    iput-object v7, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLocVariant:Ljava/lang/String;

    .line 218
    invoke-direct {p0, v5, v0, v7}, Lcom/android/settings/TextToSpeechSettings;->setDefaultLocalePref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v8, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLocPref:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 220
    return-void

    .line 146
    .end local v0           #country:Ljava/lang/String;
    .end local v3           #engine:Ljava/lang/String;
    .end local v5           #language:Ljava/lang/String;
    .end local v7           #variant:Ljava/lang/String;
    :catch_d3
    move-exception v8

    move-object v2, v8

    .line 148
    .local v2, e:Landroid/provider/Settings$SettingNotFoundException;
    const/4 v4, 0x0

    .line 149
    const-string v8, "tts_use_defaults"

    invoke-static {v6, v8, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1e

    .line 151
    .end local v2           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_dd
    const/4 v9, 0x0

    goto/16 :goto_22

    .line 167
    .restart local v3       #engine:Ljava/lang/String;
    :catch_e0
    move-exception v8

    move-object v2, v8

    .line 169
    .restart local v2       #e:Landroid/provider/Settings$SettingNotFoundException;
    const/16 v4, 0x64

    .line 170
    const-string v8, "tts_default_rate"

    invoke-static {v6, v13, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_4b
.end method

.method private installVoiceData()V
    .registers 8

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/android/settings/TextToSpeechSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 249
    .local v3, pm:Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 250
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "android.speech.tts.engine.INSTALL_TTS_DATA"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 253
    .local v4, resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_14
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_3b

    .line 254
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 255
    .local v0, currentActivityInfo:Landroid/content/pm/ActivityInfo;
    iget-object v5, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultEng:Ljava/lang/String;

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_38

    .line 256
    iget-object v5, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultEng:Ljava/lang/String;

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    const/16 v5, 0x7bc

    invoke-virtual {p0, v2, v5}, Lcom/android/settings/TextToSpeechSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 253
    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 260
    .end local v0           #currentActivityInfo:Landroid/content/pm/ActivityInfo;
    :cond_3b
    return-void
.end method

.method private parseLocaleInfo(Ljava/lang/String;)V
    .registers 5
    .parameter "locale"

    .prologue
    const-string v2, ""

    .line 374
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "-"

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    .local v0, tokenizer:Ljava/util/StringTokenizer;
    const-string v1, ""

    iput-object v2, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLanguage:Ljava/lang/String;

    .line 376
    const-string v1, ""

    iput-object v2, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultCountry:Ljava/lang/String;

    .line 377
    const-string v1, ""

    iput-object v2, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLocVariant:Ljava/lang/String;

    .line 378
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 379
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLanguage:Ljava/lang/String;

    .line 381
    :cond_25
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 382
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultCountry:Ljava/lang/String;

    .line 384
    :cond_35
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 385
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLocVariant:Ljava/lang/String;

    .line 387
    :cond_45
    return-void
.end method

.method private setDefaultLocalePref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "language"
    .parameter "country"
    .parameter "variant"

    .prologue
    const-string v4, "-"

    const-string v3, ""

    .line 392
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 393
    .local v0, localeString:Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {p2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_6e

    .line 394
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 398
    :goto_28
    const-string v1, ""

    invoke-virtual {p3, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_47

    .line 399
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 402
    :cond_47
    iget-object v1, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLocPref:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_82

    .line 403
    iget-object v1, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLocPref:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 408
    :goto_55
    const-string v1, "TextToSpeechSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In initDefaultSettings: localeString="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    return-void

    .line 396
    :cond_6e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_28

    .line 405
    :cond_82
    iget-object v1, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLocPref:Landroid/preference/ListPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_55
.end method

.method private updateWidgetState()V
    .registers 3

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/settings/TextToSpeechSettings;->mPlayExample:Landroid/preference/Preference;

    iget-boolean v1, p0, Lcom/android/settings/TextToSpeechSettings;->mEnableDemo:Z

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 365
    iget-object v0, p0, Lcom/android/settings/TextToSpeechSettings;->mUseDefaultPref:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/settings/TextToSpeechSettings;->mEnableDemo:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 366
    iget-object v0, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultRatePref:Landroid/preference/ListPreference;

    iget-boolean v1, p0, Lcom/android/settings/TextToSpeechSettings;->mEnableDemo:Z

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 367
    iget-object v0, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLocPref:Landroid/preference/ListPreference;

    iget-boolean v1, p0, Lcom/android/settings/TextToSpeechSettings;->mEnableDemo:Z

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 369
    iget-object v0, p0, Lcom/android/settings/TextToSpeechSettings;->mInstallData:Landroid/preference/Preference;

    iget-boolean v1, p0, Lcom/android/settings/TextToSpeechSettings;->mEnableDemo:Z

    if-nez v1, :cond_27

    const/4 v1, 0x1

    :goto_23
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 370
    return-void

    .line 369
    :cond_27
    const/4 v1, 0x0

    goto :goto_23
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const-string v1, "TextToSpeechSettings"

    .line 287
    const/16 v0, 0x7b9

    if-ne p1, v0, :cond_24

    .line 288
    const/4 v0, 0x1

    if-ne p2, v0, :cond_25

    .line 289
    const-string v0, "TextToSpeechSettings"

    const-string v0, "Voice data check passed"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v0, p0, Lcom/android/settings/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-nez v0, :cond_24

    .line 291
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-direct {v0, p0, p0}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/android/settings/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 292
    iget-object v0, p0, Lcom/android/settings/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 300
    :cond_24
    :goto_24
    return-void

    .line 295
    :cond_25
    const-string v0, "TextToSpeechSettings"

    const-string v0, "Voice data check failed"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/TextToSpeechSettings;->mEnableDemo:Z

    .line 297
    invoke-direct {p0}, Lcom/android/settings/TextToSpeechSettings;->updateWidgetState()V

    goto :goto_24
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    const v1, 0x7f04001b

    invoke-virtual {p0, v1}, Lcom/android/settings/TextToSpeechSettings;->addPreferencesFromResource(I)V

    .line 94
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 95
    .local v0, currentLocale1:Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/TextToSpeechSettings;->operateLanguage:Ljava/lang/String;

    .line 96
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/settings/TextToSpeechSettings;->setVolumeControlStream(I)V

    .line 97
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/TextToSpeechSettings;->mEnableDemo:Z

    .line 98
    invoke-direct {p0}, Lcom/android/settings/TextToSpeechSettings;->initClickers()V

    .line 99
    invoke-direct {p0}, Lcom/android/settings/TextToSpeechSettings;->initDefaultSettings()V

    .line 100
    const-string v1, "TextToSpeechSettings"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 119
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 120
    iget-object v0, p0, Lcom/android/settings/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_c

    .line 121
    iget-object v0, p0, Lcom/android/settings/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 123
    :cond_c
    return-void
.end method

.method public onInit(I)V
    .registers 6
    .parameter "status"

    .prologue
    const/4 v3, 0x0

    const-string v2, "TextToSpeechSettings"

    .line 267
    if-nez p1, :cond_3c

    .line 268
    const-string v0, "TextToSpeechSettings"

    const-string v0, "TTS engine for settings screen initialized."

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/TextToSpeechSettings;->mEnableDemo:Z

    .line 274
    :goto_f
    invoke-direct {p0}, Lcom/android/settings/TextToSpeechSettings;->updateWidgetState()V

    .line 275
    const-string v0, "TextToSpeechSettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInit:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/TextToSpeechSettings;->operateLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v0, p0, Lcom/android/settings/TextToSpeechSettings;->operateLanguage:Ljava/lang/String;

    const-string v1, "kor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 278
    iget-object v0, p0, Lcom/android/settings/TextToSpeechSettings;->mPlayExample:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 280
    :cond_3b
    return-void

    .line 271
    :cond_3c
    const-string v0, "TextToSpeechSettings"

    const-string v0, "TTS engine for settings screen failed to initialize successfully."

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iput-boolean v3, p0, Lcom/android/settings/TextToSpeechSettings;->mEnableDemo:Z

    goto :goto_f
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 14
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v8, 0x1

    const-string v10, "tts_default_rate"

    const-string v9, "tts_default_lang"

    const-string v6, "/"

    const-string v7, "TextToSpeechSettings"

    .line 304
    const-string v4, "toggle_use_default_tts_settings"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_49

    .line 306
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_46

    move v3, v8

    .line 307
    .local v3, value:I
    :goto_20
    invoke-virtual {p0}, Lcom/android/settings/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tts_use_defaults"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 309
    const-string v4, "TextToSpeechSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TTS use default settings is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    .end local v3           #value:I
    .end local p2
    :cond_45
    :goto_45
    return v8

    .line 306
    .restart local p2
    :cond_46
    const/4 v4, 0x0

    move v3, v4

    goto :goto_20

    .line 310
    :cond_49
    const-string v4, "tts_default_rate"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_94

    .line 312
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 314
    .restart local v3       #value:I
    :try_start_5b
    invoke-virtual {p0}, Lcom/android/settings/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tts_default_rate"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 316
    iget-object v4, p0, Lcom/android/settings/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v4, :cond_71

    .line 317
    iget-object v4, p0, Lcom/android/settings/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    int-to-float v5, v3

    const/high16 v6, 0x42c8

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I

    .line 319
    :cond_71
    const-string v4, "TextToSpeechSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TTS default rate is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_89
    .catch Ljava/lang/NumberFormatException; {:try_start_5b .. :try_end_89} :catch_8a

    goto :goto_45

    .line 320
    :catch_8a
    move-exception v4

    move-object v1, v4

    .line 321
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v4, "TextToSpeechSettings"

    const-string v4, "could not persist default TTS rate setting"

    invoke-static {v7, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_45

    .line 323
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .end local v3           #value:I
    .restart local p2
    :cond_94
    const-string v4, "tts_default_lang"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 325
    invoke-virtual {p0}, Lcom/android/settings/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 326
    .local v2, resolver:Landroid/content/ContentResolver;
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-direct {p0, p2}, Lcom/android/settings/TextToSpeechSettings;->parseLocaleInfo(Ljava/lang/String;)V

    .line 327
    const-string v4, "tts_default_lang"

    iget-object v4, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLanguage:Ljava/lang/String;

    invoke-static {v2, v9, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 328
    const-string v4, "tts_default_country"

    iget-object v5, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultCountry:Ljava/lang/String;

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 329
    const-string v4, "tts_default_variant"

    iget-object v5, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLocVariant:Ljava/lang/String;

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 330
    const-string v4, "TextToSpeechSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TTS default lang/country/variant set to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLanguage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultCountry:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLocVariant:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v4, p0, Lcom/android/settings/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v4, :cond_45

    .line 333
    iget-object v4, p0, Lcom/android/settings/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    new-instance v5, Ljava/util/Locale;

    iget-object v6, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLanguage:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultCountry:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    goto/16 :goto_45
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 7
    .parameter "preference"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 345
    iget-object v0, p0, Lcom/android/settings/TextToSpeechSettings;->mPlayExample:Landroid/preference/Preference;

    if-ne p1, v0, :cond_1d

    .line 347
    iget-object v0, p0, Lcom/android/settings/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_1b

    .line 348
    iget-object v0, p0, Lcom/android/settings/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Lcom/android/settings/TextToSpeechSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08037d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    :cond_1b
    move v0, v4

    .line 359
    :goto_1c
    return v0

    .line 353
    :cond_1d
    iget-object v0, p0, Lcom/android/settings/TextToSpeechSettings;->mInstallData:Landroid/preference/Preference;

    if-ne p1, v0, :cond_29

    .line 354
    invoke-direct {p0}, Lcom/android/settings/TextToSpeechSettings;->installVoiceData()V

    .line 356
    invoke-virtual {p0}, Lcom/android/settings/TextToSpeechSettings;->finish()V

    move v0, v4

    .line 357
    goto :goto_1c

    :cond_29
    move v0, v3

    .line 359
    goto :goto_1c
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 106
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStart()V

    .line 110
    invoke-direct {p0}, Lcom/android/settings/TextToSpeechSettings;->initClickers()V

    .line 111
    invoke-direct {p0}, Lcom/android/settings/TextToSpeechSettings;->updateWidgetState()V

    .line 112
    invoke-direct {p0}, Lcom/android/settings/TextToSpeechSettings;->checkVoiceData()V

    .line 113
    const-string v0, "TextToSpeechSettings"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return-void
.end method
