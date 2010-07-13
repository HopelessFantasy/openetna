.class public Lcom/android/settings/bluetooth/DiscoverServicesActivity;
.super Landroid/preference/PreferenceActivity;
.source "DiscoverServicesActivity.java"


# static fields
.field private static final KEY_BT_NAME:Ljava/lang/String; = "bt_name"

.field private static final KEY_BT_SCAN:Ljava/lang/String; = "bt_scan"

.field private static final KEY_BT_SERVICE_LIST:Ljava/lang/String; = "bt_service_list"

.field private static final MENU_SCAN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DiscoverServicesActivity"


# instance fields
.field private mDeviceAddress:Ljava/lang/String;

.field private mDeviceName:Ljava/lang/String;

.field private mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

.field mName:Landroid/preference/Preference;

.field private mServiceDiscoveryCallback:Landroid/bluetooth/IBluetoothDeviceServicesCallback;

.field private mServiceList:Lcom/android/settings/ProgressCategory;

.field private mServiceListManager:Lcom/android/settings/bluetooth/BluetoothServicesMap$IServiceListManager;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 73
    new-instance v0, Lcom/android/settings/bluetooth/DiscoverServicesActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/DiscoverServicesActivity$1;-><init>(Lcom/android/settings/bluetooth/DiscoverServicesActivity;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/DiscoverServicesActivity;->mServiceListManager:Lcom/android/settings/bluetooth/BluetoothServicesMap$IServiceListManager;

    .line 114
    new-instance v0, Lcom/android/settings/bluetooth/DiscoverServicesActivity$2;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/DiscoverServicesActivity$2;-><init>(Lcom/android/settings/bluetooth/DiscoverServicesActivity;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/DiscoverServicesActivity;->mServiceDiscoveryCallback:Landroid/bluetooth/IBluetoothDeviceServicesCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/DiscoverServicesActivity;)Lcom/android/settings/ProgressCategory;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/bluetooth/DiscoverServicesActivity;->mServiceList:Lcom/android/settings/ProgressCategory;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/bluetooth/DiscoverServicesActivity;Ljava/lang/String;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/DiscoverServicesActivity;->updateServiceList(Ljava/lang/String;I)V

    return-void
.end method

.method private getProperty(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .registers 6
    .parameter "key"
    .parameter "savedInstanceState"

    .prologue
    .line 94
    const/4 v1, 0x0

    .line 95
    .local v1, val:Ljava/lang/String;
    if-eqz p2, :cond_7

    .line 96
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 98
    :cond_7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DiscoverServicesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 100
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    .end local v0           #intent:Landroid/content/Intent;
    :cond_15
    return-object v1
.end method

.method private updateServiceList(Ljava/lang/String;I)V
    .registers 5
    .parameter "address"
    .parameter "serviceMask"

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/settings/bluetooth/DiscoverServicesActivity;->mServiceList:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0}, Lcom/android/settings/ProgressCategory;->removeAll()V

    .line 243
    iget-object v0, p0, Lcom/android/settings/bluetooth/DiscoverServicesActivity;->mServiceListManager:Lcom/android/settings/bluetooth/BluetoothServicesMap$IServiceListManager;

    invoke-static {p0, p2, v0}, Lcom/android/settings/bluetooth/BluetoothServicesMap;->getServiceString(Landroid/content/Context;ILcom/android/settings/bluetooth/BluetoothServicesMap$IServiceListManager;)V

    .line 245
    iget-object v0, p0, Lcom/android/settings/bluetooth/DiscoverServicesActivity;->mServiceList:Lcom/android/settings/ProgressCategory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 246
    return-void
.end method


# virtual methods
.method public discoverServices()V
    .registers 4

    .prologue
    .line 222
    iget-object v1, p0, Lcom/android/settings/bluetooth/DiscoverServicesActivity;->mServiceList:Lcom/android/settings/ProgressCategory;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 226
    iget-object v1, p0, Lcom/android/settings/bluetooth/DiscoverServicesActivity;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothManager()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 227
    .local v0, btDevice:Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_15

    .line 228
    iget-object v1, p0, Lcom/android/settings/bluetooth/DiscoverServicesActivity;->mDeviceAddress:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/bluetooth/DiscoverServicesActivity;->mServiceDiscoveryCallback:Landroid/bluetooth/IBluetoothDeviceServicesCallback;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothDevice;->getRemoteServices(Ljava/lang/String;Landroid/bluetooth/IBluetoothDeviceServicesCallback;)Z

    .line 233
    :cond_15
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 136
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 139
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/DiscoverServicesActivity;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 140
    iget-object v1, p0, Lcom/android/settings/bluetooth/DiscoverServicesActivity;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    if-nez v1, :cond_10

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DiscoverServicesActivity;->finish()V

    .line 145
    :cond_10
    const-string v1, "android.bluetooth.intent.ADDRESS"

    invoke-direct {p0, v1, p1}, Lcom/android/settings/bluetooth/DiscoverServicesActivity;->getProperty(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/DiscoverServicesActivity;->mDeviceAddress:Ljava/lang/String;

    .line 147
    iget-object v1, p0, Lcom/android/settings/bluetooth/DiscoverServicesActivity;->mDeviceAddress:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 148
    const-string v1, "DiscoverServicesActivity"

    const-string v2, "Activity started without address"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DiscoverServicesActivity;->finish()V

    .line 153
    :cond_2a
    const v1, 0x7f04000d

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/DiscoverServicesActivity;->addPreferencesFromResource(I)V

    .line 154
    const-string v1, "bt_name"

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/DiscoverServicesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 155
    .local v0, mNamePreference:Landroid/preference/Preference;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 160
    const-string v1, "android.bluetooth.intent.NAME"

    invoke-direct {p0, v1, p1}, Lcom/android/settings/bluetooth/DiscoverServicesActivity;->getProperty(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/DiscoverServicesActivity;->mDeviceName:Ljava/lang/String;

    .line 161
    iget-object v1, p0, Lcom/android/settings/bluetooth/DiscoverServicesActivity;->mDeviceName:Ljava/lang/String;

    if-eqz v1, :cond_4b

    .line 162
    iget-object v1, p0, Lcom/android/settings/bluetooth/DiscoverServicesActivity;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 165
    :cond_4b
    const-string v1, "bt_service_list"

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/DiscoverServicesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/ProgressCategory;

    iput-object v1, p0, Lcom/android/settings/bluetooth/DiscoverServicesActivity;->mServiceList:Lcom/android/settings/ProgressCategory;

    .line 167
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 185
    const v0, 0x7f080459

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080193

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x72

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 188
    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 200
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_e

    .line 206
    const/4 v0, 0x0

    :goto_8
    return v0

    .line 203
    :pswitch_9
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DiscoverServicesActivity;->discoverServices()V

    .line 204
    const/4 v0, 0x1

    goto :goto_8

    .line 200
    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_9
    .end packed-switch
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 179
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 180
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 214
    const-string v0, "bt_scan"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 215
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DiscoverServicesActivity;->discoverServices()V

    .line 216
    const/4 v0, 0x1

    .line 218
    :goto_10
    return v0

    :cond_11
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_10
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    .line 193
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/DiscoverServicesActivity;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothManager()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->isEnabled()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 195
    return v2
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 171
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 172
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DiscoverServicesActivity;->discoverServices()V

    .line 173
    return-void
.end method
