.class Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test$1;
.super Ljava/lang/Object;
.source "Tx_Rx_Test.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;)V
    .registers 2
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test$1;->this$0:Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9
    .parameter "v"

    .prologue
    const-string v6, "LGE_RFT_TxData: Button1 pressed"

    const-string v5, "Tx_Rx_Test"

    .line 84
    iget-object v3, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test$1;->this$0:Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;

    iget-object v3, v3, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;->mainWifi:Landroid/net/wifi/WifiManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager;->OpenDUT_HiddenMenu(Z)Z

    move-result v1

    .line 85
    .local v1, result1:Z
    if-nez v1, :cond_16

    .line 86
    const-string v3, "Tx_Rx_Test"

    const-string v3, "[dongp.kim] setWifiEnabled_HiddenMenu(enable) is error"

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_16
    const-string v3, "Tx_Rx_Test"

    const-string v3, "[dongp.kim] setWifiEnabled_HiddenMenu(enable) is success"

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 91
    .local v0, res:Ljava/lang/String;
    const-string v3, "Tx_Rx_Test"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LGE_RF_TxDATA_Button1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v3, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test$1;->this$0:Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;

    invoke-static {v3}, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;->access$000(Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;)Landroid/widget/EditText;

    move-result-object v3

    const-string v4, "100"

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v3, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test$1;->this$0:Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;

    invoke-static {v3}, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;->access$100(Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;)Landroid/widget/EditText;

    move-result-object v3

    const-string v4, "1500"

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v3, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test$1;->this$0:Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;

    invoke-static {v3}, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;->access$200(Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;)Landroid/widget/EditText;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v3, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test$1;->this$0:Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;

    invoke-static {v3}, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;->access$300(Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;)Landroid/widget/EditText;

    move-result-object v3

    const-string v4, "00:90:0c:ba:cd:88"

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v3, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test$1;->this$0:Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;

    iget-object v4, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test$1;->this$0:Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;

    invoke-static {v4}, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;->access$300(Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;->mac:Ljava/lang/String;

    .line 102
    iget-object v3, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test$1;->this$0:Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;

    invoke-static {v3}, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;->access$400(Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;)Landroid/widget/EditText;

    move-result-object v3

    const-string v4, "long"

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 107
    if-eqz v1, :cond_c3

    .line 108
    const-string v3, "Tx_Rx_Test"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LGE_RFT_TxData: Button1 pressed"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v3, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test$1;->this$0:Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;

    invoke-virtual {v3}, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test$1;->this$0:Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;

    invoke-static {v4}, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;->access$500(Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x14

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 110
    .local v2, toast1:Landroid/widget/Toast;
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 117
    :goto_c2
    return-void

    .line 113
    .end local v2           #toast1:Landroid/widget/Toast;
    :cond_c3
    const-string v3, "Tx_Rx_Test"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LGE_RFT_TxData: Button1 pressed"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v3, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test$1;->this$0:Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;

    invoke-virtual {v3}, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "WLAN has already been activiated"

    const/16 v5, 0x64

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 115
    .restart local v2       #toast1:Landroid/widget/Toast;
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_c2
.end method
