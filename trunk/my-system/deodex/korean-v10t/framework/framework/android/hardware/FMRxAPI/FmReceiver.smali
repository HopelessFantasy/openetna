.class public Landroid/hardware/FMRxAPI/FmReceiver;
.super Landroid/hardware/FMRxAPI/FmTransceiver;
.source "FmReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/FMRxAPI/FmReceiver$1;,
        Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;,
        Landroid/hardware/FMRxAPI/FmReceiver$FmPrgmIdType;,
        Landroid/hardware/FMRxAPI/FmReceiver$ChSpacing;,
        Landroid/hardware/FMRxAPI/FmReceiver$FmRxMute;,
        Landroid/hardware/FMRxAPI/FmReceiver$FmRxPwrMode;,
        Landroid/hardware/FMRxAPI/FmReceiver$FmRxSignalThreshold;,
        Landroid/hardware/FMRxAPI/FmReceiver$RadioBand;,
        Landroid/hardware/FMRxAPI/FmReceiver$RdsStd;,
        Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchMode;,
        Landroid/hardware/FMRxAPI/FmReceiver$FmRxStereoMonoMode;,
        Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchListMode;,
        Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchRdsMode;,
        Landroid/hardware/FMRxAPI/FmReceiver$FmRxScanTime;,
        Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchDir;,
        Landroid/hardware/FMRxAPI/FmReceiver$Emphasis;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/hardware/FMRxAPI/FmTransceiver;-><init>()V

    .line 41
    new-instance v0, Landroid/hardware/FMRxAPI/FmRxControls;

    invoke-direct {v0}, Landroid/hardware/FMRxAPI/FmRxControls;-><init>()V

    iput-object v0, p0, Landroid/hardware/FMRxAPI/FmReceiver;->mControl:Landroid/hardware/FMRxAPI/FmRxControls;

    .line 42
    new-instance v0, Landroid/hardware/FMRxAPI/FmRxRdsData;

    invoke-direct {v0}, Landroid/hardware/FMRxAPI/FmRxRdsData;-><init>()V

    iput-object v0, p0, Landroid/hardware/FMRxAPI/FmReceiver;->mRdsData:Landroid/hardware/FMRxAPI/FmRxRdsData;

    .line 43
    new-instance v0, Landroid/hardware/FMRxAPI/FmRxEventListner;

    invoke-direct {v0}, Landroid/hardware/FMRxAPI/FmRxEventListner;-><init>()V

    iput-object v0, p0, Landroid/hardware/FMRxAPI/FmReceiver;->mRxEvents:Landroid/hardware/FMRxAPI/FmRxEventListner;

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/hardware/FMRxAPI/FmRxEvCallbacksAdaptor;)V
    .registers 4
    .parameter "devicePath"
    .parameter "callbackAdaptor"

    .prologue
    .line 230
    invoke-direct {p0}, Landroid/hardware/FMRxAPI/FmTransceiver;-><init>()V

    .line 231
    new-instance v0, Landroid/hardware/FMRxAPI/FmRxControls;

    invoke-direct {v0}, Landroid/hardware/FMRxAPI/FmRxControls;-><init>()V

    iput-object v0, p0, Landroid/hardware/FMRxAPI/FmReceiver;->mControl:Landroid/hardware/FMRxAPI/FmRxControls;

    .line 232
    new-instance v0, Landroid/hardware/FMRxAPI/FmRxRdsData;

    invoke-direct {v0}, Landroid/hardware/FMRxAPI/FmRxRdsData;-><init>()V

    iput-object v0, p0, Landroid/hardware/FMRxAPI/FmReceiver;->mRdsData:Landroid/hardware/FMRxAPI/FmRxRdsData;

    .line 233
    new-instance v0, Landroid/hardware/FMRxAPI/FmRxEventListner;

    invoke-direct {v0}, Landroid/hardware/FMRxAPI/FmRxEventListner;-><init>()V

    iput-object v0, p0, Landroid/hardware/FMRxAPI/FmReceiver;->mRxEvents:Landroid/hardware/FMRxAPI/FmRxEventListner;

    .line 234
    invoke-virtual {p0, p1}, Landroid/hardware/FMRxAPI/FmReceiver;->FmApi_Acquire(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p0, p2}, Landroid/hardware/FMRxAPI/FmReceiver;->FmApi_RegisterClient(Landroid/hardware/FMRxAPI/FmRxEvCallbacks;)V

    .line 236
    return-void
