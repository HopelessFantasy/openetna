.class public Lcom/lge/hiddenmenu/wlan_service/Saved_Net;
.super Landroid/app/Activity;
.source "Saved_Net.java"


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

.field myListView:Landroid/widget/ListView;

.field remembered:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

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

.field wifi:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const/4 v0, 0x0

    .line 65
    .local v0, count:I
    const/4 v1, 0x0

    .line 66
    .local v1, i:I
    const/4 v3, 0x0

    .line 67
    .local v3, k:I
    const/4 v2, 0x0

    .line 69
    .local v2, idx:I
    const v4, 0x7f030030

    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/wlan_service/Saved_Net;->setContentView(I)V

    .line 70
    const v4, 0x7f0700d7

    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/wlan_service/Saved_Net;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/lge/hiddenmenu/wlan_service/Saved_Net;->myListView:Landroid/widget/ListView;

    .line 72
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/lge/hiddenmenu/wlan_service/Saved_Net;->todoItems:Ljava/util/ArrayList;

    .line 74
    new-instance v4, Landroid/widget/ArrayAdapter;

    const v5, 0x1090003

    iget-object v6, p0, Lcom/lge/hiddenmenu/wlan_service/Saved_Net;->todoItems:Ljava/util/ArrayList;

    invoke-direct {v4, p0, v5, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v4, p0, Lcom/lge/hiddenmenu/wlan_service/Saved_Net;->aa:Landroid/widget/ArrayAdapter;

    .line 75
    iget-object v4, p0, Lcom/lge/hiddenmenu/wlan_service/Saved_Net;->myListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/lge/hiddenmenu/wlan_service/Saved_Net;->aa:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 77
    const-string v4, "wifi"

    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/wlan_service/Saved_Net;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    iput-object v4, p0, Lcom/lge/hiddenmenu/wlan_service/Saved_Net;->wifi:Landroid/net/wifi/WifiManager;

    .line 79
    iget-object v4, p0, Lcom/lge/hiddenmenu/wlan_service/Saved_Net;->wifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/hiddenmenu/wlan_service/Saved_Net;->remembered:Ljava/util/List;

    .line 81
    :goto_44
    iget-object v4, p0, Lcom/lge/hiddenmenu/wlan_service/Saved_Net;->remembered:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v0, :cond_5e

    .line 83
    iget-object v5, p0, Lcom/lge/hiddenmenu/wlan_service/Saved_Net;->todoItems:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/lge/hiddenmenu/wlan_service/Saved_Net;->remembered:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v0, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_44

    .line 87
    :cond_5e
    return-void
.end method
