.class Lcom/lge/hiddenmenu/wlan_service/Tx_Test$1;
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
    .line 76
    iput-object p1, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Test$1;->this$0:Lcom/lge/hiddenmenu/wlan_service/Tx_Test;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 78
    iget-object v1, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Test$1;->this$0:Lcom/lge/hiddenmenu/wlan_service/Tx_Test;

    iget-object v1, v1, Lcom/lge/hiddenmenu/wlan_service/Tx_Test;->mainWifi:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->OpenDUT_HiddenMenu(Z)Z

    move-result v1

    if-nez v1, :cond_23

    .line 79
    const-string v1, "Tx_Test"

    const-string v2, "[dongp.kim] setWifiEnabled_HiddenMenu(enable) is error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v1, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Test$1;->this$0:Lcom/lge/hiddenmenu/wlan_service/Tx_Test;

    invoke-virtual {v1}, Lcom/lge/hiddenmenu/wlan_service/Tx_Test;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "OpenDUT() fail"

    const/16 v3, 0x64

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 81
    .local v0, warningMessage:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 86
    .end local v0           #warningMessage:Landroid/widget/Toast;
    :cond_23
    iget-object v1, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Test$1;->this$0:Lcom/lge/hiddenmenu/wlan_service/Tx_Test;

    invoke-static {v1}, Lcom/lge/hiddenmenu/wlan_service/Tx_Test;->access$000(Lcom/lge/hiddenmenu/wlan_service/Tx_Test;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, "13"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v1, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Test$1;->this$0:Lcom/lge/hiddenmenu/wlan_service/Tx_Test;

    invoke-static {v1}, Lcom/lge/hiddenmenu/wlan_service/Tx_Test;->access$100(Lcom/lge/hiddenmenu/wlan_service/Tx_Test;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, "100"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v1, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Test$1;->this$0:Lcom/lge/hiddenmenu/wlan_service/Tx_Test;

    invoke-static {v1}, Lcom/lge/hiddenmenu/wlan_service/Tx_Test;->access$200(Lcom/lge/hiddenmenu/wlan_service/Tx_Test;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, "1500"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v1, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Test$1;->this$0:Lcom/lge/hiddenmenu/wlan_service/Tx_Test;

    invoke-static {v1}, Lcom/lge/hiddenmenu/wlan_service/Tx_Test;->access$300(Lcom/lge/hiddenmenu/wlan_service/Tx_Test;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v1, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Test$1;->this$0:Lcom/lge/hiddenmenu/wlan_service/Tx_Test;

    invoke-static {v1}, Lcom/lge/hiddenmenu/wlan_service/Tx_Test;->access$400(Lcom/lge/hiddenmenu/wlan_service/Tx_Test;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, "00:90:0c:ba:cd:88"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v1, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Test$1;->this$0:Lcom/lge/hiddenmenu/wlan_service/Tx_Test;

    invoke-static {v1}, Lcom/lge/hiddenmenu/wlan_service/Tx_Test;->access$400(Lcom/lge/hiddenmenu/wlan_service/Tx_Test;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 93
    iget-object v1, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Test$1;->this$0:Lcom/lge/hiddenmenu/wlan_service/Tx_Test;

    invoke-static {v1}, Lcom/lge/hiddenmenu/wlan_service/Tx_Test;->access$500(Lcom/lge/hiddenmenu/wlan_service/Tx_Test;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, "long"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 94
    return-void
.end method