.end method


# virtual methods
.method public FMRxApi_SearchStationList(Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchListMode;Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchDir;II)V
    .registers 10
    .parameter "listMode"
    .parameter "direction"
    .parameter "listMax"
    .parameter "pgmType"

    .prologue
    .line 630
    iget-object v0, p0, Landroid/hardware/FMRxAPI/FmReceiver;->mControl:Landroid/hardware/FMRxAPI/FmRxControls;

    sget v1, Landroid/hardware/FMRxAPI/FmReceiver;->sFd:I

    sget-object v2, Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchMode;->FM_RX_SRCH_MODE_SEEK_UP:Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchMode;

    sget-object v3, Landroid/hardware/FMRxAPI/FmReceiver$FmRxScanTime;->FM_RX_DWELL_PERIOD_2S:Landroid/hardware/FMRxAPI/FmReceiver$FmRxScanTime;

    sget-object v4, Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchDir;->FM_RX_SEARCHDIR_DOWN:Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchDir;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/FMRxAPI/FmRxControls;->searchStations(ILandroid/hardware/FMRxAPI/FmReceiver$FmRxSrchMode;Landroid/hardware/FMRxAPI/FmReceiver$FmRxScanTime;Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchDir;)V

    .line 632
    return-void
.end method

.method public FmRxApi_CancelSearch()V
    .registers 3

    .prologue
    .line 646
    iget-object v0, p0, Landroid/hardware/FMRxAPI/FmReceiver;->mControl:Landroid/hardware/FMRxAPI/FmRxControls;

    sget v1, Landroid/hardware/FMRxAPI/FmReceiver;->sFd:I

    invoke-virtual {v0, v1}, Landroid/hardware/FMRxAPI/FmRxControls;->cancelSearch(I)V

    .line 647
    return-void
.end method

.method public FmRxApi_GetAFInfo()V
    .registers 1

    .prologue
    .line 447
    return-void
.end method

.method public FmRxApi_GetRssiLimit()Landroid/hardware/FMRxAPI/FmReceiver$FmRxSignalThreshold;
    .registers 2

    .prologue
    .line 406
    const/4 v0, 0x0

    return-object v0
.end method

.method public FmRxApi_GetSignalThreshold()Landroid/hardware/FMRxAPI/FmReceiver$FmRxSignalThreshold;
    .registers 2

    .prologue
    .line 427
    const/4 v0, 0x0

    return-object v0
.end method

.method public FmRxApi_GetStationParameters()V
    .registers 1

    .prologue
    .line 318
    return-void
.end method

.method public FmRxApi_RegRdsGroupProcessing()V
    .registers 1

    .prologue
    .line 721
    return-void
.end method

.method public FmRxApi_RegRdsPiMatchProcessing()V
    .registers 1

    .prologue
    .line 742
    return-void
.end method

