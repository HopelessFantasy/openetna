.class Lcom/lge/hiddenmenu/wlan_service/Available_Net$WifiReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Available_Net.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/hiddenmenu/wlan_service/Available_Net;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WifiReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/wlan_service/Available_Net;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/wlan_service/Available_Net;)V
    .registers 2
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/lge/hiddenmenu/wlan_service/Available_Net$WifiReceiver;->this$0:Lcom/lge/hiddenmenu/wlan_service/Available_Net;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "c"
    .parameter "intent"

    .prologue
    .line 102
    iget-object v1, p0, Lcom/lge/hiddenmenu/wlan_service/Available_Net$WifiReceiver;->this$0:Lcom/lge/hiddenmenu/wlan_service/Available_Net;

    iget-object v2, p0, Lcom/lge/hiddenmenu/wlan_service/Available_Net$WifiReceiver;->this$0:Lcom/lge/hiddenmenu/wlan_service/Available_Net;

    iget-object v2, v2, Lcom/lge/hiddenmenu/wlan_service/Available_Net;->mainWifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/lge/hiddenmenu/wlan_service/Available_Net;->wifiList:Ljava/util/List;

    .line 104
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    iget-object v1, p0, Lcom/lge/hiddenmenu/wlan_service/Available_Net$WifiReceiver;->this$0:Lcom/lge/hiddenmenu/wlan_service/Available_Net;

    iget-object v1, v1, Lcom/lge/hiddenmenu/wlan_service/Available_Net;->wifiList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2d

    .line 106
    iget-object v1, p0, Lcom/lge/hiddenmenu/wlan_service/Available_Net$WifiReceiver;->this$0:Lcom/lge/hiddenmenu/wlan_service/Available_Net;

    iget-object v2, v1, Lcom/lge/hiddenmenu/wlan_service/Available_Net;->todoItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/hiddenmenu/wlan_service/Available_Net$WifiReceiver;->this$0:Lcom/lge/hiddenmenu/wlan_service/Available_Net;

    iget-object v1, v1, Lcom/lge/hiddenmenu/wlan_service/Available_Net;->wifiList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    iget-object v1, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 108
    :cond_2d
    return-void
.end method
