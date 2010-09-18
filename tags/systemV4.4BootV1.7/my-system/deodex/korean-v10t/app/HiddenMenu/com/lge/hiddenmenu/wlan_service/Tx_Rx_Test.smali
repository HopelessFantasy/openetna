.class public Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;
.super Landroid/app/Activity;
.source "Tx_Rx_Test.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Tx_Rx_Test"

.field private static final enable:Z = true


# instance fields
.field private callButton1:Landroid/widget/Button;

.field private callButton2:Landroid/widget/Button;

.field private callButton3:Landroid/widget/Button;

.field private callButton4:Landroid/widget/Button;

.field private callButton5:Landroid/widget/Button;

.field private editText1:Landroid/widget/EditText;

.field private editText2:Landroid/widget/EditText;

.field private editText3:Landroid/widget/EditText;

.field private editText4:Landroid/widget/EditText;

.field private editText5:Landroid/widget/EditText;

.field private editText6:Landroid/widget/EditText;

.field private editText7:Landroid/widget/EditText;

.field private editText8:Landroid/widget/EditText;

.field private editText9:Landroid/widget/EditText;

.field mac:Ljava/lang/String;

.field mainWifi:Landroid/net/wifi/WifiManager;

.field value:Ljava/lang/String;

.field wifiNative:Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 48
    iput-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;->value:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;->mac:Ljava/lang/String;

    .line 51
    new-instance v0, Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;

    invoke-direct {v0}, Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;-><init>()V

    iput-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;->wifiNative:Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;

    return-void
.end method

.method private ATOI(Ljava/lang/String;)I
    .registers 6
    .parameter "sTmp"

    .prologue
    .line 245
    const-string v2, "0"

    .local v2, tTmp:Ljava/lang/String;
    const-string v0, ""

    .line 246
    .local v0, cTmp:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 247
    const/4 v1, 0x0

    .local v1, i:I
    :goto_9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_86

    .line 249
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 250
    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_65

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_65

    const-string v3, "2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_65

    const-string v3, "3"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_65

    const-string v3, "4"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_65

    const-string v3, "5"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_65

    const-string v3, "6"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_65

    const-string v3, "7"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_65

    const-string v3, "8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_65

    const-string v3, "9"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_79

    .line 259
    :cond_65
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 247
    :goto_76
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 260
    :cond_79
    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_86

    if-nez v1, :cond_86

    .line 261
    const-string v2, "-"

    goto :goto_76

    .line 265
    :cond_86
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    return v3
.end method

.method static synthetic access$000(Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;->editText4:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;->editText5:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;->editText6:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;->editText7:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;->editText8:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;->editText1:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;->editText2:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;->editText3:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;->editText9:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const v0, 0x7f03003b

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;->setContentView(I)V

    .line 59
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;->mainWifi:Landroid/net/wifi/WifiManager;

    .line 63
    const v0, 0x7f07006e

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;->editText1:Landroid/widget/EditText;

    .line 64
    const v0, 0x7f070070

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;->editText2:Landroid/widget/EditText;

    .line 65
    const v0, 0x7f0700ef

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;->editText3:Landroid/widget/EditText;

    .line 66
    const v0, 0x7f0700f1

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;->editText4:Landroid/widget/EditText;

    .line 67
    const v0, 0x7f0700f3

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;->editText5:Landroid/widget/EditText;

    .line 68
    const v0, 0x7f0700f5

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;->editText6:Landroid/widget/EditText;

    .line 69
    const v0, 0x7f0700f7

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;->editText7:Landroid/widget/EditText;

    .line 70
    const v0, 0x7f0700f9

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;->editText8:Landroid/widget/EditText;

    .line 71
    const v0, 0x7f0700fc

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;->editText9:Landroid/widget/EditText;

    .line 73
    const v0, 0x7f070071

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;->callButton1:Landroid/widget/Button;

    .line 74
    const v0, 0x7f070072

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;->callButton2:Landroid/widget/Button;

    .line 75
    const v0, 0x7f070073

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;->callButton3:Landroid/widget/Button;

    .line 76
    const v0, 0x7f0700fa

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;->callButton4:Landroid/widget/Button;

    .line 77
    const v0, 0x7f0700fb

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;->callButton5:Landroid/widget/Button;

    .line 80
    iget-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;->callButton1:Landroid/widget/Button;

    new-instance v1, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test$1;

    invoke-direct {v1, p0}, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test$1;-><init>(Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;->callButton2:Landroid/widget/Button;

    new-instance v1, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test$2;

    invoke-direct {v1, p0}, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test$2;-><init>(Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iget-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;->callButton3:Landroid/widget/Button;

    new-instance v1, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test$3;

    invoke-direct {v1, p0}, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test$3;-><init>(Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;->callButton4:Landroid/widget/Button;

    new-instance v1, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test$4;

    invoke-direct {v1, p0}, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test$4;-><init>(Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    iget-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;->callButton5:Landroid/widget/Button;

    new-instance v1, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test$5;

    invoke-direct {v1, p0}, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test$5;-><init>(Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    return-void
.end method

.method public rft_convert_init(Ljava/lang/String;)I
    .registers 4
    .parameter "str"

    .prologue
    .line 228
    const-string v1, "-1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_a

    .line 230
    const/4 v0, 0x0

    .line 240
    .local v0, rate:I
    :goto_9
    return v0

    .line 232
    .end local v0           #rate:I
    :cond_a
    const-string v1, "5.5"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_15

    .line 234
    const/16 v0, 0xb

    .restart local v0       #rate:I
    goto :goto_9

    .line 238
    .end local v0           #rate:I
    :cond_15
    invoke-direct {p0, p1}, Lcom/lge/hiddenmenu/wlan_service/Tx_Rx_Test;->ATOI(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v0, v1, 0x2

    .restart local v0       #rate:I
    goto :goto_9
.end method
