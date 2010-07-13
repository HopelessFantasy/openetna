.class public Lcom/lge/hiddenmenu/wlan_service/FTM_Test;
.super Landroid/app/Activity;
.source "FTM_Test.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FTM_Test"

.field private static final enable:Z = true


# instance fields
.field private callButton1:Landroid/widget/Button;

.field private callButton2:Landroid/widget/Button;

.field private callButton3:Landroid/widget/Button;

.field private editText1:Landroid/widget/EditText;

.field private editText2:Landroid/widget/EditText;

.field mainWifi:Landroid/net/wifi/WifiManager;

.field wifiNative:Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 39
    new-instance v0, Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;

    invoke-direct {v0}, Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;-><init>()V

    iput-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/FTM_Test;->wifiNative:Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;

    return-void
.end method

.method private ATOI(Ljava/lang/String;)I
    .registers 6
    .parameter "sTmp"

    .prologue
    .line 156
    const-string v2, "0"

    .local v2, tTmp:Ljava/lang/String;
    const-string v0, ""

    .line 157
    .local v0, cTmp:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 158
    const/4 v1, 0x0

    .local v1, i:I
    :goto_9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_86

    .line 160
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 161
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

    .line 170
    :cond_65
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 158
    :goto_76
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 171
    :cond_79
    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_86

    if-nez v1, :cond_86

    .line 172
    const-string v2, "-"

    goto :goto_76

    .line 176
    :cond_86
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    return v3
.end method

.method static synthetic access$000(Lcom/lge/hiddenmenu/wlan_service/FTM_Test;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/FTM_Test;->editText1:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/hiddenmenu/wlan_service/FTM_Test;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/FTM_Test;->editText2:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/wlan_service/FTM_Test;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/FTM_Test;->mainWifi:Landroid/net/wifi/WifiManager;

    .line 48
    const v0, 0x7f030012

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/wlan_service/FTM_Test;->setContentView(I)V

    .line 49
    const v0, 0x7f07006e

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/wlan_service/FTM_Test;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/FTM_Test;->editText1:Landroid/widget/EditText;

    .line 50
    const v0, 0x7f070070

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/wlan_service/FTM_Test;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/FTM_Test;->editText2:Landroid/widget/EditText;

    .line 52
    const v0, 0x7f070071

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/wlan_service/FTM_Test;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/FTM_Test;->callButton1:Landroid/widget/Button;

    .line 53
    const v0, 0x7f070072

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/wlan_service/FTM_Test;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/FTM_Test;->callButton2:Landroid/widget/Button;

    .line 54
    const v0, 0x7f070073

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/wlan_service/FTM_Test;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/FTM_Test;->callButton3:Landroid/widget/Button;

    .line 56
    iget-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/FTM_Test;->callButton1:Landroid/widget/Button;

    new-instance v1, Lcom/lge/hiddenmenu/wlan_service/FTM_Test$1;

    invoke-direct {v1, p0}, Lcom/lge/hiddenmenu/wlan_service/FTM_Test$1;-><init>(Lcom/lge/hiddenmenu/wlan_service/FTM_Test;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/FTM_Test;->callButton2:Landroid/widget/Button;

    new-instance v1, Lcom/lge/hiddenmenu/wlan_service/FTM_Test$2;

    invoke-direct {v1, p0}, Lcom/lge/hiddenmenu/wlan_service/FTM_Test$2;-><init>(Lcom/lge/hiddenmenu/wlan_service/FTM_Test;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/FTM_Test;->callButton3:Landroid/widget/Button;

    new-instance v1, Lcom/lge/hiddenmenu/wlan_service/FTM_Test$3;

    invoke-direct {v1, p0}, Lcom/lge/hiddenmenu/wlan_service/FTM_Test$3;-><init>(Lcom/lge/hiddenmenu/wlan_service/FTM_Test;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    return-void
.end method

.method public rft_convert_init(Ljava/lang/String;)I
    .registers 4
    .parameter "str"

    .prologue
    .line 139
    const-string v1, "-1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_a

    .line 141
    const/4 v0, 0x0

    .line 151
    .local v0, rate:I
    :goto_9
    return v0

    .line 143
    .end local v0           #rate:I
    :cond_a
    const-string v1, "5.5"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_15

    .line 145
    const/16 v0, 0xb

    .restart local v0       #rate:I
    goto :goto_9

    .line 149
    .end local v0           #rate:I
    :cond_15
    invoke-direct {p0, p1}, Lcom/lge/hiddenmenu/wlan_service/FTM_Test;->ATOI(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v0, v1, 0x2

    .restart local v0       #rate:I
    goto :goto_9
.end method
