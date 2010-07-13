.class Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$ReceiverStatusData;
.super Ljava/lang/Object;
.source "FmRadioControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReceiverStatusData"
.end annotation


# instance fields
.field private mFreq:I

.field private mIsMute:Z

.field private mRadioIsOn:Z

.field private mRdsProgramService:Ljava/lang/String;

.field private mRdsProgramType:I

.field private mRdsProgramTypeName:Ljava/lang/String;

.field private mRdsRadioText:Ljava/lang/String;

.field private mRssi:I

.field final synthetic this$0:Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;


# direct methods
.method private constructor <init>(Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 12
    .parameter
    .parameter "freq"
    .parameter "rssi"
    .parameter "radioIsOn"
    .parameter "rdsProgramType"
    .parameter "rdsProgramService"
    .parameter "rdsRadioText"
    .parameter "rdsProgramTypeName"
    .parameter "isMute"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 2100
    iput-object p1, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$ReceiverStatusData;->this$0:Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2089
    iput v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$ReceiverStatusData;->mFreq:I

    .line 2090
    iput v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$ReceiverStatusData;->mRssi:I

    .line 2091
    iput-boolean v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$ReceiverStatusData;->mRadioIsOn:Z

    .line 2092
    iput v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$ReceiverStatusData;->mRdsProgramType:I

    .line 2093
    iput-object v1, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$ReceiverStatusData;->mRdsProgramService:Ljava/lang/String;

    .line 2094
    iput-object v1, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$ReceiverStatusData;->mRdsRadioText:Ljava/lang/String;

    .line 2095
    iput-object v1, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$ReceiverStatusData;->mRdsProgramTypeName:Ljava/lang/String;

    .line 2096
    iput-boolean v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$ReceiverStatusData;->mIsMute:Z

    .line 2101
    iput p2, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$ReceiverStatusData;->mFreq:I

    .line 2102
    iput p3, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$ReceiverStatusData;->mRssi:I

    .line 2103
    iput-boolean p4, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$ReceiverStatusData;->mRadioIsOn:Z

    .line 2104
    iput p5, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$ReceiverStatusData;->mRdsProgramType:I

    .line 2105
    iput-object p6, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$ReceiverStatusData;->mRdsProgramService:Ljava/lang/String;

    .line 2106
    iput-object p7, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$ReceiverStatusData;->mRdsRadioText:Ljava/lang/String;

    .line 2107
    iput-object p8, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$ReceiverStatusData;->mRdsProgramTypeName:Ljava/lang/String;

    .line 2108
    iput-boolean p9, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$ReceiverStatusData;->mIsMute:Z

    .line 2109
    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$1;)V
    .registers 11
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"
    .parameter "x9"

    .prologue
    .line 2087
    invoke-direct/range {p0 .. p9}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$ReceiverStatusData;-><init>(Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public GetFreq()I
    .registers 2

    .prologue
    .line 2110
    iget v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$ReceiverStatusData;->mFreq:I

    return v0
.end method

.method public GetIsMute()Z
    .registers 2

    .prologue
    .line 2117
    iget-boolean v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$ReceiverStatusData;->mIsMute:Z

    return v0
.end method

.method public GetRadioIsOn()Z
    .registers 2

    .prologue
    .line 2112
    iget-boolean v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$ReceiverStatusData;->mRadioIsOn:Z

    return v0
.end method

.method public GetRdsProgramService()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2114
    iget-object v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$ReceiverStatusData;->mRdsProgramService:Ljava/lang/String;

    return-object v0
.end method

.method public GetRdsProgramType()I
    .registers 2

    .prologue
    .line 2113
    iget v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$ReceiverStatusData;->mRdsProgramType:I

    return v0
.end method

.method public GetRdsProgramTypeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2116
    iget-object v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$ReceiverStatusData;->mRdsProgramTypeName:Ljava/lang/String;

    return-object v0
.end method

.method public GetRdsRadioText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2115
    iget-object v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$ReceiverStatusData;->mRdsRadioText:Ljava/lang/String;

    return-object v0
.end method

.method public GetRssi()I
    .registers 2

    .prologue
    .line 2111
    iget v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$ReceiverStatusData;->mRssi:I

    return v0
.end method
