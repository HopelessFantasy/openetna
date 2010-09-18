.class Lcom/lge/hiddenmenu/wlan_service/FTM_Test$2;
.super Ljava/lang/Object;
.source "FTM_Test.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/hiddenmenu/wlan_service/FTM_Test;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/wlan_service/FTM_Test;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/wlan_service/FTM_Test;)V
    .registers 2
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/lge/hiddenmenu/wlan_service/FTM_Test$2;->this$0:Lcom/lge/hiddenmenu/wlan_service/FTM_Test;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 11
    .parameter "v"

    .prologue
    const-string v8, "FTM_Test"

    .line 77
    const/16 v5, 0xd

    .line 78
    .local v5, TxGain:I
    const/16 v4, 0x64

    .line 79
    .local v4, SIFS:I
    const/16 v3, 0x5dc

    .line 80
    .local v3, PayLength:I
    const/4 v2, 0x0

    .line 84
    .local v2, FramNumbers:I
    iget-object v6, p0, Lcom/lge/hiddenmenu/wlan_service/FTM_Test$2;->this$0:Lcom/lge/hiddenmenu/wlan_service/FTM_Test;

    invoke-static {v6}, Lcom/lge/hiddenmenu/wlan_service/FTM_Test;->access$000(Lcom/lge/hiddenmenu/wlan_service/FTM_Test;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, Datarate:Ljava/lang/String;
    iget-object v6, p0, Lcom/lge/hiddenmenu/wlan_service/FTM_Test$2;->this$0:Lcom/lge/hiddenmenu/wlan_service/FTM_Test;

    invoke-static {v6}, Lcom/lge/hiddenmenu/wlan_service/FTM_Test;->access$100(Lcom/lge/hiddenmenu/wlan_service/FTM_Test;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 87
    .local v0, Channel:I
    iget-object v6, p0, Lcom/lge/hiddenmenu/wlan_service/FTM_Test$2;->this$0:Lcom/lge/hiddenmenu/wlan_service/FTM_Test;

    iget-object v6, v6, Lcom/lge/hiddenmenu/wlan_service/FTM_Test;->mainWifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6, v1}, Landroid/net/wifi/WifiManager;->TxDataRate_HiddenMenu(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3a

    .line 88
    const-string v6, "FTM_Test"

    const-string v6, "[dongp.kim] TxDataRate Fail"

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_3a
    iget-object v6, p0, Lcom/lge/hiddenmenu/wlan_service/FTM_Test$2;->this$0:Lcom/lge/hiddenmenu/wlan_service/FTM_Test;

    iget-object v6, v6, Lcom/lge/hiddenmenu/wlan_service/FTM_Test;->mainWifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6, v0}, Landroid/net/wifi/WifiManager;->Channel_HiddenMenu(I)Z

    move-result v6

    if-nez v6, :cond_4b

    .line 91
    const-string v6, "FTM_Test"

    const-string v6, "[dongp.kim] Channel Failed"

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_4b
    iget-object v6, p0, Lcom/lge/hiddenmenu/wlan_service/FTM_Test$2;->this$0:Lcom/lge/hiddenmenu/wlan_service/FTM_Test;

    iget-object v6, v6, Lcom/lge/hiddenmenu/wlan_service/FTM_Test;->mainWifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6, v5}, Landroid/net/wifi/WifiManager;->TxGain_HiddenMenu(I)Z

    move-result v6

    if-nez v6, :cond_5c

    .line 94
    const-string v6, "FTM_Test"

    const-string v6, "[dongp.kim] TxGain Failed"

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_5c
    iget-object v6, p0, Lcom/lge/hiddenmenu/wlan_service/FTM_Test$2;->this$0:Lcom/lge/hiddenmenu/wlan_service/FTM_Test;

    iget-object v6, v6, Lcom/lge/hiddenmenu/wlan_service/FTM_Test;->mainWifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6, v4}, Landroid/net/wifi/WifiManager;->TxBurstInterval_HiddenMenu(I)Z

    move-result v6

    if-nez v6, :cond_6d

    .line 97
    const-string v6, "FTM_Test"

    const-string v6, "[dongp.kim] TxBurstInterval Failed"

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_6d
    iget-object v6, p0, Lcom/lge/hiddenmenu/wlan_service/FTM_Test$2;->this$0:Lcom/lge/hiddenmenu/wlan_service/FTM_Test;

    iget-object v6, v6, Lcom/lge/hiddenmenu/wlan_service/FTM_Test;->mainWifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6, v3}, Landroid/net/wifi/WifiManager;->TxPayloadLength_HiddenMenu(I)Z

    move-result v6

    if-nez v6, :cond_7e

    .line 100
    const-string v6, "FTM_Test"

    const-string v6, "[dongp.kim] TxPayloadLength Failed"

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_7e
    iget-object v6, p0, Lcom/lge/hiddenmenu/wlan_service/FTM_Test$2;->this$0:Lcom/lge/hiddenmenu/wlan_service/FTM_Test;

    iget-object v6, v6, Lcom/lge/hiddenmenu/wlan_service/FTM_Test;->mainWifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6, v2}, Landroid/net/wifi/WifiManager;->TxBurstFrames_HiddenMenu(I)Z

    move-result v6

    if-nez v6, :cond_8f

    .line 103
    const-string v6, "FTM_Test"

    const-string v6, "[dongp.kim] TxBurstFrames Failed"

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_8f
    iget-object v6, p0, Lcom/lge/hiddenmenu/wlan_service/FTM_Test$2;->this$0:Lcom/lge/hiddenmenu/wlan_service/FTM_Test;

    iget-object v6, v6, Lcom/lge/hiddenmenu/wlan_service/FTM_Test;->mainWifi:Landroid/net/wifi/WifiManager;

    const-string v7, "00:90:0c:ba:cd:88"

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiManager;->TxDestAddress_HiddenMenu(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a2

    .line 106
    const-string v6, "FTM_Test"

    const-string v6, "[dongp.kim] TxDestAddress Failed"

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_a2
    iget-object v6, p0, Lcom/lge/hiddenmenu/wlan_service/FTM_Test$2;->this$0:Lcom/lge/hiddenmenu/wlan_service/FTM_Test;

    iget-object v6, v6, Lcom/lge/hiddenmenu/wlan_service/FTM_Test;->mainWifi:Landroid/net/wifi/WifiManager;

    const-string v7, "long"

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiManager;->SetPreamble_HiddenMenu(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_b5

    .line 109
    const-string v6, "FTM_Test"

    const-string v6, "[dongp.kim] SetPreamble Failed"

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_b5
    iget-object v6, p0, Lcom/lge/hiddenmenu/wlan_service/FTM_Test$2;->this$0:Lcom/lge/hiddenmenu/wlan_service/FTM_Test;

    iget-object v6, v6, Lcom/lge/hiddenmenu/wlan_service/FTM_Test;->mainWifi:Landroid/net/wifi/WifiManager;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiManager;->TxStart_HiddenMenu(Z)Z

    move-result v6

    if-nez v6, :cond_c8

    .line 112
    const-string v6, "FTM_Test"

    const-string v6, "LGE_RFT_TxStart: Failure"

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :goto_c7
    return-void

    .line 114
    :cond_c8
    const-string v6, "FTM_Test"

    const-string v6, "LGE_RFT_TxStart: Success"

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c7
.end method
