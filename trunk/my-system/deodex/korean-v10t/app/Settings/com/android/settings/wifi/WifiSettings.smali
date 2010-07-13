.class public Lcom/android/settings/wifi/WifiSettings;
.super Landroid/preference/PreferenceActivity;
.source "WifiSettings.java"

# interfaces
.implements Lcom/android/settings/wifi/WifiLayer$Callback;
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field private static final CONTEXT_MENU_ID_CHANGE_PASSWORD:I = 0x3

.field private static final CONTEXT_MENU_ID_CONNECT:I = 0x1

.field private static final CONTEXT_MENU_ID_FORGET:I = 0x2

.field private static final INSTANCE_KEY_DIALOG_BUNDLE:Ljava/lang/String; = "com.android.settings.wifi.WifiSettings:dialogBundle"

.field private static final KEY_ACCESS_POINTS:Ljava/lang/String; = "access_points"

.field private static final KEY_ADD_OTHER_NETWORK:Ljava/lang/String; = "add_other_network"

.field private static final KEY_OPEN_NETWORK_NOTIFICATIONS_ENABLED:Ljava/lang/String; = "open_network_notifications_enabled"

.field private static final KEY_WIFI_ENABLED:Ljava/lang/String; = "wifi_enabled"

.field private static final MENU_ID_ADVANCED:I = 0x2

.field private static final MENU_ID_SCAN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WifiSettings"


# instance fields
.field private mAddOtherNetwork:Landroid/preference/Preference;

.field private mApCategory:Lcom/android/settings/ProgressCategory;

.field private mAps:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/android/settings/wifi/AccessPointState;",
            "Lcom/android/settings/wifi/AccessPointPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mDialog:Landroid/app/Dialog;

.field private mOpenNetworkNotificationsEnabled:Landroid/preference/CheckBoxPreference;

.field private mWifiEnabled:Landroid/preference/CheckBoxPreference;

.field private mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

.field private mWifiLayer:Lcom/android/settings/wifi/WifiLayer;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 99
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAps:Ljava/util/WeakHashMap;

    .line 100
    new-instance v0, Lcom/android/settings/wifi/WifiLayer;

    invoke-direct {v0, p0, p0}, Lcom/android/settings/wifi/WifiLayer;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/WifiLayer$Callback;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiLayer:Lcom/android/settings/wifi/WifiLayer;

    .line 101
    return-void
.end method

.method private connectToNetwork(Lcom/android/settings/wifi/AccessPointState;)V
    .registers 3
    .parameter "state"

    .prologue
    .line 293
    invoke-virtual {p1}, Lcom/android/settings/wifi/AccessPointState;->hasSecurity()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Lcom/android/settings/wifi/AccessPointState;->hasPassword()Z

    move-result v0

    if-nez v0, :cond_11

    .line 294
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/wifi/WifiSettings;->showAccessPointDialog(Lcom/android/settings/wifi/AccessPointState;I)V

    .line 298
    :goto_10
    return-void

    .line 296
    :cond_11
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiLayer:Lcom/android/settings/wifi/WifiLayer;

    invoke-virtual {v0, p1}, Lcom/android/settings/wifi/WifiLayer;->connectToNetwork(Lcom/android/settings/wifi/AccessPointState;)Z

    goto :goto_10
.end method

.method private getStateFromMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)Lcom/android/settings/wifi/AccessPointState;
    .registers 8
    .parameter "menuInfo"

    .prologue
    const/4 v5, 0x0

    .line 301
    if-eqz p1, :cond_7

    instance-of v3, p1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-nez v3, :cond_9

    :cond_7
    move-object v3, v5

    .line 312
    :goto_8
    return-object v3

    .line 305
    :cond_9
    move-object v0, p1

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v1, v0

    .line 306
    .local v1, adapterMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    iget v4, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v3, v4}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/Preference;

    .line 308
    .local v2, pref:Landroid/preference/Preference;
    if-eqz v2, :cond_23

    instance-of v3, v2, Lcom/android/settings/wifi/AccessPointPreference;

    if-nez v3, :cond_25

    :cond_23
    move-object v3, v5

    .line 309
    goto :goto_8

    .line 312
    :cond_25
    check-cast v2, Lcom/android/settings/wifi/AccessPointPreference;

    .end local v2           #pref:Landroid/preference/Preference;
    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPointPreference;->getAccessPointState()Lcom/android/settings/wifi/AccessPointState;

    move-result-object v3

    goto :goto_8
