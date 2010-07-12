.class public Landroid/hardware/FMRxAPI/FmTransceiver;
.super Ljava/lang/Object;
.source "FmTransceiver.java"


# static fields
.field static sFd:I


# instance fields
.field private final MUTE_EVENT:I

.field private final RDS_EVENT:I

.field private final READY_EVENT:I

.field private final SEEK_COMPLETE_EVENT:I

.field private final TUNE_EVENT:I

.field mControl:Landroid/hardware/FMRxAPI/FmRxControls;

.field mPowerMode:Landroid/hardware/FMRxAPI/FmReceiver$FmRxPwrMode;

.field mRdsData:Landroid/hardware/FMRxAPI/FmRxRdsData;

.field mRxEvents:Landroid/hardware/FMRxAPI/FmRxEventListner;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/FMRxAPI/FmTransceiver;->READY_EVENT:I

    .line 42
    const/4 v0, 0x2

    iput v0, p0, Landroid/hardware/FMRxAPI/FmTransceiver;->TUNE_EVENT:I

    .line 43
    const/16 v0, 0x8

    iput v0, p0, Landroid/hardware/FMRxAPI/FmTransceiver;->RDS_EVENT:I

    .line 44
    const/4 v0, 0x4

    iput v0, p0, Landroid/hardware/FMRxAPI/FmTransceiver;->MUTE_EVENT:I

    .line 45
    const/4 v0, 0x3

    iput v0, p0, Landroid/hardware/FMRxAPI/FmTransceiver;->SEEK_COMPLETE_EVENT:I

    return-void
.end method


# virtual methods
.method public FmApi_Acquire(Ljava/lang/String;)V
    .registers 5
    .parameter "device"

    .prologue
    const-string v2, "FmAcquire"

    .line 60
    sget v0, Landroid/hardware/FMRxAPI/FmTransceiver;->sFd:I

    if-nez v0, :cond_29

    .line 61
    const-string v0, "/dev/radio0"

    invoke-static {v0}, Landroid/hardware/FMRxAPI/FmReceiverJNI;->acquireFdNative(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/hardware/FMRxAPI/FmTransceiver;->sFd:I

    .line 62
    const-string v0, "FmAcquire"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "** Opened "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/hardware/FMRxAPI/FmTransceiver;->sFd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :goto_28
    return-void

    .line 65
    :cond_29
    const-string v0, "FmAcquire"

    const-string v0, "Already opened"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28
.end method

.method public FmApi_Configure(Landroid/hardware/FMRxAPI/RxConfig;)V
    .registers 2
    .parameter "configSettings"

    .prologue
    .line 183
    return-void
.end method

.method public FmApi_Disable()V
    .registers 3

    .prologue
    .line 164
    iget-object v0, p0, Landroid/hardware/FMRxAPI/FmTransceiver;->mControl:Landroid/hardware/FMRxAPI/FmRxControls;

    sget v1, Landroid/hardware/FMRxAPI/FmTransceiver;->sFd:I

    invoke-virtual {v0, v1}, Landroid/hardware/FMRxAPI/FmRxControls;->fmOff(I)V

    .line 165
    return-void
.end method

.method public FmApi_Enable(Landroid/hardware/FMRxAPI/RxConfig;)V
    .registers 4
    .parameter "configSettings"

    .prologue
    .line 143
    iget-object v0, p0, Landroid/hardware/FMRxAPI/FmTransceiver;->mControl:Landroid/hardware/FMRxAPI/FmRxControls;

    sget v1, Landroid/hardware/FMRxAPI/FmTransceiver;->sFd:I

    invoke-virtual {v0, v1}, Landroid/hardware/FMRxAPI/FmRxControls;->fmOn(I)V

    .line 144
    return-void
.end method

.method public FmApi_RegisterClient(Landroid/hardware/FMRxAPI/FmRxEvCallbacks;)V
    .registers 4
    .parameter "event_handler"

    .prologue
    .line 104
    if-eqz p1, :cond_a

    .line 105
    iget-object v0, p0, Landroid/hardware/FMRxAPI/FmTransceiver;->mRxEvents:Landroid/hardware/FMRxAPI/FmRxEventListner;

    sget v1, Landroid/hardware/FMRxAPI/FmTransceiver;->sFd:I

    invoke-virtual {v0, v1, p1}, Landroid/hardware/FMRxAPI/FmRxEventListner;->startListner(ILandroid/hardware/FMRxAPI/FmRxEvCallbacks;)V

    .line 109
    :goto_9
    return-void

    .line 107
    :cond_a
    const-string v0, "FMRegister"

    const-string v1, "Null, do nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public FmApi_Release(Ljava/lang/String;)V
    .registers 5
    .parameter "device"

    .prologue
    const-string v2, "FMRelease"

    .line 79
    sget v0, Landroid/hardware/FMRxAPI/FmTransceiver;->sFd:I

    if-eqz v0, :cond_29

    .line 80
    sget v0, Landroid/hardware/FMRxAPI/FmTransceiver;->sFd:I

    invoke-static {v0}, Landroid/hardware/FMRxAPI/FmReceiverJNI;->closeFdNative(I)I

    .line 81
    const/4 v0, 0x0

    sput v0, Landroid/hardware/FMRxAPI/FmTransceiver;->sFd:I

    .line 82
    const-string v0, "FMRelease"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Turned off: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/hardware/FMRxAPI/FmTransceiver;->sFd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :goto_28
    return-void

    .line 84
    :cond_29
    const-string v0, "FMRelease"

    const-string v0, "Err turning off"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28
.end method

.method public FmApi_SetStation(D)V
    .registers 5
    .parameter "freq"

    .prologue
    .line 207
    iget-object v0, p0, Landroid/hardware/FMRxAPI/FmTransceiver;->mControl:Landroid/hardware/FMRxAPI/FmRxControls;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/FMRxAPI/FmRxControls;->setFreq(D)V

    .line 208
    iget-object v0, p0, Landroid/hardware/FMRxAPI/FmTransceiver;->mControl:Landroid/hardware/FMRxAPI/FmRxControls;

    sget v1, Landroid/hardware/FMRxAPI/FmTransceiver;->sFd:I

    invoke-virtual {v0, v1}, Landroid/hardware/FMRxAPI/FmRxControls;->setStation(I)V

    .line 209
    return-void
.end method

.method public FmApi_UnRegister()V
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Landroid/hardware/FMRxAPI/FmTransceiver;->mRxEvents:Landroid/hardware/FMRxAPI/FmRxEventListner;

    invoke-virtual {v0}, Landroid/hardware/FMRxAPI/FmRxEventListner;->stopListener()V

    .line 117
    return-void
.end method
