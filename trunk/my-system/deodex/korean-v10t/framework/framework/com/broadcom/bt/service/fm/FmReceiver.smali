.class public Lcom/broadcom/bt/service/fm/FmReceiver;
.super Lcom/broadcom/bt/service/framework/BaseProxy;
.source "FmReceiver.java"


# static fields
.field public static final AF_MODE_DEFAULT:I = 0x0

.field public static final AF_MODE_OFF:I = 0x0

.field public static final AF_MODE_ON:I = 0x1

.field public static final AUDIO_MODE_AUTO:I = 0x0

.field public static final AUDIO_MODE_BLEND:I = 0x3

.field public static final AUDIO_MODE_MONO:I = 0x2

.field public static final AUDIO_MODE_STEREO:I = 0x1

.field public static final AUDIO_MODE_SWITCH:I = 0x3

.field public static final AUDIO_PATH_DIGITAL:I = 0x3

.field public static final AUDIO_PATH_NONE:I = 0x0

.field public static final AUDIO_PATH_SPEAKER:I = 0x1

.field public static final AUDIO_PATH_WIRE_HEADSET:I = 0x2

.field public static final AUDIO_QUALITY_BLEND:I = 0x4

.field public static final AUDIO_QUALITY_MONO:I = 0x2

.field public static final AUDIO_QUALITY_STEREO:I = 0x1

.field public static final DEEMPHASIS_50U:I = 0x0

.field public static final DEEMPHASIS_75U:I = 0x40

.field public static final DEEMPHASIS_TIME_DEFAULT:I = 0x40

.field public static final FM_VOLUME_MAX:I = 0x100

.field public static final FREQ_STEP_100KHZ:I = 0x0

.field public static final FREQ_STEP_50KHZ:I = 0x10

.field public static final FREQ_STEP_DEFAULT:I = 0x0

.field public static final FUNCTIONALITY_DEFAULT:I = 0x0

.field public static final FUNC_AF:I = 0x40

.field public static final FUNC_RBDS:I = 0x20

.field public static final FUNC_RDS:I = 0x10

.field public static final FUNC_REGION_DEFAULT:I = 0x0

.field public static final FUNC_REGION_EUR:I = 0x1

.field public static final FUNC_REGION_JP:I = 0x2

.field public static final FUNC_REGION_NA:I = 0x0

.field public static final LIVE_AUDIO_QUALITY_DEFAULT:Z = false

.field public static final MIN_SIGNAL_STRENGTH_DEFAULT:I = 0x69

.field public static final NFL_DEFAULT:I = 0x1

.field public static final NFL_FINE:I = 0x2

.field public static final NFL_LOW:I = 0x0

.field public static final NFL_MED:I = 0x1

.field public static final RDS_COND_NONE:I = 0x0

.field public static final RDS_COND_PTY:I = 0x1

.field public static final RDS_COND_TP:I = 0x2

.field public static final RDS_FEATURE_PS:I = 0x4

.field public static final RDS_FEATURE_PTY:I = 0x8

.field public static final RDS_FEATURE_PTYN:I = 0x20

.field public static final RDS_FEATURE_RT:I = 0x40

.field public static final RDS_FEATURE_TP:I = 0x10

.field public static final RDS_MODE_DEFAULT_ON:I = 0x1

.field public static final RDS_MODE_OFF:I = 0x0

.field public static final RDS_MODE_RBDS_ON:I = 0x3

.field public static final RDS_MODE_RDS_ON:I = 0x2

.field public static final SCAN_MODE_DOWN:I = 0x0

.field public static final SCAN_MODE_FULL:I = 0x82

.field public static final SCAN_MODE_NORMAL:I = 0x0

.field public static final SCAN_MODE_UP:I = 0x81

.field public static final SIGNAL_POLL_INTERVAL_DEFAULT:I = 0x64

.field public static final STATUS_FAIL:I = 0x1

.field public static final STATUS_ILLEGAL_COMMAND:I = 0x3

.field public static final STATUS_ILLEGAL_PARAMETERS:I = 0x4

.field public static final STATUS_OK:I = 0x0

.field public static final STATUS_SERVER_FAIL:I = 0x2

.field private static final TAG:Ljava/lang/String; = "FmReceiver"


# instance fields
.field private mCallback:Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

.field private mFmReceiverEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

.field private mFmReceiverService:Lcom/broadcom/bt/service/fm/IFmReceiverService;