.end method

.method private onCreatePreferences()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 118
    const v1, 0x7f040020

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->addPreferencesFromResource(I)V

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 122
    .local v0, preferenceScreen:Landroid/preference/PreferenceScreen;
    const-string v1, "access_points"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/ProgressCategory;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mApCategory:Lcom/android/settings/ProgressCategory;

    .line 129
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mApCategory:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v1, v4}, Lcom/android/settings/ProgressCategory;->setOrderingAsAdded(Z)V

    .line 131
    const-string v1, "wifi_enabled"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabled:Landroid/preference/CheckBoxPreference;

    .line 132
    new-instance v2, Lcom/android/settings/wifi/WifiEnabler;

    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabled:Landroid/preference/CheckBoxPreference;

    invoke-direct {v2, p0, v1, v3}, Lcom/android/settings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/preference/CheckBoxPreference;)V

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    .line 135
    const-string v1, "open_network_notifications_enabled"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mOpenNetworkNotificationsEnabled:Landroid/preference/CheckBoxPreference;

    .line 137
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mOpenNetworkNotificationsEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_networks_available_notification_on"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_62

    move v2, v5

    :goto_4f
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 140
    const-string v1, "add_other_network"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAddOtherNetwork:Landroid/preference/Preference;

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->registerForContextMenu(Landroid/view/View;)V

    .line 143
    return-void

    :cond_62
    move v2, v4

    .line 137
    goto :goto_4f
.end method

.method private onCreatedWifi()V
    .registers 1

    .prologue
    .line 146
    return-void
.end method

.method private showAddOtherNetworkDialog()V
    .registers 3

    .prologue
    .line 346
    new-instance v0, Lcom/android/settings/wifi/AccessPointDialog;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiLayer:Lcom/android/settings/wifi/WifiLayer;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wifi/AccessPointDialog;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/WifiLayer;)V

    .line 347
    .local v0, dialog:Lcom/android/settings/wifi/AccessPointDialog;
    new-instance v1, Lcom/android/settings/wifi/AccessPointState;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/AccessPointState;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AccessPointDialog;->setState(Lcom/android/settings/wifi/AccessPointState;)V

    .line 348
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AccessPointDialog;->setMode(I)V

    .line 349
    const v1, 0x7f08017b

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AccessPointDialog;->setTitle(I)V

    .line 350
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AccessPointDialog;->setAutoSecurityAllowed(Z)V

    .line 351
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Landroid/app/Dialog;)V

    .line 352
    return-void
.end method

.method private showDialog(Landroid/app/Dialog;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_9

    .line 374
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 377
    :cond_9
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Landroid/app/Dialog;

    .line 378
    invoke-virtual {p1, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 379
    if-eqz p1, :cond_13

    .line 380
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 382
    :cond_13
    return-void
.end method


# virtual methods
.method public getWifiLayer()Lcom/android/settings/wifi/WifiLayer;
    .registers 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiLayer:Lcom/android/settings/wifi/WifiLayer;

    return-object v0
.end method

.method public onAccessPointSetChanged(Lcom/android/settings/wifi/AccessPointState;Z)V
    .registers 7
    .parameter "ap"
    .parameter "added"

    .prologue
    .line 398
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAps:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPointPreference;

    .line 401
    .local v0, pref:Lcom/android/settings/wifi/AccessPointPreference;
    const-string v1, "WifiSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAccessPointSetChanged with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_4c

    const-string v3, "added"

    :goto_23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", found pref "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    if-eqz p2, :cond_54

    .line 407
    if-nez v0, :cond_4f

    .line 408
    new-instance v0, Lcom/android/settings/wifi/AccessPointPreference;

    .end local v0           #pref:Lcom/android/settings/wifi/AccessPointPreference;
    invoke-direct {v0, p0, p1}, Lcom/android/settings/wifi/AccessPointPreference;-><init>(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/AccessPointState;)V

    .line 409
    .restart local v0       #pref:Lcom/android/settings/wifi/AccessPointPreference;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAps:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    :goto_46
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mApCategory:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v1, v0}, Lcom/android/settings/ProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 425
    :cond_4b
    :goto_4b
    return-void

    .line 401
    :cond_4c
    const-string v3, "removed"

    goto :goto_23

    .line 411
    :cond_4f
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AccessPointPreference;->setEnabled(Z)V

    goto :goto_46

    .line 418
    :cond_54
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAps:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    if-eqz v0, :cond_4b

    .line 421
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mApCategory:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v1, v0}, Lcom/android/settings/ProgressCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_4b
.end method

