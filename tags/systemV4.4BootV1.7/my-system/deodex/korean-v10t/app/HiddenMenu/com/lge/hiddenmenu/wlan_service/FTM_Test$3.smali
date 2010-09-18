.class Lcom/lge/hiddenmenu/wlan_service/FTM_Test$3;
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
    .line 119
    iput-object p1, p0, Lcom/lge/hiddenmenu/wlan_service/FTM_Test$3;->this$0:Lcom/lge/hiddenmenu/wlan_service/FTM_Test;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "V"

    .prologue
    const/4 v3, 0x1

    const-string v4, ""

    const-string v2, "FTM_Test"

    .line 120
    iget-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/FTM_Test$3;->this$0:Lcom/lge/hiddenmenu/wlan_service/FTM_Test;

    iget-object v0, v0, Lcom/lge/hiddenmenu/wlan_service/FTM_Test;->mainWifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->TxStop_HiddenMenu(Z)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 121
    const-string v0, "FTM_Test"

    const-string v0, "LGE_RFT_TxStop: Success"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :goto_16
    iget-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/FTM_Test$3;->this$0:Lcom/lge/hiddenmenu/wlan_service/FTM_Test;

    invoke-static {v0}, Lcom/lge/hiddenmenu/wlan_service/FTM_Test;->access$000(Lcom/lge/hiddenmenu/wlan_service/FTM_Test;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/FTM_Test$3;->this$0:Lcom/lge/hiddenmenu/wlan_service/FTM_Test;

    invoke-static {v0}, Lcom/lge/hiddenmenu/wlan_service/FTM_Test;->access$100(Lcom/lge/hiddenmenu/wlan_service/FTM_Test;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/FTM_Test$3;->this$0:Lcom/lge/hiddenmenu/wlan_service/FTM_Test;

    iget-object v0, v0, Lcom/lge/hiddenmenu/wlan_service/FTM_Test;->mainWifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->CloseDUT_HiddenMenu(Z)Z

    move-result v0

    if-nez v0, :cond_46

    .line 129
    const-string v0, "FTM_Test"

    const-string v0, "LGE_RFT_CloseDUT(): Failure"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :goto_3d
    return-void

    .line 123
    :cond_3e
    const-string v0, "FTM_Test"

    const-string v0, "LGE_RFT_TxStop: Failure"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 131
    :cond_46
    const-string v0, "FTM_Test"

    const-string v0, "LGE_RFT_CloseDUT(): Success"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d
.end method