# direct methods
.method public constructor <init>(Lcom/broadcom/bt/service/fm/IFmReceiverService;)V
    .registers 5
    .parameter "service"

    .prologue
    .line 262
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;-><init>()V

    .line 251
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mFmReceiverEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    .line 748
    new-instance v1, Lcom/broadcom/bt/service/fm/FmReceiver$1;

    invoke-direct {v1, p0}, Lcom/broadcom/bt/service/fm/FmReceiver$1;-><init>(Lcom/broadcom/bt/service/fm/FmReceiver;)V

    iput-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mCallback:Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    .line 264
    iput-object p1, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mFmReceiverService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    .line 268
    :try_start_f
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mFmReceiverService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mCallback:Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v1, v2}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->registerCallback(Lcom/broadcom/bt/service/fm/IFmReceiverCallback;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_16} :catch_17

    .line 272
    :goto_16
    return-void

    .line 269
    :catch_17
    move-exception v1

    move-object v0, v1

    .line 270
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "FmReceiver"

    const-string v2, "Failed to initialize/register callbacks with server."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16
.end method

.method static synthetic access$000(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mFmReceiverEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized estimateNoiseFloorLevel(I)I
    .registers 6
    .parameter "nflLevel"

    .prologue
    .line 705
    monitor-enter p0

    const/4 v1, 0x2

    .line 708
    .local v1, returnCode:I
    :try_start_2
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mFmReceiverService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->estimateNoiseFloorLevel(I)I
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_14
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_a

    move-result v1

    .line 713
    :goto_8
    monitor-exit p0

    return v1

    .line 709
    :catch_a
    move-exception v2

    move-object v0, v2

    .line 710
    .local v0, e:Landroid/os/RemoteException;
    :try_start_c
    const-string v2, "FmReceiver"

    const-string v3, "estimateNoiseFloorLevel() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_14

    goto :goto_8

    .line 705
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_14
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected finalize()V
    .registers 1

    .prologue
    .line 831
    invoke-super {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;->finalize()V

    .line 832
    return-void
.end method

.method public declared-synchronized getStatus()I
    .registers 5

    .prologue
    .line 400
    monitor-enter p0

    const/4 v1, 0x2

    .line 403
    .local v1, returnCode:I
    :try_start_2
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mFmReceiverService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->getStatus()I
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_14
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_a

    move-result v1

    .line 408
    :goto_8
    monitor-exit p0

    return v1

    .line 404
    :catch_a
    move-exception v2

    move-object v0, v2

    .line 405
    .local v0, e:Landroid/os/RemoteException;
    :try_start_c
    const-string v2, "FmReceiver"

    const-string v3, "getStatus() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_14

    goto :goto_8

    .line 400
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_14
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized muteAudio(Z)I
    .registers 6
    .parameter "mute"

    .prologue
    .line 421
    monitor-enter p0

    const/4 v1, 0x2

    .line 424
    .local v1, returnCode:I
    :try_start_2
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mFmReceiverService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->muteAudio(Z)I
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_14
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_a

    move-result v1

    .line 429
    :goto_8
    monitor-exit p0

    return v1

    .line 425
    :catch_a
    move-exception v2

    move-object v0, v2

    .line 426
    .local v0, e:Landroid/os/RemoteException;
    :try_start_c
    const-string v2, "FmReceiver"

    const-string v3, "muteAudio() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_14

    goto :goto_8

    .line 421
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_14
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public registerEventHandler(Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;)V
    .registers 2
    .parameter "handler"

    .prologue
    .line 283
    iput-object p1, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mFmReceiverEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    .line 284
    return-void
.end method

.method public seekRdsStation(III)I
    .registers 5
    .parameter "scanMode"
    .parameter "rdsCondition"
    .parameter "rdsValue"

    .prologue
    .line 521
    const/16 v0, 0x69

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/broadcom/bt/service/fm/FmReceiver;->seekRdsStation(IIII)I

    move-result v0

    return v0
.end method

.method public declared-synchronized seekRdsStation(IIII)I
    .registers 9
    .parameter "scanMode"
    .parameter "minSignalStrength"
    .parameter "rdsCondition"
    .parameter "rdsValue"

    .prologue
    .line 492
    monitor-enter p0

    const/4 v1, 0x2

    .line 495
    .local v1, returnCode:I
    :try_start_2
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mFmReceiverService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->seekRdsStation(IIII)I
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_14
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_a

    move-result v1

    .line 501
    :goto_8
    monitor-exit p0

    return v1

    .line 497
    :catch_a
    move-exception v2

    move-object v0, v2

    .line 498
    .local v0, e:Landroid/os/RemoteException;
    :try_start_c
    const-string v2, "FmReceiver"

    const-string v3, "seekRdsStation() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_14

    goto :goto_8

    .line 492
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_14
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public seekStation(I)I
    .registers 3
    .parameter "scanMode"

    .prologue
    .line 471
    const/16 v0, 0x69

    invoke-virtual {p0, p1, v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->seekStation(II)I

    move-result v0

    return v0
.end method

.method public declared-synchronized seekStation(II)I
    .registers 7
    .parameter "scanMode"
    .parameter "minSignalStrength"

    .prologue
    .line 446
    monitor-enter p0

    const/4 v1, 0x2

    .line 449
    .local v1, returnCode:I
    :try_start_2
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mFmReceiverService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2, p1, p2}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->seekStation(II)I
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_14
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_a

    move-result v1

    .line 454
    :goto_8
    monitor-exit p0

    return v1

    .line 450
    :catch_a
    move-exception v2

    move-object v0, v2

    .line 451
    .local v0, e:Landroid/os/RemoteException;
    :try_start_c
    const-string v2, "FmReceiver"

    const-string v3, "seekStation() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_14

    goto :goto_8

    .line 446
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_14
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized seekStationAbort()I
    .registers 5

    .prologue
    .line 535
    monitor-enter p0

    const/4 v1, 0x2

    .line 538
    .local v1, returnCode:I
    :try_start_2
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mFmReceiverService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->seekStationAbort()I
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_14
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_a

    move-result v1

    .line 543
    :goto_8
    monitor-exit p0

    return v1

    .line 539
    :catch_a
    move-exception v2

    move-object v0, v2

    .line 540
    .local v0, e:Landroid/os/RemoteException;
    :try_start_c
    const-string v2, "FmReceiver"

    const-string v3, "seekStationAbort() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_14

    goto :goto_8

    .line 535
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_14
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setAudioMode(I)I
    .registers 6
    .parameter "audioMode"

    .prologue
    .line 587
    monitor-enter p0

    const/4 v1, 0x2

    .line 590
    .local v1, returnCode:I
    :try_start_2
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mFmReceiverService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->setAudioMode(I)I
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_14
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_a

    move-result v1

    .line 595
    :goto_8
    monitor-exit p0

    return v1

    .line 591
    :catch_a
    move-exception v2

    move-object v0, v2

    .line 592
    .local v0, e:Landroid/os/RemoteException;
    :try_start_c
    const-string v2, "FmReceiver"

    const-string v3, "setAudioMode() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_14

    goto :goto_8

    .line 587
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_14
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setAudioPath(I)I
    .registers 6
    .parameter "audioPath"

    .prologue
    .line 611
    monitor-enter p0

    const/4 v1, 0x2

    .line 614
    .local v1, returnCode:I
    :try_start_2
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mFmReceiverService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->setAudioPath(I)I
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_14
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_a

    move-result v1

    .line 619
    :goto_8
    monitor-exit p0

    return v1

    .line 615
    :catch_a
    move-exception v2

    move-object v0, v2

    .line 616
    .local v0, e:Landroid/os/RemoteException;
    :try_start_c
    const-string v2, "FmReceiver"

    const-string v3, "setAudioPath() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_14

    goto :goto_8

    .line 611
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_14
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setFMVolume(I)I
    .registers 6
    .parameter "volume"

    .prologue
    .line 655
    monitor-enter p0

    const/4 v1, 0x2

    .line 658
    .local v1, returnCode:I
    :try_start_2
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mFmReceiverService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->setFMVolume(I)I
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_14
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_a

    move-result v1

    .line 663
    :goto_8
    monitor-exit p0

    return v1

    .line 659
    :catch_a
    move-exception v2

    move-object v0, v2

    .line 660
    .local v0, e:Landroid/os/RemoteException;
    :try_start_c
    const-string v2, "FmReceiver"

    const-string v3, "setFMVolume() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_14

    goto :goto_8

    .line 655
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_14
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setLiveAudioPolling(ZI)I
    .registers 7
    .parameter "liveAudioPolling"
    .parameter "signalPollInterval"

    .prologue
    .line 729
    monitor-enter p0

    const/4 v1, 0x2

    .line 732
    .local v1, returnCode:I
    :try_start_2
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mFmReceiverService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2, p1, p2}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->setLiveAudioPolling(ZI)I
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_14
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_a

    move-result v1

    .line 739
    :goto_8
    monitor-exit p0

    return v1

    .line 735
    :catch_a
    move-exception v2

    move-object v0, v2

    .line 736
    .local v0, e:Landroid/os/RemoteException;
    :try_start_c
    const-string v2, "FmReceiver"

    const-string v3, "setLiveAudioPolling() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_14

    goto :goto_8

    .line 729
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_14
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setRdsMode(IIII)I
    .registers 9
    .parameter "rdsMode"
    .parameter "rdsFeatures"
    .parameter "afMode"
    .parameter "afThreshold"

    .prologue
    .line 562
    monitor-enter p0

    const/4 v1, 0x2

    .line 565
    .local v1, returnCode:I
    :try_start_2
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mFmReceiverService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->setRdsMode(IIII)I
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_14
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_a

    move-result v1

    .line 571
    :goto_8
    monitor-exit p0

    return v1

    .line 567
    :catch_a
    move-exception v2

    move-object v0, v2

    .line 568
    .local v0, e:Landroid/os/RemoteException;
    :try_start_c
    const-string v2, "FmReceiver"

    const-string v3, "setRdsMode() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_14

    goto :goto_8

    .line 562
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_14
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setStepSize(I)I
    .registers 6
    .parameter "stepSize"

    .prologue
    .line 634
    monitor-enter p0

    const/4 v1, 0x2

    .line 637
    .local v1, returnCode:I
    :try_start_2
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mFmReceiverService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->setStepSize(I)I
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_14
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_a

    move-result v1

    .line 642
    :goto_8
    monitor-exit p0

    return v1

    .line 638
    :catch_a
    move-exception v2

    move-object v0, v2

    .line 639
    .local v0, e:Landroid/os/RemoteException;
    :try_start_c
    const-string v2, "FmReceiver"

    const-string v3, "setStepSize() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_14

    goto :goto_8

    .line 634
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_14
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setWorldRegion(II)I
    .registers 7
    .parameter "worldRegion"
    .parameter "deemphasisTime"

    .prologue
    .line 680
    monitor-enter p0

    const/4 v1, 0x2

    .line 683
    .local v1, returnCode:I
    :try_start_2
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mFmReceiverService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2, p1, p2}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->setWorldRegion(II)I
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_14
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_a

    move-result v1

    .line 689
    :goto_8
    monitor-exit p0

    return v1

    .line 685
    :catch_a
    move-exception v2

    move-object v0, v2

    .line 686
    .local v0, e:Landroid/os/RemoteException;
    :try_start_c
    const-string v2, "FmReceiver"

    const-string v3, "setWorldRegion() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_14

    goto :goto_8

    .line 680
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_14
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized tuneRadio(I)I
    .registers 6
    .parameter "freq"

    .prologue
    .line 381
    monitor-enter p0

    const/4 v1, 0x2

    .line 384
    .local v1, returnCode:I
    :try_start_2
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mFmReceiverService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->tuneRadio(I)I
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_14
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_a

    move-result v1

    .line 389
    :goto_8
    monitor-exit p0

    return v1

    .line 385
    :catch_a
    move-exception v2

    move-object v0, v2

    .line 386
    .local v0, e:Landroid/os/RemoteException;
    :try_start_c
    const-string v2, "FmReceiver"

    const-string v3, "tuneRadio() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_14

    goto :goto_8

    .line 381
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_14
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized turnOffRadio()I
    .registers 5

    .prologue
    .line 360
    monitor-enter p0

    const/4 v1, 0x2

    .line 363
    .local v1, returnCode:I
    :try_start_2
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mFmReceiverService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->turnOffRadio()I
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_14
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_a

    move-result v1

    .line 368
    :goto_8
    monitor-exit p0

    return v1

    .line 364
    :catch_a
    move-exception v2

    move-object v0, v2

    .line 365
    .local v0, e:Landroid/os/RemoteException;
    :try_start_c
    const-string v2, "FmReceiver"

    const-string v3, "turnOffRadio() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_14

    goto :goto_8

    .line 360
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_14
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public turnOnRadio()I
    .registers 2

    .prologue
    .line 346
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->turnOnRadio(I)I

    move-result v0

    return v0
