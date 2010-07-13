.class public Lcom/lge/hiddenmenu/wlan_service/Rx_Test;
.super Landroid/app/Activity;
.source "Rx_Test.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Rx_Test"

.field private static final enable:Z = true


# instance fields
.field private button_Rx_clear:Landroid/widget/Button;

.field private button_Rx_open:Landroid/widget/Button;

.field private button_Rx_start:Landroid/widget/Button;

.field private channel:I

.field private edit_Rx_address:Landroid/widget/EditText;

.field private edit_Rx_channel:Landroid/widget/EditText;

.field public edit_Rx_per:Landroid/widget/EditText;

.field private edit_Rx_time:Landroid/widget/EditText;

.field private frerror:I

.field private frgood:I

.field private listen_time:I

.field macAddress:Ljava/lang/String;

.field mainWifi:Landroid/net/wifi/WifiManager;

.field private rssi:I

.field wifiNative:Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/Rx_Test;->macAddress:Ljava/lang/String;

    .line 46
    new-instance v0, Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;

    invoke-direct {v0}, Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;-><init>()V

    iput-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/Rx_Test;->wifiNative:Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;

    return-void
.end method

.method static synthetic access$000(Lcom/lge/hiddenmenu/wlan_service/Rx_Test;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/Rx_Test;->edit_Rx_channel:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/hiddenmenu/wlan_service/Rx_Test;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/Rx_Test;->edit_Rx_address:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/hiddenmenu/wlan_service/Rx_Test;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/Rx_Test;->edit_Rx_time:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lge/hiddenmenu/wlan_service/Rx_Test;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/lge/hiddenmenu/wlan_service/Rx_Test;->channel:I

    return v0
.end method

.method static synthetic access$302(Lcom/lge/hiddenmenu/wlan_service/Rx_Test;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput p1, p0, Lcom/lge/hiddenmenu/wlan_service/Rx_Test;->channel:I

    return p1
.end method

.method static synthetic access$400(Lcom/lge/hiddenmenu/wlan_service/Rx_Test;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/lge/hiddenmenu/wlan_service/Rx_Test;->listen_time:I

    return v0
.end method

.method static synthetic access$402(Lcom/lge/hiddenmenu/wlan_service/Rx_Test;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput p1, p0, Lcom/lge/hiddenmenu/wlan_service/Rx_Test;->listen_time:I

    return p1
.end method

.method static synthetic access$500(Lcom/lge/hiddenmenu/wlan_service/Rx_Test;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/lge/hiddenmenu/wlan_service/Rx_Test;->rssi:I

    return v0
.end method

.method static synthetic access$502(Lcom/lge/hiddenmenu/wlan_service/Rx_Test;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput p1, p0, Lcom/lge/hiddenmenu/wlan_service/Rx_Test;->rssi:I

    return p1
.end method

.method static synthetic access$600(Lcom/lge/hiddenmenu/wlan_service/Rx_Test;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/lge/hiddenmenu/wlan_service/Rx_Test;->frgood:I

    return v0
.end method

.method static synthetic access$602(Lcom/lge/hiddenmenu/wlan_service/Rx_Test;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput p1, p0, Lcom/lge/hiddenmenu/wlan_service/Rx_Test;->frgood:I

    return p1
.end method

.method static synthetic access$700(Lcom/lge/hiddenmenu/wlan_service/Rx_Test;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/lge/hiddenmenu/wlan_service/Rx_Test;->frerror:I

    return v0
.end method

.method static synthetic access$702(Lcom/lge/hiddenmenu/wlan_service/Rx_Test;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput p1, p0, Lcom/lge/hiddenmenu/wlan_service/Rx_Test;->frerror:I

    return p1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const v0, 0x7f03002f

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/wlan_service/Rx_Test;->setContentView(I)V

    .line 54
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/wlan_service/Rx_Test;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/Rx_Test;->mainWifi:Landroid/net/wifi/WifiManager;

    .line 56
    const v0, 0x7f0700ce

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/wlan_service/Rx_Test;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/Rx_Test;->edit_Rx_channel:Landroid/widget/EditText;

    .line 57
    const v0, 0x7f0700d0

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/wlan_service/Rx_Test;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/Rx_Test;->edit_Rx_address:Landroid/widget/EditText;

    .line 58
    const v0, 0x7f0700d6

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/wlan_service/Rx_Test;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/Rx_Test;->edit_Rx_time:Landroid/widget/EditText;

    .line 59
    const v0, 0x7f0700d4

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/wlan_service/Rx_Test;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/Rx_Test;->edit_Rx_per:Landroid/widget/EditText;

    .line 61
    const v0, 0x7f0700d1

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/wlan_service/Rx_Test;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/Rx_Test;->button_Rx_open:Landroid/widget/Button;

    .line 62
    const v0, 0x7f0700d2

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/wlan_service/Rx_Test;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/Rx_Test;->button_Rx_start:Landroid/widget/Button;

    .line 63
    const v0, 0x7f0700d3

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/wlan_service/Rx_Test;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/Rx_Test;->button_Rx_clear:Landroid/widget/Button;

    .line 65
    iget-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/Rx_Test;->button_Rx_open:Landroid/widget/Button;

    new-instance v1, Lcom/lge/hiddenmenu/wlan_service/Rx_Test$1;

    invoke-direct {v1, p0}, Lcom/lge/hiddenmenu/wlan_service/Rx_Test$1;-><init>(Lcom/lge/hiddenmenu/wlan_service/Rx_Test;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/Rx_Test;->button_Rx_start:Landroid/widget/Button;

    new-instance v1, Lcom/lge/hiddenmenu/wlan_service/Rx_Test$2;

    invoke-direct {v1, p0}, Lcom/lge/hiddenmenu/wlan_service/Rx_Test$2;-><init>(Lcom/lge/hiddenmenu/wlan_service/Rx_Test;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/Rx_Test;->button_Rx_clear:Landroid/widget/Button;

    new-instance v1, Lcom/lge/hiddenmenu/wlan_service/Rx_Test$3;

    invoke-direct {v1, p0}, Lcom/lge/hiddenmenu/wlan_service/Rx_Test$3;-><init>(Lcom/lge/hiddenmenu/wlan_service/Rx_Test;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    return-void
.end method
