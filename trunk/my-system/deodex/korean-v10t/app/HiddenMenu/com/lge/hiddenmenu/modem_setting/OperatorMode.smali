.class public Lcom/lge/hiddenmenu/modem_setting/OperatorMode;
.super Landroid/app/Activity;
.source "OperatorMode.java"


# static fields
.field private static final EVENT_GET_ENGINEERING_MODE_DONE:I = 0x64

.field static final NumofMainItems:I = 0x3

.field static final NumofSubItems:[I = null

.field static final NumofText:I = 0xb

.field static final Oper_Info:[[[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "HiddenMenu.OperatorMode"

.field static final TelusNumofMainItems:I = 0x4

.field static final TelusNumofSubItems:[I = null

.field static final Telus_Oper_Info:[[[Ljava/lang/String; = null

.field public static final packageName:Ljava/lang/String; = "com.lge.hiddenmenu"


# instance fields
.field CurrentMainItem:I

.field CurrentSubItem:I

.field private OMphone:Lcom/android/internal/telephony/Phone;

.field private TextItem:[Landroid/widget/TextView;

.field private TextItemValue:[Landroid/widget/TextView;

.field mFlexOperatorCode:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mUpdateTimeTask:Ljava/lang/Runnable;

.field msg:Landroid/os/Message;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v6, ""

    .line 50
    new-array v0, v10, [[[Ljava/lang/String;

    const/4 v1, 0x5

    new-array v1, v1, [[Ljava/lang/String;

    const/16 v2, 0xb

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "ITEM_2G: 0"

    aput-object v3, v2, v7

    const-string v3, "[ Serving Cell Information ]"

    aput-object v3, v2, v8

    const-string v3, "ARFCN : "

    aput-object v3, v2, v9

    const-string v3, "RL_Timeout_v : "

    aput-object v3, v2, v10

    const/4 v3, 0x4

    const-string v4, "RXLEV : "

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "C1 : "

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "C2 : "

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, ""

    aput-object v6, v2, v3

    const/16 v3, 0x8

    const-string v4, ""

    aput-object v6, v2, v3

    const/16 v3, 0x9

    const-string v4, ""

    aput-object v6, v2, v3

    const/16 v3, 0xa

    const-string v4, ""

    aput-object v6, v2, v3

    aput-object v2, v1, v7

    const/16 v2, 0xb

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "ITEM_2G: 1"

    aput-object v3, v2, v7

    const-string v3, "[ Neighboring Cell Information ]"

    aput-object v3, v2, v8

    const-string v3, "       AR  RXL  C1  C2"

    aput-object v3, v2, v9

    const-string v3, "N1 : "

    aput-object v3, v2, v10

    const/4 v3, 0x4

    const-string v4, "N2 : "

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "N3 : "

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "N4 : "

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "N5 : "

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "N6 : "

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "N7 : "

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "N8 : "

    aput-object v4, v2, v3

    aput-object v2, v1, v8

    const/16 v2, 0xb

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "ITEM_2G: 2"

    aput-object v3, v2, v7

    const-string v3, "[ Neighboring Cell Information in GPRS ]"

    aput-object v3, v2, v8

    const-string v3, "       AR  RXL  C1  C31  C32"

    aput-object v3, v2, v9

    const-string v3, "N1 : "

    aput-object v3, v2, v10

    const/4 v3, 0x4

    const-string v4, "N2 : "

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "N3 : "

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "N4 : "

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "N5 : "

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "N6 : "

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "N7 : "

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "N8 : "

    aput-object v4, v2, v3

    aput-object v2, v1, v9

    const/16 v2, 0xb

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "ITEM_2G: 3"

    aput-object v3, v2, v7

    const-string v3, "[ RX/TX Power Information ]"

    aput-object v3, v2, v8

    const-string v3, "RXLevel Full : "

    aput-object v3, v2, v9

    const-string v3, "RXLevel Sub : "

    aput-object v3, v2, v10

    const/4 v3, 0x4

    const-string v4, "RXQual Full : "

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "RXQual Sub : "

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "TX Power Level(index/dBm) : "

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, ""

    aput-object v6, v2, v3

    const/16 v3, 0x8

    const-string v4, ""

    aput-object v6, v2, v3

    const/16 v3, 0x9

    const-string v4, ""

    aput-object v6, v2, v3

    const/16 v3, 0xa

    const-string v4, ""

    aput-object v6, v2, v3

    aput-object v2, v1, v10

    const/4 v2, 0x4

    const/16 v3, 0xb

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "ITEM_2G: 4"

    aput-object v4, v3, v7

    const-string v4, "[ Current State Information ]"

    aput-object v4, v3, v8

    const-string v4, "AMR Ch : "

    aput-object v4, v3, v9

    const-string v4, "Channel Mode : "

    aput-object v4, v3, v10

    const/4 v4, 0x4

    const-string v5, ""

    aput-object v6, v3, v4

    const/4 v4, 0x5

    const-string v5, ""

    aput-object v6, v3, v4

    const/4 v4, 0x6

    const-string v5, ""

    aput-object v6, v3, v4

    const/4 v4, 0x7

    const-string v5, ""

    aput-object v6, v3, v4

    const/16 v4, 0x8

    const-string v5, ""

    aput-object v6, v3, v4

    const/16 v4, 0x9

    const-string v5, ""

    aput-object v6, v3, v4

    const/16 v4, 0xa

    const-string v5, ""

    aput-object v6, v3, v4

    aput-object v3, v1, v2

    aput-object v1, v0, v7

    new-array v1, v10, [[Ljava/lang/String;

    const/16 v2, 0xb

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "ITEM_3G: 0"

    aput-object v3, v2, v7

    const-string v3, "[ RRC State & Serving Cell ]"

    aput-object v3, v2, v8

    const-string v3, "RRC State : "

    aput-object v3, v2, v9

    const-string v3, "S_FREQ : "

    aput-object v3, v2, v10

    const/4 v3, 0x4

    const-string v4, "S_PSC : "

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "S_RSCP : "

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "S_ECIO : "

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, ""

    aput-object v6, v2, v3

    const/16 v3, 0x8

    const-string v4, ""

    aput-object v6, v2, v3

    const/16 v3, 0x9

    const-string v4, ""

    aput-object v6, v2, v3

    const/16 v3, 0xa

    const-string v4, ""

    aput-object v6, v2, v3

    aput-object v2, v1, v7

    const/16 v2, 0xb

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "ITEM_3G: 1"

    aput-object v3, v2, v7

    const-string v3, "[ Intra Cell FDD Information ]"

    aput-object v3, v2, v8

    const-string v3, "UARFCN  PSC  RSCP  ECIO  isAS"

    aput-object v3, v2, v9

    const-string v3, ""

    aput-object v6, v2, v10

    const/4 v3, 0x4

    const-string v4, ""

    aput-object v6, v2, v3

    const/4 v3, 0x5

    const-string v4, ""

    aput-object v6, v2, v3

    const/4 v3, 0x6

    const-string v4, ""

    aput-object v6, v2, v3

    const/4 v3, 0x7

    const-string v4, ""

    aput-object v6, v2, v3

    const/16 v3, 0x8

    const-string v4, ""

    aput-object v6, v2, v3

    const/16 v3, 0x9

    const-string v4, ""

    aput-object v6, v2, v3

    const/16 v3, 0xa

    const-string v4, ""

    aput-object v6, v2, v3

    aput-object v2, v1, v8

    const/16 v2, 0xb

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "ITEM_3G: 2"

    aput-object v3, v2, v7

    const-string v3, "[ Inter Cell FDD Information ]"

    aput-object v3, v2, v8

    const-string v3, "UARFCN  PSC  RSCP  ECIO  isAS"

    aput-object v3, v2, v9

    const-string v3, ""

    aput-object v6, v2, v10

    const/4 v3, 0x4

    const-string v4, ""

    aput-object v6, v2, v3

    const/4 v3, 0x5

    const-string v4, ""

    aput-object v6, v2, v3

    const/4 v3, 0x6

    const-string v4, ""

    aput-object v6, v2, v3

    const/4 v3, 0x7

    const-string v4, ""

    aput-object v6, v2, v3

    const/16 v3, 0x8

    const-string v4, ""

    aput-object v6, v2, v3

    const/16 v3, 0x9

    const-string v4, ""

    aput-object v6, v2, v3

    const/16 v3, 0xa

    const-string v4, ""

    aput-object v6, v2, v3

    aput-object v2, v1, v9

    aput-object v1, v0, v8

    new-array v1, v10, [[Ljava/lang/String;

    const/16 v2, 0xb

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "ITEM_NM: 0"

    aput-object v3, v2, v7

    const-string v3, "[ General Information ]"

    aput-object v3, v2, v8

    const-string v3, "PLMN : "

    aput-object v3, v2, v9

    const-string v3, "RAC : "

    aput-object v3, v2, v10

    const/4 v3, 0x4

    const-string v4, "LAC : "

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "HPLMN : "

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, ""

    aput-object v6, v2, v3

    const/4 v3, 0x7

    const-string v4, ""

    aput-object v6, v2, v3

    const/16 v3, 0x8

    const-string v4, ""

    aput-object v6, v2, v3

    const/16 v3, 0x9

    const-string v4, ""

    aput-object v6, v2, v3

    const/16 v3, 0xa

    const-string v4, ""

    aput-object v6, v2, v3

    aput-object v2, v1, v7

    const/16 v2, 0xb

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "ITEM_NM: 1"

    aput-object v3, v2, v7

    const-string v3, "[ Network Management Information ]"

    aput-object v3, v2, v8

    const-string v3, "MM State : "

    aput-object v3, v2, v9

    const-string v3, "MM Reject : "

    aput-object v3, v2, v10

    const/4 v3, 0x4

    const-string v4, "GMM State : "

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "Attach Reject : "

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "RAU Reject : "

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, ""

    aput-object v6, v2, v3

    const/16 v3, 0x8

    const-string v4, ""

    aput-object v6, v2, v3

    const/16 v3, 0x9

    const-string v4, ""

    aput-object v6, v2, v3

    const/16 v3, 0xa

    const-string v4, ""

    aput-object v6, v2, v3

    aput-object v2, v1, v8

    const/16 v2, 0xb

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "ITEM_NM: 2"

    aput-object v3, v2, v7

    const-string v3, "[ Ciphering Information ]"

    aput-object v3, v2, v8

    const-string v3, "Ciphering : "

    aput-object v3, v2, v9

    const-string v3, "UEA Algorithm : "

    aput-object v3, v2, v10

    const/4 v3, 0x4

    const-string v4, "GEA Algorithm : "

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "A5 Algorithm : "

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, ""

    aput-object v6, v2, v3

    const/4 v3, 0x7

    const-string v4, ""

    aput-object v6, v2, v3

    const/16 v3, 0x8

    const-string v4, ""

    aput-object v6, v2, v3

    const/16 v3, 0x9

    const-string v4, ""

    aput-object v6, v2, v3

    const/16 v3, 0xa

    const-string v4, ""

    aput-object v6, v2, v3

    aput-object v2, v1, v9

    aput-object v1, v0, v9

    sput-object v0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->Oper_Info:[[[Ljava/lang/String;

    .line 73
    const/4 v0, 0x4

    new-array v0, v0, [[[Ljava/lang/String;

    const/4 v1, 0x5

    new-array v1, v1, [[Ljava/lang/String;

    const/16 v2, 0xb

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "ITEM_2G: 0"

    aput-object v3, v2, v7

    const-string v3, "[ Serving Cell Information ]"

    aput-object v3, v2, v8

    const-string v3, "ARFCN : "

    aput-object v3, v2, v9

    const-string v3, "RL_Timeout_v : "

    aput-object v3, v2, v10

    const/4 v3, 0x4

    const-string v4, "RXLEV : "

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "C1 : "

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "C2 : "

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, ""

    aput-object v6, v2, v3

    const/16 v3, 0x8

    const-string v4, ""

    aput-object v6, v2, v3

    const/16 v3, 0x9

    const-string v4, ""

    aput-object v6, v2, v3

    const/16 v3, 0xa

    const-string v4, ""

    aput-object v6, v2, v3

    aput-object v2, v1, v7

    const/16 v2, 0xb

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "ITEM_2G: 1"

    aput-object v3, v2, v7

    const-string v3, "[ Neighboring Cell Information ]"

    aput-object v3, v2, v8

    const-string v3, "       AR  RXL  C1  C2"

    aput-object v3, v2, v9

    const-string v3, "N1 : "

    aput-object v3, v2, v10

    const/4 v3, 0x4

    const-string v4, "N2 : "

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "N3 : "

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "N4 : "

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "N5 : "

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "N6 : "

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "N7 : "

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "N8 : "

    aput-object v4, v2, v3

    aput-object v2, v1, v8

    const/16 v2, 0xb

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "ITEM_2G: 2"

    aput-object v3, v2, v7

    const-string v3, "[ Neighboring Cell Information in GPRS ]"

    aput-object v3, v2, v8

    const-string v3, "       AR  RXL  C1  C31  C32"

    aput-object v3, v2, v9

    const-string v3, "N1 : "

    aput-object v3, v2, v10

    const/4 v3, 0x4

    const-string v4, "N2 : "

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "N3 : "

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "N4 : "

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "N5 : "

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "N6 : "

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "N7 : "

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "N8 : "

    aput-object v4, v2, v3

    aput-object v2, v1, v9

    const/16 v2, 0xb

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "ITEM_2G: 3"

    aput-object v3, v2, v7

    const-string v3, "[ RX/TX Power Information ]"

    aput-object v3, v2, v8

    const-string v3, "RXLevel Full : "

    aput-object v3, v2, v9

    const-string v3, "RXLevel Sub : "

    aput-object v3, v2, v10

    const/4 v3, 0x4

    const-string v4, "RXQual Full : "

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "RXQual Sub : "

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "TX Power Level(index/dBm) : "

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, ""

    aput-object v6, v2, v3

    const/16 v3, 0x8

    const-string v4, ""

    aput-object v6, v2, v3

    const/16 v3, 0x9

    const-string v4, ""

    aput-object v6, v2, v3

    const/16 v3, 0xa

    const-string v4, ""

    aput-object v6, v2, v3

    aput-object v2, v1, v10

    const/4 v2, 0x4

    const/16 v3, 0xb

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "ITEM_2G: 4"

    aput-object v4, v3, v7

    const-string v4, "[ Current State Information ]"

    aput-object v4, v3, v8

    const-string v4, "AMR Ch : "

    aput-object v4, v3, v9

    const-string v4, "Channel Mode : "

    aput-object v4, v3, v10

    const/4 v4, 0x4

    const-string v5, "Coding Schem : "

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "BSIC (NCC/BCC) : "

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "Time Slot : "

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, ""

    aput-object v6, v3, v4

    const/16 v4, 0x8

    const-string v5, ""

    aput-object v6, v3, v4

    const/16 v4, 0x9

    const-string v5, ""

    aput-object v6, v3, v4

    const/16 v4, 0xa

    const-string v5, ""

    aput-object v6, v3, v4

    aput-object v3, v1, v2

    aput-object v1, v0, v7

    new-array v1, v10, [[Ljava/lang/String;

    const/16 v2, 0xb

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "ITEM_3G: 0"

    aput-object v3, v2, v7

    const-string v3, "[ RRC State & Serving Cell ]"

    aput-object v3, v2, v8

    const-string v3, "RRC State : "

    aput-object v3, v2, v9

    const-string v3, "S_FREQ : "

    aput-object v3, v2, v10

    const/4 v3, 0x4

    const-string v4, "S_PSC : "

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "S_RSCP : "

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "S_ECIO : "

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, ""

    aput-object v6, v2, v3

    const/16 v3, 0x8

    const-string v4, ""

    aput-object v6, v2, v3

    const/16 v3, 0x9

    const-string v4, ""

    aput-object v6, v2, v3

    const/16 v3, 0xa

    const-string v4, ""

    aput-object v6, v2, v3

    aput-object v2, v1, v7

    const/16 v2, 0xb

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "ITEM_3G: 1"

    aput-object v3, v2, v7

    const-string v3, "[ Intra Cell FDD Information ]"

    aput-object v3, v2, v8

    const-string v3, "UARFCN  PSC  RSCP  ECIO  isAS"

    aput-object v3, v2, v9

    const-string v3, ""

    aput-object v6, v2, v10

    const/4 v3, 0x4

    const-string v4, ""

    aput-object v6, v2, v3

    const/4 v3, 0x5

    const-string v4, ""

    aput-object v6, v2, v3

    const/4 v3, 0x6

    const-string v4, ""

    aput-object v6, v2, v3

    const/4 v3, 0x7

    const-string v4, ""

    aput-object v6, v2, v3

    const/16 v3, 0x8

    const-string v4, ""

    aput-object v6, v2, v3

    const/16 v3, 0x9

    const-string v4, ""

    aput-object v6, v2, v3

    const/16 v3, 0xa

    const-string v4, ""

    aput-object v6, v2, v3

    aput-object v2, v1, v8

    const/16 v2, 0xb

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "ITEM_3G: 2"

    aput-object v3, v2, v7

    const-string v3, "[ Inter Cell FDD Information ]"

    aput-object v3, v2, v8

    const-string v3, "UARFCN  PSC  RSCP  ECIO  isAS"

    aput-object v3, v2, v9

    const-string v3, ""

    aput-object v6, v2, v10

    const/4 v3, 0x4

    const-string v4, ""

    aput-object v6, v2, v3

    const/4 v3, 0x5

    const-string v4, ""

    aput-object v6, v2, v3

    const/4 v3, 0x6

    const-string v4, ""

    aput-object v6, v2, v3

    const/4 v3, 0x7

    const-string v4, ""

    aput-object v6, v2, v3

    const/16 v3, 0x8

    const-string v4, ""

    aput-object v6, v2, v3

    const/16 v3, 0x9

    const-string v4, ""

    aput-object v6, v2, v3

    const/16 v3, 0xa

    const-string v4, ""

    aput-object v6, v2, v3

    aput-object v2, v1, v9

    aput-object v1, v0, v8

    const/4 v1, 0x6

    new-array v1, v1, [[Ljava/lang/String;

    const/16 v2, 0xb

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "ITEM_NM: 0"

    aput-object v3, v2, v7

    const-string v3, "[ General Information ]"

    aput-object v3, v2, v8

    const-string v3, "PLMN : "

    aput-object v3, v2, v9

    const-string v3, "RAC : "

    aput-object v3, v2, v10

    const/4 v3, 0x4

    const-string v4, "LAC : "

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "HPLMN : "

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Last PLMN : "

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "IMSI  : "

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "TMSI : "

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "PTMSI : "

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "Requested PLMN : "

    aput-object v4, v2, v3

    aput-object v2, v1, v7

    const/16 v2, 0xb

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "ITEM_NM: 1"

    aput-object v3, v2, v7

    const-string v3, "[ Network Management Information ]"

    aput-object v3, v2, v8

    const-string v3, "MM State : "

    aput-object v3, v2, v9

    const-string v3, "MM Reject : "

    aput-object v3, v2, v10

    const/4 v3, 0x4

    const-string v4, "GMM State : "

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "Attach Reject : "

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "RAU Reject : "

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "MMM/MM_Sub State : "

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "CC Disconnect Cause : "

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "RR Release Cause : "

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, ""

    aput-object v6, v2, v3

    aput-object v2, v1, v8

    const/16 v2, 0xb

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "ITEM_NM: 2"

    aput-object v3, v2, v7

    const-string v3, "[ Ciphering Information ]"

    aput-object v3, v2, v8

    const-string v3, "Ciphering : "

    aput-object v3, v2, v9

    const-string v3, "UEA Algorithm : "

    aput-object v3, v2, v10

    const/4 v3, 0x4

    const-string v4, "GEA Algorithm : "

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "A5 Algorithm : "

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, ""

    aput-object v6, v2, v3

    const/4 v3, 0x7

    const-string v4, ""

    aput-object v6, v2, v3

    const/16 v3, 0x8

    const-string v4, ""

    aput-object v6, v2, v3

    const/16 v3, 0x9

    const-string v4, ""

    aput-object v6, v2, v3

    const/16 v3, 0xa

    const-string v4, ""

    aput-object v6, v2, v3

    aput-object v2, v1, v9

    const/16 v2, 0xb

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "ITEM_NM: 3"

    aput-object v3, v2, v7

    const-string v3, "[ Network Information ]"

    aput-object v3, v2, v8

    const-string v3, "CS_UpdState : "

    aput-object v3, v2, v9

    const-string v3, "PS_UpdState : "

    aput-object v3, v2, v10

    const/4 v3, 0x4

    const-string v4, "Search Mode : "

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "Active RAT : "

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "HPLMN Timer : "

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "HW EnableBand : "

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "SW EnableBand : "

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, ""

    aput-object v6, v2, v3

    const/16 v3, 0xa

    const-string v4, ""

    aput-object v6, v2, v3

    aput-object v2, v1, v10

    const/4 v2, 0x4

    const/16 v3, 0xb

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "ITEM_NM: 4"

    aput-object v4, v3, v7

    const-string v4, "[ PS Information ]"

    aput-object v4, v3, v8

    const-string v4, "Cell ID : "

    aput-object v4, v3, v9

    const-string v4, "Attach Type : "

    aput-object v4, v3, v10

    const/4 v4, 0x4

    const-string v5, "Net Mode : "

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "NC Mode : "

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "Num of PDP Context : "

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, ""

    aput-object v6, v3, v4

    const/16 v4, 0x8

    const-string v5, ""

    aput-object v6, v3, v4

    const/16 v4, 0x9

    const-string v5, ""

    aput-object v6, v3, v4

    const/16 v4, 0xa

    const-string v5, ""

    aput-object v6, v3, v4

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const/16 v3, 0xb

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "ITEM_NM: 5"

    aput-object v4, v3, v7

    const-string v4, "[ PDP Information ]"

    aput-object v4, v3, v8

    const-string v4, "PDP Index : "

    aput-object v4, v3, v9

    const-string v4, "PDP State : "

    aput-object v4, v3, v10

    const/4 v4, 0x4

    const-string v5, "IP : "

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "Max Bitrate UP : "

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "Max Bitrate DOWN : "

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "SDU Size : "

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "APN : "

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const-string v5, "SM Cause : "

    aput-object v5, v3, v4

    const/16 v4, 0xa

    const-string v5, ""

    aput-object v6, v3, v4

    aput-object v3, v1, v2

    aput-object v1, v0, v9

    new-array v1, v9, [[Ljava/lang/String;

    const/16 v2, 0xb

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "ITEM_HSPA: 0"

    aput-object v3, v2, v7

    const-string v3, "[ HSDPA Information ]"

    aput-object v3, v2, v8

    const-string v3, "HSDPA State : "

    aput-object v3, v2, v9

    const-string v3, "HSDPA Category : "

    aput-object v3, v2, v10

    const/4 v3, 0x4

    const-string v4, "HS-PSC : "

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "CQI : "

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "HS-DSCH : "

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "HARQ Retrans : "

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "HS-DSCH Modulation : "

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "HS-DSCH Data Rate : "

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "Non HSDPA PSCs : "

    aput-object v4, v2, v3

    aput-object v2, v1, v7

    const/16 v2, 0xb

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "ITEM_HSPA: 1"

    aput-object v3, v2, v7

    const-string v3, "[ HSUPA Information ]"

    aput-object v3, v2, v8

    const-string v3, "3G Cell HSPA Capability : "

    aput-object v3, v2, v9

    const-string v3, "HSUPA State : "

    aput-object v3, v2, v10

    const/4 v3, 0x4

    const-string v4, "HSUPA Category : "

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "EUL Reset Indication : "

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "TTI : "

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "E-DCH Data Rate : "

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "DPCCH happy_bit_delay_in_ms : "

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "DPDCH E-TFCI TB size : "

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "Number of E-DPDCH (SF) : "

    aput-object v4, v2, v3

    aput-object v2, v1, v8

    aput-object v1, v0, v10

    sput-object v0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->Telus_Oper_Info:[[[Ljava/lang/String;

    .line 107
    new-array v0, v10, [I

    fill-array-data v0, :array_696

    sput-object v0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->NumofSubItems:[I

    .line 110
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_6a0

    sput-object v0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->TelusNumofSubItems:[I

    return-void

    .line 107
    :array_696
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    .line 110
    :array_6a0
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 8

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 114
    iput v3, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->CurrentMainItem:I

    .line 115
    iput v3, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->CurrentSubItem:I

    .line 117
    const/16 v0, 0xc

    new-array v0, v0, [Landroid/widget/TextView;

    aput-object v2, v0, v3

    aput-object v2, v0, v4

    aput-object v2, v0, v5

    aput-object v2, v0, v6

    const/4 v1, 0x4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    aput-object v2, v0, v1

    const/16 v1, 0x9

    aput-object v2, v0, v1

    const/16 v1, 0xa

    aput-object v2, v0, v1

    const/16 v1, 0xb

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->TextItem:[Landroid/widget/TextView;

    .line 118
    const/16 v0, 0x9

    new-array v0, v0, [Landroid/widget/TextView;

    aput-object v2, v0, v3

    aput-object v2, v0, v4

    aput-object v2, v0, v5

    aput-object v2, v0, v6

    const/4 v1, 0x4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->TextItemValue:[Landroid/widget/TextView;

    .line 120
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->mHandler:Landroid/os/Handler;

    .line 122
    iget-object v0, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->msg:Landroid/os/Message;

    .line 124
    iput-object v2, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->OMphone:Lcom/android/internal/telephony/Phone;

    .line 125
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->mFlexOperatorCode:Ljava/lang/String;

    .line 128
    new-instance v0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode$1;

    invoke-direct {v0, p0}, Lcom/lge/hiddenmenu/modem_setting/OperatorMode$1;-><init>(Lcom/lge/hiddenmenu/modem_setting/OperatorMode;)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->mUpdateTimeTask:Ljava/lang/Runnable;

    return-void
.end method

.method private SelectCurrentPage(II)V
    .registers 9
    .parameter "CMainIndex"
    .parameter "CSubIndex"

    .prologue
    const/16 v5, 0xb

    const/4 v4, 0x2

    .line 302
    iget-object v1, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->mFlexOperatorCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4d

    iget-object v1, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->mFlexOperatorCode:Ljava/lang/String;

    const-string v2, "TLS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4d

    .line 304
    const/4 v0, 0x0

    .local v0, i:I
    :goto_16
    if-ge v0, v5, :cond_85

    .line 305
    if-ge v0, v4, :cond_2c

    .line 306
    iget-object v1, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->TextItem:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    sget-object v2, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->Telus_Oper_Info:[[[Ljava/lang/String;

    aget-object v2, v2, p1

    aget-object v2, v2, p2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    :goto_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 309
    :cond_2c
    iget-object v1, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->TextItem:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    sget-object v2, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->Telus_Oper_Info:[[[Ljava/lang/String;

    aget-object v2, v2, p1

    aget-object v2, v2, p2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    iget-object v1, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->TextItemValue:[Landroid/widget/TextView;

    sub-int v2, v0, v4

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->OMphone:Lcom/android/internal/telephony/Phone;

    sub-int v3, v0, v4

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->getEmodeInfoPage(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_29

    .line 316
    .end local v0           #i:I
    :cond_4d
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_4e
    if-ge v0, v5, :cond_85

    .line 317
    if-ge v0, v4, :cond_64

    .line 318
    iget-object v1, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->TextItem:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    sget-object v2, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->Oper_Info:[[[Ljava/lang/String;

    aget-object v2, v2, p1

    aget-object v2, v2, p2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    :goto_61
    add-int/lit8 v0, v0, 0x1

    goto :goto_4e

    .line 321
    :cond_64
    iget-object v1, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->TextItem:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    sget-object v2, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->Oper_Info:[[[Ljava/lang/String;

    aget-object v2, v2, p1

    aget-object v2, v2, p2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    iget-object v1, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->TextItemValue:[Landroid/widget/TextView;

    sub-int v2, v0, v4

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->OMphone:Lcom/android/internal/telephony/Phone;

    sub-int v3, v0, v4

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->getEmodeInfoPage(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_61

    .line 326
    :cond_85
    return-void
.end method

.method private SelectNewPage(II)V
    .registers 9
    .parameter "NMainIndex"
    .parameter "NSubIndex"

    .prologue
    const/16 v4, 0xb

    const/4 v3, 0x2

    const-string v5, " "

    .line 330
    iget-object v1, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->mFlexOperatorCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_49

    iget-object v1, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->mFlexOperatorCode:Ljava/lang/String;

    const-string v2, "TLS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_49

    .line 332
    const/4 v0, 0x0

    .local v0, i:I
    :goto_18
    if-ge v0, v4, :cond_7b

    .line 333
    if-ge v0, v3, :cond_2e

    .line 334
    iget-object v1, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->TextItem:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    sget-object v2, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->Telus_Oper_Info:[[[Ljava/lang/String;

    aget-object v2, v2, p1

    aget-object v2, v2, p2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    :goto_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 337
    :cond_2e
    iget-object v1, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->TextItem:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    sget-object v2, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->Telus_Oper_Info:[[[Ljava/lang/String;

    aget-object v2, v2, p1

    aget-object v2, v2, p2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    iget-object v1, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->TextItemValue:[Landroid/widget/TextView;

    sub-int v2, v0, v3

    aget-object v1, v1, v2

    const-string v2, " "

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2b

    .line 344
    .end local v0           #i:I
    :cond_49
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_4a
    if-ge v0, v4, :cond_7b

    .line 345
    if-ge v0, v3, :cond_60

    .line 346
    iget-object v1, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->TextItem:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    sget-object v2, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->Oper_Info:[[[Ljava/lang/String;

    aget-object v2, v2, p1

    aget-object v2, v2, p2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    :goto_5d
    add-int/lit8 v0, v0, 0x1

    goto :goto_4a

    .line 349
    :cond_60
    iget-object v1, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->TextItem:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    sget-object v2, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->Oper_Info:[[[Ljava/lang/String;

    aget-object v2, v2, p1

    aget-object v2, v2, p2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    iget-object v1, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->TextItemValue:[Landroid/widget/TextView;

    sub-int v2, v0, v3

    aget-object v1, v1, v2

    const-string v2, " "

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5d

    .line 354
    :cond_7b
    return-void
.end method

.method static synthetic access$000(Lcom/lge/hiddenmenu/modem_setting/OperatorMode;)Lcom/android/internal/telephony/Phone;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->OMphone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/hiddenmenu/modem_setting/OperatorMode;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/hiddenmenu/modem_setting/OperatorMode;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->SelectCurrentPage(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/lge/hiddenmenu/modem_setting/OperatorMode;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->SelectNewPage(II)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 14
    .parameter "icicle"

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 154
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 156
    const v4, 0x7f03000d

    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->setContentView(I)V

    .line 158
    iget-object v5, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->TextItem:[Landroid/widget/TextView;

    const v4, 0x7f070036

    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    aput-object v4, v5, v7

    .line 159
    iget-object v5, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->TextItem:[Landroid/widget/TextView;

    const v4, 0x7f070037

    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    aput-object v4, v5, v8

    .line 160
    iget-object v5, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->TextItem:[Landroid/widget/TextView;

    const v4, 0x7f070039

    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    aput-object v4, v5, v9

    .line 161
    iget-object v5, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->TextItem:[Landroid/widget/TextView;

    const v4, 0x7f07003b

    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    aput-object v4, v5, v10

    .line 162
    iget-object v5, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->TextItem:[Landroid/widget/TextView;

    const v4, 0x7f07003d

    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    aput-object v4, v5, v11

    .line 163
    iget-object v5, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->TextItem:[Landroid/widget/TextView;

    const/4 v6, 0x5

    const v4, 0x7f07003f

    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    aput-object v4, v5, v6

    .line 164
    iget-object v5, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->TextItem:[Landroid/widget/TextView;

    const/4 v6, 0x6

    const v4, 0x7f070041

    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    aput-object v4, v5, v6

    .line 165
    iget-object v5, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->TextItem:[Landroid/widget/TextView;

    const/4 v6, 0x7

    const v4, 0x7f070043

    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    aput-object v4, v5, v6

    .line 166
    iget-object v5, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->TextItem:[Landroid/widget/TextView;

    const/16 v6, 0x8

    const v4, 0x7f070045

    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    aput-object v4, v5, v6

    .line 167
    iget-object v5, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->TextItem:[Landroid/widget/TextView;

    const/16 v6, 0x9

    const v4, 0x7f070047

    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    aput-object v4, v5, v6

    .line 168
    iget-object v5, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->TextItem:[Landroid/widget/TextView;

    const/16 v6, 0xa

    const v4, 0x7f070049

    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    aput-object v4, v5, v6

    .line 170
    iget-object v5, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->TextItemValue:[Landroid/widget/TextView;

    const v4, 0x7f07003a

    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    aput-object v4, v5, v7

    .line 171
    iget-object v5, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->TextItemValue:[Landroid/widget/TextView;

    const v4, 0x7f07003c

    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    aput-object v4, v5, v8

    .line 172
    iget-object v5, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->TextItemValue:[Landroid/widget/TextView;

    const v4, 0x7f07003e

    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    aput-object v4, v5, v9

    .line 173
    iget-object v5, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->TextItemValue:[Landroid/widget/TextView;

    const v4, 0x7f070040

    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    aput-object v4, v5, v10

    .line 174
    iget-object v5, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->TextItemValue:[Landroid/widget/TextView;

    const v4, 0x7f070042

    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    aput-object v4, v5, v11

    .line 175
    iget-object v5, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->TextItemValue:[Landroid/widget/TextView;

    const/4 v6, 0x5

    const v4, 0x7f070044

    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    aput-object v4, v5, v6

    .line 176
    iget-object v5, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->TextItemValue:[Landroid/widget/TextView;

    const/4 v6, 0x6

    const v4, 0x7f070046

    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    aput-object v4, v5, v6

    .line 177
    iget-object v5, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->TextItemValue:[Landroid/widget/TextView;

    const/4 v6, 0x7

    const v4, 0x7f070048

    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    aput-object v4, v5, v6

    .line 178
    iget-object v5, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->TextItemValue:[Landroid/widget/TextView;

    const/16 v6, 0x8

    const v4, 0x7f07004a

    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    aput-object v4, v5, v6

    .line 180
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->OMphone:Lcom/android/internal/telephony/Phone;

    .line 183
    iget-object v4, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->OMphone:Lcom/android/internal/telephony/Phone;

    iget v5, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->CurrentMainItem:I

    mul-int/lit8 v5, v5, 0xa

    iget v6, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->CurrentSubItem:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->msg:Landroid/os/Message;

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/Phone;->getEngineeringModeInfo(ILandroid/os/Message;)I

    .line 185
    iget v4, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->CurrentMainItem:I

    iget v5, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->CurrentSubItem:I

    invoke-direct {p0, v4, v5}, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->SelectCurrentPage(II)V

    .line 187
    iget-object v4, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->mFlexOperatorCode:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1a2

    iget-object v4, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->mFlexOperatorCode:Ljava/lang/String;

    const-string v5, "TLS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1a2

    .line 189
    const v4, 0x7f070032

    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 190
    .local v2, btn_previous:Landroid/widget/Button;
    new-instance v4, Lcom/lge/hiddenmenu/modem_setting/OperatorMode$2;

    invoke-direct {v4, p0}, Lcom/lge/hiddenmenu/modem_setting/OperatorMode$2;-><init>(Lcom/lge/hiddenmenu/modem_setting/OperatorMode;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    const v4, 0x7f070033

    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 200
    .local v3, btn_up:Landroid/widget/Button;
    new-instance v4, Lcom/lge/hiddenmenu/modem_setting/OperatorMode$3;

    invoke-direct {v4, p0}, Lcom/lge/hiddenmenu/modem_setting/OperatorMode$3;-><init>(Lcom/lge/hiddenmenu/modem_setting/OperatorMode;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    const v4, 0x7f070034

    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 209
    .local v0, btn_down:Landroid/widget/Button;
    new-instance v4, Lcom/lge/hiddenmenu/modem_setting/OperatorMode$4;

    invoke-direct {v4, p0}, Lcom/lge/hiddenmenu/modem_setting/OperatorMode$4;-><init>(Lcom/lge/hiddenmenu/modem_setting/OperatorMode;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    const v4, 0x7f070035

    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 218
    .local v1, btn_next:Landroid/widget/Button;
    new-instance v4, Lcom/lge/hiddenmenu/modem_setting/OperatorMode$5;

    invoke-direct {v4, p0}, Lcom/lge/hiddenmenu/modem_setting/OperatorMode$5;-><init>(Lcom/lge/hiddenmenu/modem_setting/OperatorMode;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    :goto_191
    iget-object v4, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->mUpdateTimeTask:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 270
    iget-object v4, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->mUpdateTimeTask:Ljava/lang/Runnable;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 271
    return-void

    .line 229
    .end local v0           #btn_down:Landroid/widget/Button;
    .end local v1           #btn_next:Landroid/widget/Button;
    .end local v2           #btn_previous:Landroid/widget/Button;
    .end local v3           #btn_up:Landroid/widget/Button;
    :cond_1a2
    const v4, 0x7f070032

    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 230
    .restart local v2       #btn_previous:Landroid/widget/Button;
    new-instance v4, Lcom/lge/hiddenmenu/modem_setting/OperatorMode$6;

    invoke-direct {v4, p0}, Lcom/lge/hiddenmenu/modem_setting/OperatorMode$6;-><init>(Lcom/lge/hiddenmenu/modem_setting/OperatorMode;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    const v4, 0x7f070033

    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 240
    .restart local v3       #btn_up:Landroid/widget/Button;
    new-instance v4, Lcom/lge/hiddenmenu/modem_setting/OperatorMode$7;

    invoke-direct {v4, p0}, Lcom/lge/hiddenmenu/modem_setting/OperatorMode$7;-><init>(Lcom/lge/hiddenmenu/modem_setting/OperatorMode;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    const v4, 0x7f070034

    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 249
    .restart local v0       #btn_down:Landroid/widget/Button;
    new-instance v4, Lcom/lge/hiddenmenu/modem_setting/OperatorMode$8;

    invoke-direct {v4, p0}, Lcom/lge/hiddenmenu/modem_setting/OperatorMode$8;-><init>(Lcom/lge/hiddenmenu/modem_setting/OperatorMode;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    const v4, 0x7f070035

    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 258
    .restart local v1       #btn_next:Landroid/widget/Button;
    new-instance v4, Lcom/lge/hiddenmenu/modem_setting/OperatorMode$9;

    invoke-direct {v4, p0}, Lcom/lge/hiddenmenu/modem_setting/OperatorMode$9;-><init>(Lcom/lge/hiddenmenu/modem_setting/OperatorMode;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_191
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 276
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 277
    iget-object v0, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->mUpdateTimeTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 278
    return-void
.end method

.method protected onRestart()V
    .registers 1

    .prologue
    .line 290
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 291
    return-void
.end method

.method protected onResume()V
    .registers 5

    .prologue
    .line 283
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 284
    iget-object v0, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->mUpdateTimeTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 285
    return-void
.end method

.method public onStop()V
    .registers 3

    .prologue
    .line 296
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 297
    iget-object v0, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->mUpdateTimeTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 298
    return-void
.end method
