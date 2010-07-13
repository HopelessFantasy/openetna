.class public Lcom/android/settings/SoundAndDisplaySettings;
.super Landroid/preference/PreferenceActivity;
.source "SoundAndDisplaySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final FALLBACK_EMERGENCY_TONE_VALUE:I = 0x0

.field private static final FALLBACK_SCREEN_TIMEOUT_VALUE:I = 0x7530

.field private static final KEY_ACCELEROMETER:Ljava/lang/String; = "accelerometer"

.field private static final KEY_ALCMODE:Ljava/lang/String; = "alcmode"

.field private static final KEY_ANIMATIONS:Ljava/lang/String; = "animations"

.field private static final KEY_DTMF_TONE:Ljava/lang/String; = "dtmf_tone"

.field private static final KEY_EMERGENCY_TONE:Ljava/lang/String; = "emergency_tone"

.field private static final KEY_PLAY_MEDIA_NOTIFICATION_SOUNDS:Ljava/lang/String; = "play_media_notification_sounds"

.field private static final KEY_SCREEN_TIMEOUT:Ljava/lang/String; = "screen_timeout"

.field private static final KEY_SILENT:Ljava/lang/String; = "silent"

.field private static final KEY_SOUND_EFFECTS:Ljava/lang/String; = "sound_effects"

.field private static final KEY_TOUCH_CALIBRATION:Ljava/lang/String; = "touch_calibration"

.field private static final KEY_VIBRATE:Ljava/lang/String; = "vibrate"

.field private static final KEY_VIBRATION_FEEDBACK:Ljava/lang/String; = "vibration_feedback"

.field private static final TAG:Ljava/lang/String; = "SoundAndDisplaysSettings"


# instance fields
.field private mALCMode:Landroid/preference/CheckBoxPreference;

.field private mAccelerometer:Landroid/preference/CheckBoxPreference;

