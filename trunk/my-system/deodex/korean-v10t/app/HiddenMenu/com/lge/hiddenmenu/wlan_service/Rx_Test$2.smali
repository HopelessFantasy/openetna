.class Lcom/lge/hiddenmenu/wlan_service/Rx_Test$2;
.super Ljava/lang/Object;
.source "Rx_Test.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/hiddenmenu/wlan_service/Rx_Test;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/wlan_service/Rx_Test;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/wlan_service/Rx_Test;)V
    .registers 2
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/lge/hiddenmenu/wlan_service/Rx_Test$2;->this$0:Lcom/lge/hiddenmenu/wlan_service/Rx_Test;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    const-string v3, "Rx_Test"

    .line 83
    iget-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/Rx_Test$2;->this$0:Lcom/lge/hiddenmenu/wlan_service/Rx_Test;

    iget-object v0, v0, Lcom/lge/hiddenmenu/wlan_service/Rx_Test;->mainWifi:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/lge/hiddenmenu/wlan_service/Rx_Test$2;->this$0:Lcom/lge/hiddenmenu/wlan_service/Rx_Test;

    invoke-static {v1}, Lcom/lge/hiddenmenu/wlan_service/Rx_Test;->access$300(Lcom/lge/hiddenmenu/wlan_service/Rx_Test;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->Channel_HiddenMenu(I)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 84
    const-string v0, "Rx_Test"

    const-string v0, "LGE_RFT_Channel fail"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_1a
    iget-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/Rx_Test$2;->this$0:Lcom/lge/hiddenmenu/wlan_service/Rx_Test;

    iget-object v0, v0, Lcom/lge/hiddenmenu/wlan_service/Rx_Test;->mainWifi:Landroid/net/wifi/WifiManager;

    const-string v1, "54"

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->TxDataRate_HiddenMenu(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 87
    const-string v0, "Rx_Test"

    const-string v0, "LGE_RFT_TxDataRate fail"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_2d
    iget-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/Rx_Test$2;->this$0:Lcom/lge/hiddenmenu/wlan_service/Rx_Test;

    iget-object v0, v0, Lcom/lge/hiddenmenu/wlan_service/Rx_Test;->mainWifi:Landroid/net/wifi/WifiManager;

    const-string v1, "00:90:0c:ba:cd:99"

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->TxDestAddress_HiddenMenu(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_40

    .line 91
    const-string v0, "Rx_Test"

    const-string v0, "LGE_RFT_TxDestAddress fail"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_40
    iget-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/Rx_Test$2;->this$0:Lcom/lge/hiddenmenu/wlan_service/Rx_Test;

    iget-object v0, v0, Lcom/lge/hiddenmenu/wlan_service/Rx_Test;->mainWifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiManager;->RxStart_HiddenMenu(Z)Z

    move-result v0

    if-nez v0, :cond_51

    .line 95
    const-string v0, "Rx_Test"

    const-string v0, "RxStart Error"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_51
    iget-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/Rx_Test$2;->this$0:Lcom/lge/hiddenmenu/wlan_service/Rx_Test;

    invoke-static {v0}, Lcom/lge/hiddenmenu/wlan_service/Rx_Test;->access$400(Lcom/lge/hiddenmenu/wlan_service/Rx_Test;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 100
    iget-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/Rx_Test$2;->this$0:Lcom/lge/hiddenmenu/wlan_service/Rx_Test;

    iget-object v1, p0, Lcom/lge/hiddenmenu/wlan_service/Rx_Test$2;->this$0:Lcom/lge/hiddenmenu/wlan_service/Rx_Test;

    iget-object v1, v1, Lcom/lge/hiddenmenu/wlan_service/Rx_Test;->wifiNative:Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;

    invoke-static {}, Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;->RSSI()I

    move-result v1

    invoke-static {v0, v1}, Lcom/lge/hiddenmenu/wlan_service/Rx_Test;->access$502(Lcom/lge/hiddenmenu/wlan_service/Rx_Test;I)I

    .line 102
    iget-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/Rx_Test$2;->this$0:Lcom/lge/hiddenmenu/wlan_service/Rx_Test;

    iget-object v0, v0, Lcom/lge/hiddenmenu/wlan_service/Rx_Test;->mainWifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiManager;->RxStop_HiddenMenu(Z)Z

    move-result v0

    if-nez v0, :cond_e7

    .line 103
    const-string v0, "Rx_Test"

    const-string v0, "RxStop Error"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :goto_7b
    iget-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/Rx_Test$2;->this$0:Lcom/lge/hiddenmenu/wlan_service/Rx_Test;

    iget-object v1, p0, Lcom/lge/hiddenmenu/wlan_service/Rx_Test$2;->this$0:Lcom/lge/hiddenmenu/wlan_service/Rx_Test;

    iget-object v1, v1, Lcom/lge/hiddenmenu/wlan_service/Rx_Test;->wifiNative:Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;

    invoke-static {}, Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;->FRGood()I

    move-result v1

    invoke-static {v0, v1}, Lcom/lge/hiddenmenu/wlan_service/Rx_Test;->access$602(Lcom/lge/hiddenmenu/wlan_service/Rx_Test;I)I

    .line 110
    iget-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/Rx_Test$2;->this$0:Lcom/lge/hiddenmenu/wlan_service/Rx_Test;

    iget-object v1, p0, Lcom/lge/hiddenmenu/wlan_service/Rx_Test$2;->this$0:Lcom/lge/hiddenmenu/wlan_service/Rx_Test;

    iget-object v1, v1, Lcom/lge/hiddenmenu/wlan_service/Rx_Test;->wifiNative:Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;

    invoke-static {}, Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;->FRError()I

    move-result v1

    invoke-static {v0, v1}, Lcom/lge/hiddenmenu/wlan_service/Rx_Test;->access$702(Lcom/lge/hiddenmenu/wlan_service/Rx_Test;I)I

    .line 112
    iget-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/Rx_Test$2;->this$0:Lcom/lge/hiddenmenu/wlan_service/Rx_Test;

    iget-object v0, v0, Lcom/lge/hiddenmenu/wlan_service/Rx_Test;->edit_Rx_per:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RSSI:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/hiddenmenu/wlan_service/Rx_Test$2;->this$0:Lcom/lge/hiddenmenu/wlan_service/Rx_Test;

    invoke-static {v2}, Lcom/lge/hiddenmenu/wlan_service/Rx_Test;->access$500(Lcom/lge/hiddenmenu/wlan_service/Rx_Test;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", FRGood:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/hiddenmenu/wlan_service/Rx_Test$2;->this$0:Lcom/lge/hiddenmenu/wlan_service/Rx_Test;

    invoke-static {v2}, Lcom/lge/hiddenmenu/wlan_service/Rx_Test;->access$600(Lcom/lge/hiddenmenu/wlan_service/Rx_Test;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", FREROOR:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/hiddenmenu/wlan_service/Rx_Test$2;->this$0:Lcom/lge/hiddenmenu/wlan_service/Rx_Test;

    invoke-static {v2}, Lcom/lge/hiddenmenu/wlan_service/Rx_Test;->access$700(Lcom/lge/hiddenmenu/wlan_service/Rx_Test;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/Rx_Test$2;->this$0:Lcom/lge/hiddenmenu/wlan_service/Rx_Test;

    iget-object v0, v0, Lcom/lge/hiddenmenu/wlan_service/Rx_Test;->mainWifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiManager;->CloseDUT_HiddenMenu(Z)Z

    move-result v0

    if-nez v0, :cond_ef

    .line 115
    const-string v0, "Rx_Test"

    const-string v0, "CloseDUT() Error"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :goto_e6
    return-void

    .line 106
    :cond_e7
    const-string v0, "Rx_Test"

    const-string v0, "RxStart Success"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7b

    .line 118
    :cond_ef
    const-string v0, "Rx_Test"

    const-string v0, "CloseDUT() Success"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e6
.end method
