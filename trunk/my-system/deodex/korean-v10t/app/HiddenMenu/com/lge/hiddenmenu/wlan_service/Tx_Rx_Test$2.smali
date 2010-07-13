.class Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test$2;
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
    .line 122
    iput-object p1, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test$2;->this$0:Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 13
    .parameter "v"

    .prologue
    const-string v10, "Tx_Rx_Test"

    .line 123
    iget-object v9, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test$2;->this$0:Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;

    invoke-static {v9}, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;->access$500(Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;)Landroid/widget/EditText;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    if-eqz v9, :cond_137

    .line 125
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 126
    .local v2, MACaddress:Ljava/lang/String;
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 127
    .local v4, Preamble:Ljava/lang/String;
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8}, Ljava/lang/String;-><init>()V

    .line 128
    .local v8, value:Ljava/lang/String;
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7}, Ljava/lang/String;-><init>()V

    .line 129
    .local v7, res:Ljava/lang/String;
    iget-object v9, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test$2;->this$0:Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;

    invoke-static {v9}, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;->access$500(Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;)Landroid/widget/EditText;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 131
    iget-object v9, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test$2;->this$0:Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;

    invoke-static {v9}, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;->access$600(Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;)Landroid/widget/EditText;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 132
    .local v6, TxGain:I
    iget-object v9, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test$2;->this$0:Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;

    invoke-static {v9}, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;->access$700(Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;)Landroid/widget/EditText;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 133
    .local v0, Channel:I
    iget-object v9, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test$2;->this$0:Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;

    invoke-static {v9}, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;->access$000(Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;)Landroid/widget/EditText;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 134
    .local v5, SIFS:I
    iget-object v9, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test$2;->this$0:Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;

    invoke-static {v9}, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;->access$000(Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;)Landroid/widget/EditText;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 135
    .local v3, PayLength:I
    iget-object v9, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test$2;->this$0:Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;

    invoke-static {v9}, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;->access$100(Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;)Landroid/widget/EditText;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 137
    .local v1, FramNumbers:I
    iget-object v9, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test$2;->this$0:Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;

    invoke-static {v9}, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;->access$700(Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;)Landroid/widget/EditText;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 145
    iget-object v9, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test$2;->this$0:Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;

    iget-object v9, v9, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;->wifiNative:Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;

    invoke-static {v8}, Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;->TxDataRate(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_138

    .line 146
    const-string v9, "Tx_Rx_Test"

    const-string v9, "LGE_RFT_TxDataRate has been successed"

    invoke-static {v10, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :goto_a9
    iget-object v9, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test$2;->this$0:Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;

    iget-object v9, v9, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;->wifiNative:Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;

    invoke-static {v6}, Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;->TxGain(I)Z

    move-result v9

    if-eqz v9, :cond_141

    .line 151
    const-string v9, "Tx_Rx_Test"

    const-string v9, "LGE_RFT_TxGain has been successed"

    invoke-static {v10, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :goto_ba
    iget-object v9, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test$2;->this$0:Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;

    iget-object v9, v9, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;->wifiNative:Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;

    invoke-static {v0}, Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;->Channel(I)Z

    move-result v9

    if-eqz v9, :cond_14a

    .line 156
    const-string v9, "Tx_Rx_Test"

    const-string v9, "LGE_RFT_Channel has been successed"

    invoke-static {v10, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :goto_cb
    iget-object v9, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test$2;->this$0:Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;

    iget-object v9, v9, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;->wifiNative:Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;

    invoke-static {v5}, Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;->TxBurstInterval(I)Z

    move-result v9

    if-eqz v9, :cond_153

    .line 161
    const-string v9, "Tx_Rx_Test"

    const-string v9, "LGE_RFT_TxBurstInterval has been successed"

    invoke-static {v10, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :goto_dc
    iget-object v9, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test$2;->this$0:Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;

    iget-object v9, v9, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;->wifiNative:Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;

    invoke-static {v3}, Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;->TxPayloadLength(I)Z

    move-result v9

    if-eqz v9, :cond_15b

    .line 166
    const-string v9, "Tx_Rx_Test"

    const-string v9, "LGE_RFT_TxPayloadLength has been successed"

    invoke-static {v10, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :goto_ed
    iget-object v9, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test$2;->this$0:Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;

    iget-object v9, v9, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;->wifiNative:Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;

    invoke-static {v1}, Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;->TxBurstFrames(I)Z

    move-result v9

    if-eqz v9, :cond_163

    .line 171
    const-string v9, "Tx_Rx_Test"

    const-string v9, "LGE_RFT_TxBurstFrames has been successed"

    invoke-static {v10, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :goto_fe
    iget-object v9, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test$2;->this$0:Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;

    iget-object v9, v9, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;->wifiNative:Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;

    iget-object v9, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test$2;->this$0:Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;

    iget-object v9, v9, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;->mac:Ljava/lang/String;

    invoke-static {v9}, Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;->TxDestAddress(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_16b

    .line 177
    const-string v9, "Tx_Rx_Test"

    const-string v9, "LGE_RFT_TxDestAddress has been successed"

    invoke-static {v10, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :goto_113
    iget-object v9, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test$2;->this$0:Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;

    iget-object v9, v9, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;->wifiNative:Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;

    const-string v9, "long"

    invoke-static {v9}, Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;->SetPreamble(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_173

    .line 183
    const-string v9, "Tx_Rx_Test"

    const-string v9, "LGE_RFT_SetPreamble has been successed"

    invoke-static {v10, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :goto_126
    iget-object v9, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test$2;->this$0:Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;

    iget-object v9, v9, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;->wifiNative:Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;

    invoke-static {}, Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;->TxStart()Z

    move-result v9

    if-eqz v9, :cond_17b

    .line 188
    const-string v9, "Tx_Rx_Test"

    const-string v9, "LGE_RFT_TxStart: Success"

    invoke-static {v10, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    .end local v0           #Channel:I
    .end local v1           #FramNumbers:I
    .end local v2           #MACaddress:Ljava/lang/String;
    .end local v3           #PayLength:I
    .end local v4           #Preamble:Ljava/lang/String;
    .end local v5           #SIFS:I
    .end local v6           #TxGain:I
    .end local v7           #res:Ljava/lang/String;
    .end local v8           #value:Ljava/lang/String;
    :cond_137
    :goto_137
    return-void

    .line 148
    .restart local v0       #Channel:I
    .restart local v1       #FramNumbers:I
    .restart local v2       #MACaddress:Ljava/lang/String;
    .restart local v3       #PayLength:I
    .restart local v4       #Preamble:Ljava/lang/String;
    .restart local v5       #SIFS:I
    .restart local v6       #TxGain:I
    .restart local v7       #res:Ljava/lang/String;
    .restart local v8       #value:Ljava/lang/String;
    :cond_138
    const-string v9, "Tx_Rx_Test"

    const-string v9, "LGE_RFT_TxDataRate has been failed"

    invoke-static {v10, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a9

    .line 153
    :cond_141
    const-string v9, "Tx_Rx_Test"

    const-string v9, "LGE_RFT_TxGain has been failed"

    invoke-static {v10, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ba

    .line 158
    :cond_14a
    const-string v9, "Tx_Rx_Test"

    const-string v9, "LGE_RFT_Channel has been failed"

    invoke-static {v10, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_cb

    .line 163
    :cond_153
    const-string v9, "Tx_Rx_Test"

    const-string v9, "LGE_RFT_TxBurstInterval has been failed"

    invoke-static {v10, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_dc

    .line 168
    :cond_15b
    const-string v9, "Tx_Rx_Test"

    const-string v9, "LGE_RFT_TxPayloadLength has been failed"

    invoke-static {v10, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ed

    .line 173
    :cond_163
    const-string v9, "Tx_Rx_Test"

    const-string v9, "LGE_RFT_TxBurstFrames has been failed"

    invoke-static {v10, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_fe

    .line 179
    :cond_16b
    const-string v9, "Tx_Rx_Test"

    const-string v9, "LGE_RFT_TxDestAddress has been failed"

    invoke-static {v10, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_113

    .line 185
    :cond_173
    const-string v9, "Tx_Rx_Test"

    const-string v9, "LGE_RFT_SetPreamble has been failed"

    invoke-static {v10, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_126

    .line 190
    :cond_17b
    const-string v9, "Tx_Rx_Test"

    const-string v9, "LGE_RFT_TxStart: Failed"

    invoke-static {v10, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_137
.end method
