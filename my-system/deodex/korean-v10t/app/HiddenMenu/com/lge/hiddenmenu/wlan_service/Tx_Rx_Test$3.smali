.class Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test$3;
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
    .line 197
    iput-object p1, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test$3;->this$0:Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    const-string v1, "Tx_Rx_Test"

    .line 198
    iget-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test$3;->this$0:Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;

    iget-object v0, v0, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;->wifiNative:Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;

    invoke-static {}, Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;->TxStop()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 199
    const-string v0, "Tx_Rx_Test"

    const-string v0, "LGE_RFT_TxStop: Success"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :goto_13
    return-void

    .line 201
    :cond_14
    const-string v0, "Tx_Rx_Test"

    const-string v0, "LGE_RFT_TxStop: Failure"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method
