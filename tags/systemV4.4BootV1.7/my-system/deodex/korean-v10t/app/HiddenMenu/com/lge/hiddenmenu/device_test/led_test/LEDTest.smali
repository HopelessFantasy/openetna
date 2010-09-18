.class public Lcom/lge/hiddenmenu/device_test/led_test/LEDTest;
.super Landroid/preference/PreferenceActivity;
.source "LEDTest.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final Flash_LED_On_Off:Ljava/lang/String; = "flash_led_on_off"

.field private static final KeyPad_Backlight_On_Off:Ljava/lang/String; = "keypad_backlight_on_off"

.field private static final LCD_Backlight_On_Off:Ljava/lang/String; = "lcd_backlight_on_off"


# instance fields
.field private mFlashLED:Landroid/preference/CheckBoxPreference;

.field private mKeyPadBacklight:Landroid/preference/CheckBoxPreference;

.field private mLCDBacklight:Landroid/preference/CheckBoxPreference;

.field private mService:Landroid/os/IHardwareService;

.field public packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 30
    const-string v0, "com.lge.hiddenmenu"

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/led_test/LEDTest;->packageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "icicle"

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v0, 0x7f040002

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/device_test/led_test/LEDTest;->addPreferencesFromResource(I)V

    .line 49
    const-string v0, "lcd_backlight_on_off"

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/device_test/led_test/LEDTest;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/led_test/LEDTest;->mLCDBacklight:Landroid/preference/CheckBoxPreference;

    .line 50
    const-string v0, "keypad_backlight_on_off"

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/device_test/led_test/LEDTest;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/led_test/LEDTest;->mKeyPadBacklight:Landroid/preference/CheckBoxPreference;

    .line 51
    const-string v0, "flash_led_on_off"

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/device_test/led_test/LEDTest;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/led_test/LEDTest;->mFlashLED:Landroid/preference/CheckBoxPreference;

    .line 53
    const-string v0, "hardware"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IHardwareService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IHardwareService;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/led_test/LEDTest;->mService:Landroid/os/IHardwareService;

    .line 57
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 4
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 143
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 9
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/16 v5, 0xff

    const/4 v4, 0x0

    .line 114
    iget-object v3, p0, Lcom/lge/hiddenmenu/device_test/led_test/LEDTest;->mLCDBacklight:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_17

    .line 115
    iget-object v3, p0, Lcom/lge/hiddenmenu/device_test/led_test/LEDTest;->mLCDBacklight:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 117
    .local v2, lcd:Z
    :try_start_d
    iget-object v3, p0, Lcom/lge/hiddenmenu/device_test/led_test/LEDTest;->mService:Landroid/os/IHardwareService;

    if-eqz v2, :cond_12

    move v4, v5

    :cond_12
    invoke-interface {v3, v4}, Landroid/os/IHardwareService;->setBacklights(I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_3e

    .line 138
    .end local v2           #lcd:Z
    :cond_15
    :goto_15
    const/4 v3, 0x1

    return v3

    .line 121
    :cond_17
    iget-object v3, p0, Lcom/lge/hiddenmenu/device_test/led_test/LEDTest;->mKeyPadBacklight:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_2c

    .line 122
    iget-object v3, p0, Lcom/lge/hiddenmenu/device_test/led_test/LEDTest;->mKeyPadBacklight:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    .line 126
    .local v1, keypad:Z
    :try_start_21
    iget-object v3, p0, Lcom/lge/hiddenmenu/device_test/led_test/LEDTest;->mService:Landroid/os/IHardwareService;

    if-eqz v1, :cond_26

    move v4, v5

    :cond_26
    invoke-interface {v3, v4}, Landroid/os/IHardwareService;->setBacklights(I)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_29} :catch_2a

    goto :goto_15

    .line 128
    :catch_2a
    move-exception v3

    goto :goto_15

    .line 131
    .end local v1           #keypad:Z
    :cond_2c
    iget-object v3, p0, Lcom/lge/hiddenmenu/device_test/led_test/LEDTest;->mFlashLED:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_15

    .line 132
    iget-object v3, p0, Lcom/lge/hiddenmenu/device_test/led_test/LEDTest;->mFlashLED:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 134
    .local v0, flash:Z
    :try_start_36
    iget-object v3, p0, Lcom/lge/hiddenmenu/device_test/led_test/LEDTest;->mService:Landroid/os/IHardwareService;

    invoke-interface {v3, v0}, Landroid/os/IHardwareService;->setFlashlightEnabled(Z)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_3b} :catch_3c

    goto :goto_15

    .line 135
    :catch_3c
    move-exception v3

    goto :goto_15

    .line 118
    .end local v0           #flash:Z
    .restart local v2       #lcd:Z
    :catch_3e
    move-exception v3

    goto :goto_15
.end method

.method public onStop()V
    .registers 3

    .prologue
    .line 61
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 63
    :try_start_3
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/led_test/LEDTest;->mService:Landroid/os/IHardwareService;

    const/16 v1, 0xff

    invoke-interface {v0, v1}, Landroid/os/IHardwareService;->setBacklights(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_a} :catch_b

    .line 66
    :goto_a
    return-void

    .line 64
    :catch_b
    move-exception v0

    goto :goto_a
.end method
