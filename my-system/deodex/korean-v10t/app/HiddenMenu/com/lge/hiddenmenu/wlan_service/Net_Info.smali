.class public Lcom/lge/hiddenmenu/wlan_service/Net_Info;
.super Landroid/preference/PreferenceActivity;
.source "Net_Info.java"


# instance fields
.field private detailedState:Landroid/net/NetworkInfo$DetailedState;

.field info:Landroid/net/wifi/WifiInfo;

.field mTable:Landroid/view/ViewGroup;

.field view:Landroid/widget/TextView;

.field wifi:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private getSignalResId(I)I
    .registers 3
    .parameter "rssi"

    .prologue
    .line 82
    packed-switch p1, :pswitch_data_16

    .line 97
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 84
    :pswitch_5
    const v0, 0x7f080194

    goto :goto_4

    .line 87
    :pswitch_9
    const v0, 0x7f080193

    goto :goto_4

    .line 90
    :pswitch_d
    const v0, 0x7f080192

    goto :goto_4

    .line 93
    :pswitch_11
    const v0, 0x7f080191

    goto :goto_4

    .line 82
    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_5
        :pswitch_9
        :pswitch_d
        :pswitch_11
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 15
    .parameter "savedInstanceState"

    .prologue
    const-string v12, "."

    .line 33
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v10, 0x7f040003

    invoke-virtual {p0, v10}, Lcom/lge/hiddenmenu/wlan_service/Net_Info;->addPreferencesFromResource(I)V

    .line 37
    const-string v10, "wifi"

    invoke-virtual {p0, v10}, Lcom/lge/hiddenmenu/wlan_service/Net_Info;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/WifiManager;

    iput-object v10, p0, Lcom/lge/hiddenmenu/wlan_service/Net_Info;->wifi:Landroid/net/wifi/WifiManager;

    .line 39
    iget-object v10, p0, Lcom/lge/hiddenmenu/wlan_service/Net_Info;->wifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v10

    iput-object v10, p0, Lcom/lge/hiddenmenu/wlan_service/Net_Info;->info:Landroid/net/wifi/WifiInfo;

    .line 41
    iget-object v10, p0, Lcom/lge/hiddenmenu/wlan_service/Net_Info;->info:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_e0

    .line 44
    iget-object v10, p0, Lcom/lge/hiddenmenu/wlan_service/Net_Info;->info:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v10

    const/4 v11, 0x4

    invoke-static {v10, v11}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v8

    .line 47
    .local v8, strength:I
    iget-object v10, p0, Lcom/lge/hiddenmenu/wlan_service/Net_Info;->info:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v2

    .line 48
    .local v2, speed:I
    iget-object v10, p0, Lcom/lge/hiddenmenu/wlan_service/Net_Info;->info:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v6

    .line 49
    .local v6, status:Landroid/net/wifi/SupplicantState;
    invoke-virtual {v6}, Landroid/net/wifi/SupplicantState;->toString()Ljava/lang/String;

    move-result-object v5

    .line 50
    .local v5, state:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 51
    .local v3, speed_str:Ljava/lang/String;
    iget-object v10, p0, Lcom/lge/hiddenmenu/wlan_service/Net_Info;->info:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    .line 52
    .local v0, ipAddress:I
    iget-object v10, p0, Lcom/lge/hiddenmenu/wlan_service/Net_Info;->info:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, macAddress:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    shr-int/lit8 v11, v0, 0x0

    and-int/lit16 v11, v11, 0xff

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    shr-int/lit8 v11, v0, 0x8

    and-int/lit16 v11, v11, 0xff

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    shr-int/lit8 v11, v0, 0x10

    and-int/lit16 v11, v11, 0xff

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    shr-int/lit8 v11, v0, 0x18

    and-int/lit16 v11, v11, 0xff

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 58
    .local v7, strIPAddress:Ljava/lang/String;
    const-string v10, "IP Address"

    invoke-static {v10, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const-string v9, "Mbps"

    .line 62
    .local v9, units:Ljava/lang/String;
    iget-object v10, p0, Lcom/lge/hiddenmenu/wlan_service/Net_Info;->info:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    .line 67
    .local v4, ssid:Ljava/lang/String;
    :try_start_98
    const-string v10, "speed"

    invoke-virtual {p0, v10}, Lcom/lge/hiddenmenu/wlan_service/Net_Info;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 68
    const-string v10, "signal_strength"

    invoke-virtual {p0, v10}, Lcom/lge/hiddenmenu/wlan_service/Net_Info;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-direct {p0, v8}, Lcom/lge/hiddenmenu/wlan_service/Net_Info;->getSignalResId(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setSummary(I)V

    .line 69
    const-string v10, "IP_address"

    invoke-virtual {p0, v10}, Lcom/lge/hiddenmenu/wlan_service/Net_Info;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 70
    const-string v10, "status"

    invoke-virtual {p0, v10}, Lcom/lge/hiddenmenu/wlan_service/Net_Info;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-virtual {v6}, Landroid/net/wifi/SupplicantState;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 71
    const-string v10, "mac_address"

    invoke-virtual {p0, v10}, Lcom/lge/hiddenmenu/wlan_service/Net_Info;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 72
    const-string v10, "ssid"

    invoke-virtual {p0, v10}, Lcom/lge/hiddenmenu/wlan_service/Net_Info;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    iget-object v11, p0, Lcom/lge/hiddenmenu/wlan_service/Net_Info;->info:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v11}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_e0
    .catch Ljava/lang/RuntimeException; {:try_start_98 .. :try_end_e0} :catch_e1

    .line 78
    .end local v0           #ipAddress:I
    .end local v1           #macAddress:Ljava/lang/String;
    .end local v2           #speed:I
    .end local v3           #speed_str:Ljava/lang/String;
    .end local v4           #ssid:Ljava/lang/String;
    .end local v5           #state:Ljava/lang/String;
    .end local v6           #status:Landroid/net/wifi/SupplicantState;
    .end local v7           #strIPAddress:Ljava/lang/String;
    .end local v8           #strength:I
    .end local v9           #units:Ljava/lang/String;
    :cond_e0
    :goto_e0
    return-void

    .line 74
    .restart local v0       #ipAddress:I
    .restart local v1       #macAddress:Ljava/lang/String;
    .restart local v2       #speed:I
    .restart local v3       #speed_str:Ljava/lang/String;
    .restart local v4       #ssid:Ljava/lang/String;
    .restart local v5       #state:Ljava/lang/String;
    .restart local v6       #status:Landroid/net/wifi/SupplicantState;
    .restart local v7       #strIPAddress:Ljava/lang/String;
    .restart local v8       #strength:I
    .restart local v9       #units:Ljava/lang/String;
    :catch_e1
    move-exception v10

    goto :goto_e0
.end method
