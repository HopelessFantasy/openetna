.class Lcom/lge/hiddenmenu/wlan_service/Tx_Test$4;
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
    .line 152
    iput-object p1, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Test$4;->this$0:Lcom/lge/hiddenmenu/wlan_service/Tx_Test;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Test$4;->this$0:Lcom/lge/hiddenmenu/wlan_service/Tx_Test;

    iget-object v0, v0, Lcom/lge/hiddenmenu/wlan_service/Tx_Test;->mainWifi:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->RxStart_HiddenMenu(Z)Z

    move-result v0

    if-nez v0, :cond_12

    .line 154
    const-string v0, "Tx_Test"

    const-string v1, "LGE_RFT_RxStart: Failure"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_12
    return-void
.end method
