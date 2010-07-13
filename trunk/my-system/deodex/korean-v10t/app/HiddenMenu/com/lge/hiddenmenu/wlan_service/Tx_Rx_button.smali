.class public Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_button;
.super Landroid/app/Activity;
.source "Tx_Rx_button.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v2, 0x7f03003a

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_button;->setContentView(I)V

    .line 35
    const v2, 0x7f0700e9

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_button;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 36
    .local v1, TxButton:Landroid/widget/Button;
    const v2, 0x7f0700ea

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_button;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 38
    .local v0, RxButton:Landroid/widget/Button;
    new-instance v2, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_button$1;

    invoke-direct {v2, p0}, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_button$1;-><init>(Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_button;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    new-instance v2, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_button$2;

    invoke-direct {v2, p0}, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_button$2;-><init>(Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_button;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    return-void
.end method