.method public onAccessPointsStateChanged(Z)V
    .registers 4
    .parameter "enabled"

    .prologue
    .line 428
    if-eqz p1, :cond_e

    .line 429
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mApCategory:Lcom/android/settings/ProgressCategory;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/ProgressCategory;->setEnabled(Z)V

    .line 435
    :goto_8
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAddOtherNetwork:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 436
    return-void

    .line 431
    :cond_e
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mApCategory:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0}, Lcom/android/settings/ProgressCategory;->removeAll()V

    .line 432
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAps:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    goto :goto_8
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter "item"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 263
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->getStateFromMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)Lcom/android/settings/wifi/AccessPointState;

    move-result-object v0

    .line 264
    .local v0, state:Lcom/android/settings/wifi/AccessPointState;
    if-nez v0, :cond_e

    move v1, v3

    .line 283
    :goto_d
    return v1

    .line 268
    :cond_e
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_28

    move v1, v3

    .line 283
    goto :goto_d

    .line 271
    :pswitch_17
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->connectToNetwork(Lcom/android/settings/wifi/AccessPointState;)V

    move v1, v2

    .line 272
    goto :goto_d

    .line 275
    :pswitch_1c
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiLayer:Lcom/android/settings/wifi/WifiLayer;

    invoke-virtual {v1, v0}, Lcom/android/settings/wifi/WifiLayer;->forgetNetwork(Lcom/android/settings/wifi/AccessPointState;)Z

    move v1, v2

    .line 276
    goto :goto_d

    .line 279
    :pswitch_23
    invoke-virtual {p0, v0, v2}, Lcom/android/settings/wifi/WifiSettings;->showAccessPointDialog(Lcom/android/settings/wifi/AccessPointState;I)V

    move v1, v2

    .line 280
    goto :goto_d

    .line 268
    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_17
        :pswitch_1c
        :pswitch_23
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 105
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 107
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->onCreatePreferences()V

    .line 108
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiLayer:Lcom/android/settings/wifi/WifiLayer;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiLayer;->onCreate()V

    .line 110
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->onCreatedWifi()V

    .line 111
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiLayer:Lcom/android/settings/wifi/WifiLayer;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiLayer;->onCreatedCallback()V

    .line 112
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 9
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 237
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 239
    invoke-direct {p0, p3}, Lcom/android/settings/wifi/WifiSettings;->getStateFromMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)Lcom/android/settings/wifi/AccessPointState;

    move-result-object v0

    .line 240
    .local v0, state:Lcom/android/settings/wifi/AccessPointState;
    if-nez v0, :cond_d

    .line 258
    :cond_c
    :goto_c
    return-void

    .line 244
    :cond_d
    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPointState;->getHumanReadableSsid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 246
    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPointState;->isConnectable()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 247
    const v1, 0x7f08018b

    invoke-interface {p1, v3, v2, v3, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 250
    :cond_20
    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPointState;->isForgetable()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 251
    const v1, 0x7f08018c

    invoke-interface {p1, v3, v4, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 253
    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPointState;->hasPassword()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 254
    const/4 v1, 0x3

    const v2, 0x7f08018d

    invoke-interface {p1, v3, v1, v4, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_c
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 173
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 175
    const v0, 0x7f080172

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02001d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 178
    const/4 v0, 0x2

    const v1, 0x7f080180

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080042

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 181
    return v3
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 164
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 166
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_c

    .line 167
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 169
    :cond_c
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_7

    .line 231
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Landroid/app/Dialog;

    .line 233
    :cond_7
    return-void
.end method

.method public onError(I)V
    .registers 3
    .parameter "messageResId"

    .prologue
    .line 389
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 390
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 186
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 188
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_20

    .line 200
    const/4 v1, 0x0

    :goto_c
    return v1

    .line 191
    :pswitch_d
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiLayer:Lcom/android/settings/wifi/WifiLayer;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiLayer;->attemptScan()V

    move v1, v2

    .line 192
    goto :goto_c

    .line 195
    :pswitch_14
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/wifi/AdvancedSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 196
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->startActivity(Landroid/content/Intent;)V

    move v1, v2

    .line 197
    goto :goto_c

    .line 188
    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_d
        :pswitch_14
    .end packed-switch
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 157
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 158
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiLayer:Lcom/android/settings/wifi/WifiLayer;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiLayer;->onPause()V

    .line 159
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->pause()V

    .line 160
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 8
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v4, 0x0

    .line 321
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 323
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAddOtherNetwork:Landroid/preference/Preference;

    if-ne p2, v1, :cond_c

    .line 324
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->showAddOtherNetworkDialog()V

    .line 334
    .end local p2
    :cond_b
    :goto_b
    return v4

    .line 325
    .restart local p2
    :cond_c
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mOpenNetworkNotificationsEnabled:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_25

    .line 326
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_networks_available_notification_on"

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mOpenNetworkNotificationsEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_23

    const/4 v3, 0x1

    :goto_1f
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_b

    :cond_23
    move v3, v4

    goto :goto_1f

    .line 329
    :cond_25
    instance-of v1, p2, Lcom/android/settings/wifi/AccessPointPreference;

    if-eqz v1, :cond_b

    .line 330
    check-cast p2, Lcom/android/settings/wifi/AccessPointPreference;

    .end local p2
    invoke-virtual {p2}, Lcom/android/settings/wifi/AccessPointPreference;->getAccessPointState()Lcom/android/settings/wifi/AccessPointState;

    move-result-object v0

    .line 331
    .local v0, state:Lcom/android/settings/wifi/AccessPointState;
    invoke-virtual {p0, v0, v4}, Lcom/android/settings/wifi/WifiSettings;->showAccessPointDialog(Lcom/android/settings/wifi/AccessPointState;I)V

    goto :goto_b
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "state"

    .prologue
    .line 216
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 218
    const-string v1, "com.android.settings.wifi.WifiSettings:dialogBundle"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 219
    .local v0, dialogBundle:Landroid/os/Bundle;
    if-eqz v0, :cond_1e

    .line 220
    new-instance v1, Lcom/android/settings/wifi/AccessPointDialog;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiLayer:Lcom/android/settings/wifi/WifiLayer;

    invoke-direct {v1, p0, v2}, Lcom/android/settings/wifi/AccessPointDialog;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/WifiLayer;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Landroid/app/Dialog;

    .line 221
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 222
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Landroid/app/Dialog;

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Landroid/app/Dialog;)V

    .line 224
    :cond_1e
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 150
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 151
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiLayer:Lcom/android/settings/wifi/WifiLayer;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiLayer;->onResume()V

    .line 152
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->resume()V

    .line 153
    return-void
.end method

.method public onRetryPassword(Lcom/android/settings/wifi/AccessPointState;)V
    .registers 3
    .parameter "ap"

    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 446
    :goto_c
    return-void

    .line 445
    :cond_d
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/wifi/WifiSettings;->showAccessPointDialog(Lcom/android/settings/wifi/AccessPointState;I)V

    goto :goto_c
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 206
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 208
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_12

    .line 209
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 210
    .local v0, dialogBundle:Landroid/os/Bundle;
    const-string v1, "com.android.settings.wifi.WifiSettings:dialogBundle"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 212
    .end local v0           #dialogBundle:Landroid/os/Bundle;
    :cond_12
    return-void
.end method

.method public onScanningStatusChanged(Z)V
    .registers 3
    .parameter "started"

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mApCategory:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, p1}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 394
    return-void
.end method

.method public showAccessPointDialog(Lcom/android/settings/wifi/AccessPointState;I)V
    .registers 5
    .parameter "state"
    .parameter "mode"

    .prologue
    .line 365
    new-instance v0, Lcom/android/settings/wifi/AccessPointDialog;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiLayer:Lcom/android/settings/wifi/WifiLayer;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wifi/AccessPointDialog;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/WifiLayer;)V

    .line 366
    .local v0, dialog:Lcom/android/settings/wifi/AccessPointDialog;
    invoke-virtual {v0, p2}, Lcom/android/settings/wifi/AccessPointDialog;->setMode(I)V

    .line 367
    invoke-virtual {v0, p1}, Lcom/android/settings/wifi/AccessPointDialog;->setState(Lcom/android/settings/wifi/AccessPointState;)V

    .line 368
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Landroid/app/Dialog;)V

    .line 369
    return-void
.end method
