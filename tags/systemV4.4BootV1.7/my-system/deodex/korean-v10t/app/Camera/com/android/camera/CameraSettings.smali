.class public Lcom/android/camera/CameraSettings;
.super Landroid/preference/PreferenceActivity;
.source "CameraSettings.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field public static final DEFAULT_ANTI_BANDING_VALUE:Ljava/lang/String; = "off"

.field public static final DEFAULT_COLOR_EFFECTS_VALUE:Ljava/lang/String; = "None"

.field public static final DEFAULT_JPEG_QUALITY_VALUE:Ljava/lang/String; = "100"

.field public static final DEFAULT_PICTURE_SIZE_VALUE:Ljava/lang/String; = "QSXVGA"

.field public static final DEFAULT_VIDEO_FRAME_RATE:I = 0x14

.field public static final DEFAULT_VIDEO_QUALITY_VALUE:Z = true

.field public static final DEFAULT_VIDEO_RECORD_FORMAT:Z = true

.field public static final DEFAULT_WHITE_BALANCE_VALUE:Ljava/lang/String; = "Auto"

.field public static final KEY_ANTI_BANDING:Ljava/lang/String; = "pref_camera_antibanding_key"

.field public static final KEY_COLOR_EFFECTS:Ljava/lang/String; = "pref_camera_coloreffects_key"

.field public static final KEY_JPEG_QUALITY:Ljava/lang/String; = "pref_camera_jpeg_quality_key"

.field public static final KEY_PICTURE_SIZE:Ljava/lang/String; = "pref_camera_picturesize_key"

.field public static final KEY_RECORD_FORMAT:Ljava/lang/String; = "pref_camera_videoformat_key"

.field public static final KEY_VIDEO_QUALITY:Ljava/lang/String; = "pref_camera_videoquality_key"

.field public static final KEY_WHITE_BALANCE:Ljava/lang/String; = "pref_camera_whitebalance_key"


# instance fields
.field private mAntiBanding:Landroid/preference/ListPreference;

.field private mColorEffects:Landroid/preference/ListPreference;

.field private mJpegQuality:Landroid/preference/ListPreference;

.field private mPictureSize:Landroid/preference/ListPreference;

.field private mVideoQuality:Landroid/preference/ListPreference;

.field private mVideoRecordFormat:Landroid/preference/CheckBoxPreference;

.field private mWhiteBalance:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 102
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 103
    return-void
.end method

.method private changeVideoFormat()V
    .registers 4

    .prologue
    .line 170
    iget-object v1, p0, Lcom/android/camera/CameraSettings;->mVideoRecordFormat:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 171
    .local v0, VideoFormatValue:Z
    iget-object v1, p0, Lcom/android/camera/CameraSettings;->mVideoRecordFormat:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_10

    const-string v2, "Recording in MPEG4 format"

    :goto_c
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 172
    return-void

    .line 171
    :cond_10
    const-string v2, "Recording in H263 format"

    goto :goto_c
.end method

.method private getBooleanPreference(Landroid/preference/ListPreference;Z)Z
    .registers 6
    .parameter "preference"
    .parameter "defaultValue"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 239
    if-eqz p2, :cond_d

    move v0, v2

    :goto_5
    invoke-static {p1, v0}, Lcom/android/camera/CameraSettings;->getIntPreference(Landroid/preference/ListPreference;I)I

    move-result v0

    if-eqz v0, :cond_f

    move v0, v2

    :goto_c
    return v0

    :cond_d
    move v0, v1

    goto :goto_5

    :cond_f
    move v0, v1

    goto :goto_c
.end method

.method private static getIntPreference(Landroid/preference/ListPreference;I)I
    .registers 5
    .parameter "preference"
    .parameter "defaultValue"

    .prologue
    .line 228
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 229
    .local v1, s:Ljava/lang/String;
    move v0, p1

    .line 231
    .local v0, result:I
    :try_start_5
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_8} :catch_a

    move-result v0

    .line 235
    :goto_9
    return v0

    .line 232
    :catch_a
    move-exception v2

    goto :goto_9
.end method

.method private initUI()V
    .registers 2

    .prologue
    .line 137
    const-string v0, "pref_camera_videoquality_key"

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/camera/CameraSettings;->mVideoQuality:Landroid/preference/ListPreference;

    .line 138
    const-string v0, "pref_camera_videoformat_key"

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/camera/CameraSettings;->mVideoRecordFormat:Landroid/preference/CheckBoxPreference;

    .line 142
    const-string v0, "pref_camera_jpeg_quality_key"

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/camera/CameraSettings;->mJpegQuality:Landroid/preference/ListPreference;

    .line 149
    const-string v0, "pref_camera_whitebalance_key"

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/camera/CameraSettings;->mWhiteBalance:Landroid/preference/ListPreference;

    .line 150
    const-string v0, "pref_camera_coloreffects_key"

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/camera/CameraSettings;->mColorEffects:Landroid/preference/ListPreference;

    .line 154
    const-string v0, "pref_camera_antibanding_key"

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/camera/CameraSettings;->mAntiBanding:Landroid/preference/ListPreference;

    .line 155
    const-string v0, "pref_camera_picturesize_key"

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/camera/CameraSettings;->mPictureSize:Landroid/preference/ListPreference;

    .line 157
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 158
    return-void
