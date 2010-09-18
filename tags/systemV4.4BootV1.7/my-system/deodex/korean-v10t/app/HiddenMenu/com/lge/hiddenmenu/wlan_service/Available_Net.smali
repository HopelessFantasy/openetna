.class public Lcom/lge/hiddenmenu/wlan_service/Available_Net;
.super Landroid/app/Activity;
.source "Available_Net.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/hiddenmenu/wlan_service/Available_Net$WifiReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Available_Net"


# instance fields
.field aa:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field info:Landroid/net/wifi/WifiInfo;

.field private mPreference:Landroid/preference/Preference;

.field mStrings:[Ljava/lang/String;

.field mainList:Landroid/widget/ListView;

.field mainWifi:Landroid/net/wifi/WifiManager;

.field preferencemanager:Landroid/preference/PreferenceManager;

.field receiverWifi:Lcom/lge/hiddenmenu/wlan_service/Available_Net$WifiReceiver;

.field sb:Ljava/lang/StringBuilder;

.field todoItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field wifiList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/Available_Net;->todoItems:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/Available_Net;->sb:Ljava/lang/StringBuilder;

    .line 44
    const/16 v0, 0x32

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/Available_Net;->mStrings:[Ljava/lang/String;

    .line 99
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lge/hiddenmenu/wlan_service/Available_Net;->todoItems:Ljava/util/ArrayList;

    .line 56
    const v1, 0x7f030031

    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/wlan_service/Available_Net;->setContentView(I)V

    .line 57
    const v1, 0x7f0700d8

    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/wlan_service/Available_Net;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/lge/hiddenmenu/wlan_service/Available_Net;->mainList:Landroid/widget/ListView;

    .line 59
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x1090003

    iget-object v3, p0, Lcom/lge/hiddenmenu/wlan_service/Available_Net;->todoItems:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v1, p0, Lcom/lge/hiddenmenu/wlan_service/Available_Net;->aa:Landroid/widget/ArrayAdapter;

    .line 60
    iget-object v1, p0, Lcom/lge/hiddenmenu/wlan_service/Available_Net;->mainList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/lge/hiddenmenu/wlan_service/Available_Net;->aa:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 62
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/wlan_service/Available_Net;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/lge/hiddenmenu/wlan_service/Available_Net;->mainWifi:Landroid/net/wifi/WifiManager;

    .line 63
    new-instance v1, Lcom/lge/hiddenmenu/wlan_service/Available_Net$WifiReceiver;

    invoke-direct {v1, p0}, Lcom/lge/hiddenmenu/wlan_service/Available_Net$WifiReceiver;-><init>(Lcom/lge/hiddenmenu/wlan_service/Available_Net;)V

    iput-object v1, p0, Lcom/lge/hiddenmenu/wlan_service/Available_Net;->receiverWifi:Lcom/lge/hiddenmenu/wlan_service/Available_Net$WifiReceiver;

    .line 64
    iget-object v1, p0, Lcom/lge/hiddenmenu/wlan_service/Available_Net;->receiverWifi:Lcom/lge/hiddenmenu/wlan_service/Available_Net$WifiReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/lge/hiddenmenu/wlan_service/Available_Net;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 65
    iget-object v1, p0, Lcom/lge/hiddenmenu/wlan_service/Available_Net;->mainWifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 66
    iget-object v1, p0, Lcom/lge/hiddenmenu/wlan_service/Available_Net;->mainWifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/hiddenmenu/wlan_service/Available_Net;->wifiList:Ljava/util/List;

    .line 67
    iget-object v1, p0, Lcom/lge/hiddenmenu/wlan_service/Available_Net;->mainWifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/hiddenmenu/wlan_service/Available_Net;->info:Landroid/net/wifi/WifiInfo;

    .line 68
    const/4 v0, 0x0

    .local v0, i:I
    :goto_61
    iget-object v1, p0, Lcom/lge/hiddenmenu/wlan_service/Available_Net;->wifiList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_7b

    .line 70
    iget-object v2, p0, Lcom/lge/hiddenmenu/wlan_service/Available_Net;->todoItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/hiddenmenu/wlan_service/Available_Net;->wifiList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    iget-object v1, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_61

    .line 72
    :cond_7b
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    const/4 v1, 0x0

    .line 76
    const-string v0, "Scan"

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 77
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 4
    .parameter "featuredId"
    .parameter "item"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/Available_Net;->mainWifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 84
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/Available_Net;->receiverWifi:Lcom/lge/hiddenmenu/wlan_service/Available_Net$WifiReceiver;

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/wlan_service/Available_Net;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 90
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 91
    return-void
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 95
    iget-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/Available_Net;->receiverWifi:Lcom/lge/hiddenmenu/wlan_service/Available_Net$WifiReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/lge/hiddenmenu/wlan_service/Available_Net;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 96
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 97
    return-void
.end method
