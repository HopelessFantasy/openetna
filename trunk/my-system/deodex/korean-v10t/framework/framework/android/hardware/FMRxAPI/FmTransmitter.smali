.class public Landroid/hardware/FMRxAPI/FmTransmitter;
.super Landroid/hardware/FMRxAPI/FmTransceiver;
.source "FmTransmitter.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/hardware/FMRxAPI/FmTransceiver;-><init>()V

    .line 40
    new-instance v0, Landroid/hardware/FMRxAPI/FmRxControls;

    invoke-direct {v0}, Landroid/hardware/FMRxAPI/FmRxControls;-><init>()V

    iput-object v0, p0, Landroid/hardware/FMRxAPI/FmTransmitter;->mControl:Landroid/hardware/FMRxAPI/FmRxControls;

    .line 41
    new-instance v0, Landroid/hardware/FMRxAPI/FmRxRdsData;

    invoke-direct {v0}, Landroid/hardware/FMRxAPI/FmRxRdsData;-><init>()V

    iput-object v0, p0, Landroid/hardware/FMRxAPI/FmTransmitter;->mRdsData:Landroid/hardware/FMRxAPI/FmRxRdsData;

    .line 42
    new-instance v0, Landroid/hardware/FMRxAPI/FmRxEventListner;

    invoke-direct {v0}, Landroid/hardware/FMRxAPI/FmRxEventListner;-><init>()V

    iput-object v0, p0, Landroid/hardware/FMRxAPI/FmTransmitter;->mRxEvents:Landroid/hardware/FMRxAPI/FmRxEventListner;

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/hardware/FMRxAPI/FmRxEvCallbacksAdaptor;)V
    .registers 4
    .parameter "path"
    .parameter "adaptor"

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/hardware/FMRxAPI/FmTransceiver;-><init>()V

    .line 50
    invoke-virtual {p0, p1}, Landroid/hardware/FMRxAPI/FmTransmitter;->FmApi_Acquire(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0, p2}, Landroid/hardware/FMRxAPI/FmTransmitter;->FmApi_RegisterClient(Landroid/hardware/FMRxAPI/FmRxEvCallbacks;)V

    .line 52
    new-instance v0, Landroid/hardware/FMRxAPI/FmRxControls;

    invoke-direct {v0}, Landroid/hardware/FMRxAPI/FmRxControls;-><init>()V

    iput-object v0, p0, Landroid/hardware/FMRxAPI/FmTransmitter;->mControl:Landroid/hardware/FMRxAPI/FmRxControls;

    .line 53
    new-instance v0, Landroid/hardware/FMRxAPI/FmRxRdsData;

    invoke-direct {v0}, Landroid/hardware/FMRxAPI/FmRxRdsData;-><init>()V

    iput-object v0, p0, Landroid/hardware/FMRxAPI/FmTransmitter;->mRdsData:Landroid/hardware/FMRxAPI/FmRxRdsData;

    .line 54
    new-instance v0, Landroid/hardware/FMRxAPI/FmRxEventListner;

    invoke-direct {v0}, Landroid/hardware/FMRxAPI/FmRxEventListner;-><init>()V

    iput-object v0, p0, Landroid/hardware/FMRxAPI/FmTransmitter;->mRxEvents:Landroid/hardware/FMRxAPI/FmRxEventListner;

    .line 55
    return-void
.end method


# virtual methods
.method public FmApi_GetPSFeatures()V
    .registers 1

    .prologue
    .line 80
    return-void
.end method

.method public FmApi_StopPSStationInfoTx()V
    .registers 1

    .prologue
    .line 132
    return-void
.end method

.method public FmApi_StopRTStationInfoTx()V
    .registers 1

    .prologue
    .line 175
    return-void
.end method

.method public FmApi_TxContRdsGroups(JJ)V
    .registers 5
    .parameter "NoOfRdsGrpsToTx"
    .parameter "NoRdsGrpsProcPtr"

    .prologue
    .line 261
    return-void
.end method

.method public FmApi_TxPSStationInfo(Ljava/lang/String;JJ)V
    .registers 6
    .parameter "TxPSStr"
    .parameter "uIPSStrLen"
    .parameter "TxPSRptCnt"

    .prologue
    .line 117
    return-void
.end method

.method public FmApi_TxRTStationInfo(Ljava/lang/String;)V
    .registers 2
    .parameter "TxRTStrPtr"

    .prologue
    .line 161
    return-void
.end method

.method public FmApi_TxRdsGroupCtrl(S)V
    .registers 2
    .parameter "FmTxRdsGrpCtrl"

    .prologue
    .line 278
    return-void
.end method

.method public FmApi_TxRdsGroups(JJ)V
    .registers 5
    .parameter "NoOfRdsGrpsToTx"
    .parameter "NoRdsGrpsProcPtr"

    .prologue
    .line 220
    return-void
.end method

.method public FmApi_getRdsGroupBufSize()I
    .registers 2

    .prologue
    .line 290
    const/4 v0, 0x0

    return v0
.end method
