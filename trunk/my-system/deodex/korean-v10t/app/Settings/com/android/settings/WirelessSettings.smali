.class public Lcom/android/settings/WirelessSettings;
.super Landroid/preference/PreferenceActivity;
.source "WirelessSettings.java"


# static fields
.field private static final KEY_MOBILE_SETTING:Ljava/lang/String; = "Mobile_network"

.field private static final KEY_TOGGLE_AIRPLANE:Ljava/lang/String; = "toggle_airplane"

.field private static final KEY_TOGGLE_BLUETOOTH:Ljava/lang/String; = "toggle_bluetooth"

.field private static final KEY_TOGGLE_WIFI:Ljava/lang/String; = "toggle_wifi"


# instance fields
.field private mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

.field private mBtEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

.field private mMobileNetwork:Lcom/android/settings/MobileNetwork;

.field private mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private initToggles()V
    .registers 5

    .prologue
    const-string v3, "Mobile_network"

    .line 89
    new-instance v2, Lcom/android/settings/wifi/WifiEnabler;

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    const-string v1, "toggle_wifi"

    invoke-virtual {p0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/settings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/preference/CheckBoxPreference;)V

    iput-object v2, p0, Lcom/android/settings/WirelessSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    .line 94
    new-instance v1, Lcom/android/settings/AirplaneModeEnabler;

    const-string v0, "toggle_airplane"

    invoke-virtual {p0, v0}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/AirplaneModeEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    iput-object v1, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    .line 98
    new-instance v1, Lcom/android/settings/bluetooth/BluetoothEnabler;

    const-string v0, "toggle_bluetooth"

    invoke-virtual {p0, v0}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    iput-object v1, p0, Lcom/android/settings/WirelessSettings;->mBtEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    .line 104
    new-instance v1, Lcom/android/settings/MobileNetwork;

    const-string v0, "Mobile_network"

    invoke-virtual {p0, v3}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    const-string v2, "Mobile_network"

    invoke-direct {v1, p0, v0, v3}, Lcom/android/settings/MobileNetwork;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/WirelessSettings;->mMobileNetwork:Lcom/android/settings/MobileNetwork;

    .line 106
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const v0, 0x7f040021

    invoke-virtual {p0, v0}, Lcom/android/settings/WirelessSettings;->addPreferencesFromResource(I)V

    .line 58
    invoke-direct {p0}, Lcom/android/settings/WirelessSettings;->initToggles()V

    .line 59
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 76
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 78
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->pause()V

    .line 79
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirplaneModeEnabler;->pause()V

    .line 80
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mBtEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->pause()V

    .line 83
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mMobileNetwork:Lcom/android/settings/MobileNetwork;

    invoke-virtual {v0}, Lcom/android/settings/MobileNetwork;->pause()V

    .line 85
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 63
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 65
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->resume()V

    .line 66
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirplaneModeEnabler;->resume()V

    .line 67
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mBtEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->resume()V

    .line 70
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mMobileNetwork:Lcom/android/settings/MobileNetwork;

    invoke-virtual {v0}, Lcom/android/settings/MobileNetwork;->resume()V

    .line 72
    return-void
.end method