.field private mAnimationScales:[F

.field private mAnimations:Landroid/preference/CheckBoxPreference;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mDtmfTone:Landroid/preference/CheckBoxPreference;

.field private mMountService:Landroid/os/IMountService;

.field private mPlayMediaNotificationSounds:Landroid/preference/CheckBoxPreference;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSilent:Landroid/preference/CheckBoxPreference;

.field private mSoundEffects:Landroid/preference/CheckBoxPreference;

.field private mTouch:Landroid/preference/Preference;

.field private mVibrate:Landroid/preference/CheckBoxPreference;

.field private mVibrationFeedback:Landroid/preference/CheckBoxPreference;

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SoundAndDisplaySettings;->mMountService:Landroid/os/IMountService;

    .line 134
    new-instance v0, Lcom/android/settings/SoundAndDisplaySettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/SoundAndDisplaySettings$1;-><init>(Lcom/android/settings/SoundAndDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/SoundAndDisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SoundAndDisplaySettings;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/settings/SoundAndDisplaySettings;->updateState(Z)V

    return-void
.end method

.method private setBrightness(I)V
    .registers 10
    .parameter "brightness"

    .prologue
    .line 488
    const/4 v1, 0x0

    .line 489
    .local v1, LIGHT_ID_BACKLIGHT:I
    const/4 v4, 0x1

    .line 490
    .local v4, LIGHT_ID_KEYBOARD:I
    const/4 v3, 0x2

    .line 491
    .local v3, LIGHT_ID_BUTTONS:I
    const/4 v2, 0x3

    .line 492
    .local v2, LIGHT_ID_BATTERY:I
    const/4 v5, 0x4

    .line 493
    .local v5, LIGHT_ID_NOTIFICATIONS:I
    const/4 v0, 0x5

    .line 496
    .local v0, LIGHT_ID_ATTENTION:I
    :try_start_6
    const-string v7, "hardware"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/os/IHardwareService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IHardwareService;

    move-result-object v6

    .line 499
    .local v6, hardware:Landroid/os/IHardwareService;
    if-eqz v6, :cond_16

    .line 500
    const/4 v7, 0x0

    invoke-interface {v6, p1, v7}, Landroid/os/IHardwareService;->setBacklight_byID(II)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_16} :catch_17

    .line 504
    .end local v6           #hardware:Landroid/os/IHardwareService;
    :cond_16
    :goto_16
    return-void

    .line 502
    :catch_17
    move-exception v7

    goto :goto_16
.end method

.method private setRingerMode(ZZ)V
    .registers 7
    .parameter "silent"
    .parameter "vibrate"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 324
    if-eqz p1, :cond_f

    .line 325
    iget-object v0, p0, Lcom/android/settings/SoundAndDisplaySettings;->mAudioManager:Landroid/media/AudioManager;

    if-eqz p2, :cond_d

    move v1, v3

    :goto_9
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 334
    :goto_c
    return-void

    :cond_d
    move v1, v2

    .line 325
    goto :goto_9

    .line 329
    :cond_f
    iget-object v0, p0, Lcom/android/settings/SoundAndDisplaySettings;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 330
    iget-object v0, p0, Lcom/android/settings/SoundAndDisplaySettings;->mAudioManager:Landroid/media/AudioManager;

    if-eqz p2, :cond_1e

    move v1, v3

    :goto_1a
    invoke-virtual {v0, v2, v1}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    goto :goto_c

    :cond_1e
    move v1, v2

    goto :goto_1a
.end method

.method private updateState(Z)V
    .registers 14
    .parameter "force"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 258
    iget-object v7, p0, Lcom/android/settings/SoundAndDisplaySettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    .line 259
    .local v3, ringerMode:I
    const/4 v7, 0x2

    if-eq v3, v7, :cond_a4

    move v5, v11

    .line 261
    .local v5, silentOrVibrateMode:Z
    :goto_c
    iget-object v7, p0, Lcom/android/settings/SoundAndDisplaySettings;->mSilent:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-ne v5, v7, :cond_16

    if-eqz p1, :cond_1b

    .line 262
    :cond_16
    iget-object v7, p0, Lcom/android/settings/SoundAndDisplaySettings;->mSilent:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 266
    :cond_1b
    :try_start_1b
    iget-object v7, p0, Lcom/android/settings/SoundAndDisplaySettings;->mPlayMediaNotificationSounds:Landroid/preference/CheckBoxPreference;

    iget-object v8, p0, Lcom/android/settings/SoundAndDisplaySettings;->mMountService:Landroid/os/IMountService;

    invoke-interface {v8}, Landroid/os/IMountService;->getPlayNotificationSounds()Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_26} :catch_c5

    .line 272
    :goto_26
    if-eqz v5, :cond_a9

    .line 273
    if-ne v3, v11, :cond_a7

    move v6, v11

    .line 278
    .local v6, vibrateSetting:Z
    :goto_2b
    iget-object v7, p0, Lcom/android/settings/SoundAndDisplaySettings;->mVibrate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-ne v6, v7, :cond_35

    if-eqz p1, :cond_3a

    .line 279
    :cond_35
    iget-object v7, p0, Lcom/android/settings/SoundAndDisplaySettings;->mVibrate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 282
    :cond_3a
    invoke-virtual {p0}, Lcom/android/settings/SoundAndDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "mode_ringer_streams_affected"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 284
    .local v4, silentModeStreams:I
    and-int/lit8 v7, v4, 0x10

    if-eqz v7, :cond_b6

    move v2, v11

    .line 286
    .local v2, isAlarmInclSilentMode:Z
    :goto_49
    iget-object v7, p0, Lcom/android/settings/SoundAndDisplaySettings;->mSilent:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_b8

    const v8, 0x7f0801ac

    :goto_50
    invoke-virtual {v7, v8}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 290
    const/4 v0, 0x1

    .line 293
    .local v0, animations:Z
    :try_start_54
    iget-object v7, p0, Lcom/android/settings/SoundAndDisplaySettings;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v7}, Landroid/view/IWindowManager;->getAnimationScales()[F

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/SoundAndDisplaySettings;->mAnimationScales:[F
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_54 .. :try_end_5c} :catch_c3

    .line 297
    :goto_5c
    iget-object v7, p0, Lcom/android/settings/SoundAndDisplaySettings;->mAnimationScales:[F

    if-eqz v7, :cond_70

    .line 300
    const/4 v1, 0x1

    .local v1, i:I
    :goto_61
    iget-object v7, p0, Lcom/android/settings/SoundAndDisplaySettings;->mAnimationScales:[F

    array-length v7, v7

    if-ge v1, v7, :cond_70

    .line 301
    iget-object v7, p0, Lcom/android/settings/SoundAndDisplaySettings;->mAnimationScales:[F

    aget v7, v7, v1

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-nez v7, :cond_bc

    .line 302
    const/4 v0, 0x0

    .line 309
    .end local v1           #i:I
    :cond_70
    iget-object v7, p0, Lcom/android/settings/SoundAndDisplaySettings;->mAnimations:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-ne v0, v7, :cond_7a

    if-eqz p1, :cond_7f

    .line 310
    :cond_7a
    iget-object v7, p0, Lcom/android/settings/SoundAndDisplaySettings;->mAnimations:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 313
    :cond_7f
    iget-object v7, p0, Lcom/android/settings/SoundAndDisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SoundAndDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "accelerometer_rotation"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_bf

    move v8, v11

    :goto_8e
    invoke-virtual {v7, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 317
    iget-object v7, p0, Lcom/android/settings/SoundAndDisplaySettings;->mALCMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SoundAndDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "sensor_illumination"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_c1

    move v8, v11

    :goto_a0
    invoke-virtual {v7, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 321
    return-void

    .end local v0           #animations:Z
    .end local v2           #isAlarmInclSilentMode:Z
    .end local v4           #silentModeStreams:I
    .end local v5           #silentOrVibrateMode:Z
    .end local v6           #vibrateSetting:Z
    :cond_a4
    move v5, v10

    .line 259
    goto/16 :goto_c

    .restart local v5       #silentOrVibrateMode:Z
    :cond_a7
    move v6, v10

    .line 273
    goto :goto_2b

    .line 275
    :cond_a9
    iget-object v7, p0, Lcom/android/settings/SoundAndDisplaySettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7, v10}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v7

    if-ne v7, v11, :cond_b4

    move v6, v11

    .restart local v6       #vibrateSetting:Z
    :goto_b2
    goto/16 :goto_2b

    .end local v6           #vibrateSetting:Z
    :cond_b4
    move v6, v10

    goto :goto_b2

    .restart local v4       #silentModeStreams:I
    .restart local v6       #vibrateSetting:Z
    :cond_b6
    move v2, v10

    .line 284
    goto :goto_49

    .line 286
    .restart local v2       #isAlarmInclSilentMode:Z
    :cond_b8
    const v8, 0x7f0801ab

    goto :goto_50

    .line 300
    .restart local v0       #animations:Z
    .restart local v1       #i:I
    :cond_bc
    add-int/lit8 v1, v1, 0x1

    goto :goto_61

    .end local v1           #i:I
    :cond_bf
    move v8, v10

    .line 313
    goto :goto_8e

    :cond_c1
    move v8, v10

    .line 317
    goto :goto_a0

    .line 294
    :catch_c3
    move-exception v7

    goto :goto_5c

    .line 267
    .end local v0           #animations:Z
    .end local v2           #isAlarmInclSilentMode:Z
    .end local v4           #silentModeStreams:I
    .end local v6           #vibrateSetting:Z
    :catch_c5
    move-exception v7

    goto/16 :goto_26
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 14
    .parameter "savedInstanceState"

    .prologue
    .line 143
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/SoundAndDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 146
    .local v3, resolver:Landroid/content/ContentResolver;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    .line 148
    .local v0, activePhoneType:I
    const-string v9, "audio"

    invoke-virtual {p0, v9}, Lcom/android/settings/SoundAndDisplaySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/settings/SoundAndDisplaySettings;->mAudioManager:Landroid/media/AudioManager;

    .line 149
    const-string v9, "window"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/SoundAndDisplaySettings;->mWindowManager:Landroid/view/IWindowManager;

    .line 152
    const-string v9, "mount"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/os/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IMountService;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/SoundAndDisplaySettings;->mMountService:Landroid/os/IMountService;

    .line 155
    const v9, 0x7f040018

    invoke-virtual {p0, v9}, Lcom/android/settings/SoundAndDisplaySettings;->addPreferencesFromResource(I)V

    .line 157
    const/4 v9, 0x2

    if-eq v9, v0, :cond_47

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/SoundAndDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    const-string v10, "emergency_tone"

    invoke-virtual {p0, v10}, Lcom/android/settings/SoundAndDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 163
    :cond_47
    const-string v9, "silent"

    invoke-virtual {p0, v9}, Lcom/android/settings/SoundAndDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/SoundAndDisplaySettings;->mSilent:Landroid/preference/CheckBoxPreference;

    .line 164
    const-string v9, "play_media_notification_sounds"

    invoke-virtual {p0, v9}, Lcom/android/settings/SoundAndDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/SoundAndDisplaySettings;->mPlayMediaNotificationSounds:Landroid/preference/CheckBoxPreference;

    .line 166
    const-string v9, "vibrate"

    invoke-virtual {p0, v9}, Lcom/android/settings/SoundAndDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/SoundAndDisplaySettings;->mVibrate:Landroid/preference/CheckBoxPreference;

    .line 167
    const-string v9, "dtmf_tone"

    invoke-virtual {p0, v9}, Lcom/android/settings/SoundAndDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/SoundAndDisplaySettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    .line 168
    iget-object v9, p0, Lcom/android/settings/SoundAndDisplaySettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 169
    iget-object v9, p0, Lcom/android/settings/SoundAndDisplaySettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    const-string v10, "dtmf_tone"

    const/4 v11, 0x1

    invoke-static {v3, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_17c

    const/4 v10, 0x1

    :goto_81
    invoke-virtual {v9, v10}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 171
    const-string v9, "sound_effects"

    invoke-virtual {p0, v9}, Lcom/android/settings/SoundAndDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/SoundAndDisplaySettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    .line 172
    iget-object v9, p0, Lcom/android/settings/SoundAndDisplaySettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 173
    iget-object v9, p0, Lcom/android/settings/SoundAndDisplaySettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    const-string v10, "sound_effects_enabled"

    const/4 v11, 0x0

    invoke-static {v3, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_17f

    const/4 v10, 0x1

    :goto_a0
    invoke-virtual {v9, v10}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 177
    const-string v9, "vibration_feedback"

    invoke-virtual {p0, v9}, Lcom/android/settings/SoundAndDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/SoundAndDisplaySettings;->mVibrationFeedback:Landroid/preference/CheckBoxPreference;

    .line 178
    iget-object v9, p0, Lcom/android/settings/SoundAndDisplaySettings;->mVibrationFeedback:Landroid/preference/CheckBoxPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 180
    const-string v9, "vibration_feedback_enabled"

    const/4 v10, 0x0

    invoke-static {v3, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 182
    .local v8, vib:I
    const-string v9, "SoundAndDisplaysSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "VIBRATION_FEEDBACK_ENABLED = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const/4 v9, 0x1

    if-ne v8, v9, :cond_182

    .line 185
    iget-object v9, p0, Lcom/android/settings/SoundAndDisplaySettings;->mVibrationFeedback:Landroid/preference/CheckBoxPreference;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 191
    :goto_db
    const-string v9, "animations"

    invoke-virtual {p0, v9}, Lcom/android/settings/SoundAndDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/SoundAndDisplaySettings;->mAnimations:Landroid/preference/CheckBoxPreference;

    .line 192
    iget-object v9, p0, Lcom/android/settings/SoundAndDisplaySettings;->mAnimations:Landroid/preference/CheckBoxPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 193
    const-string v9, "accelerometer"

    invoke-virtual {p0, v9}, Lcom/android/settings/SoundAndDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/SoundAndDisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    .line 194
    iget-object v9, p0, Lcom/android/settings/SoundAndDisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 196
    const-string v9, "screen_timeout"

    invoke-virtual {p0, v9}, Lcom/android/settings/SoundAndDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    .line 197
    .local v5, screenTimeoutPreference:Landroid/preference/ListPreference;
    const-string v9, "screen_off_timeout"

    const/16 v10, 0x7530

    invoke-static {v3, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v5, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 201
    const/4 v9, 0x2

    if-ne v9, v0, :cond_131

    .line 202
    const-string v9, "emergency_tone"

    invoke-virtual {p0, v9}, Lcom/android/settings/SoundAndDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    .line 203
    .local v1, emergencyTonePreference:Landroid/preference/ListPreference;
    const-string v9, "emergency_tone"

    const/4 v10, 0x0

    invoke-static {v3, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 212
    .end local v1           #emergencyTonePreference:Landroid/preference/ListPreference;
    :cond_131
    const-string v9, "alcmode"

    invoke-virtual {p0, v9}, Lcom/android/settings/SoundAndDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/SoundAndDisplaySettings;->mALCMode:Landroid/preference/CheckBoxPreference;

    .line 213
    iget-object v9, p0, Lcom/android/settings/SoundAndDisplaySettings;->mALCMode:Landroid/preference/CheckBoxPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 217
    invoke-virtual {p0}, Lcom/android/settings/SoundAndDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 220
    .local v4, root:Landroid/preference/PreferenceScreen;
    new-instance v6, Landroid/preference/PreferenceCategory;

    invoke-direct {v6, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 221
    .local v6, touchCal:Landroid/preference/PreferenceCategory;
    const v9, 0x7f080445

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 222
    invoke-virtual {v4, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 224
    invoke-virtual {p0}, Lcom/android/settings/SoundAndDisplaySettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v9

    invoke-virtual {v9, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v7

    .line 226
    .local v7, touchCalPref:Landroid/preference/PreferenceScreen;
    const v9, 0x7f080446

    invoke-virtual {v7, v9}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 227
    const v9, 0x7f080447

    invoke-virtual {v7, v9}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 229
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 230
    .local v2, intent:Landroid/content/Intent;
    const-string v9, "com.android.settings"

    const-string v10, "com.android.settings.TSCalibration"

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    invoke-virtual {v7, v2}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 233
    invoke-virtual {v6, v7}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 235
    iput-object v7, p0, Lcom/android/settings/SoundAndDisplaySettings;->mTouch:Landroid/preference/Preference;

    .line 238
    return-void

    .line 169
    .end local v2           #intent:Landroid/content/Intent;
    .end local v4           #root:Landroid/preference/PreferenceScreen;
    .end local v5           #screenTimeoutPreference:Landroid/preference/ListPreference;
    .end local v6           #touchCal:Landroid/preference/PreferenceCategory;
    .end local v7           #touchCalPref:Landroid/preference/PreferenceScreen;
    .end local v8           #vib:I
    :cond_17c
    const/4 v10, 0x0

    goto/16 :goto_81

    .line 173
    :cond_17f
    const/4 v10, 0x0

    goto/16 :goto_a0

    .line 187
    .restart local v8       #vib:I
    :cond_182
    iget-object v9, p0, Lcom/android/settings/SoundAndDisplaySettings;->mVibrationFeedback:Landroid/preference/CheckBoxPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_db
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 252
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 254
    iget-object v0, p0, Lcom/android/settings/SoundAndDisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/SoundAndDisplaySettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 255
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 10
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v4, 0x1

    const-string v6, "emergency_tone"

    const-string v5, "SoundAndDisplaysSettings"

    .line 460
    const-string v2, "screen_timeout"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 461
    const-string v2, "ro.monkey"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1f

    move v2, v4

    .line 484
    .end local p2
    :goto_1e
    return v2

    .line 465
    .restart local p2
    :cond_1f
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 468
    .local v1, value:I
    :try_start_25
    invoke-virtual {p0}, Lcom/android/settings/SoundAndDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_off_timeout"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_2e
    .catch Ljava/lang/NumberFormatException; {:try_start_25 .. :try_end_2e} :catch_30

    .end local v1           #value:I
    :cond_2e
    :goto_2e
    move v2, v4

    .line 484
    goto :goto_1e

    .line 470
    .restart local v1       #value:I
    :catch_30
    move-exception v2

    move-object v0, v2

    .line 471
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v2, "SoundAndDisplaysSettings"

    const-string v2, "could not persist screen timeout setting"

    invoke-static {v5, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2e

    .line 473
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v1           #value:I
    .restart local p2
    :cond_3a
    const-string v2, "emergency_tone"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 474
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 477
    .restart local v1       #value:I
    :try_start_4c
    invoke-virtual {p0}, Lcom/android/settings/SoundAndDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "emergency_tone"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_55
    .catch Ljava/lang/NumberFormatException; {:try_start_4c .. :try_end_55} :catch_56

    goto :goto_2e

    .line 479
    :catch_56
    move-exception v2

    move-object v0, v2

    .line 480
    .restart local v0       #e:Ljava/lang/NumberFormatException;
    const-string v2, "SoundAndDisplaysSettings"

    const-string v2, "could not persist emergency tone setting"

    invoke-static {v5, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2e
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 13
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 339
    iget-object v7, p0, Lcom/android/settings/SoundAndDisplaySettings;->mSilent:Landroid/preference/CheckBoxPreference;

    if-eq p2, v7, :cond_8

    iget-object v7, p0, Lcom/android/settings/SoundAndDisplaySettings;->mVibrate:Landroid/preference/CheckBoxPreference;

    if-ne p2, v7, :cond_21

    .line 340
    :cond_8
    iget-object v7, p0, Lcom/android/settings/SoundAndDisplaySettings;->mSilent:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    iget-object v8, p0, Lcom/android/settings/SoundAndDisplaySettings;->mVibrate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    invoke-direct {p0, v7, v8}, Lcom/android/settings/SoundAndDisplaySettings;->setRingerMode(ZZ)V

    .line 342
    iget-object v7, p0, Lcom/android/settings/SoundAndDisplaySettings;->mSilent:Landroid/preference/CheckBoxPreference;

    if-ne p2, v7, :cond_1f

    .line 343
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/android/settings/SoundAndDisplaySettings;->updateState(Z)V

    .line 456
    :cond_1f
    :goto_1f
    const/4 v7, 0x1

    return v7

    .line 345
    :cond_21
    iget-object v7, p0, Lcom/android/settings/SoundAndDisplaySettings;->mPlayMediaNotificationSounds:Landroid/preference/CheckBoxPreference;

    if-ne p2, v7, :cond_33

    .line 347
    :try_start_25
    iget-object v7, p0, Lcom/android/settings/SoundAndDisplaySettings;->mMountService:Landroid/os/IMountService;

    iget-object v8, p0, Lcom/android/settings/SoundAndDisplaySettings;->mPlayMediaNotificationSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    invoke-interface {v7, v8}, Landroid/os/IMountService;->setPlayNotificationSounds(Z)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_30} :catch_31

    goto :goto_1f

    .line 348
    :catch_31
    move-exception v7

    goto :goto_1f

    .line 350
    :cond_33
    iget-object v7, p0, Lcom/android/settings/SoundAndDisplaySettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    if-ne p2, v7, :cond_4c

    .line 351
    invoke-virtual {p0}, Lcom/android/settings/SoundAndDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "dtmf_tone"

    iget-object v9, p0, Lcom/android/settings/SoundAndDisplaySettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_4a

    const/4 v9, 0x1

    :goto_46
    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1f

    :cond_4a
    const/4 v9, 0x0

    goto :goto_46

    .line 354
    :cond_4c
    iget-object v7, p0, Lcom/android/settings/SoundAndDisplaySettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    if-ne p2, v7, :cond_78

    .line 355
    iget-object v7, p0, Lcom/android/settings/SoundAndDisplaySettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_70

    .line 356
    iget-object v7, p0, Lcom/android/settings/SoundAndDisplaySettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7}, Landroid/media/AudioManager;->loadSoundEffects()V

    .line 361
    :goto_5d
    invoke-virtual {p0}, Lcom/android/settings/SoundAndDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "sound_effects_enabled"

    iget-object v9, p0, Lcom/android/settings/SoundAndDisplaySettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_76

    const/4 v9, 0x1

    :goto_6c
    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1f

    .line 358
    :cond_70
    iget-object v7, p0, Lcom/android/settings/SoundAndDisplaySettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7}, Landroid/media/AudioManager;->unloadSoundEffects()V

    goto :goto_5d

    .line 361
    :cond_76
    const/4 v9, 0x0

    goto :goto_6c

    .line 366
    :cond_78
    iget-object v7, p0, Lcom/android/settings/SoundAndDisplaySettings;->mVibrationFeedback:Landroid/preference/CheckBoxPreference;

    if-ne p2, v7, :cond_c2

    .line 367
    invoke-virtual {p0}, Lcom/android/settings/SoundAndDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "vibration_feedback_enabled"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 371
    .local v2, currentVFStatus:I
    const/4 v7, 0x1

    if-ne v2, v7, :cond_a6

    .line 372
    const-string v7, "mVibrationFeedback"

    const-string v8, "mVibrationFeedback Set False "

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    invoke-virtual {p0}, Lcom/android/settings/SoundAndDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "vibration_feedback_enabled"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 377
    :try_start_9b
    iget-object v7, p0, Lcom/android/settings/SoundAndDisplaySettings;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Landroid/view/IWindowManager;->setVibrationFeedback(Z)V
    :try_end_a1
    .catch Landroid/os/RemoteException; {:try_start_9b .. :try_end_a1} :catch_a3

    goto/16 :goto_1f

    .line 378
    :catch_a3
    move-exception v7

    goto/16 :goto_1f

    .line 381
    :cond_a6
    const-string v7, "mVibrationFeedback"

    const-string v8, "mVibrationFeedback Set True "

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    invoke-virtual {p0}, Lcom/android/settings/SoundAndDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "vibration_feedback_enabled"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 386
    :try_start_b7
    iget-object v7, p0, Lcom/android/settings/SoundAndDisplaySettings;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Landroid/view/IWindowManager;->setVibrationFeedback(Z)V
    :try_end_bd
    .catch Landroid/os/RemoteException; {:try_start_b7 .. :try_end_bd} :catch_bf

    goto/16 :goto_1f

    .line 387
    :catch_bf
    move-exception v7

    goto/16 :goto_1f

    .line 394
    .end local v2           #currentVFStatus:I
    :cond_c2
    iget-object v7, p0, Lcom/android/settings/SoundAndDisplaySettings;->mAnimations:Landroid/preference/CheckBoxPreference;

    if-ne p2, v7, :cond_f7

    .line 395
    iget-object v7, p0, Lcom/android/settings/SoundAndDisplaySettings;->mAnimationScales:[F

    array-length v7, v7

    if-lez v7, :cond_d2

    .line 397
    iget-object v7, p0, Lcom/android/settings/SoundAndDisplaySettings;->mAnimationScales:[F

    const/4 v8, 0x0

    const/high16 v9, 0x3f80

    aput v9, v7, v8

    .line 400
    :cond_d2
    const/4 v4, 0x1

    .local v4, i:I
    :goto_d3
    iget-object v7, p0, Lcom/android/settings/SoundAndDisplaySettings;->mAnimationScales:[F

    array-length v7, v7

    if-ge v4, v7, :cond_eb

    .line 401
    iget-object v7, p0, Lcom/android/settings/SoundAndDisplaySettings;->mAnimationScales:[F

    iget-object v8, p0, Lcom/android/settings/SoundAndDisplaySettings;->mAnimations:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_e9

    const/high16 v8, 0x3f80

    :goto_e4
    aput v8, v7, v4

    .line 400
    add-int/lit8 v4, v4, 0x1

    goto :goto_d3

    .line 401
    :cond_e9
    const/4 v8, 0x0

    goto :goto_e4

    .line 405
    :cond_eb
    :try_start_eb
    iget-object v7, p0, Lcom/android/settings/SoundAndDisplaySettings;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v8, p0, Lcom/android/settings/SoundAndDisplaySettings;->mAnimationScales:[F

    invoke-interface {v7, v8}, Landroid/view/IWindowManager;->setAnimationScales([F)V
    :try_end_f2
    .catch Landroid/os/RemoteException; {:try_start_eb .. :try_end_f2} :catch_f4

    goto/16 :goto_1f

    .line 406
    :catch_f4
    move-exception v7

    goto/16 :goto_1f

    .line 408
    .end local v4           #i:I
    :cond_f7
    iget-object v7, p0, Lcom/android/settings/SoundAndDisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    if-ne p2, v7, :cond_111

    .line 409
    invoke-virtual {p0}, Lcom/android/settings/SoundAndDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "accelerometer_rotation"

    iget-object v9, p0, Lcom/android/settings/SoundAndDisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_10f

    const/4 v9, 0x1

    :goto_10a
    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1f

    :cond_10f
    const/4 v9, 0x0

    goto :goto_10a

    .line 415
    :cond_111
    iget-object v7, p0, Lcom/android/settings/SoundAndDisplaySettings;->mALCMode:Landroid/preference/CheckBoxPreference;

    if-ne p2, v7, :cond_173

    .line 416
    iget-object v7, p0, Lcom/android/settings/SoundAndDisplaySettings;->mALCMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 417
    .local v0, alcmode:Z
    invoke-virtual {p0}, Lcom/android/settings/SoundAndDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "sensor_illumination"

    if-eqz v0, :cond_171

    const/4 v9, 0x1

    :goto_124
    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 421
    :try_start_127
    const-string v7, "hardware"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/os/IHardwareService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IHardwareService;

    move-result-object v3

    .line 424
    .local v3, hardware:Landroid/os/IHardwareService;
    if-eqz v3, :cond_136

    .line 425
    invoke-interface {v3, v0}, Landroid/os/IHardwareService;->setALCMode(Z)V
    :try_end_136
    .catch Landroid/os/RemoteException; {:try_start_127 .. :try_end_136} :catch_188

    .line 430
    .end local v3           #hardware:Landroid/os/IHardwareService;
    :cond_136
    :goto_136
    if-nez v0, :cond_15f

    .line 431
    invoke-virtual {p0}, Lcom/android/settings/SoundAndDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "screen_brightness"

    const/16 v9, 0x64

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 433
    .local v1, bright:I
    const-string v7, "SoundAndDisplaysSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bright = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    invoke-direct {p0, v1}, Lcom/android/settings/SoundAndDisplaySettings;->setBrightness(I)V

    .line 438
    .end local v1           #bright:I
    :cond_15f
    const-string v7, "power"

    invoke-virtual {p0, v7}, Lcom/android/settings/SoundAndDisplaySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    .line 439
    .local v6, pm:Landroid/os/PowerManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/PowerManager;->userActivity(JZ)V

    goto/16 :goto_1f

    .line 417
    .end local v6           #pm:Landroid/os/PowerManager;
    :cond_171
    const/4 v9, 0x0

    goto :goto_124

    .line 445
    .end local v0           #alcmode:Z
    :cond_173
    iget-object v7, p0, Lcom/android/settings/SoundAndDisplaySettings;->mTouch:Landroid/preference/Preference;

    if-ne p2, v7, :cond_1f

    .line 446
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 448
    .local v5, intent:Landroid/content/Intent;
    const-string v7, "com.android.settings"

    const-string v8, "com.android.settings.TSCalibration"

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 451
    invoke-virtual {p0, v5}, Lcom/android/settings/SoundAndDisplaySettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1f

    .line 427
    .end local v5           #intent:Landroid/content/Intent;
    .restart local v0       #alcmode:Z
    :catch_188
    move-exception v7

    goto :goto_136
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 242
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 244
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings/SoundAndDisplaySettings;->updateState(Z)V

    .line 246
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 247
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/settings/SoundAndDisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/SoundAndDisplaySettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 248
    return-void
.end method
