.class Lcom/lge/hiddenmenu/wlan_service/Tx_Test$5;
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
    .line 158
    iput-object p1, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Test$5;->this$0:Lcom/lge/hiddenmenu/wlan_service/Tx_Test;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    const-string v2, "Tx_Test"

    .line 159
    iget-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Test$5;->this$0:Lcom/lge/hiddenmenu/wlan_service/Tx_Test;

    iget-object v0, v0, Lcom/lge/hiddenmenu/wlan_service/Tx_Test;->mainWifi:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->RxStop_HiddenMenu(Z)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 160
    const-string v0, "Tx_Test"

    const-string v0, "LGE_RFT_RxStop: Success"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Test$5;->this$0:Lcom/lge/hiddenmenu/wlan_service/Tx_Test;

    invoke-static {v0}, Lcom/lge/hiddenmenu/wlan_service/Tx_Test;->access$800(Lcom/lge/hiddenmenu/wlan_service/Tx_Test;)Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FRGood:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Test$5;->this$0:Lcom/lge/hiddenmenu/wlan_service/Tx_Test;

    iget-object v2, v2, Lcom/lge/hiddenmenu/wlan_service/Tx_Test;->wifiNative:Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;

    invoke-static {}, Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;->FRGood()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", FRError:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Test$5;->this$0:Lcom/lge/hiddenmenu/wlan_service/Tx_Test;

    iget-object v2, v2, Lcom/lge/hiddenmenu/wlan_service/Tx_Test;->wifiNative:Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;

    invoke-static {}, Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;->FRError()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 165
    :goto_52
    return-void

    .line 164
    :cond_53
    const-string v0, "Tx_Test"

    const-string v0, "LGE_RFT_RxStop: Failure"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52
.end method
