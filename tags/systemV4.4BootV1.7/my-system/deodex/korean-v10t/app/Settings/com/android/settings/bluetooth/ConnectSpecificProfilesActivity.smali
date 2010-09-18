.class public Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;
.super Landroid/preference/PreferenceActivity;
.source "ConnectSpecificProfilesActivity.java"

# interfaces
.implements Lcom/android/settings/bluetooth/LocalBluetoothDevice$Callback;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity$1;
    }
.end annotation


# static fields
.field public static final EXTRA_ADDRESS:Ljava/lang/String; = "address"

.field private static final KEY_ONLINE_MODE:Ljava/lang/String; = "online_mode"

.field private static final KEY_PROFILE_CONTAINER:Ljava/lang/String; = "profile_container"

.field private static final KEY_TITLE:Ljava/lang/String; = "title"

.field private static final TAG:Ljava/lang/String; = "ConnectSpecificProfilesActivity"


# instance fields
.field private mDevice:Lcom/android/settings/bluetooth/LocalBluetoothDevice;

.field private mManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

.field private mOnlineMode:Z

.field private mOnlineModePreference:Landroid/preference/CheckBoxPreference;

.field private mProfileContainer:Landroid/preference/PreferenceGroup;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 308
    return-void
.end method

.method private addPreferencesForProfiles()V
    .registers 5

    .prologue
    .line 140
    iget-object v3, p0, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->mDevice:Lcom/android/settings/bluetooth/LocalBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    .line 141
    .local v2, profile:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;
    invoke-direct {p0, v2}, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->createProfilePreference(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    .line 142
    .local v1, pref:Landroid/preference/Preference;
    iget-object v3, p0, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_a

    .line 144
    .end local v1           #pref:Landroid/preference/Preference;
    .end local v2           #profile:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;
    :cond_20
    return-void
.end method

.method private createProfilePreference(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Landroid/preference/CheckBoxPreference;
    .registers 4
    .parameter "profile"

    .prologue
    .line 155
    new-instance v0, Landroid/preference/CheckBoxPreference;

    invoke-direct {v0, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 156
    .local v0, pref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 157
    iget v1, p1, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->localizedString:I

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 158
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 159
    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 161
    invoke-direct {p0, v0, p1}, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->refreshProfilePreference(Landroid/preference/CheckBoxPreference;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)V

    .line 163
    return-object v0
.end method

.method private getProfileOf(Landroid/preference/Preference;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;
    .registers 6
    .parameter "pref"

    .prologue
    const/4 v3, 0x0

    .line 275
    instance-of v2, p1, Landroid/preference/CheckBoxPreference;

    if-nez v2, :cond_7

    move-object v2, v3

    .line 282
    :goto_6
    return-object v2

    .line 276
    :cond_7
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 277
    .local v1, key:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    move-object v2, v3

    goto :goto_6

    .line 280
    :cond_13
    :try_start_13
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->valueOf(Ljava/lang/String;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;
    :try_end_1a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13 .. :try_end_1a} :catch_1c

    move-result-object v2

    goto :goto_6

    .line 281
    :catch_1c
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/lang/IllegalArgumentException;
    move-object v2, v3

    .line 282
    goto :goto_6
.end method

.method private static getProfileSummary(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;Ljava/lang/String;IZ)I
    .registers 6
    .parameter "profileManager"
    .parameter "profile"
    .parameter "address"
    .parameter "connectionStatus"
    .parameter "onlineMode"

    .prologue
    .line 288
    if-eqz p4, :cond_5

    const/4 v0, 0x4

    if-ne p3, v0, :cond_a

    .line 289
    :cond_5
    invoke-static {p1}, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->getProfileSummaryForSettingPreference(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)I

    move-result v0

    .line 291
    :goto_9
    return v0

    :cond_a
    invoke-virtual {p0, p2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getSummary(Ljava/lang/String;)I

    move-result v0

    goto :goto_9
.end method

.method private static final getProfileSummaryForSettingPreference(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)I
    .registers 3
    .parameter "profile"

    .prologue
    .line 302
    sget-object v0, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity$1;->$SwitchMap$com$android$settings$bluetooth$LocalBluetoothProfileManager$Profile:[I

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_16

    .line 308
    const/4 v0, 0x0

    :goto_c
    return v0

    .line 304
    :pswitch_d
    const v0, 0x7f080134

    goto :goto_c

    .line 306
    :pswitch_11
    const v0, 0x7f080135

    goto :goto_c

    .line 302
    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_d
        :pswitch_11
    .end packed-switch
.end method

.method private onOnlineModeCheckedStateChanged(Z)V
    .registers 3
    .parameter "checked"

    .prologue
    .line 183
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->setOnlineMode(ZZ)V

    .line 184
    return-void
.end method

.method private onProfileCheckedStateChanged(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;Z)V
    .registers 5
    .parameter "profile"
    .parameter "checked"

    .prologue
    .line 187
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->mOnlineMode:Z

    if-eqz v1, :cond_b

    .line 188
    if-eqz p2, :cond_1b

    .line 189
    iget-object v1, p0, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->mDevice:Lcom/android/settings/bluetooth/LocalBluetoothDevice;

    invoke-virtual {v1, p1}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->connect(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)V

    .line 195
    :cond_b
    :goto_b
    iget-object v1, p0, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->mManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-static {v1, p1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getProfileManager(Lcom/android/settings/bluetooth/LocalBluetoothManager;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v0

    .line 197
    .local v0, profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    iget-object v1, p0, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->mDevice:Lcom/android/settings/bluetooth/LocalBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->setPreferred(Ljava/lang/String;Z)V

    .line 198
    return-void

    .line 191
    .end local v0           #profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    :cond_1b
    iget-object v1, p0, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->mDevice:Lcom/android/settings/bluetooth/LocalBluetoothDevice;

    invoke-virtual {v1, p1}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->disconnect(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)V

    goto :goto_b
.end method

.method private refresh()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 206
    iget-object v0, p0, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->mDevice:Lcom/android/settings/bluetooth/LocalBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->isConnected()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->mDevice:Lcom/android/settings/bluetooth/LocalBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->isBusy()Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_11
    const/4 v0, 0x1

    :goto_12
    invoke-direct {p0, v0, v1}, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->setOnlineMode(ZZ)V

    .line 207
    invoke-direct {p0}, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->refreshProfiles()V

    .line 208
    return-void

    :cond_19
    move v0, v1

    .line 206
    goto :goto_12
.end method

.method private refreshOnlineModePreference()V
    .registers 3

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->mOnlineModePreference:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->mOnlineMode:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 235
    iget-object v0, p0, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->mOnlineModePreference:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->mDevice:Lcom/android/settings/bluetooth/LocalBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->isBusy()Z

    move-result v1

    if-nez v1, :cond_25

    const/4 v1, 0x1

    :goto_12
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 241
    iget-object v0, p0, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->mOnlineModePreference:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->mOnlineMode:Z

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->mDevice:Lcom/android/settings/bluetooth/LocalBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->getSummary()I

    move-result v1

    :goto_21
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 243
    return-void

    .line 235
    :cond_25
    const/4 v1, 0x0

    goto :goto_12

    .line 241
    :cond_27
    const v1, 0x7f08012c

    goto :goto_21
.end method

.method private refreshProfilePreference(Landroid/preference/CheckBoxPreference;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)V
    .registers 7
    .parameter "profilePref"
    .parameter "profile"

    .prologue
    .line 259
    iget-object v3, p0, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->mDevice:Lcom/android/settings/bluetooth/LocalBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, address:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->mManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-static {v3, p2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getProfileManager(Lcom/android/settings/bluetooth/LocalBluetoothManager;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v2

    .line 263
    .local v2, profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    invoke-virtual {v2, v0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getConnectionStatus(Ljava/lang/String;)I

    move-result v1

    .line 266
    .local v1, connectionStatus:I
    iget-object v3, p0, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->mDevice:Lcom/android/settings/bluetooth/LocalBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->isBusy()Z

    move-result v3

    if-nez v3, :cond_2d

    const/4 v3, 0x1

    :goto_19
    invoke-virtual {p1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 268
    iget-boolean v3, p0, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->mOnlineMode:Z

    invoke-static {v2, p2, v0, v1, v3}, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->getProfileSummary(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;Ljava/lang/String;IZ)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 271
    invoke-virtual {v2, v0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->isPreferred(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 272
    return-void

    .line 266
    :cond_2d
    const/4 v3, 0x0

    goto :goto_19
.end method

.method private refreshProfiles()V
    .registers 5

    .prologue
    .line 246
    iget-object v3, p0, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->mDevice:Lcom/android/settings/bluetooth/LocalBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    .line 247
    .local v1, profile:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;
    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    .line 249
    .local v2, profilePref:Landroid/preference/CheckBoxPreference;
    if-nez v2, :cond_2c

    .line 250
    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->createProfilePreference(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    .line 251
    iget-object v3, p0, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_a

    .line 253
    :cond_2c
    invoke-direct {p0, v2, v1}, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->refreshProfilePreference(Landroid/preference/CheckBoxPreference;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)V

    goto :goto_a

    .line 256
    .end local v1           #profile:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;
    .end local v2           #profilePref:Landroid/preference/CheckBoxPreference;
    :cond_30
    return-void
.end method

.method private setOnlineMode(ZZ)V
    .registers 4
    .parameter "onlineMode"
    .parameter "takeAction"

    .prologue
    .line 218
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->mOnlineMode:Z

    .line 220
    if-eqz p2, :cond_b

    .line 221
    if-eqz p1, :cond_f

    .line 222
    iget-object v0, p0, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->mDevice:Lcom/android/settings/bluetooth/LocalBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->connect()V

    .line 228
    :cond_b
    :goto_b
    invoke-direct {p0}, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->refreshOnlineModePreference()V

    .line 229
    return-void

    .line 224
    :cond_f
    iget-object v0, p0, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->mDevice:Lcom/android/settings/bluetooth/LocalBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->disconnect()V

    goto :goto_b
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter "savedInstanceState"

    .prologue
    const/16 v4, 0x14

    const/4 v6, 0x0

    const-string v7, "address"

    const-string v5, "ConnectSpecificProfilesActivity"

    .line 63
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    if-eqz p1, :cond_ba

    .line 67
    const-string v3, "address"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, address:Ljava/lang/String;
    :goto_12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 74
    const-string v3, "ConnectSpecificProfilesActivity"

    const-string v3, "Activity started without address"

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->finish()V

    .line 78
    :cond_22
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->mManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 79
    iget-object v3, p0, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->mManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getLocalDeviceManager()Lcom/android/settings/bluetooth/LocalBluetoothDeviceManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/settings/bluetooth/LocalBluetoothDeviceManager;->findDevice(Ljava/lang/String;)Lcom/android/settings/bluetooth/LocalBluetoothDevice;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->mDevice:Lcom/android/settings/bluetooth/LocalBluetoothDevice;

    .line 80
    iget-object v3, p0, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->mDevice:Lcom/android/settings/bluetooth/LocalBluetoothDevice;

    if-nez v3, :cond_42

    .line 81
    const-string v3, "ConnectSpecificProfilesActivity"

    const-string v3, "Device not found, cannot connect to it"

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->finish()V

    .line 85
    :cond_42
    const v3, 0x7f040005

    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->addPreferencesFromResource(I)V

    .line 86
    const-string v3, "profile_container"

    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceGroup;

    iput-object v3, p0, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->mProfileContainer:Landroid/preference/PreferenceGroup;

    .line 90
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 92
    .local v2, title:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->mDevice:Lcom/android/settings/bluetooth/LocalBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    .line 94
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v4, :cond_92

    .line 96
    invoke-virtual {v2, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 97
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 99
    const-string v3, "ConnectSpecificProfilesActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Shorten device name : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_92
    const-string v3, "title"

    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    const v4, 0x7f08012a

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 107
    const-string v3, "online_mode"

    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->mOnlineModePreference:Landroid/preference/CheckBoxPreference;

    .line 108
    iget-object v3, p0, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->mOnlineModePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 111
    invoke-direct {p0}, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->addPreferencesForProfiles()V

    .line 112
    return-void

    .line 69
    .end local v0           #address:Ljava/lang/String;
    .end local v2           #title:Ljava/lang/String;
    :cond_ba
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 70
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "address"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #address:Ljava/lang/String;
    goto/16 :goto_12
.end method

.method public onDeviceAttributesChanged(Lcom/android/settings/bluetooth/LocalBluetoothDevice;)V
    .registers 2
    .parameter "device"

    .prologue
    .line 201
    invoke-direct {p0}, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->refresh()V

    .line 202
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 133
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 135
    iget-object v0, p0, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->mDevice:Lcom/android/settings/bluetooth/LocalBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->unregisterCallback(Lcom/android/settings/bluetooth/LocalBluetoothDevice$Callback;)V

    .line 136
    iget-object v0, p0, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->mManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/app/Activity;)V

    .line 137
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 7
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v3, 0x1

    .line 167
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, key:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    if-nez p2, :cond_f

    :cond_d
    move v2, v3

    .line 179
    .end local p2
    :goto_e
    return v2

    .line 170
    .restart local p2
    :cond_f
    const-string v2, "online_mode"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 171
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->onOnlineModeCheckedStateChanged(Z)V

    :goto_20
    move v2, v3

    .line 179
    goto :goto_e

    .line 174
    .restart local p2
    :cond_22
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->getProfileOf(Landroid/preference/Preference;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    move-result-object v1

    .line 175
    .local v1, profile:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;
    if-nez v1, :cond_2a

    const/4 v2, 0x0

    goto :goto_e

    .line 176
    :cond_2a
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->onProfileCheckedStateChanged(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;Z)V

    goto :goto_20
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 123
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 125
    iget-object v0, p0, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->mManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/app/Activity;)V

    .line 126
    iget-object v0, p0, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->mDevice:Lcom/android/settings/bluetooth/LocalBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->registerCallback(Lcom/android/settings/bluetooth/LocalBluetoothDevice$Callback;)V

    .line 128
    invoke-direct {p0}, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->refresh()V

    .line 129
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 116
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 118
    const-string v0, "address"

    iget-object v1, p0, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;->mDevice:Lcom/android/settings/bluetooth/LocalBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return-void
.end method
