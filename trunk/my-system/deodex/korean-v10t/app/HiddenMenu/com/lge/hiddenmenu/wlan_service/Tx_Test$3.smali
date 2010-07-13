.class Lcom/lge/hiddenmenu/wlan_service/Tx_Test$3;
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
    .line 142
    iput-object p1, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Test$3;->this$0:Lcom/lge/hiddenmenu/wlan_service/Tx_Test;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    const-string v2, "Tx_Test"

    .line 143
    iget-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Test$3;->this$0:Lcom/lge/hiddenmenu/wlan_service/Tx_Test;

    iget-object v0, v0, Lcom/lge/hiddenmenu/wlan_service/Tx_Test;->mainWifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->TxStop_HiddenMenu(Z)Z

    move-result v0

    if-nez v0, :cond_14

    .line 144
    const-string v0, "Tx_Test"

    const-string v0, "LGE_RFT_TxStop: Failure"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_14
    iget-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Test$3;->this$0:Lcom/lge/hiddenmenu/wlan_service/Tx_Test;

    iget-object v0, v0, Lcom/lge/hiddenmenu/wlan_service/Tx_Test;->mainWifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->CloseDUT_HiddenMenu(Z)Z

    move-result v0

    if-nez v0, :cond_25

    .line 147
    const-string v0, "Tx_Test"

    const-string v0, "LGE_RFT_CloseDUT: Failure"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_25
    return-void
.end method
