.class public Lcom/lge/hiddenmenu/modem_setting/EngMode;
.super Landroid/app/Activity;
.source "EngMode.java"


# static fields
.field private static final EVENT_GET_ENGINEERING_MODE_DONE:I = 0x64

.field static final Eng_Info:[[[Ljava/lang/String; = null

.field static final NumofMainItems:I = 0x4

.field static final NumofSubItems:[I = null

.field static final NumofText:I = 0xb

.field private static final TAG:Ljava/lang/String; = "HiddenMenu.EngineeringMode"

.field public static final packageName:Ljava/lang/String; = "com.lge.hiddenmenu"


# instance fields
.field CurrentMainItem:I

.field CurrentSubItem:I

.field private EMphone:Lcom/android/internal/telephony/Phone;

.field private TextItem:[Landroid/widget/TextView;

.field private TextItemValue:[Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mUpdateTimeTask:Ljava/lang/Runnable;

.field msg:Landroid/os/Message;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v6, ""

    .line 49
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

    const/4 v3, 0x3

    const-string v4, "RL_Timeout_v : "

    aput-object v4, v2, v3

    const-string v3, "RXLEV : "

    aput-object v3, v2, v10

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

    const-string v3, "   AR  RXL  C1  C2"

    aput-object v3, v2, v9

    const/4 v3, 0x3

    const-string v4, "N1 : "

    aput-object v4, v2, v3

    const-string v3, "N2 : "

    aput-object v3, v2, v10

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

    const-string v3, "   AR  RXL  C1  C31  C32"

    aput-object v3, v2, v9

    const/4 v3, 0x3

    const-string v4, "N1 : "

    aput-object v4, v2, v3

    const-string v3, "N2 : "

    aput-object v3, v2, v10

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

    const/4 v2, 0x3

    const/16 v3, 0xb

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "ITEM_2G: 3"

    aput-object v4, v3, v7

    const-string v4, "[ RX/TX Power Information ]"

    aput-object v4, v3, v8

    const-string v4, "RXLevel Full : "

    aput-object v4, v3, v9

    const/4 v4, 0x3

    const-string v5, "RXLevel Sub : "

    aput-object v5, v3, v4

    const-string v4, "RXQual Full : "

    aput-object v4, v3, v10

    const/4 v4, 0x5

    const-string v5, "RXQual Sub : "

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "TX Power Level(index/dBm) : "

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

    const/16 v2, 0xb

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "ITEM_2G: 4"

    aput-object v3, v2, v7

    const-string v3, "[ Current State Information ]"

    aput-object v3, v2, v8

    const-string v3, "AMR Ch : "

    aput-object v3, v2, v9

    const/4 v3, 0x3

    const-string v4, "Channel Mode : "

    aput-object v4, v2, v3

    const-string v3, "Coding Schem : "

    aput-object v3, v2, v10

    const/4 v3, 0x5

    const-string v4, "BSIC (NCC/BCC) : "

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Time Slot : "

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

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-array v1, v1, [[Ljava/lang/String;

    const/16 v2, 0xb

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "ITEM_3G: 0"

    aput-object v3, v2, v7

    const-string v3, "[ RRC State & Serving Cell ]"

    aput-object v3, v2, v8

    const-string v3, "RRC State : "

    aput-object v3, v2, v9

    const/4 v3, 0x3

    const-string v4, "S_FREQ : "

    aput-object v4, v2, v3

    const-string v3, "S_PSC : "

    aput-object v3, v2, v10

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

    const/4 v3, 0x3

    const-string v4, ""

    aput-object v6, v2, v3

    const-string v3, ""

    aput-object v6, v2, v10

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

    const/4 v3, 0x3

    const-string v4, ""

    aput-object v6, v2, v3

    const-string v3, ""

    aput-object v6, v2, v10

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

    const/4 v2, 0x3

    const/16 v3, 0xb

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "ITEM_3G: 3"

    aput-object v4, v3, v7

    const-string v4, "[ Inter RAT Information ]"

    aput-object v4, v3, v8

    const-string v4, "ARFCN  BSIC  RSSI"

    aput-object v4, v3, v9

    const/4 v4, 0x3

    const-string v5, ""

    aput-object v6, v3, v4

    const-string v4, ""

    aput-object v6, v3, v10

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

    const/16 v2, 0xb

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "ITEM_3G: 4"

    aput-object v3, v2, v7

    const-string v3, "[ Current State Information ]"

    aput-object v3, v2, v8

    const-string v3, "RRC task : "

    aput-object v3, v2, v9

    const/4 v3, 0x3

    const-string v4, "RRC Sub state : "

    aput-object v4, v2, v3

    const-string v3, "Cell Selection state : "

    aput-object v3, v2, v10

    const/4 v3, 0x5

    const-string v4, "RAB Info (UL/DL) : "

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "L1 State : "

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

    const/4 v3, 0x3

    const-string v4, "RAC : "

    aput-object v4, v2, v3

    const-string v3, "LAC : "

    aput-object v3, v2, v10

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

    const/4 v3, 0x3

    const-string v4, "MM Reject : "

    aput-object v4, v2, v3

    const-string v3, "GMM State : "

    aput-object v3, v2, v10

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

    const/4 v3, 0x3

    const-string v4, "UEA Algorithm : "

    aput-object v4, v2, v3

    const-string v3, "GEA Algorithm : "

    aput-object v3, v2, v10

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

    const/4 v2, 0x3

    const/16 v3, 0xb

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "ITEM_NM: 3"

    aput-object v4, v3, v7

    const-string v4, "[ Network Information ]"

    aput-object v4, v3, v8

    const-string v4, "CS_UpdState : "

    aput-object v4, v3, v9

    const/4 v4, 0x3

    const-string v5, "PS_UpdState : "

    aput-object v5, v3, v4

    const-string v4, "Search Mode : "

    aput-object v4, v3, v10

    const/4 v4, 0x5

    const-string v5, "Active RAT : "

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "HPLMN Timer : "

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "HW EnableBand : "

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "SW EnableBand : "

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const-string v5, ""

    aput-object v6, v3, v4

    const/16 v4, 0xa

    const-string v5, ""

    aput-object v6, v3, v4

    aput-object v3, v1, v2

    const/16 v2, 0xb

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "ITEM_NM: 4"

    aput-object v3, v2, v7

    const-string v3, "[ PS Information ]"

    aput-object v3, v2, v8

    const-string v3, "Cell ID : "

    aput-object v3, v2, v9

    const/4 v3, 0x3

    const-string v4, "Attach Type : "

    aput-object v4, v2, v3

    const-string v3, "Net Mode : "

    aput-object v3, v2, v10

    const/4 v3, 0x5

    const-string v4, "NC Mode : "

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Num of PDP Context : "

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

    const/4 v2, 0x5

    const/16 v3, 0xb

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "ITEM_NM: 5"

    aput-object v4, v3, v7

    const-string v4, "[ PDP Information ]"

    aput-object v4, v3, v8

    const-string v4, "PDP Index : "

    aput-object v4, v3, v9

    const/4 v4, 0x3

    const-string v5, "PDP State : "

    aput-object v5, v3, v4

    const-string v4, "IP : "

    aput-object v4, v3, v10

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

    const/4 v1, 0x3

    new-array v2, v9, [[Ljava/lang/String;

    const/16 v3, 0xb

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "ITEM_HSPA: 0"

    aput-object v4, v3, v7

    const-string v4, "[ HSDPA Information ]"

    aput-object v4, v3, v8

    const-string v4, "HSDPA State : "

    aput-object v4, v3, v9

    const/4 v4, 0x3

    const-string v5, "HSDPA Category : "

    aput-object v5, v3, v4

    const-string v4, "HS-PSC : "

    aput-object v4, v3, v10

    const/4 v4, 0x5

    const-string v5, "CQI : "

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "HS-DSCH : "

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "HARQ Retrans : "

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "HS-DSCH Modulation : "

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const-string v5, "HS-DSCH Data Rate : "

    aput-object v5, v3, v4

    const/16 v4, 0xa

    const-string v5, "Non HSDPA PSCs : "

    aput-object v5, v3, v4

    aput-object v3, v2, v7

    const/16 v3, 0xb

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "ITEM_HSPA: 1"

    aput-object v4, v3, v7

    const-string v4, "[ HSUPA Information ]"

    aput-object v4, v3, v8

    const-string v4, "3G Cell HSPA Capability : "

    aput-object v4, v3, v9

    const/4 v4, 0x3

    const-string v5, "HSUPA State : "

    aput-object v5, v3, v4

    const-string v4, "HSUPA Category : "

    aput-object v4, v3, v10

    const/4 v4, 0x5

    const-string v5, "EUL Reset Indication : "

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "TTI : "

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "E-DCH Data Rate : "

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "DPCCH happy_bit_delay_in_ms : "

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const-string v5, "DPDCH E-TFCI TB size : "

    aput-object v5, v3, v4

    const/16 v4, 0xa

    const-string v5, "Number of E-DPDCH (SF) : "

    aput-object v5, v3, v4

    aput-object v3, v2, v8

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/hiddenmenu/modem_setting/EngMode;->Eng_Info:[[[Ljava/lang/String;

    .line 83
    new-array v0, v10, [I

    fill-array-data v0, :array_462

    sput-object v0, Lcom/lge/hiddenmenu/modem_setting/EngMode;->NumofSubItems:[I

    return-void

    :array_462
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
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

    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 87
    iput v3, p0, Lcom/lge/hiddenmenu/modem_setting/EngMode;->CurrentMainItem:I

    .line 88
    iput v3, p0, Lcom/lge/hiddenmenu/modem_setting/EngMode;->CurrentSubItem:I

    .line 90
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

    iput-object v0, p0, Lcom/lge/hiddenmenu/modem_setting/EngMode;->TextItem:[Landroid/widget/TextView;

    .line 91
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

    iput-object v0, p0, Lcom/lge/hiddenmenu/modem_setting/EngMode;->TextItemValue:[Landroid/widget/TextView;

    .line 93
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lge/hiddenmenu/modem_setting/EngMode;->mHandler:Landroid/os/Handler;

    .line 95
    iget-object v0, p0, Lcom/lge/hiddenmenu/modem_setting/EngMode;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hiddenmenu/modem_setting/EngMode;->msg:Landroid/os/Message;

    .line 97
    iput-object v2, p0, Lcom/lge/hiddenmenu/modem_setting/EngMode;->EMphone:Lcom/android/internal/telephony/Phone;

    .line 100
    new-instance v0, Lcom/lge/hiddenmenu/modem_setting/EngMode$1;

    invoke-direct {v0, p0}, Lcom/lge/hiddenmenu/modem_setting/EngMode$1;-><init>(Lcom/lge/hiddenmenu/modem_setting/EngMode;)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/modem_setting/EngMode;->mUpdateTimeTask:Ljava/lang/Runnable;

    return-void
.end method

.method private SelectCurrentPage(II)V
    .registers 8
    .parameter "CMainIndex"
    .parameter "CSubIndex"

    .prologue
    const/4 v4, 0x2

    .line 224
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    const/16 v1, 0xb

    if-ge v0, v1, :cond_3b

    .line 225
    if-ge v0, v4, :cond_1a

    .line 226
    iget-object v1, p0, Lcom/lge/hiddenmenu/modem_setting/EngMode;->TextItem:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    sget-object v2, Lcom/lge/hiddenmenu/modem_setting/EngMode;->Eng_Info:[[[Ljava/lang/String;

    aget-object v2, v2, p1

    aget-object v2, v2, p2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    :goto_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 229
    :cond_1a
    iget-object v1, p0, Lcom/lge/hiddenmenu/modem_setting/EngMode;->TextItem:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    sget-object v2, Lcom/lge/hiddenmenu/modem_setting/EngMode;->Eng_Info:[[[Ljava/lang/String;

    aget-object v2, v2, p1

    aget-object v2, v2, p2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v1, p0, Lcom/lge/hiddenmenu/modem_setting/EngMode;->TextItemValue:[Landroid/widget/TextView;

    sub-int v2, v0, v4

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/lge/hiddenmenu/modem_setting/EngMode;->EMphone:Lcom/android/internal/telephony/Phone;

    sub-int v3, v0, v4

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->getEmodeInfoPage(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_17

    .line 233
    :cond_3b
    return-void
.end method

.method private SelectNewPage(II)V
    .registers 7
    .parameter "NMainIndex"
    .parameter "NSubIndex"

    .prologue
    const/4 v3, 0x2

    .line 237
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    const/16 v1, 0xb

    if-ge v0, v1, :cond_35

    .line 238
    if-ge v0, v3, :cond_1a

    .line 239
    iget-object v1, p0, Lcom/lge/hiddenmenu/modem_setting/EngMode;->TextItem:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    sget-object v2, Lcom/lge/hiddenmenu/modem_setting/EngMode;->Eng_Info:[[[Ljava/lang/String;

    aget-object v2, v2, p1

    aget-object v2, v2, p2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    :goto_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 242
    :cond_1a
    iget-object v1, p0, Lcom/lge/hiddenmenu/modem_setting/EngMode;->TextItem:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    sget-object v2, Lcom/lge/hiddenmenu/modem_setting/EngMode;->Eng_Info:[[[Ljava/lang/String;

    aget-object v2, v2, p1

    aget-object v2, v2, p2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    iget-object v1, p0, Lcom/lge/hiddenmenu/modem_setting/EngMode;->TextItemValue:[Landroid/widget/TextView;

    sub-int v2, v0, v3

    aget-object v1, v1, v2

    const-string v2, " "

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_17

    .line 246
    :cond_35
    return-void
.end method

.method static synthetic access$000(Lcom/lge/hiddenmenu/modem_setting/EngMode;)Lcom/android/internal/telephony/Phone;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lge/hiddenmenu/modem_setting/EngMode;->EMphone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/hiddenmenu/modem_setting/EngMode;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lge/hiddenmenu/modem_setting/EngMode;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/hiddenmenu/modem_setting/EngMode;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/lge/hiddenmenu/modem_setting/EngMode;->SelectCurrentPage(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/lge/hiddenmenu/modem_setting/EngMode;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/lge/hiddenmenu/modem_setting/EngMode;->SelectNewPage(II)V

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

    .line 119
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 121
    const v4, 0x7f03000d

    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/modem_setting/EngMode;->setContentView(I)V

    .line 123
    iget-object v5, p0, Lcom/lge/hiddenmenu/modem_setting/EngMode;->TextItem:[Landroid/widget/TextView;

    const v4, 0x7f070036

    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/modem_setting/EngMode;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    aput-object v4, v5, v7

    .line 124
    iget-object v5, p0, Lcom/lge/hiddenmenu/modem_setting/EngMode;->TextItem:[Landroid/widget/TextView;

    const v4, 0x7f070037

    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/modem_setting/EngMode;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    aput-object v4, v5, v8

    .line 125
    iget-object v5, p0, Lcom/lge/hiddenmenu/modem_setting/EngMode;->TextItem:[Landroid/widget/TextView;

    const v4, 0x7f070039

    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/modem_setting/EngMode;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    aput-object v4, v5, v9

    .line 126
    iget-object v5, p0, Lcom/lge/hiddenmenu/modem_setting/EngMode;->TextItem:[Landroid/widget/TextView;

    const v4, 0x7f07003b

    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/modem_setting/EngMode;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    aput-object v4, v5, v10

    .line 127
    iget-object v5, p0, Lcom/lge/hiddenmenu/modem_setting/EngMode;->TextItem:[Landroid/widget/TextView;

    const v4, 0x7f07003d

    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/modem_setting/EngMode;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    aput-object v4, v5, v11

    .line 128
    iget-object v5, p0, Lcom/lge/hiddenmenu/modem_setting/EngMode;->TextItem:[Landroid/widget/TextView;

    const/4 v6, 0x5

    const v4, 0x7f07003f

    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/modem_setting/EngMode;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    aput-object v4, v5, v6

    .line 129
    iget-object v5, p0, Lcom/lge/hiddenmenu/modem_setting/EngMode;->TextItem:[Landroid/widget/TextView;

    const/4 v6, 0x6

    const v4, 0x7f070041

    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/modem_setting/EngMode;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    aput-object v4, v5, v6

    .line 130
    iget-object v5, p0, Lcom/lge/hiddenmenu/modem_setting/EngMode;->TextItem:[Landroid/widget/TextView;

    const/4 v6, 0x7

    const v4, 0x7f070043

    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/modem_setting/EngMode;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    aput-object v4, v5, v6

    .line 131
    iget-object v5, p0, Lcom/lge/hiddenmenu/modem_setting/EngMode;->TextItem:[Landroid/widget/TextView;

    const/16 v6, 0x8

    const v4, 0x7f070045

    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/modem_setting/EngMode;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    aput-object v4, v5, v6

    .line 132
    iget-object v5, p0, Lcom/lge/hiddenmenu/modem_setting/EngMode;->TextItem:[Landroid/widget/TextView;

    const/16 v6, 0x9

    const v4, 0x7f070047

    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/modem_setting/EngMode;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    aput-object v4, v5, v6

    .line 133
    iget-object v5, p0, Lcom/lge/hiddenmenu/modem_setting/EngMode;->TextItem:[Landroid/widget/TextView;

    const/16 v6, 0xa

    const v4, 0x7f070049

    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/modem_setting/EngMode;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    aput-object v4, v5, v6

    .line 135
    iget-object v5, p0, Lcom/lge/hiddenmenu/modem_setting/EngMode;->TextItemValue:[Landroid/widget/TextView;

    const v4, 0x7f07003a

    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/modem_setting/EngMode;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    aput-object v4, v5, v7

    .line 136
    iget-object v5, p0, Lcom/lge/hiddenmenu/modem_setting/EngMode;->TextItemValue:[Landroid/widget/TextView;

    const v4, 0x7f07003c

    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/modem_setting/EngMode;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    aput-object v4, v5, v8

    .line 137
    iget-object v5, p0, Lcom/lge/hiddenmenu/modem_setting/EngMode;->TextItemValue:[Landroid/widget/TextView;

    const v4, 0x7f07003e

    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/modem_setting/EngMode;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    aput-object v4, v5, v9

    .line 138
    iget-object v5, p0, Lcom/lge/hiddenmenu/modem_setting/EngMode;->TextItemValue:[Landroid/widget/TextView;

    const v4, 0x7f070040

    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/modem_setting/EngMode;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    aput-object v4, v5, v10

    .line 139
    iget-object v5, p0, Lcom/lge/hiddenmenu/modem_setting/EngMode;->TextItemValue:[Landroid/widget/TextView;

    const v4, 0x7f070042

    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/modem_setting/EngMode;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    aput-object v4, v5, v11

    .line 140
    iget-object v5, p0, Lcom/lge/hiddenmenu/modem_setting/EngMode;->TextItemValue:[Landroid/widget/TextView;

    const/4 v6, 0x5

    const v4, 0x7f070044

    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/modem_setting/EngMode;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    aput-object v4, v5, v6

    .line 141
    iget-object v5, p0, Lcom/lge/hiddenmenu/modem_setting/EngMode;->TextItemValue:[Landroid/widget/TextView;

    const/4 v6, 0x6

    const v4, 0x7f070046

    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/modem_setting/EngMode;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    aput-object v4, v5, v6

    .line 142
    iget-object v5, p0, Lcom/lge/hiddenmenu/modem_setting/EngMode;->TextItemValue:[Landroid/widget/TextView;

    const/4 v6, 0x7

    const v4, 0x7f070048

    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/modem_setting/EngMode;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    aput-object v4, v5, v6

    .line 143
    iget-object v5, p0, Lcom/lge/hiddenmenu/modem_setting/EngMode;->TextItemValue:[Landroid/widget/TextView;

    const/16 v6, 0x8

    const v4, 0x7f07004a

    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/modem_setting/EngMode;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    aput-object v4, v5, v6

    .line 145
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/hiddenmenu/modem_setting/EngMode;->EMphone:Lcom/android/internal/telephony/Phone;

    .line 148
    iget-object v4, p0, Lcom/lge/hiddenmenu/modem_setting/EngMode;->EMphone:Lcom/android/internal/telephony/Phone;

    iget v5, p0, Lcom/lge/hiddenmenu/modem_setting/EngMode;->CurrentMainItem:I

    mul-int/lit8 v5, v5, 0xa

    iget v6, p0, Lcom/lge/hiddenmenu/modem_setting/EngMode;->CurrentSubItem:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/lge/hiddenmenu/modem_setting/EngMode;->msg:Landroid/os/Message;

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/Phone;->getEngineeringModeInfo(ILandroid/os/Message;)I

    .line 150
    iget v4, p0, Lcom/lge/hiddenmenu/modem_setting/EngMode;->CurrentMainItem:I

    iget v5, p0, Lcom/lge/hiddenmenu/modem_setting/EngMode;->CurrentSubItem:I

    invoke-direct {p0, v4, v5}, Lcom/lge/hiddenmenu/modem_setting/EngMode;->SelectCurrentPage(II)V

    .line 152
    const v4, 0x7f070032

    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/modem_setting/EngMode;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 153
    .local v2, btn_previous:Landroid/widget/Button;
    new-instance v4, Lcom/lge/hiddenmenu/modem_setting/EngMode$2;

    invoke-direct {v4, p0}, Lcom/lge/hiddenmenu/modem_setting/EngMode$2;-><init>(Lcom/lge/hiddenmenu/modem_setting/EngMode;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    const v4, 0x7f070033

    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/modem_setting/EngMode;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 163
    .local v3, btn_up:Landroid/widget/Button;
    new-instance v4, Lcom/lge/hiddenmenu/modem_setting/EngMode$3;

    invoke-direct {v4, p0}, Lcom/lge/hiddenmenu/modem_setting/EngMode$3;-><init>(Lcom/lge/hiddenmenu/modem_setting/EngMode;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    const v4, 0x7f070034

    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/modem_setting/EngMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 172
    .local v0, btn_down:Landroid/widget/Button;
    new-instance v4, Lcom/lge/hiddenmenu/modem_setting/EngMode$4;

    invoke-direct {v4, p0}, Lcom/lge/hiddenmenu/modem_setting/EngMode$4;-><init>(Lcom/lge/hiddenmenu/modem_setting/EngMode;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    const v4, 0x7f070035

    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/modem_setting/EngMode;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 181
    .local v1, btn_next:Landroid/widget/Button;
    new-instance v4, Lcom/lge/hiddenmenu/modem_setting/EngMode$5;

    invoke-direct {v4, p0}, Lcom/lge/hiddenmenu/modem_setting/EngMode$5;-><init>(Lcom/lge/hiddenmenu/modem_setting/EngMode;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object v4, p0, Lcom/lge/hiddenmenu/modem_setting/EngMode;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/lge/hiddenmenu/modem_setting/EngMode;->mUpdateTimeTask:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 192
    iget-object v4, p0, Lcom/lge/hiddenmenu/modem_setting/EngMode;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/lge/hiddenmenu/modem_setting/EngMode;->mUpdateTimeTask:Ljava/lang/Runnable;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 193
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 198
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 199
    iget-object v0, p0, Lcom/lge/hiddenmenu/modem_setting/EngMode;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lge/hiddenmenu/modem_setting/EngMode;->mUpdateTimeTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 200
    return-void
.end method

.method protected onRestart()V
    .registers 1

    .prologue
    .line 212
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 213
    return-void
.end method

.method protected onResume()V
    .registers 5

    .prologue
    .line 205
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 206
    iget-object v0, p0, Lcom/lge/hiddenmenu/modem_setting/EngMode;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lge/hiddenmenu/modem_setting/EngMode;->mUpdateTimeTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 207
    return-void
.end method

.method public onStop()V
    .registers 3

    .prologue
    .line 218
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 219
    iget-object v0, p0, Lcom/lge/hiddenmenu/modem_setting/EngMode;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lge/hiddenmenu/modem_setting/EngMode;->mUpdateTimeTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 220
    return-void
.end method
