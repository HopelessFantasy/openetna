.class public Lcom/android/settings/BrightnessPreference;
.super Landroid/preference/SeekBarPreference;
.source "BrightnessPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field private static final MAXIMUM_BACKLIGHT:I = 0xff

.field private static final MINIMUM_BACKLIGHT:I = 0x1e


# instance fields
.field private mOldBrightness:I

.field private mSeekBar:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method private setBrightness(I)V
    .registers 10
    .parameter "brightness"

    .prologue
    .line 106
    const/4 v1, 0x0

    .line 107
    .local v1, LIGHT_ID_BACKLIGHT:I
    const/4 v4, 0x1

    .line 108
    .local v4, LIGHT_ID_KEYBOARD:I
    const/4 v3, 0x2

    .line 109
    .local v3, LIGHT_ID_BUTTONS:I
    const/4 v2, 0x3

    .line 110
    .local v2, LIGHT_ID_BATTERY:I
    const/4 v5, 0x4

    .line 111
    .local v5, LIGHT_ID_NOTIFICATIONS:I
    const/4 v0, 0x5

    .line 114
    .local v0, LIGHT_ID_ATTENTION:I
    :try_start_6
    const-string v7, "hardware"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/os/IHardwareService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IHardwareService;

    move-result-object v6

    .line 117
    .local v6, hardware:Landroid/os/IHardwareService;
    if-eqz v6, :cond_16

    .line 119
    const/4 v7, 0x0

    invoke-interface {v6, p1, v7}, Landroid/os/IHardwareService;->setBacklight_byID(II)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_16} :catch_17

    .line 123
    .end local v6           #hardware:Landroid/os/IHardwareService;
    :cond_16
    :goto_16
    return-void

    .line 121
    :catch_17
    move-exception v7

    goto :goto_16
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .registers 6
    .parameter "view"

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/preference/SeekBarPreference;->onBindDialogView(Landroid/view/View;)V

    .line 57
    invoke-static {p1}, Lcom/android/settings/BrightnessPreference;->getSeekBar(Landroid/view/View;)Landroid/widget/SeekBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 58
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 59
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v2, 0xe1

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 62
    :try_start_15
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/BrightnessPreference;->mOldBrightness:I
    :try_end_25
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_15 .. :try_end_25} :catch_30

    .line 69
    :goto_25
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/android/settings/BrightnessPreference;->mOldBrightness:I

    const/16 v3, 0x1e

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 70
    return-void

    .line 65
    :catch_30
    move-exception v1

    move-object v0, v1

    .line 66
    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const/16 v1, 0xff

    iput v1, p0, Lcom/android/settings/BrightnessPreference;->mOldBrightness:I

    goto :goto_25
.end method

.method protected onDialogClosed(Z)V
    .registers 6
    .parameter "positiveResult"

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/preference/SeekBarPreference;->onDialogClosed(Z)V

    .line 89
    if-eqz p1, :cond_1b

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    iget-object v3, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    add-int/lit8 v3, v3, 0x1e

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 103
    :cond_1a
    :goto_1a
    return-void

    .line 95
    :cond_1b
    :try_start_1b
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sensor_illumination"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1a

    .line 97
    iget v1, p0, Lcom/android/settings/BrightnessPreference;->mOldBrightness:I

    invoke-direct {p0, v1}, Lcom/android/settings/BrightnessPreference;->setBrightness(I)V
    :try_end_30
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1b .. :try_end_30} :catch_31

    goto :goto_1a

    .line 99
    :catch_31
    move-exception v1

    move-object v0, v1

    .line 100
    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    iget v1, p0, Lcom/android/settings/BrightnessPreference;->mOldBrightness:I

    invoke-direct {p0, v1}, Lcom/android/settings/BrightnessPreference;->setBrightness(I)V

    goto :goto_1a
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 5
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromTouch"

    .prologue
    .line 74
    add-int/lit8 v0, p2, 0x1e

    invoke-direct {p0, v0}, Lcom/android/settings/BrightnessPreference;->setBrightness(I)V

    .line 75
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2
    .parameter "seekBar"

    .prologue
    .line 79
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2
    .parameter "seekBar"

    .prologue
    .line 83
    return-void
.end method