.method public FmRxApi_RxGetPSInfo(Ljava/lang/StringBuffer;)V
    .registers 6
    .parameter "ps"

    .prologue
    .line 338
    const/16 v2, 0x78

    new-array v0, v2, [B

    .line 339
    .local v0, buff:[B
    sget v2, Landroid/hardware/FMRxAPI/FmReceiver;->sFd:I

    const/4 v3, 0x3

    invoke-static {v2, v0, v3}, Landroid/hardware/FMRxAPI/FmReceiverJNI;->listenForEventsNative(I[BI)I

    .line 340
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 341
    .local v1, rdsStr:Ljava/lang/String;
    const/4 v2, 0x5

    const/4 v3, 0x0

    aget-byte v3, v0, v3

    mul-int/lit8 v3, v3, 0x8

    add-int/lit8 v3, v3, 0x5

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 342
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 343
    return-void
.end method

.method public FmRxApi_RxGetRTInfo(Ljava/lang/StringBuffer;)V
    .registers 6
    .parameter "radiotext"

    .prologue
    .line 361
    const/16 v2, 0x78

    new-array v0, v2, [B

    .line 362
    .local v0, buff:[B
    sget v2, Landroid/hardware/FMRxAPI/FmReceiver;->sFd:I

    const/4 v3, 0x2

    invoke-static {v2, v0, v3}, Landroid/hardware/FMRxAPI/FmReceiverJNI;->listenForEventsNative(I[BI)I

    .line 363
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 364
    .local v1, rdsStr:Ljava/lang/String;
    const/4 v2, 0x5

    const/4 v3, 0x0

    aget-byte v3, v0, v3

    add-int/lit8 v3, v3, 0x5

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 365
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 366
    return-void
.end method

.method public FmRxApi_SearchRdsStations(Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchMode;Landroid/hardware/FMRxAPI/FmReceiver$FmRxScanTime;Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchDir;II)V
    .registers 6
    .parameter "mode"
    .parameter "dwelling"
    .parameter "direction"
    .parameter "RdsSrchPty"
    .parameter "RdsSrchPI"

    .prologue
    .line 576
    return-void
.end method

.method public FmRxApi_SearchStations(Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchMode;Landroid/hardware/FMRxAPI/FmReceiver$FmRxScanTime;)V
    .registers 6
    .parameter "mode"
    .parameter "dwelling"

    .prologue
    .line 506
    iget-object v0, p0, Landroid/hardware/FMRxAPI/FmReceiver;->mControl:Landroid/hardware/FMRxAPI/FmRxControls;

    sget v1, Landroid/hardware/FMRxAPI/FmReceiver;->sFd:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Landroid/hardware/FMRxAPI/FmRxControls;->searchStations(ILandroid/hardware/FMRxAPI/FmReceiver$FmRxSrchMode;Landroid/hardware/FMRxAPI/FmReceiver$FmRxScanTime;Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchDir;)V

    .line 507
    return-void
.end method

.method public FmRxApi_SetMuteMode(Landroid/hardware/FMRxAPI/FmReceiver$FmRxMute;)V
    .registers 5
    .parameter "mode"

    .prologue
    .line 253
    sget-object v0, Landroid/hardware/FMRxAPI/FmReceiver$1;->$SwitchMap$android$hardware$FMRxAPI$FmReceiver$FmRxMute:[I

    invoke-virtual {p1}, Landroid/hardware/FMRxAPI/FmReceiver$FmRxMute;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1e

    .line 264
    :goto_b
    return-void

    .line 255
    :pswitch_c
    iget-object v0, p0, Landroid/hardware/FMRxAPI/FmReceiver;->mControl:Landroid/hardware/FMRxAPI/FmRxControls;

    sget v1, Landroid/hardware/FMRxAPI/FmReceiver;->sFd:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/FMRxAPI/FmRxControls;->muteControl(IZ)V

    goto :goto_b

    .line 258
    :pswitch_15
    iget-object v0, p0, Landroid/hardware/FMRxAPI/FmReceiver;->mControl:Landroid/hardware/FMRxAPI/FmRxControls;

    sget v1, Landroid/hardware/FMRxAPI/FmReceiver;->sFd:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/hardware/FMRxAPI/FmRxControls;->muteControl(IZ)V

    goto :goto_b

    .line 253
    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_c
        :pswitch_15
    .end packed-switch
.end method

.method public FmRxApi_SetRdsGroupOptions()V
    .registers 1

    .prologue
    .line 679
    return-void
.end method

.method public FmRxApi_SetSignalThreshold(Landroid/hardware/FMRxAPI/FmReceiver$FmRxSignalThreshold;)V
    .registers 2
    .parameter "threshold"

    .prologue
    .line 303
    return-void
.end method

.method public FmRxApi_SetStereoMode(Landroid/hardware/FMRxAPI/FmReceiver$FmRxStereoMonoMode;)V
    .registers 4
    .parameter "strMode"

    .prologue
    .line 280
    iget-object v0, p0, Landroid/hardware/FMRxAPI/FmReceiver;->mControl:Landroid/hardware/FMRxAPI/FmRxControls;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/FMRxAPI/FmRxControls;->streoControl(Z)V

    .line 281
    return-void
.end method

.method public FmRxApi_getPwrMode()Landroid/hardware/FMRxAPI/FmReceiver$FmRxPwrMode;
    .registers 2

    .prologue
    .line 749
    iget-object v0, p0, Landroid/hardware/FMRxAPI/FmReceiver;->mPowerMode:Landroid/hardware/FMRxAPI/FmReceiver$FmRxPwrMode;

    return-object v0
.end method

.method public FmRxApi_setPwrMode(Landroid/hardware/FMRxAPI/FmReceiver$FmRxPwrMode;)V
    .registers 2
    .parameter "pwrMode"

    .prologue
    .line 386
    return-void
.end method
