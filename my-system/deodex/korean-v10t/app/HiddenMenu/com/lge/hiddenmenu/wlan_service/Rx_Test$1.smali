.class Lcom/lge/hiddenmenu/wlan_service/Rx_Test$1;
.super Ljava/lang/Object;
.source "Rx_Test.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/hiddenmenu/wlan_service/Rx_Test;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/wlan_service/Rx_Test;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/wlan_service/Rx_Test;)V
    .registers 2
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/lge/hiddenmenu/wlan_service/Rx_Test$1;->this$0:Lcom/lge/hiddenmenu/wlan_service/Rx_Test;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/Rx_Test$1;->this$0:Lcom/lge/hiddenmenu/wlan_service/Rx_Test;

    invoke-static {v0}, Lcom/lge/hiddenmenu/wlan_service/Rx_Test;->access$000(Lcom/lge/hiddenmenu/wlan_service/Rx_Test;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/Rx_Test$1;->this$0:Lcom/lge/hiddenmenu/wlan_service/Rx_Test;

    invoke-static {v0}, Lcom/lge/hiddenmenu/wlan_service/Rx_Test;->access$100(Lcom/lge/hiddenmenu/wlan_service/Rx_Test;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, "00:90:0c:ba:cd:99"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/Rx_Test$1;->this$0:Lcom/lge/hiddenmenu/wlan_service/Rx_Test;

    invoke-static {v0}, Lcom/lge/hiddenmenu/wlan_service/Rx_Test;->access$200(Lcom/lge/hiddenmenu/wlan_service/Rx_Test;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, "10"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/Rx_Test$1;->this$0:Lcom/lge/hiddenmenu/wlan_service/Rx_Test;

    iget-object v1, p0, Lcom/lge/hiddenmenu/wlan_service/Rx_Test$1;->this$0:Lcom/lge/hiddenmenu/wlan_service/Rx_Test;

    invoke-static {v1}, Lcom/lge/hiddenmenu/wlan_service/Rx_Test;->access$000(Lcom/lge/hiddenmenu/wlan_service/Rx_Test;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/lge/hiddenmenu/wlan_service/Rx_Test;->access$302(Lcom/lge/hiddenmenu/wlan_service/Rx_Test;I)I

    .line 74
    iget-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/Rx_Test$1;->this$0:Lcom/lge/hiddenmenu/wlan_service/Rx_Test;

    iget-object v1, p0, Lcom/lge/hiddenmenu/wlan_service/Rx_Test$1;->this$0:Lcom/lge/hiddenmenu/wlan_service/Rx_Test;

    invoke-static {v1}, Lcom/lge/hiddenmenu/wlan_service/Rx_Test;->access$100(Lcom/lge/hiddenmenu/wlan_service/Rx_Test;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/hiddenmenu/wlan_service/Rx_Test;->macAddress:Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/Rx_Test$1;->this$0:Lcom/lge/hiddenmenu/wlan_service/Rx_Test;

    iget-object v1, p0, Lcom/lge/hiddenmenu/wlan_service/Rx_Test$1;->this$0:Lcom/lge/hiddenmenu/wlan_service/Rx_Test;

    invoke-static {v1}, Lcom/lge/hiddenmenu/wlan_service/Rx_Test;->access$200(Lcom/lge/hiddenmenu/wlan_service/Rx_Test;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/lge/hiddenmenu/wlan_service/Rx_Test;->access$402(Lcom/lge/hiddenmenu/wlan_service/Rx_Test;I)I

    .line 77
    iget-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/Rx_Test$1;->this$0:Lcom/lge/hiddenmenu/wlan_service/Rx_Test;

    iget-object v0, v0, Lcom/lge/hiddenmenu/wlan_service/Rx_Test;->mainWifi:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->OpenDUT_HiddenMenu(Z)Z

    move-result v0

    if-nez v0, :cond_73

    .line 78
    const-string v0, "Rx_Test"

    const-string v1, "[dongp.kim] setWifiEnabled_HiddenMenu (enable) is error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_73
    return-void
.end method
