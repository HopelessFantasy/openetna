.class Lcom/lge/hiddenmenu/wlan_service/Tx_Test$2;
.super Ljava/lang/Object;
.source "Tx_Test.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/hiddenmenu/wlan_service/Tx_Test;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/wlan_service/Tx_Test;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/wlan_service/Tx_Test;)V
    .registers 2
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Test$2;->this$0:Lcom/lge/hiddenmenu/wlan_service/Tx_Test;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 13
    .parameter "v"

    .prologue
    const-string v10, "Tx_Test"

    .line 100
    iget-object v8, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Test$2;->this$0:Lcom/lge/hiddenmenu/wlan_service/Tx_Test;

    invoke-static {v8}, Lcom/lge/hiddenmenu/wlan_service/Tx_Test;->access$600(Lcom/lge/hiddenmenu/wlan_service/Tx_Test;)Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    if-eqz v8, :cond_12c

    .line 102
    iget-object v8, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Test$2;->this$0:Lcom/lge/hiddenmenu/wlan_service/Tx_Test;

    invoke-static {v8}, Lcom/lge/hiddenmenu/wlan_service/Tx_Test;->access$600(Lcom/lge/hiddenmenu/wlan_service/Tx_Test;)Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 103
    .local v7, value:Ljava/lang/String;
    iget-object v8, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Test$2;->this$0:Lcom/lge/hiddenmenu/wlan_service/Tx_Test;

    invoke-static {v8}, Lcom/lge/hiddenmenu/wlan_service/Tx_Test;->access$000(Lcom/lge/hiddenmenu/wlan_service/Tx_Test;)Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 104
    .local v6, TxGain:I
    iget-object v8, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Test$2;->this$0:Lcom/lge/hiddenmenu/wlan_service/Tx_Test;

    invoke-static {v8}, Lcom/lge/hiddenmenu/wlan_service/Tx_Test;->access$700(Lcom/lge/hiddenmenu/wlan_service/Tx_Test;)Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 105
    .local v0, Channel:I
    iget-object v8, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Test$2;->this$0:Lcom/lge/hiddenmenu/wlan_service/Tx_Test;

    invoke-static {v8}, Lcom/lge/hiddenmenu/wlan_service/Tx_Test;->access$100(Lcom/lge/hiddenmenu/wlan_service/Tx_Test;)Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 106
    .local v5, SIFS:I
    iget-object v8, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Test$2;->this$0:Lcom/lge/hiddenmenu/wlan_service/Tx_Test;

    invoke-static {v8}, Lcom/lge/hiddenmenu/wlan_service/Tx_Test;->access$200(Lcom/lge/hiddenmenu/wlan_service/Tx_Test;)Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 107
    .local v3, PayLength:I
    iget-object v8, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Test$2;->this$0:Lcom/lge/hiddenmenu/wlan_service/Tx_Test;

    invoke-static {v8}, Lcom/lge/hiddenmenu/wlan_service/Tx_Test;->access$300(Lcom/lge/hiddenmenu/wlan_service/Tx_Test;)Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 108
    .local v1, FramNumbers:I
    iget-object v8, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Test$2;->this$0:Lcom/lge/hiddenmenu/wlan_service/Tx_Test;

    invoke-static {v8}, Lcom/lge/hiddenmenu/wlan_service/Tx_Test;->access$400(Lcom/lge/hiddenmenu/wlan_service/Tx_Test;)Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, MACaddress:Ljava/lang/String;
    iget-object v8, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Test$2;->this$0:Lcom/lge/hiddenmenu/wlan_service/Tx_Test;

    invoke-static {v8}, Lcom/lge/hiddenmenu/wlan_service/Tx_Test;->access$500(Lcom/lge/hiddenmenu/wlan_service/Tx_Test;)Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 111
    .local v4, Preamble:Ljava/lang/String;
    iget-object v8, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Test$2;->this$0:Lcom/lge/hiddenmenu/wlan_service/Tx_Test;

    iget-object v8, v8, Lcom/lge/hiddenmenu/wlan_service/Tx_Test;->mainWifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8, v7}, Landroid/net/wifi/WifiManager;->TxDataRate_HiddenMenu(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_a3

    .line 112
    const-string v8, "Tx_Test"

    const-string v8, "LGE_RFT_TxDataRate has been failed"

    invoke-static {v10, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_a3
    iget-object v8, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Test$2;->this$0:Lcom/lge/hiddenmenu/wlan_service/Tx_Test;

    iget-object v8, v8, Lcom/lge/hiddenmenu/wlan_service/Tx_Test;->mainWifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8, v6}, Landroid/net/wifi/WifiManager;->TxGain_HiddenMenu(I)Z

    move-result v8

    if-nez v8, :cond_b4

    .line 115
    const-string v8, "Tx_Test"

    const-string v8, "LGE_RFT_TxGain has been failed"

    invoke-static {v10, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_b4
    iget-object v8, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Test$2;->this$0:Lcom/lge/hiddenmenu/wlan_service/Tx_Test;

    iget-object v8, v8, Lcom/lge/hiddenmenu/wlan_service/Tx_Test;->mainWifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8, v0}, Landroid/net/wifi/WifiManager;->Channel_HiddenMenu(I)Z

    move-result v8

    if-nez v8, :cond_c5

    .line 118
    const-string v8, "Tx_Test"

    const-string v8, "LGE_RFT_Channel has been failed"

    invoke-static {v10, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_c5
    iget-object v8, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Test$2;->this$0:Lcom/lge/hiddenmenu/wlan_service/Tx_Test;

    iget-object v8, v8, Lcom/lge/hiddenmenu/wlan_service/Tx_Test;->mainWifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8, v5}, Landroid/net/wifi/WifiManager;->TxBurstInterval_HiddenMenu(I)Z

    move-result v8

    if-nez v8, :cond_d6

    .line 121
    const-string v8, "Tx_Test"

    const-string v8, "LGE_RFT_TxBurstInterval has been failed"

    invoke-static {v10, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_d6
    iget-object v8, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Test$2;->this$0:Lcom/lge/hiddenmenu/wlan_service/Tx_Test;

    iget-object v8, v8, Lcom/lge/hiddenmenu/wlan_service/Tx_Test;->mainWifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8, v3}, Landroid/net/wifi/WifiManager;->TxPayloadLength_HiddenMenu(I)Z

    move-result v8

    if-nez v8, :cond_e7

    .line 124
    const-string v8, "Tx_Test"

    const-string v8, "LGE_RFT_TxPayloadLength has been failed"

    invoke-static {v10, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_e7
    iget-object v8, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Test$2;->this$0:Lcom/lge/hiddenmenu/wlan_service/Tx_Test;

    iget-object v8, v8, Lcom/lge/hiddenmenu/wlan_service/Tx_Test;->mainWifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8, v1}, Landroid/net/wifi/WifiManager;->TxBurstFrames_HiddenMenu(I)Z

    move-result v8

    if-nez v8, :cond_f8

    .line 127
    const-string v8, "Tx_Test"

    const-string v8, "LGE_RFT_TxBurstFrames has been failed"

    invoke-static {v10, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_f8
    iget-object v8, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Test$2;->this$0:Lcom/lge/hiddenmenu/wlan_service/Tx_Test;

    iget-object v8, v8, Lcom/lge/hiddenmenu/wlan_service/Tx_Test;->mainWifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8, v2}, Landroid/net/wifi/WifiManager;->TxDestAddress_HiddenMenu(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_109

    .line 130
    const-string v8, "Tx_Test"

    const-string v8, "LGE_RFT_TxDestAddress has been failed"

    invoke-static {v10, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_109
    iget-object v8, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Test$2;->this$0:Lcom/lge/hiddenmenu/wlan_service/Tx_Test;

    iget-object v8, v8, Lcom/lge/hiddenmenu/wlan_service/Tx_Test;->mainWifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8, v4}, Landroid/net/wifi/WifiManager;->SetPreamble_HiddenMenu(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_11a

    .line 133
    const-string v8, "Tx_Test"

    const-string v8, "LGE_RFT_SetPreamble has been failed"

    invoke-static {v10, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_11a
    iget-object v8, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Test$2;->this$0:Lcom/lge/hiddenmenu/wlan_service/Tx_Test;

    iget-object v8, v8, Lcom/lge/hiddenmenu/wlan_service/Tx_Test;->mainWifi:Landroid/net/wifi/WifiManager;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/net/wifi/WifiManager;->TxStart_HiddenMenu(Z)Z

    move-result v8

    if-nez v8, :cond_12c

    .line 136
    const-string v8, "Tx_Test"

    const-string v8, "LGE_RFT_TxStart: Failed"

    invoke-static {v10, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .end local v0           #Channel:I
    .end local v1           #FramNumbers:I
    .end local v2           #MACaddress:Ljava/lang/String;
    .end local v3           #PayLength:I
    .end local v4           #Preamble:Ljava/lang/String;
    .end local v5           #SIFS:I
    .end local v6           #TxGain:I
    .end local v7           #value:Ljava/lang/String;
    :cond_12c
    return-void
.end method
