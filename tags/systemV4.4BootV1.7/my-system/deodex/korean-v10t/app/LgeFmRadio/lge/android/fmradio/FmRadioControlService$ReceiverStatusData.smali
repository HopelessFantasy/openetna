.class Llge/android/fmradio/FmRadioControlService$ReceiverStatusData;
.super Ljava/lang/Object;
.source "FmRadioControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llge/android/fmradio/FmRadioControlService;
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

.field final synthetic this$0:Llge/android/fmradio/FmRadioControlService;


# direct methods
.method private constructor <init>(Llge/android/fmradio/FmRadioControlService;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
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

    .line 2942
    iput-object p1, p0, Llge/android/fmradio/FmRadioControlService$ReceiverStatusData;->this$0:Llge/android/fmradio/FmRadioControlService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2931
    iput v0, p0, Llge/android/fmradio/FmRadioControlService$ReceiverStatusData;->mFreq:I

    .line 2932
    iput v0, p0, Llge/android/fmradio/FmRadioControlService$ReceiverStatusData;->mRssi:I

    .line 2933
    iput-boolean v0, p0, Llge/android/fmradio/FmRadioControlService$ReceiverStatusData;->mRadioIsOn:Z

    .line 2934
    iput v0, p0, Llge/android/fmradio/FmRadioControlService$ReceiverStatusData;->mRdsProgramType:I

    .line 2935
    iput-object v1, p0, Llge/android/fmradio/FmRadioControlService$ReceiverStatusData;->mRdsProgramService:Ljava/lang/String;

    .line 2936
    iput-object v1, p0, Llge/android/fmradio/FmRadioControlService$ReceiverStatusData;->mRdsRadioText:Ljava/lang/String;

    .line 2937
    iput-object v1, p0, Llge/android/fmradio/FmRadioControlService$ReceiverStatusData;->mRdsProgramTypeName:Ljava/lang/String;

    .line 2938
    iput-boolean v0, p0, Llge/android/fmradio/FmRadioControlService$ReceiverStatusData;->mIsMute:Z

    .line 2943
    iput p2, p0, Llge/android/fmradio/FmRadioControlService$ReceiverStatusData;->mFreq:I

    .line 2944
    iput p3, p0, Llge/android/fmradio/FmRadioControlService$ReceiverStatusData;->mRssi:I

    .line 2945
    iput-boolean p4, p0, Llge/android/fmradio/FmRadioControlService$ReceiverStatusData;->mRadioIsOn:Z

    .line 2946
    iput p5, p0, Llge/android/fmradio/FmRadioControlService$ReceiverStatusData;->mRdsProgramType:I

    .line 2947
    iput-object p6, p0, Llge/android/fmradio/FmRadioControlService$ReceiverStatusData;->mRdsProgramService:Ljava/lang/String;

    .line 2948
    iput-object p7, p0, Llge/android/fmradio/FmRadioControlService$ReceiverStatusData;->mRdsRadioText:Ljava/lang/String;

    .line 2949
    iput-object p8, p0, Llge/android/fmradio/FmRadioControlService$ReceiverStatusData;->mRdsProgramTypeName:Ljava/lang/String;

    .line 2950
    iput-boolean p9, p0, Llge/android/fmradio/FmRadioControlService$ReceiverStatusData;->mIsMute:Z

    .line 2951
    return-void
.end method

.method synthetic constructor <init>(Llge/android/fmradio/FmRadioControlService;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLlge/android/fmradio/FmRadioControlService$1;)V
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
    .line 2929
    invoke-direct/range {p0 .. p9}, Llge/android/fmradio/FmRadioControlService$ReceiverStatusData;-><init>(Llge/android/fmradio/FmRadioControlService;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public GetFreq()I
    .registers 2

    .prologue
    .line 2952
    iget v0, p0, Llge/android/fmradio/FmRadioControlService$ReceiverStatusData;->mFreq:I

    return v0
.end method

.method public GetIsMute()Z
    .registers 2

    .prologue
    .line 2959
    iget-boolean v0, p0, Llge/android/fmradio/FmRadioControlService$ReceiverStatusData;->mIsMute:Z

    return v0
.end method

.method public GetRadioIsOn()Z
    .registers 2

    .prologue
    .line 2954
    iget-boolean v0, p0, Llge/android/fmradio/FmRadioControlService$ReceiverStatusData;->mRadioIsOn:Z

    return v0
.end method

.method public GetRdsProgramService()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2956
    iget-object v0, p0, Llge/android/fmradio/FmRadioControlService$ReceiverStatusData;->mRdsProgramService:Ljava/lang/String;

    return-object v0
.end method

.method public GetRdsProgramType()I
    .registers 2

    .prologue
    .line 2955
    iget v0, p0, Llge/android/fmradio/FmRadioControlService$ReceiverStatusData;->mRdsProgramType:I

    return v0
.end method

.method public GetRdsProgramTypeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2958
    iget-object v0, p0, Llge/android/fmradio/FmRadioControlService$ReceiverStatusData;->mRdsProgramTypeName:Ljava/lang/String;

    return-object v0
.end method

.method public GetRdsRadioText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2957
    iget-object v0, p0, Llge/android/fmradio/FmRadioControlService$ReceiverStatusData;->mRdsRadioText:Ljava/lang/String;

    return-object v0
.end method

.method public GetRssi()I
    .registers 2

    .prologue
    .line 2953
    iget v0, p0, Llge/android/fmradio/FmRadioControlService$ReceiverStatusData;->mRssi:I

    return v0
.end method
