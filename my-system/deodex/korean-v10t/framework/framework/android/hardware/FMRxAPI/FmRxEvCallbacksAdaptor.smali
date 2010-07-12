.class public Landroid/hardware/FMRxAPI/FmRxEvCallbacksAdaptor;
.super Ljava/lang/Object;
.source "FmRxEvCallbacksAdaptor.java"

# interfaces
.implements Landroid/hardware/FMRxAPI/FmRxEvCallbacks;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method


# virtual methods
.method public FmRxEvConfigReceiver()V
    .registers 1

    .prologue
    .line 40
    return-void
.end method

.method public FmRxEvDisableReceiver()V
    .registers 1

    .prologue
    .line 39
    return-void
.end method

.method public FmRxEvEnableReceiver()V
    .registers 1

    .prologue
    .line 38
    return-void
.end method

.method public FmRxEvGetSignalThreshold()V
    .registers 1

    .prologue
    .line 51
    return-void
.end method

.method public FmRxEvMuteModeSet()V
    .registers 1

    .prologue
    .line 41
    return-void
.end method

.method public FmRxEvPowerModeSet()V
    .registers 1

    .prologue
    .line 44
    return-void
.end method

.method public FmRxEvRadioStationSet()V
    .registers 1

    .prologue
    .line 43
    return-void
.end method

.method public FmRxEvRadioTuneStatus()V
    .registers 1

    .prologue
    .line 46
    return-void
.end method

.method public FmRxEvRdsAfInfo(Ljava/lang/StringBuffer;)V
    .registers 2
    .parameter "AFData"

    .prologue
    .line 62
    return-void
.end method

.method public FmRxEvRdsGroupData()V
    .registers 1

    .prologue
    .line 59
    return-void
.end method

.method public FmRxEvRdsGroupOptionsSet()V
    .registers 1

    .prologue
    .line 64
    return-void
.end method

.method public FmRxEvRdsLockStatus()V
    .registers 1

    .prologue
    .line 48
    return-void
.end method

.method public FmRxEvRdsPiMatchAvailable()V
    .registers 1

    .prologue
    .line 63
    return-void
.end method

.method public FmRxEvRdsPiMatchRegDone()V
    .registers 1

    .prologue
    .line 66
    return-void
.end method

.method public FmRxEvRdsProcRegDone()V
    .registers 1

    .prologue
    .line 65
    return-void
.end method

.method public FmRxEvRdsPsInfo(Ljava/lang/StringBuffer;)V
    .registers 2
    .parameter "PSData"

    .prologue
    .line 60
    return-void
.end method

.method public FmRxEvRdsRtInfo(Ljava/lang/StringBuffer;)V
    .registers 2
    .parameter "RTData"

    .prologue
    .line 61
    return-void
.end method

.method public FmRxEvSearchCancelled()V
    .registers 1

    .prologue
    .line 58
    return-void
.end method

.method public FmRxEvSearchComplete(D)V
    .registers 3
    .parameter "freq"

    .prologue
    .line 55
    return-void
.end method

.method public FmRxEvSearchInProgress()V
    .registers 1

    .prologue
    .line 52
    return-void
.end method

.method public FmRxEvSearchListComplete()V
    .registers 1

    .prologue
    .line 57
    return-void
.end method

.method public FmRxEvSearchListInProgress()V
    .registers 1

    .prologue
    .line 54
    return-void
.end method

.method public FmRxEvSearchRdsComplete()V
    .registers 1

    .prologue
    .line 56
    return-void
.end method

.method public FmRxEvSearchRdsInProgress()V
    .registers 1

    .prologue
    .line 53
    return-void
.end method

.method public FmRxEvServiceAvailable()V
    .registers 1

    .prologue
    .line 50
    return-void
.end method

.method public FmRxEvSetSignalThreshold()V
    .registers 1

    .prologue
    .line 45
    return-void
.end method

.method public FmRxEvStationParameters()V
    .registers 1

    .prologue
    .line 47
    return-void
.end method

.method public FmRxEvStereoModeSet()V
    .registers 1

    .prologue
    .line 42
    return-void
.end method

.method public FmRxEvStereoStatus()V
    .registers 1

    .prologue
    .line 49
    return-void
.end method
