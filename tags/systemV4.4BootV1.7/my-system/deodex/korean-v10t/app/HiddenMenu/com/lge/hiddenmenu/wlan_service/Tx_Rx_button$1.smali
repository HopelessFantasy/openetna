.class Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_button$1;
.super Ljava/lang/Object;
.source "Tx_Rx_button.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_button;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_button;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_button;)V
    .registers 2
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_button$1;->this$0:Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 40
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 41
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.lge.hiddenmenu"

    const-string v2, "com.lge.hiddenmenu.wlan_service.Tx_Test"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    iget-object v1, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_button$1;->this$0:Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_button;

    invoke-virtual {v1, v0}, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_button;->startActivity(Landroid/content/Intent;)V

    .line 43
    return-void
.end method
