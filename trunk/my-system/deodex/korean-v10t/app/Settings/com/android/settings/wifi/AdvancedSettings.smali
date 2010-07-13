.class public Lcom/android/settings/wifi/AdvancedSettings;
.super Landroid/preference/PreferenceActivity;
.source "AdvancedSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final KEY_MAC_ADDRESS:Ljava/lang/String; = "mac_address"

.field private static final KEY_NUM_CHANNELS:Ljava/lang/String; = "num_channels"

.field private static final KEY_SLEEP_POLICY:Ljava/lang/String; = "sleep_policy"

.field private static final KEY_USE_STATIC_IP:Ljava/lang/String; = "use_static_ip"

.field private static final MENU_ITEM_CANCEL:I = 0x2

.field private static final MENU_ITEM_SAVE:I = 0x1


# instance fields
.field private mPreferenceKeys:[Ljava/lang/String;

.field private mSettingNames:[Ljava/lang/String;

.field private mUseStaticIpCheckBox:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .registers 8

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 46
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "wifi_static_ip"

    aput-object v1, v0, v2

    const-string v1, "wifi_static_gateway"

    aput-object v1, v0, v3

    const-string v1, "wifi_static_netmask"

    aput-object v1, v0, v4

    const-string v1, "wifi_static_dns1"

    aput-object v1, v0, v5

    const-string v1, "wifi_static_dns2"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedSettings;->mSettingNames:[Ljava/lang/String;

    .line 51
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ip_address"

    aput-object v1, v0, v2

    const-string v1, "gateway"

    aput-object v1, v0, v3

    const-string v1, "netmask"

    aput-object v1, v0, v4

    const-string v1, "dns1"

    aput-object v1, v0, v5

    const-string v1, "dns2"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedSettings;->mPreferenceKeys:[Ljava/lang/String;

    return-void
.end method

.method private initNumChannelsPreference()V
    .registers 13

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 88
    const-string v7, "num_channels"

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    .line 89
    .local v4, pref:Landroid/preference/ListPreference;
    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 91
    const-string v7, "wifi"

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/AdvancedSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    .line 97
    .local v6, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getValidChannelCounts()[I

    move-result-object v5

    .line 98
    .local v5, validChannelCounts:[I
    if-nez v5, :cond_29

    .line 99
    const v7, 0x7f080191

    invoke-static {p0, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 101
    invoke-virtual {v4, v10}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 119
    :cond_28
    :goto_28
    return-void

    .line 104
    :cond_29
    array-length v7, v5

    new-array v0, v7, [Ljava/lang/String;

    .line 105
    .local v0, entries:[Ljava/lang/String;
    array-length v7, v5

    new-array v1, v7, [Ljava/lang/String;

    .line 107
    .local v1, entryValues:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_30
    array-length v7, v5

    if-ge v2, v7, :cond_51

    .line 108
    aget v7, v5, v2

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v2

    .line 109
    const v7, 0x7f080192

    new-array v8, v11, [Ljava/lang/Object;

    aget v9, v5, v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {p0, v7, v8}, Lcom/android/settings/wifi/AdvancedSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v2

    .line 107
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    .line 112
    :cond_51
    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 113
    invoke-virtual {v4, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 114
    invoke-virtual {v4, v11}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 115
    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getNumAllowedChannels()I

    move-result v3

    .line 116
    .local v3, numChannels:I
    if-ltz v3, :cond_28

    .line 117
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_28
.end method

.method private initSleepPolicyPreference()V
    .registers 6

    .prologue
    .line 122
    const-string v2, "sleep_policy"

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 123
    .local v0, pref:Landroid/preference/ListPreference;
    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_sleep_policy"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 126
    .local v1, value:I
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method private isIpAddress(Ljava/lang/String;)Z
    .registers 10
    .parameter "value"

    .prologue
    const/16 v7, 0x2e

    const/4 v6, 0x0

    .line 183
    const/4 v4, 0x0

    .line 184
    .local v4, start:I
    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 185
    .local v2, end:I
    const/4 v3, 0x0

    .line 187
    .local v3, numBlocks:I
    :goto_9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_33

    .line 189
    const/4 v5, -0x1

    if-ne v2, v5, :cond_16

    .line 190
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 194
    :cond_16
    :try_start_16
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_1d} :catch_26

    move-result v0

    .line 195
    .local v0, block:I
    const/16 v5, 0xff

    if-gt v0, v5, :cond_24

    if-gez v0, :cond_2a

    :cond_24
    move v5, v6

    .line 208
    .end local v0           #block:I
    :goto_25
    return v5

    .line 198
    :catch_26
    move-exception v5

    move-object v1, v5

    .local v1, e:Ljava/lang/NumberFormatException;
    move v5, v6

    .line 199
    goto :goto_25

    .line 202
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local v0       #block:I
    :cond_2a
    add-int/lit8 v3, v3, 0x1

    .line 204
    add-int/lit8 v4, v2, 0x1

    .line 205
    invoke-virtual {p1, v7, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    goto :goto_9

    .line 208
    .end local v0           #block:I
    :cond_33
    const/4 v5, 0x4

    if-ne v3, v5, :cond_38

    const/4 v5, 0x1

    goto :goto_25

    :cond_38
    move v5, v6

    goto :goto_25
.end method

.method private refreshMacAddress()V
    .registers 6

    .prologue
    .line 268
    const-string v4, "wifi"

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/AdvancedSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 269
    .local v3, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 271
    .local v1, wifiInfo:Landroid/net/wifi/WifiInfo;
    const-string v4, "mac_address"

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 272
    .local v2, wifiMacAddressPref:Landroid/preference/Preference;
    if-nez v1, :cond_21

    const/4 v4, 0x0

    move-object v0, v4

    .line 273
    .local v0, macAddress:Ljava/lang/String;
    :goto_16
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_27

    move-object v4, v0

    :goto_1d
    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 275
    return-void

    .line 272
    .end local v0           #macAddress:Ljava/lang/String;
    :cond_21
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_16

    .line 273
    .restart local v0       #macAddress:Ljava/lang/String;
    :cond_27
    const v4, 0x7f080218

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/AdvancedSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1d
.end method

.method private updateSettingsProvider()V
    .registers 6

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 258
    .local v0, contentResolver:Landroid/content/ContentResolver;
    const-string v3, "wifi_use_static_ip"

    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedSettings;->mUseStaticIpCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_30

    const/4 v4, 0x1

    :goto_f
    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 261
    const/4 v1, 0x0

    .local v1, i:I
    :goto_13
    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedSettings;->mSettingNames:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_32

    .line 262
    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedSettings;->mPreferenceKeys:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    .line 263
    .local v2, preference:Landroid/preference/EditTextPreference;
    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedSettings;->mSettingNames:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 261
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 258
    .end local v1           #i:I
    .end local v2           #preference:Landroid/preference/EditTextPreference;
    :cond_30
    const/4 v4, 0x0

    goto :goto_f

    .line 265
    .restart local v1       #i:I
    :cond_32
    return-void
.end method

.method private updateUi()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 242
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 244
    .local v0, contentResolver:Landroid/content/ContentResolver;
    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedSettings;->mUseStaticIpCheckBox:Landroid/preference/CheckBoxPreference;

    const-string v5, "wifi_use_static_ip"

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_34

    const/4 v5, 0x1

    :goto_10
    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 247
    const/4 v1, 0x0

    .local v1, i:I
    :goto_14
    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedSettings;->mSettingNames:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_36

    .line 248
    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedSettings;->mPreferenceKeys:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    .line 249
    .local v2, preference:Landroid/preference/EditTextPreference;
    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedSettings;->mSettingNames:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 250
    .local v3, settingValue:Ljava/lang/String;
    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 247
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .end local v1           #i:I
    .end local v2           #preference:Landroid/preference/EditTextPreference;
    .end local v3           #settingValue:Ljava/lang/String;
    :cond_34
    move v5, v6

    .line 244
    goto :goto_10

    .line 253
    .restart local v1       #i:I
    :cond_36
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v2, 0x7f04001f

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/AdvancedSettings;->addPreferencesFromResource(I)V

    .line 66
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedSettings;->initNumChannelsPreference()V

    .line 71
    const-string v2, "use_static_ip"

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/wifi/AdvancedSettings;->mUseStaticIpCheckBox:Landroid/preference/CheckBoxPreference;

    .line 73
    const/4 v0, 0x0

    .local v0, i:I
    :goto_17
    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedSettings;->mPreferenceKeys:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2a

    .line 74
    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedSettings;->mPreferenceKeys:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 75
    .local v1, preference:Landroid/preference/Preference;
    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 77
    .end local v1           #preference:Landroid/preference/Preference;
    :cond_2a
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 214
    const/4 v0, 0x1

    const v1, 0x7f080182

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 217
    const/4 v0, 0x2

    const v1, 0x7f080183

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080038

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 220
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 132
    const/4 v0, 0x4

    if-ne p1, v0, :cond_6

    .line 133
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedSettings;->updateSettingsProvider()V

    .line 136
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 226
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_1a

    .line 238
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_c
    return v0

    .line 229
    :pswitch_d
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedSettings;->updateSettingsProvider()V

    .line 230
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedSettings;->finish()V

    move v0, v1

    .line 231
    goto :goto_c

    .line 234
    :pswitch_15
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedSettings;->finish()V

    move v0, v1

    .line 235
    goto :goto_c

    .line 226
    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_d
        :pswitch_15
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 14
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const v8, 0x7f080191

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 140
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, key:Ljava/lang/String;
    if-nez v2, :cond_d

    move v6, v10

    .line 178
    .end local p2
    :goto_c
    return v6

    .line 143
    .restart local p2
    :cond_d
    const-string v6, "num_channels"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_41

    .line 145
    :try_start_15
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 146
    .local v3, numChannels:I
    const-string v6, "wifi"

    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/AdvancedSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    .line 147
    .local v5, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v5, v3}, Landroid/net/wifi/WifiManager;->setNumAllowedChannels(I)Z

    move-result v6

    if-nez v6, :cond_34

    .line 148
    const v6, 0x7f080191

    const/4 v7, 0x0

    invoke-static {p0, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V
    :try_end_34
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_34} :catch_36

    .end local v3           #numChannels:I
    .end local v5           #wifiManager:Landroid/net/wifi/WifiManager;
    :cond_34
    :goto_34
    move v6, v10

    .line 178
    goto :goto_c

    .line 151
    :catch_36
    move-exception v6

    move-object v1, v6

    .line 152
    .local v1, e:Ljava/lang/NumberFormatException;
    invoke-static {p0, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    move v6, v9

    .line 154
    goto :goto_c

    .line 157
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local p2
    :cond_41
    const-string v6, "sleep_policy"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_67

    .line 159
    :try_start_49
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "wifi_sleep_policy"

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_58
    .catch Ljava/lang/NumberFormatException; {:try_start_49 .. :try_end_58} :catch_59

    goto :goto_34

    .line 161
    :catch_59
    move-exception v6

    move-object v1, v6

    .line 162
    .restart local v1       #e:Ljava/lang/NumberFormatException;
    const v6, 0x7f080195

    invoke-static {p0, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    move v6, v9

    .line 164
    goto :goto_c

    .line 168
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local p2
    :cond_67
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 170
    .local v4, value:Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/settings/wifi/AdvancedSettings;->isIpAddress(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7d

    .line 171
    const v6, 0x7f080184

    invoke-static {p0, v6, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    move v6, v9

    .line 172
    goto :goto_c

    .line 175
    :cond_7d
    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_34
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 81
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 83
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedSettings;->updateUi()V

    .line 84
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedSettings;->refreshMacAddress()V

    .line 85
    return-void
.end method
