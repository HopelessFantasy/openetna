.class public Lcom/android/settings/wifi/WifiEnabler;
.super Ljava/lang/Object;
.source "WifiEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final LOCAL_LOGD:Z = true

.field private static final TAG:Ljava/lang/String; = "SettingsWifiEnabler"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mOriginalSummary:Ljava/lang/CharSequence;

.field private final mWifiCheckBoxPref:Landroid/preference/CheckBoxPreference;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private final mWifiStateFilter:Landroid/content/IntentFilter;

.field private final mWifiStateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/preference/CheckBoxPreference;)V
    .registers 6
    .parameter "context"
    .parameter "wifiManager"
    .parameter "wifiCheckBoxPreference"

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lcom/android/settings/wifi/WifiEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiEnabler$1;-><init>(Lcom/android/settings/wifi/WifiEnabler;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    .line 68
    iput-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    .line 69
    iput-object p3, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiCheckBoxPref:Landroid/preference/CheckBoxPreference;

    .line 70
    iput-object p2, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 72
    invoke-virtual {p3}, Landroid/preference/CheckBoxPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    .line 73
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 75
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiStateFilter:Landroid/content/IntentFilter;

    .line 76
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiStateFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiEnabler;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WifiEnabler;->handleWifiStateChanged(II)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiEnabler;Landroid/net/NetworkInfo;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiEnabler;->handleNetworkStateChanged(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method private getDependencyPreference()Landroid/preference/Preference;
    .registers 3

    .prologue
    .line 164
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->getDependency()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, depKey:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 166
    const/4 v1, 0x0

    .line 169
    :goto_d
    return-object v1

    :cond_e
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    goto :goto_d
.end method

.method private static getHumanReadableWifiState(I)Ljava/lang/String;
    .registers 2
    .parameter "wifiState"

    .prologue
    .line 173
    packed-switch p0, :pswitch_data_16

    .line 185
    const-string v0, "Some other state!"

    :goto_5
    return-object v0

    .line 175
    :pswitch_6
    const-string v0, "Disabled"

    goto :goto_5

    .line 177
    :pswitch_9
    const-string v0, "Disabling"

    goto :goto_5

    .line 179
    :pswitch_c
    const-string v0, "Enabled"

    goto :goto_5

    .line 181
    :pswitch_f
    const-string v0, "Enabling"

    goto :goto_5

    .line 183
    :pswitch_12
    const-string v0, "Unknown"

    goto :goto_5

    .line 173
    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_9
        :pswitch_6
        :pswitch_f
        :pswitch_c
        :pswitch_12
    .end packed-switch
.end method

.method private handleNetworkStateChanged(Landroid/net/NetworkInfo;)V
    .registers 6
    .parameter "networkInfo"

    .prologue
    .line 144
    const-string v1, "SettingsWifiEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received network state changed to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 148
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/settings/wifi/WifiStatus;->getStatus(Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, summary:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 152
    .end local v0           #summary:Ljava/lang/String;
    :cond_39
    return-void
.end method

.method private handleWifiStateChanged(II)V
    .registers 11
    .parameter "wifiState"
    .parameter "previousWifiState"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 114
    const-string v1, "SettingsWifiEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received wifi state changed from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Lcom/android/settings/wifi/WifiEnabler;->getHumanReadableWifiState(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/settings/wifi/WifiEnabler;->getHumanReadableWifiState(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    if-eq p1, v4, :cond_32

    if-ne p1, v7, :cond_51

    .line 120
    :cond_32
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiCheckBoxPref:Landroid/preference/CheckBoxPreference;

    if-ne p1, v7, :cond_4d

    move v2, v4

    :goto_37
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 121
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiCheckBoxPref:Landroid/preference/CheckBoxPreference;

    if-ne p1, v4, :cond_4f

    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    :goto_40
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiEnabler;->isEnabledByDependency()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 139
    :cond_4c
    :goto_4c
    return-void

    :cond_4d
    move v2, v6

    .line 120
    goto :goto_37

    .line 121
    :cond_4f
    const/4 v2, 0x0

    goto :goto_40

    .line 126
    :cond_51
    if-eqz p1, :cond_55

    if-ne p1, v5, :cond_64

    .line 127
    :cond_55
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiCheckBoxPref:Landroid/preference/CheckBoxPreference;

    if-ne p1, v5, :cond_60

    const v2, 0x7f08015e

    :goto_5c
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_4c

    :cond_60
    const v2, 0x7f08015f

    goto :goto_5c

    .line 130
    :cond_64
    const/4 v1, 0x4

    if-ne p1, v1, :cond_4c

    .line 131
    const v0, 0x7f080160

    .line 132
    .local v0, message:I
    if-ne p2, v5, :cond_7f

    const v0, 0x7f080161

    .line 135
    :cond_6f
    :goto_6f
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 136
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 137
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_4c

    .line 133
    :cond_7f
    if-nez p2, :cond_6f

    const v0, 0x7f080162

    goto :goto_6f
.end method

.method private isEnabledByDependency()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 155
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiEnabler;->getDependencyPreference()Landroid/preference/Preference;

    move-result-object v0

    .line 156
    .local v0, dep:Landroid/preference/Preference;
    if-nez v0, :cond_9

    move v1, v2

    .line 160
    :goto_8
    return v1

    :cond_9
    invoke-virtual {v0}, Landroid/preference/Preference;->shouldDisableDependents()Z

    move-result v1

    if-nez v1, :cond_11

    move v1, v2

    goto :goto_8

    :cond_11
    const/4 v1, 0x0

    goto :goto_8
.end method

.method private setWifiEnabled(Z)V
    .registers 4
    .parameter "enable"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 106
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_18

    .line 107
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiCheckBoxPref:Landroid/preference/CheckBoxPreference;

    if-eqz p1, :cond_19

    const v1, 0x7f080161

    :goto_15
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 109
    :cond_18
    return-void

    .line 107
    :cond_19
    const v1, 0x7f080162

    goto :goto_15
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 4
    .parameter "preference"
    .parameter "value"

    .prologue
    .line 96
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiEnabler;->setWifiEnabled(Z)V

    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .registers 3

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 91
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 92
    return-void
.end method

.method public resume()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 80
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 82
    .local v0, state:I
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x3

    if-eq v0, v2, :cond_11

    if-eq v0, v3, :cond_11

    const/4 v2, 0x4

    if-ne v0, v2, :cond_24

    :cond_11
    move v2, v3

    :goto_12
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 85
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 86
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 87
    return-void

    .line 82
    :cond_24
    const/4 v2, 0x0

    goto :goto_12
.end method