.end method

.method public declared-synchronized turnOnRadio(I)I
    .registers 6
    .parameter "functionalityMask"

    .prologue
    .line 322
    monitor-enter p0

    const/4 v1, 0x2

    .line 325
    .local v1, returnCode:I
    :try_start_2
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mFmReceiverService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->turnOnRadio(I)I
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_14
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_a

    move-result v1

    .line 330
    :goto_8
    monitor-exit p0

    return v1

    .line 326
    :catch_a
    move-exception v2

    move-object v0, v2

    .line 327
    .local v0, e:Landroid/os/RemoteException;
    :try_start_c
    const-string v2, "FmReceiver"

    const-string v3, "turnOnRadio() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_14

    goto :goto_8

    .line 322
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_14
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public unregisterEventHandler(Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;)V
    .registers 4
    .parameter "handler"

    .prologue
    const-string v1, "FmReceiver"

    .line 295
    const-string v0, "FmReceiver"

    const-string v0, "<-- unregisterEventHandler(...)"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mFmReceiverEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    if-ne v0, p1, :cond_18

    .line 298
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mFmReceiverEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    .line 299
    const-string v0, "FmReceiver"

    const-string v0, "APP\'s call back unregistered..."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :goto_17
    return-void

    .line 301
    :cond_18
    const-string v0, "FmReceiver"

    const-string v0, "unregisterEventHandler: Error Handle mismatch."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17
.end method
