.class Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test$4;
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
    .line 205
    iput-object p1, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test$4;->this$0:Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    const-string v1, "Tx_Rx_Test"

    .line 206
    iget-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test$4;->this$0:Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;

    iget-object v0, v0, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;->wifiNative:Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;

    invoke-static {}, Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;->RxStart()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 207
    const-string v0, "Tx_Rx_Test"

    const-string v0, "LGE_RFT_RxStart: Success"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :goto_13
    return-void

    .line 209
    :cond_14
    const-string v0, "Tx_Rx_Test"

    const-string v0, "LGE_RFT_RxStart: Failure"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method
