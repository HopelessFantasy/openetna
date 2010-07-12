.class Landroid/hardware/FMRxAPI/FmRxControls;
.super Ljava/lang/Object;
.source "FmRxControls.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/FMRxAPI/FmRxControls$1;
    }
.end annotation


# static fields
.field static final SCAN_BACKWARD:I = 0x3

.field static final SCAN_FORWARD:I = 0x2

.field static final SEEK_BACKWARD:I = 0x1

.field static final SEEK_FORWARD:I


# instance fields
.field private mFreq:D

.field private mPrgmId:I

.field private mPrgmType:I

.field private mScanTime:Landroid/hardware/FMRxAPI/FmReceiver$FmRxScanTime;

.field private mSrchDir:Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchDir;

.field private mSrchListMode:Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchListMode;

.field private mSrchMode:Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchMode;

.field private mStateMute:Z

.field private mStateOn:Z

.field private mStateStereo:Z


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    return-void
.end method


# virtual methods
.method public cancelSearch(I)V
    .registers 2
    .parameter "fd"

    .prologue
    .line 125
    invoke-static {p1}, Landroid/hardware/FMRxAPI/FmReceiverJNI;->cancelSearchNative(I)I

    .line 126
    return-void
.end method

.method public fmOff(I)V
    .registers 3
    .parameter "fd"

    .prologue
    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Landroid/hardware/FMRxAPI/FmRxControls;->mStateOn:Z

    .line 63
    invoke-static {v0, p1}, Landroid/hardware/FMRxAPI/FmReceiverJNI;->changeRadioStateNative(II)I

    .line 64
    return-void
.end method

.method public fmOn(I)V
    .registers 3
    .parameter "fd"

    .prologue
    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Landroid/hardware/FMRxAPI/FmRxControls;->mStateOn:Z

    .line 58
    invoke-static {v0, p1}, Landroid/hardware/FMRxAPI/FmReceiverJNI;->changeRadioStateNative(II)I

    .line 59
    return-void
.end method

.method public getFreq()D
    .registers 3

    .prologue
    .line 86
    iget-wide v0, p0, Landroid/hardware/FMRxAPI/FmRxControls;->mFreq:D

    return-wide v0
.end method

.method public muteControl(IZ)V
    .registers 7
    .parameter "fd"
    .parameter "on"

    .prologue
    const/4 v1, 0x3

    .line 67
    iput-boolean p2, p0, Landroid/hardware/FMRxAPI/FmRxControls;->mStateStereo:Z

    .line 68
    if-eqz p2, :cond_22

    .line 69
    invoke-static {p1, v1, v1}, Landroid/hardware/FMRxAPI/FmReceiverJNI;->audioControlNative(III)I

    move-result v0

    .line 70
    .local v0, err:I
    const-string v1, "ControlMute"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Returned: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .end local v0           #err:I
    :goto_21
    return-void

    .line 72
    :cond_22
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Landroid/hardware/FMRxAPI/FmReceiverJNI;->audioControlNative(III)I

    goto :goto_21
.end method

.method public searchRdsStations(Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchMode;Landroid/hardware/FMRxAPI/FmReceiver$FmRxScanTime;Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchDir;II)V
    .registers 6
    .parameter "mode"
    .parameter "dwelling"
    .parameter "direction"
    .parameter "RdsSrchPty"
    .parameter "RdsSrchPI"

    .prologue
    .line 118
    return-void
.end method

.method public searchStationList(Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchListMode;Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchDir;II)V
    .registers 5
    .parameter "listMode"
    .parameter "direction"
    .parameter "listMax"
    .parameter "pgmType"

    .prologue
    .line 122
    return-void
.end method

.method public searchStations(ILandroid/hardware/FMRxAPI/FmReceiver$FmRxSrchMode;Landroid/hardware/FMRxAPI/FmReceiver$FmRxScanTime;Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchDir;)V
    .registers 10
    .parameter "fd"
    .parameter "mode"
    .parameter "dwelling"
    .parameter "direction"

    .prologue
    .line 95
    const/4 v1, 0x0

    .line 96
    .local v1, type:I
    sget-object v2, Landroid/hardware/FMRxAPI/FmRxControls$1;->$SwitchMap$android$hardware$FMRxAPI$FmReceiver$FmRxSrchMode:[I

    invoke-virtual {p2}, Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_32

    .line 112
    :goto_c
    const/4 v2, 0x2

    invoke-static {p1, v1, v2}, Landroid/hardware/FMRxAPI/FmReceiverJNI;->seekScanControlNative(III)I

    move-result v0

    .line 113
    .local v0, re:I
    const-string v2, "FmControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Seek ret:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return-void

    .line 98
    .end local v0           #re:I
    :pswitch_2a
    const/4 v1, 0x0

    .line 99
    goto :goto_c

    .line 101
    :pswitch_2c
    const/4 v1, 0x1

    .line 102
    goto :goto_c

    .line 104
    :pswitch_2e
    const/4 v1, 0x2

    .line 105
    goto :goto_c

    .line 107
    :pswitch_30
    const/4 v1, 0x3

    .line 108
    goto :goto_c

    .line 96
    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_2c
        :pswitch_2e
        :pswitch_30
    .end packed-switch
.end method

.method public setFreq(D)V
    .registers 3
    .parameter "f"

    .prologue
    .line 90
    iput-wide p1, p0, Landroid/hardware/FMRxAPI/FmRxControls;->mFreq:D

    .line 91
    return-void
.end method

.method public setStation(I)V
    .registers 7
    .parameter "fd"

    .prologue
    const-string v4, "FMTune"

    .line 80
    const-string v2, "FMTune"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "** Tune Using: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-wide v2, p0, Landroid/hardware/FMRxAPI/FmRxControls;->mFreq:D

    invoke-static {v2, v3, p1}, Landroid/hardware/FMRxAPI/FmReceiverJNI;->changeFreqNative(DI)I

    move-result v2

    int-to-double v0, v2

    .line 82
    .local v0, ret:D
    const-string v2, "FMTune"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "** Returned: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return-void
.end method

.method public streoControl(Z)V
    .registers 2
    .parameter "on"

    .prologue
    .line 76
    iput-boolean p1, p0, Landroid/hardware/FMRxAPI/FmRxControls;->mStateMute:Z

    .line 77
    return-void
.end method
