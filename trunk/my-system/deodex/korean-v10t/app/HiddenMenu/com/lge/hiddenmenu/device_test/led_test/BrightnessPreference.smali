.class public Lcom/lge/hiddenmenu/device_test/led_test/BrightnessPreference;
.super Lcom/lge/hiddenmenu/device_test/led_test/SeekBarPreference;
.source "BrightnessPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final MAXIMUM_BACKLIGHT:I = 0xff

.field private static final MINIMUM_BACKLIGHT:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "BrightnessPreference"


# instance fields
.field private mALCBrightness:I

.field private mALCCheckBox:Landroid/widget/CheckBox;

.field private mALCCheckBoxCP:Landroid/preference/CheckBoxPreference;

.field private mOldBrightness:I

.field private mSeekBar:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/lge/hiddenmenu/device_test/led_test/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/lge/hiddenmenu/device_test/led_test/BrightnessPreference;)Landroid/widget/SeekBar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/led_test/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method private setBrightness(I)V
    .registers 10
    .parameter "brightness"

    .prologue
    .line 163
    const/4 v1, 0x0

    .line 164
    .local v1, LIGHT_ID_BACKLIGHT:I
    const/4 v4, 0x1

    .line 165
    .local v4, LIGHT_ID_KEYBOARD:I
    const/4 v3, 0x2

    .line 166
    .local v3, LIGHT_ID_BUTTONS:I
    const/4 v2, 0x3

    .line 167
    .local v2, LIGHT_ID_BATTERY:I
    const/4 v5, 0x4

    .line 168
    .local v5, LIGHT_ID_NOTIFICATIONS:I
    const/4 v0, 0x5

    .line 171
    .local v0, LIGHT_ID_ATTENTION:I
    :try_start_6
    const-string v7, "hardware"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/os/IHardwareService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IHardwareService;

    move-result-object v6

    .line 173
    .local v6, hardware:Landroid/os/IHardwareService;
    if-eqz v6, :cond_16

    .line 176
    const/4 v7, 0x0

    invoke-interface {v6, p1, v7}, Landroid/os/IHardwareService;->setBacklight_byID(II)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_16} :catch_17

    .line 181
    .end local v6           #hardware:Landroid/os/IHardwareService;
    :cond_16
    :goto_16
    return-void

    .line 178
    :catch_17
    move-exception v7

    goto :goto_16
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .registers 6
    .parameter "view"

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/lge/hiddenmenu/device_test/led_test/SeekBarPreference;->onBindDialogView(Landroid/view/View;)V

    .line 69
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 72
    invoke-static {p1}, Lcom/lge/hiddenmenu/device_test/led_test/BrightnessPreference;->getALCCheckBox(Landroid/view/View;)Landroid/widget/CheckBox;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/hiddenmenu/device_test/led_test/BrightnessPreference;->mALCCheckBox:Landroid/widget/CheckBox;

    .line 74
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/led_test/BrightnessPreference;->mALCCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 75
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/led_test/BrightnessPreference;->mALCCheckBox:Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 78
    invoke-static {p1}, Lcom/lge/hiddenmenu/device_test/led_test/BrightnessPreference;->getSeekBar(Landroid/view/View;)Landroid/widget/SeekBar;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/hiddenmenu/device_test/led_test/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 80
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/led_test/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 81
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/led_test/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v2, 0xe1

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 82
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/led_test/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->requestFocus()Z

    .line 84
    :try_start_2f
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/led_test/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/lge/hiddenmenu/device_test/led_test/BrightnessPreference;->mOldBrightness:I
    :try_end_3f
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2f .. :try_end_3f} :catch_52

    .line 89
    :goto_3f
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/led_test/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/lge/hiddenmenu/device_test/led_test/BrightnessPreference;->mOldBrightness:I

    const/16 v3, 0x1e

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 91
    new-instance v1, Lcom/lge/hiddenmenu/device_test/led_test/BrightnessPreference$1;

    invoke-direct {v1, p0}, Lcom/lge/hiddenmenu/device_test/led_test/BrightnessPreference$1;-><init>(Lcom/lge/hiddenmenu/device_test/led_test/BrightnessPreference;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 108
    return-void

    .line 86
    :catch_52
    move-exception v1

    move-object v0, v1

    .line 87
    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const/16 v1, 0xff

    iput v1, p0, Lcom/lge/hiddenmenu/device_test/led_test/BrightnessPreference;->mOldBrightness:I

    goto :goto_3f
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 7
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 114
    :try_start_0
    const-string v1, "hardware"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IHardwareService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IHardwareService;

    move-result-object v0

    .line 115
    .local v0, hardware:Landroid/os/IHardwareService;
    if-eqz v0, :cond_f

    .line 116
    invoke-interface {v0, p2}, Landroid/os/IHardwareService;->setALCMode(Z)V

    .line 118
    :cond_f
    if-nez p2, :cond_37

    .line 119
    const-string v1, "BrightnessPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCheckedChanged = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/led_test/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/lge/hiddenmenu/device_test/led_test/BrightnessPreference;->mALCBrightness:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 121
    iget v1, p0, Lcom/lge/hiddenmenu/device_test/led_test/BrightnessPreference;->mALCBrightness:I

    add-int/lit8 v1, v1, 0x1e

    invoke-direct {p0, v1}, Lcom/lge/hiddenmenu/device_test/led_test/BrightnessPreference;->setBrightness(I)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_37} :catch_46

    .line 127
    .end local v0           #hardware:Landroid/os/IHardwareService;
    :cond_37
    :goto_37
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/led_test/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v1, :cond_43

    .line 128
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/led_test/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-nez p2, :cond_44

    const/4 v2, 0x1

    :goto_40
    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 131
    :cond_43
    return-void

    .line 128
    :cond_44
    const/4 v2, 0x0

    goto :goto_40

    .line 124
    :catch_46
    move-exception v1

    goto :goto_37
.end method

.method protected onDialogClosed(Z)V
    .registers 5
    .parameter "positiveResult"

    .prologue
    .line 151
    invoke-super {p0, p1}, Lcom/lge/hiddenmenu/device_test/led_test/SeekBarPreference;->onDialogClosed(Z)V

    .line 153
    if-eqz p1, :cond_1b

    .line 154
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/led_test/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/led_test/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    add-int/lit8 v2, v2, 0x1e

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 160
    :goto_1a
    return-void

    .line 158
    :cond_1b
    iget v0, p0, Lcom/lge/hiddenmenu/device_test/led_test/BrightnessPreference;->mOldBrightness:I

    invoke-direct {p0, v0}, Lcom/lge/hiddenmenu/device_test/led_test/BrightnessPreference;->setBrightness(I)V

    goto :goto_1a
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 7
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromTouch"

    .prologue
    .line 136
    add-int/lit8 v0, p2, 0x1e

    invoke-direct {p0, v0}, Lcom/lge/hiddenmenu/device_test/led_test/BrightnessPreference;->setBrightness(I)V

    .line 137
    iput p2, p0, Lcom/lge/hiddenmenu/device_test/led_test/BrightnessPreference;->mALCBrightness:I

    .line 138
    const-string v0, "BrightnessPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProgressChanged:: mALCBrightness = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2
    .parameter "seekBar"

    .prologue
    .line 143
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2
    .parameter "seekBar"

    .prologue
    .line 147
    return-void
.end method

.method public show()V
    .registers 2

    .prologue
    .line 184
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/device_test/led_test/BrightnessPreference;->showDialog(Landroid/os/Bundle;)V

    .line 185
    return-void
.end method