.end method

.method private updateAntiBanding()V
    .registers 3

    .prologue
    .line 218
    iget-object v1, p0, Lcom/android/camera/CameraSettings;->mAntiBanding:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, antiBandingValue:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/CameraSettings;->mAntiBanding:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 220
    return-void
.end method

.method private updateColorEffects()V
    .registers 3

    .prologue
    .line 206
    iget-object v1, p0, Lcom/android/camera/CameraSettings;->mColorEffects:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, colorEffectsValue:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/CameraSettings;->mColorEffects:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 208
    return-void
.end method

.method private updateJpegQuality()V
    .registers 3

    .prologue
    .line 182
    iget-object v1, p0, Lcom/android/camera/CameraSettings;->mJpegQuality:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, JpegQualityValue:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/CameraSettings;->mJpegQuality:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 184
    return-void
.end method

.method private updatePictureSize()V
    .registers 3

    .prologue
    .line 223
    iget-object v1, p0, Lcom/android/camera/CameraSettings;->mPictureSize:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, pictureSizeValue:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/CameraSettings;->mPictureSize:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 225
    return-void
.end method

.method private updateVideoQuality()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 161
    iget-object v4, p0, Lcom/android/camera/CameraSettings;->mVideoQuality:Landroid/preference/ListPreference;

    invoke-direct {p0, v4, v5}, Lcom/android/camera/CameraSettings;->getBooleanPreference(Landroid/preference/ListPreference;Z)Z

    move-result v3

    .line 162
    .local v3, vidQualityValue:Z
    if-eqz v3, :cond_1c

    move v2, v5

    .line 163
    .local v2, vidQualityIndex:I
    :goto_a
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f06

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, vidQualities:[Ljava/lang/String;
    aget-object v1, v0, v2

    .line 166
    .local v1, vidQuality:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/camera/CameraSettings;->mVideoQuality:Landroid/preference/ListPreference;

    invoke-virtual {v4, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 167
    return-void

    .line 162
    .end local v0           #vidQualities:[Ljava/lang/String;
    .end local v1           #vidQuality:Ljava/lang/String;
    .end local v2           #vidQualityIndex:I
    :cond_1c
    const/4 v4, 0x0

    move v2, v4

    goto :goto_a
.end method

.method private updateWhiteBalance()V
    .registers 3

    .prologue
    .line 201
    iget-object v1, p0, Lcom/android/camera/CameraSettings;->mWhiteBalance:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, whiteBalanceValue:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/CameraSettings;->mWhiteBalance:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 203
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "icicle"

    .prologue
    .line 109
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 110
    const v0, 0x7f050001

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraSettings;->addPreferencesFromResource(I)V

    .line 112
    invoke-direct {p0}, Lcom/android/camera/CameraSettings;->initUI()V

    .line 113
    return-void
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 117
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 118
    invoke-direct {p0}, Lcom/android/camera/CameraSettings;->updateVideoQuality()V

    .line 119
    invoke-direct {p0}, Lcom/android/camera/CameraSettings;->changeVideoFormat()V

    .line 120
    invoke-direct {p0}, Lcom/android/camera/CameraSettings;->updateJpegQuality()V

    .line 127
    invoke-direct {p0}, Lcom/android/camera/CameraSettings;->updateWhiteBalance()V

    .line 128
    invoke-direct {p0}, Lcom/android/camera/CameraSettings;->updateColorEffects()V

    .line 132
    invoke-direct {p0}, Lcom/android/camera/CameraSettings;->updateAntiBanding()V

    .line 133
    invoke-direct {p0}, Lcom/android/camera/CameraSettings;->updatePictureSize()V

    .line 134
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 4
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 244
    const-string v0, "pref_camera_videoquality_key"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 245
    invoke-direct {p0}, Lcom/android/camera/CameraSettings;->updateVideoQuality()V

    .line 282
    :cond_b
    :goto_b
    return-void

    .line 247
    :cond_c
    const-string v0, "pref_camera_videoformat_key"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 248
    invoke-direct {p0}, Lcom/android/camera/CameraSettings;->changeVideoFormat()V

    goto :goto_b

    .line 259
    :cond_18
    const-string v0, "pref_camera_jpeg_quality_key"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 260
    invoke-direct {p0}, Lcom/android/camera/CameraSettings;->updateJpegQuality()V

    goto :goto_b

    .line 266
    :cond_24
    const-string v0, "pref_camera_whitebalance_key"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 267
    invoke-direct {p0}, Lcom/android/camera/CameraSettings;->updateWhiteBalance()V

    goto :goto_b

    .line 269
    :cond_30
    const-string v0, "pref_camera_coloreffects_key"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 270
    invoke-direct {p0}, Lcom/android/camera/CameraSettings;->updateColorEffects()V

    goto :goto_b

    .line 276
    :cond_3c
    const-string v0, "pref_camera_antibanding_key"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 277
    invoke-direct {p0}, Lcom/android/camera/CameraSettings;->updateAntiBanding()V

    goto :goto_b

    .line 279
    :cond_48
    const-string v0, "pref_camera_picturesize_key"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 280
    invoke-direct {p0}, Lcom/android/camera/CameraSettings;->updatePictureSize()V

    goto :goto_b
.end method
