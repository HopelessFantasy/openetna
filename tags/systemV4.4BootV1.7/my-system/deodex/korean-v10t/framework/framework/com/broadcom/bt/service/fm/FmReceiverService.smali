.class public Lcom/broadcom/bt/service/fm/FmReceiverService;
.super Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;
.source "FmReceiverService.java"


# static fields
.field private static final AF_MODE_BITMASK:I = 0x1

.field private static final AUDIO_MODE_BITMASK:I = 0x3

.field private static final AUDIO_PATH_BITMASK:I = 0x3

.field private static final BTA_FM_ERR:I = 0x5

.field private static final BTA_FM_FLAG_TOUT_ERR:I = 0x7

.field private static final BTA_FM_FREQ_ERR:I = 0x8

.field private static final BTA_FM_OK:I = 0x0

.field private static final BTA_FM_SCAN_ABORT:I = 0x3

.field private static final BTA_FM_SCAN_FAIL:I = 0x2

.field private static final BTA_FM_SCAN_NO_RES:I = 0x4

.field private static final BTA_FM_SCAN_RSSI_LOW:I = 0x1

.field private static final BTA_FM_UNSPT_ERR:I = 0x6

.field private static final BTA_FM_VCMD_ERR:I = 0x9

.field private static final FM_RECEIVER_PERM:Ljava/lang/String; = "android.permission.ACCESS_FM_RECEIVER"

.field private static final FUNC_BITMASK:I = 0x73

.field private static final FUNC_RDS_BITMASK:I = 0x70

.field private static final FUNC_REGION_BITMASK:I = 0x3

.field private static final MAX_ALLOWED_AF_JUMP_THRESHOLD:I = 0xff

.field private static final MAX_ALLOWED_FREQUENCY_CODE:I = 0x1869f

.field private static final MAX_ALLOWED_RDS_CONDITION_VALUE:I = 0xff

.field private static final MAX_ALLOWED_SIGNAL_POLLING_TIME:I = 0x186a0

.field private static final MAX_ALLOWED_SIGNAL_STRENGTH_NUMBER:I = 0xff

.field private static final MIN_ALLOWED_AF_JUMP_THRESHOLD:I = 0x0

.field private static final MIN_ALLOWED_FREQUENCY_CODE:I = 0x1

.field private static final MIN_ALLOWED_RDS_CONDITION_VALUE:I = 0x0

.field private static final MIN_ALLOWED_SIGNAL_POLLING_TIME:I = 0xa

.field private static final MIN_ALLOWED_SIGNAL_STRENGTH_NUMBER:I = 0x0

.field private static final OPERATION_DISABLE:I = 0x5

.field private static final OPERATION_ENABLE:I = 0x4

.field private static final OPERATION_GENERIC:I = 0x64

.field private static final OPERATION_NFL:I = 0x63

.field private static final OPERATION_SEARCH:I = 0xa

.field private static final OPERATION_TIMEOUT:I = 0x1

.field private static final OPERATION_TIMEOUT_GENERIC:I = 0x1388

.field private static final OPERATION_TIMEOUT_NFL:I = 0x4e20

.field private static final OPERATION_TIMEOUT_SEARCH:I = 0x4e20

.field private static final OPERATION_TIMEOUT_SHUTDOWN:I = 0x2710

.field private static final OPERATION_TIMEOUT_STARTUP:I = 0x2710

.field private static final RADIO_OP_STATE_NONE:I = 0x0

.field private static final RADIO_OP_STATE_STAGE_1:I = 0x1

.field private static final RADIO_OP_STATE_STAGE_2:I = 0x2

.field private static final RADIO_OP_STATE_STAGE_3:I = 0x3

.field private static final RADIO_OP_STATE_STAGE_4:I = 0x4

.field private static final RADIO_OP_STATE_STAGE_5:I = 0x5

.field private static final RADIO_STATE_BUSY:I = 0x4

.field private static final RADIO_STATE_OFF:I = 0x0

.field private static final RADIO_STATE_READY_FOR_COMMAND:I = 0x2

.field private static final RADIO_STATE_STARTING:I = 0x1

.field private static final RADIO_STATE_STOPPING:I = 0x3

.field private static final RBDS_MODE_NATIVE:I = 0x1

.field private static final RDS_FEATURES_BITMASK:I = 0x7c

.field private static final RDS_ID_PS_EVT:I = 0x7

.field private static final RDS_ID_PTYN_EVT:I = 0x8

.field private static final RDS_ID_PTY_EVT:I = 0x2

.field private static final RDS_ID_RT_EVT:I = 0x9

.field private static final RDS_MODE_BITMASK:I = 0x3

.field private static final RDS_MODE_NATIVE:I = 0x0

.field private static final RDS_RBDS_BITMASK:I = 0x1

.field private static final SCAN_MODE_BITMASK:I = 0x82

.field private static final TAG:Ljava/lang/String; = "FmReceiverService"

.field private static mFM_Loop:Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;

.field private static radio_op_state:I

.field private static radio_state:I


# instance fields
.field private mAfOn:Z

.field private mAlternateFreqHopThreshold:I

.field private mAudioMode:I

.field private mAudioPath:I

.field private final mContext:Landroid/content/Context;

.field private mDeemphasisTime:I

.field private mEstimatedNoiseFloorLevel:I

.field private mFreq:I

.field private mIsMute:Z

.field private mLiveAudioQuality:Z

.field private mRadioIsOn:Z

.field private mRdsOn:Z

.field private mRdsProgramService:Ljava/lang/String;

.field private mRdsProgramType:I

.field private mRdsProgramTypeName:Ljava/lang/String;

.field private mRdsRadioText:Ljava/lang/String;

.field private mRdsType:I

.field private mRssi:I

.field private mSeekSuccess:Z

.field private mSignalPollInterval:I

.field private mStepSize:I

.field private mWorldRegion:I

.field private final m_callbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/broadcom/bt/service/fm/IFmReceiverCallback;",
            ">;"
        }
    .end annotation
.end field

.field protected operationHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 216
    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I

    .line 217
    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_op_state:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const-string v2, ""

    .line 228
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;-><init>()V

    .line 186
    iput v1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mFreq:I

    .line 187
    const/16 v0, 0x7f

    iput v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mRssi:I

    .line 188
    iput-boolean v1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mRadioIsOn:Z

    .line 189
    iput v1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mRdsProgramType:I

    .line 190
    const-string v0, ""

    iput-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mRdsProgramService:Ljava/lang/String;

    .line 191
    const-string v0, ""

    iput-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mRdsRadioText:Ljava/lang/String;

    .line 192
    const-string v0, ""

    iput-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mRdsProgramTypeName:Ljava/lang/String;

    .line 193
    iput-boolean v1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mIsMute:Z

    .line 194
    iput-boolean v1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mSeekSuccess:Z

    .line 195
    iput-boolean v1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mRdsOn:Z

    .line 196
    iput-boolean v1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mAfOn:Z

    .line 197
    iput v1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mRdsType:I

    .line 198
    iput v1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mAlternateFreqHopThreshold:I

    .line 199
    iput v1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mAudioMode:I

    .line 200
    iput v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mAudioPath:I

    .line 201
    iput v1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mWorldRegion:I

    .line 202
    iput v1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mStepSize:I

    .line 203
    iput-boolean v1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mLiveAudioQuality:Z

    .line 204
    iput v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mEstimatedNoiseFloorLevel:I

    .line 205
    const/16 v0, 0x64

    iput v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mSignalPollInterval:I

    .line 206
    const/16 v0, 0x40

    iput v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mDeemphasisTime:I

    .line 212
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    .line 316
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverService$1;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/service/fm/FmReceiverService$1;-><init>(Lcom/broadcom/bt/service/fm/FmReceiverService;)V

    iput-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    .line 230
    iput-object p1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mContext:Landroid/content/Context;

    .line 232
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->initNativeDataNative()V

    .line 235
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;-><init>(Lcom/broadcom/bt/service/fm/FmReceiverService;)V

    sput-object v0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mFM_Loop:Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;

    .line 236
    sget-object v0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mFM_Loop:Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;

    if-eqz v0, :cond_60

    .line 237
    sget-object v0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mFM_Loop:Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->startFM_Loop()V

    .line 238
    :cond_60
    return-void
.end method

.method static synthetic access$000(Lcom/broadcom/bt/service/fm/FmReceiverService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->initializeStateMachine()V

    return-void
.end method

.method static synthetic access$100(Lcom/broadcom/bt/service/fm/FmReceiverService;Z)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->disableNative(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$202(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 68
    sput p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I

    return p0
.end method

.method static synthetic access$300(Lcom/broadcom/bt/service/fm/FmReceiverService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendStatusEventCallbackFromLocalStore()V

    return-void
.end method

.method private native configureDeemphasisNative(I)Z
.end method

.method private native configureSignalNotificationNative(I)Z
.end method

.method private native disableNative(Z)Z
.end method

.method private native enableNative(I)Z
.end method

.method private native estimateNoiseFloorNative(I)Z
.end method

.method private native getAudioQualityNative(Z)Z
.end method

.method private native initNativeDataNative()V
.end method

.method private initializeStateMachine()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const-string v2, ""

    .line 243
    sput v1, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I

    .line 244
    iput v1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mFreq:I

    .line 245
    const/16 v0, 0x7f

    iput v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mRssi:I

    .line 246
    iput-boolean v1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mRadioIsOn:Z

    .line 247
    iput v1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mRdsProgramType:I

    .line 248
    const-string v0, ""

    iput-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mRdsProgramService:Ljava/lang/String;

    .line 249
    const-string v0, ""

    iput-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mRdsRadioText:Ljava/lang/String;

    .line 250
    const-string v0, ""

    iput-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mRdsProgramTypeName:Ljava/lang/String;

    .line 251
    iput-boolean v1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mIsMute:Z

    .line 252
    iput-boolean v1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mSeekSuccess:Z

    .line 253
    iput-boolean v1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mRdsOn:Z

    .line 254
    iput-boolean v1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mAfOn:Z

    .line 255
    iput v1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mRdsType:I

    .line 256
    iput v1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mAlternateFreqHopThreshold:I

    .line 257
    iput v1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mAudioMode:I

    .line 258
    iput v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mAudioPath:I

    .line 259
    iput v1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mWorldRegion:I

    .line 260
    iput v1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mStepSize:I

    .line 261
    iput-boolean v1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mLiveAudioQuality:Z

    .line 262
    iput v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mEstimatedNoiseFloorLevel:I

    .line 263
    const/16 v0, 0x64

    iput v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mSignalPollInterval:I

    .line 264
    const/16 v0, 0x40

    iput v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mDeemphasisTime:I

    .line 265
    return-void
.end method

.method private native muteNative(Z)Z
.end method

.method private native searchAbortNative()Z
.end method

.method private native searchNative(IIII)Z
.end method

.method private sendAudioModeEventCallback(I)V
    .registers 6
    .parameter "audioMode"

    .prologue
    .line 1307
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1308
    .local v0, callbacks:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_7
    if-ge v2, v0, :cond_1d

    .line 1311
    :try_start_9
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v3, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onAudioModeEvent(I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_17

    .line 1308
    :goto_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1312
    :catch_17
    move-exception v3

    move-object v1, v3

    .line 1313
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_14

    .line 1316
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_1d
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1317
    return-void
.end method

.method private sendAudioModeEventCallbackFromLocalStore()V
    .registers 2

    .prologue
    .line 1296
    iget v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mAudioMode:I

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendAudioModeEventCallback(I)V

    .line 1297
    return-void
.end method

.method private sendAudioPathEventCallback(I)V
    .registers 6
    .parameter "audioPath"

    .prologue
    .line 1335
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1336
    .local v0, callbacks:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_7
    if-ge v2, v0, :cond_1d

    .line 1339
    :try_start_9
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v3, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onAudioPathEvent(I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_17

    .line 1336
    :goto_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1340
    :catch_17
    move-exception v3

    move-object v1, v3

    .line 1341
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_14

    .line 1344
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_1d
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1345
    return-void
.end method

.method private sendAudioPathEventCallbackFromLocalStore()V
    .registers 2

    .prologue
    .line 1324
    iget v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mAudioPath:I

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendAudioPathEventCallback(I)V

    .line 1325
    return-void
.end method

.method private sendEstimateNflEventCallback(I)V
    .registers 6
    .parameter "nfl"

    .prologue
    .line 1391
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1392
    .local v0, callbacks:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_7
    if-ge v2, v0, :cond_1d

    .line 1395
    :try_start_9
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v3, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onEstimateNflEvent(I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_17

    .line 1392
    :goto_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1396
    :catch_17
    move-exception v3

    move-object v1, v3

    .line 1397
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_14

    .line 1400
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_1d
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1401
    return-void
.end method

.method private sendEstimateNflEventCallbackFromLocalStore()V
    .registers 2

    .prologue
    .line 1380
    iget v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mEstimatedNoiseFloorLevel:I

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendEstimateNflEventCallback(I)V

    .line 1381
    return-void
.end method

.method private sendLiveAudioQualityEventCallback(I)V
    .registers 6
    .parameter "rssi"

    .prologue
    .line 1419
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1420
    .local v0, callbacks:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_7
    if-ge v2, v0, :cond_1d

    .line 1423
    :try_start_9
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v3, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onLiveAudioQualityEvent(I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_17

    .line 1420
    :goto_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1424
    :catch_17
    move-exception v3

    move-object v1, v3

    .line 1425
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_14

    .line 1428
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_1d
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1429
    return-void
.end method

.method private sendLiveAudioQualityEventCallbackFromLocalStore()V
    .registers 2

    .prologue
    .line 1408
    iget v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mRssi:I

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendLiveAudioQualityEventCallback(I)V

    .line 1409
    return-void
.end method

.method private sendRdsDataEventCallback(IILjava/lang/String;)V
    .registers 8
    .parameter "rdsDataType"
    .parameter "rdsIndex"
    .parameter "rdsText"

    .prologue
    .line 1278
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1279
    .local v0, callbacks:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_7
    if-ge v2, v0, :cond_1d

    .line 1282
    :try_start_9
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v3, p1, p2, p3}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onRdsDataEvent(IILjava/lang/String;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_17

    .line 1279
    :goto_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1284
    :catch_17
    move-exception v3

    move-object v1, v3

    .line 1285
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_14

    .line 1288
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_1d
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1289
    return-void
.end method

.method private sendRdsDataEventCallbackFromLocalStore()V
    .registers 4

    .prologue
    .line 1266
    const/4 v0, 0x1

    const/4 v1, 0x2

    const-string v2, "TEST RDS MESSAGE"

    invoke-direct {p0, v0, v1, v2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendRdsDataEventCallback(IILjava/lang/String;)V

    .line 1267
    return-void
.end method

.method private sendRdsModeEventCallback(II)V
    .registers 7
    .parameter "rdsMode"
    .parameter "alternateFreqMode"

    .prologue
    .line 1248
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1249
    .local v0, callbacks:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_7
    if-ge v2, v0, :cond_1d

    .line 1252
    :try_start_9
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v3, p1, p2}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onRdsModeEvent(II)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_17

    .line 1249
    :goto_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1254
    :catch_17
    move-exception v3

    move-object v1, v3

    .line 1255
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_14

    .line 1258
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_1d
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1259
    return-void
.end method

.method private sendRdsModeEventCallbackFromLocalStore()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 1229
    const/4 v1, 0x0

    .line 1230
    .local v1, rds:I
    iget-boolean v2, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mAfOn:Z

    if-eqz v2, :cond_14

    move v0, v3

    .line 1232
    .local v0, af:I
    :goto_7
    iget-boolean v2, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mRdsOn:Z

    if-eqz v2, :cond_10

    .line 1233
    iget v2, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mRdsType:I

    if-nez v2, :cond_17

    move v1, v3

    .line 1235
    :cond_10
    :goto_10
    invoke-direct {p0, v1, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendRdsModeEventCallback(II)V

    .line 1236
    return-void

    .line 1230
    .end local v0           #af:I
    :cond_14
    const/4 v2, 0x0

    move v0, v2

    goto :goto_7

    .line 1233
    .restart local v0       #af:I
    :cond_17
    const/4 v2, 0x2

    move v1, v2

    goto :goto_10
.end method

.method private sendSeekCompleteEventCallback(IIZ)V
    .registers 8
    .parameter "freq"
    .parameter "rssi"
    .parameter "seekSuccess"

    .prologue
    .line 1211
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1212
    .local v0, callbacks:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_7
    if-ge v2, v0, :cond_1d

    .line 1215
    :try_start_9
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v3, p1, p2, p3}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onSeekCompleteEvent(IIZ)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_17

    .line 1212
    :goto_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1217
    :catch_17
    move-exception v3

    move-object v1, v3

    .line 1218
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_14

    .line 1221
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_1d
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1222
    return-void
.end method

.method private sendSeekCompleteEventCallbackFromLocalStore()V
    .registers 4

    .prologue
    .line 1195
    iget v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mFreq:I

    iget v1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mRssi:I

    iget-boolean v2, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mSeekSuccess:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendSeekCompleteEventCallback(IIZ)V

    .line 1197
    return-void
.end method

.method private sendStatusEventCallback(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 21
    .parameter "freq"
    .parameter "rssi"
    .parameter "radioIsOn"
    .parameter "rdsProgramType"
    .parameter "rdsProgramService"
    .parameter "rdsRadioText"
    .parameter "rdsProgramTypeName"
    .parameter "isMute"

    .prologue
    .line 1175
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v9

    .line 1176
    .local v9, callbacks:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_7
    if-ge v11, v9, :cond_2a

    .line 1179
    :try_start_9
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v11}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onStatusEvent(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_21} :catch_24

    .line 1176
    :goto_21
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 1183
    :catch_24
    move-exception v0

    move-object v10, v0

    .line 1184
    .local v10, e:Landroid/os/RemoteException;
    invoke-virtual {v10}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_21

    .line 1187
    .end local v10           #e:Landroid/os/RemoteException;
    :cond_2a
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1188
    return-void
.end method

.method private sendStatusEventCallbackFromLocalStore()V
    .registers 10

    .prologue
    .line 1151
    iget v1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mFreq:I

    iget v2, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mRssi:I

    iget-boolean v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mRadioIsOn:Z

    iget v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mRdsProgramType:I

    iget-object v5, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mRdsProgramService:Ljava/lang/String;

    iget-object v6, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mRdsRadioText:Ljava/lang/String;

    iget-object v7, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mRdsProgramTypeName:Ljava/lang/String;

    iget-boolean v8, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mIsMute:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendStatusEventCallback(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1155
    return-void
.end method

.method private sendVolumeEventCallback(II)V
    .registers 7
    .parameter "status"
    .parameter "volume"

    .prologue
    .line 1440
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1441
    .local v0, callbacks:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_7
    if-ge v2, v0, :cond_1d

    .line 1444
    :try_start_9
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v3, p1, p2}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onVolumeEvent(II)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_17

    .line 1441
    :goto_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1445
    :catch_17
    move-exception v3

    move-object v1, v3

    .line 1446
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_14

    .line 1449
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_1d
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1450
    return-void
.end method

.method private sendWorldRegionEventCallback(I)V
    .registers 6
    .parameter "worldRegion"

    .prologue
    .line 1363
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1364
    .local v0, callbacks:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_7
    if-ge v2, v0, :cond_1d

    .line 1367
    :try_start_9
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v3, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onWorldRegionEvent(I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_17

    .line 1364
    :goto_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1368
    :catch_17
    move-exception v3

    move-object v1, v3

    .line 1369
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_14

    .line 1372
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_1d
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1373
    return-void
.end method

.method private sendWorldRegionEventCallbackFromLocalStore()V
    .registers 2

    .prologue
    .line 1352
    iget v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mWorldRegion:I

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendWorldRegionEventCallback(I)V

    .line 1353
    return-void
.end method

.method private native setAudioModeNative(I)Z
.end method

.method private native setAudioPathNative(I)Z
.end method

.method private native setFMVolumeNative(I)Z
.end method

.method private native setRdsModeNative(ZZI)Z
.end method

.method private native setRegionNative(I)Z
.end method

.method private native setScanStepNative(I)Z
.end method

.method private native tuneNative(I)Z
.end method


# virtual methods
.method public checkForPendingResponses()V
    .registers 2

    .prologue
    .line 1457
    iget v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mRssi:I

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendLiveAudioQualityEventCallback(I)V

    .line 1458
    return-void
.end method

.method public declared-synchronized estimateNoiseFloorLevel(I)I
    .registers 9
    .parameter "nflLevel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const-string v3, "FmReceiverService"

    .line 1056
    monitor-enter p0

    :try_start_5
    const-string v3, "FmReceiverService"

    const-string v4, "estimateNoiseFloorLevel()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_65

    .line 1058
    const/4 v2, 0x0

    .line 1061
    .local v2, returnStatus:I
    if-eq p1, v6, :cond_16

    if-eq p1, v5, :cond_16

    if-eqz p1, :cond_16

    .line 1064
    const/4 v2, 0x4

    .line 1090
    :cond_14
    :goto_14
    monitor-exit p0

    return v2

    .line 1065
    :cond_16
    :try_start_16
    sget v3, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I

    if-eq v6, v3, :cond_3a

    .line 1066
    const-string v3, "FmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    const/4 v2, 0x3

    goto :goto_14

    .line 1069
    :cond_3a
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I

    .line 1071
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1072
    .local v1, msg:Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->what:I

    .line 1073
    const/16 v3, 0x63

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 1074
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1075
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x4e20

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_55
    .catchall {:try_start_16 .. :try_end_55} :catchall_65

    .line 1078
    :try_start_55
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->estimateNoiseFloorNative(I)Z
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_65
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_58} :catch_6a

    move-result v3

    if-eqz v3, :cond_68

    .line 1079
    const/4 v2, 0x0

    .line 1086
    :goto_5c
    if-eqz v2, :cond_14

    .line 1087
    :try_start_5e
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_64
    .catchall {:try_start_5e .. :try_end_64} :catchall_65

    goto :goto_14

    .line 1056
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #returnStatus:I
    :catchall_65
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1081
    .restart local v1       #msg:Landroid/os/Message;
    .restart local v2       #returnStatus:I
    :cond_68
    const/4 v2, 0x2

    goto :goto_5c

    .line 1082
    :catch_6a
    move-exception v0

    .line 1083
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    .line 1084
    :try_start_6c
    const-string v3, "FmReceiverService"

    const-string v4, "estimateNoiseFloorNative failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_73
    .catchall {:try_start_6c .. :try_end_73} :catchall_65

    goto :goto_5c
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 281
    sget-object v0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mFM_Loop:Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;

    if-eqz v0, :cond_9

    .line 282
    sget-object v0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mFM_Loop:Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->stopFM_Loop()V

    .line 284
    :cond_9
    invoke-super {p0}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->finalize()V

    .line 286
    return-void
.end method

.method public declared-synchronized getStatus()I
    .registers 5

    .prologue
    const-string v1, "FmReceiverService"

    .line 513
    monitor-enter p0

    :try_start_3
    const-string v1, "FmReceiverService"

    const-string v2, "getStatus()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    const/4 v0, 0x0

    .line 517
    .local v0, returnStatus:I
    const/4 v1, 0x2

    sget v2, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I

    if-eq v1, v2, :cond_31

    .line 518
    const-string v1, "FmReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "STATE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_35

    .line 519
    const/4 v0, 0x3

    .line 525
    :goto_2f
    monitor-exit p0

    return v0

    .line 522
    :cond_31
    :try_start_31
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendStatusEventCallbackFromLocalStore()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_35

    goto :goto_2f

    .line 513
    .end local v0           #returnStatus:I
    :catchall_35
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized init()V
    .registers 1

    .prologue
    .line 276
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized muteAudio(Z)I
    .registers 8
    .parameter "mute"

    .prologue
    const-string v3, "FmReceiverService"

    .line 536
    monitor-enter p0

    :try_start_3
    const-string v3, "FmReceiverService"

    const-string v4, "muteAudio()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    const/4 v2, 0x0

    .line 540
    .local v2, returnStatus:I
    const/4 v3, 0x2

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I

    if-eq v3, v4, :cond_31

    .line 541
    const-string v3, "FmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_5c

    .line 542
    const/4 v2, 0x3

    .line 565
    :cond_2f
    :goto_2f
    monitor-exit p0

    return v2

    .line 544
    :cond_31
    const/4 v3, 0x4

    :try_start_32
    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I

    .line 546
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 547
    .local v1, msg:Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->what:I

    .line 548
    const/16 v3, 0x64

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 549
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 550
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_4c
    .catchall {:try_start_32 .. :try_end_4c} :catchall_5c

    .line 553
    :try_start_4c
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->muteNative(Z)Z
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_5c
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4f} :catch_61

    move-result v3

    if-eqz v3, :cond_5f

    .line 554
    const/4 v2, 0x0

    .line 561
    :goto_53
    if-eqz v2, :cond_2f

    .line 562
    :try_start_55
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_5b
    .catchall {:try_start_55 .. :try_end_5b} :catchall_5c

    goto :goto_2f

    .line 536
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #returnStatus:I
    :catchall_5c
    move-exception v3

    monitor-exit p0

    throw v3

    .line 556
    .restart local v1       #msg:Landroid/os/Message;
    .restart local v2       #returnStatus:I
    :cond_5f
    const/4 v2, 0x2

    goto :goto_53

    .line 557
    :catch_61
    move-exception v0

    .line 558
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    .line 559
    :try_start_63
    const-string v3, "FmReceiverService"

    const-string v4, "muteAudio failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6a
    .catchall {:try_start_63 .. :try_end_6a} :catchall_5c

    goto :goto_53
.end method

.method public onRadioAfJumpEvent(III)V
    .registers 8
    .parameter "status"
    .parameter "rssi"
    .parameter "freq"

    .prologue
    const/4 v3, 0x1

    .line 1603
    const-string v0, "FmReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRadioAfJumpEvent(status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rssi = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", freq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1615
    sget v0, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I

    if-eq v0, v3, :cond_50

    sget v0, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_50

    .line 1616
    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I

    .line 1619
    :cond_50
    if-nez p1, :cond_58

    .line 1620
    iput p2, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mRssi:I

    .line 1621
    iput p3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mFreq:I

    .line 1622
    iput-boolean v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mSeekSuccess:Z

    .line 1624
    :cond_58
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendSeekCompleteEventCallbackFromLocalStore()V

    .line 1628
    return-void
.end method

.method public onRadioAudioDataEvent(III)V
    .registers 7
    .parameter "status"
    .parameter "rssi"
    .parameter "mode"

    .prologue
    const/4 v2, 0x1

    .line 1677
    const-string v0, "FmReceiverService"

    const-string v1, "onRadioAudioDataEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1686
    sget v0, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I

    if-eq v0, v2, :cond_19

    sget v0, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_19

    .line 1687
    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I

    .line 1692
    :cond_19
    if-nez p1, :cond_1f

    .line 1693
    iput p2, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mRssi:I

    .line 1694
    iput p3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mAudioMode:I

    .line 1696
    :cond_1f
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendLiveAudioQualityEventCallbackFromLocalStore()V

    .line 1697
    return-void
.end method

.method public onRadioAudioModeEvent(II)V
    .registers 6
    .parameter "status"
    .parameter "mode"

    .prologue
    const/4 v2, 0x1

    .line 1631
    const-string v0, "FmReceiverService"

    const-string v1, "onRadioAudioModeEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1634
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1641
    sget v0, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I

    if-eq v0, v2, :cond_19

    sget v0, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_19

    .line 1644
    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I

    .line 1647
    :cond_19
    if-nez p1, :cond_1d

    .line 1648
    iput p2, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mAudioMode:I

    .line 1650
    :cond_1d
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendAudioModeEventCallbackFromLocalStore()V

    .line 1651
    return-void
.end method

.method public onRadioAudioPathEvent(II)V
    .registers 6
    .parameter "status"
    .parameter "path"

    .prologue
    const/4 v2, 0x1

    .line 1654
    const-string v0, "FmReceiverService"

    const-string v1, "onRadioAudioPathEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1664
    sget v0, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I

    if-eq v0, v2, :cond_19

    sget v0, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_19

    .line 1667
    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I

    .line 1670
    :cond_19
    if-nez p1, :cond_1d

    .line 1671
    iput p2, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mAudioPath:I

    .line 1673
    :cond_1d
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendAudioPathEventCallbackFromLocalStore()V

    .line 1674
    return-void
.end method

.method public onRadioDeemphEvent(II)V
    .registers 6
    .parameter "status"
    .parameter "time"

    .prologue
    const/4 v2, 0x1

    .line 1799
    const-string v0, "FmReceiverService"

    const-string v1, "onRadioDeemphEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1802
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1809
    sget v0, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I

    if-eq v0, v2, :cond_19

    sget v0, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_19

    .line 1812
    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I

    .line 1813
    :cond_19
    return-void
.end method

.method public onRadioMuteEvent(IZ)V
    .registers 5
    .parameter "status"
    .parameter "muted"

    .prologue
    .line 1531
    const-string v0, "FmReceiverService"

    const-string v1, "onRadioMuteEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    if-nez p1, :cond_b

    .line 1535
    iput-boolean p2, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mIsMute:Z

    .line 1539
    :cond_b
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1542
    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I

    .line 1545
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendStatusEventCallbackFromLocalStore()V

    .line 1546
    return-void
.end method

.method public onRadioNflEstimationEvent(I)V
    .registers 5
    .parameter "level"

    .prologue
    const/4 v2, 0x1

    .line 1856
    const-string v0, "FmReceiverService"

    const-string v1, "onRadioNflEstimationEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1859
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1865
    sget v0, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I

    if-eq v0, v2, :cond_19

    sget v0, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_19

    .line 1868
    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I

    .line 1871
    :cond_19
    iput p1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mEstimatedNoiseFloorLevel:I

    .line 1872
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendEstimateNflEventCallbackFromLocalStore()V

    .line 1873
    return-void
.end method

.method public onRadioOffEvent(I)V
    .registers 5
    .parameter "status"

    .prologue
    const/4 v2, 0x0

    .line 1497
    const-string v0, "FmReceiverService"

    const-string v1, "onRadioOffEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1500
    if-nez p1, :cond_c

    .line 1501
    iput-boolean v2, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mRadioIsOn:Z

    .line 1505
    :cond_c
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1521
    iget-boolean v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mRadioIsOn:Z

    if-nez v0, :cond_18

    .line 1522
    sput v2, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I

    .line 1527
    :cond_18
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendStatusEventCallbackFromLocalStore()V

    .line 1528
    return-void
.end method

.method public onRadioOnEvent(I)V
    .registers 5
    .parameter "status"

    .prologue
    const/4 v2, 0x1

    .line 1462
    const-string v0, "FmReceiverService"

    const-string v1, "onRadioOnEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    if-nez p1, :cond_c

    .line 1466
    iput-boolean v2, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mRadioIsOn:Z

    .line 1470
    :cond_c
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1485
    iget-boolean v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mRadioIsOn:Z

    if-eqz v0, :cond_18

    .line 1486
    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I

    .line 1493
    :cond_18
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendStatusEventCallbackFromLocalStore()V

    .line 1494
    return-void
.end method

.method public onRadioRdsModeEvent(IZZI)V
    .registers 9
    .parameter "status"
    .parameter "rdsOn"
    .parameter "afOn"
    .parameter "rdsType"

    .prologue
    const/4 v2, 0x1

    const-string v3, "FmReceiverService"

    .line 1700
    const-string v0, "FmReceiverService"

    const-string v0, "onRadioRdsModeEvent()"

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    if-nez p1, :cond_52

    .line 1704
    iput-boolean p2, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mRdsOn:Z

    .line 1705
    iput-boolean p3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mAfOn:Z

    .line 1706
    iput p4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mRdsType:I

    .line 1707
    const-string v0, "FmReceiverService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRadioRdsModeEvent( rdsOn "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", afOn"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mRdsType:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    :cond_52
    const/4 v0, 0x4

    sget v1, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I

    if-ne v0, v1, :cond_63

    .line 1718
    sget v0, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I

    if-eq v0, v2, :cond_63

    sget v0, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_63

    .line 1721
    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I

    .line 1725
    :cond_63
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1727
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendRdsModeEventCallbackFromLocalStore()V

    .line 1728
    const/4 v0, 0x0

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_op_state:I

    .line 1731
    return-void
.end method

.method public onRadioRdsTypeEvent(II)V
    .registers 7
    .parameter "status"
    .parameter "rdsType"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1735
    const-string v0, "FmReceiverService"

    const-string v1, "onRadioRdsTypeEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    if-nez p1, :cond_d

    .line 1739
    iput p2, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mRdsType:I

    .line 1742
    :cond_d
    sget v0, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_op_state:I

    if-ne v2, v0, :cond_2d

    .line 1744
    const/4 v0, 0x4

    sget v1, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I

    if-ne v0, v1, :cond_21

    .line 1749
    sget v0, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I

    if-eq v0, v2, :cond_21

    sget v0, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_21

    .line 1752
    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I

    .line 1756
    :cond_21
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1758
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendRdsModeEventCallbackFromLocalStore()V

    .line 1759
    const/4 v0, 0x0

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_op_state:I

    .line 1764
    :goto_2c
    return-void

    .line 1762
    :cond_2d
    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_op_state:I

    goto :goto_2c
.end method

.method public onRadioRdsUpdateEvent(IIILjava/lang/String;)V
    .registers 9
    .parameter "status"
    .parameter "data"
    .parameter "index"
    .parameter "text"

    .prologue
    const-string v3, ","

    .line 1768
    const-string v0, "FmReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRadioRdsUpdateEvent("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1773
    if-nez p1, :cond_52

    .line 1775
    packed-switch p2, :pswitch_data_60

    .line 1794
    :goto_4f
    :pswitch_4f
    invoke-direct {p0, p2, p3, p4}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendRdsDataEventCallback(IILjava/lang/String;)V

    .line 1796
    :cond_52
    return-void

    .line 1777
    :pswitch_53
    iput p3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mRdsProgramType:I

    goto :goto_4f

    .line 1780
    :pswitch_56
    iput-object p4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mRdsProgramTypeName:Ljava/lang/String;

    goto :goto_4f

    .line 1783
    :pswitch_59
    iput-object p4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mRdsRadioText:Ljava/lang/String;

    goto :goto_4f

    .line 1786
    :pswitch_5c
    iput-object p4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mRdsProgramService:Ljava/lang/String;

    goto :goto_4f

    .line 1775
    nop

    :pswitch_data_60
    .packed-switch 0x2
        :pswitch_53
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_5c
        :pswitch_56
        :pswitch_59
    .end packed-switch
.end method

.method public onRadioRegionEvent(II)V
    .registers 6
    .parameter "status"
    .parameter "region"

    .prologue
    const/4 v2, 0x1

    .line 1833
    const-string v0, "FmReceiverService"

    const-string v1, "onRadioRegionEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1836
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1843
    sget v0, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I

    if-eq v0, v2, :cond_19

    sget v0, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_19

    .line 1846
    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I

    .line 1849
    :cond_19
    if-nez p1, :cond_20

    .line 1850
    iput p2, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mWorldRegion:I

    .line 1851
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendWorldRegionEventCallbackFromLocalStore()V

    .line 1853
    :cond_20
    return-void
.end method

.method public onRadioScanStepEvent(I)V
    .registers 5
    .parameter "stepSize"

    .prologue
    const/4 v2, 0x1

    .line 1816
    const-string v0, "FmReceiverService"

    const-string v1, "onRadioScanStepEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1819
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1826
    sget v0, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I

    if-eq v0, v2, :cond_19

    sget v0, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_19

    .line 1829
    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I

    .line 1830
    :cond_19
    return-void
.end method

.method public onRadioSearchCompleteEvent(III)V
    .registers 6
    .parameter "status"
    .parameter "rssi"
    .parameter "freq"

    .prologue
    .line 1579
    const-string v0, "FmReceiverService"

    const-string v1, "onRadioSearchCompleteEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1585
    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I

    .line 1595
    iput p2, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mRssi:I

    .line 1596
    iput p3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mFreq:I

    .line 1597
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mSeekSuccess:Z

    .line 1599
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendSeekCompleteEventCallbackFromLocalStore()V

    .line 1600
    return-void
.end method

.method public onRadioSearchEvent(II)V
    .registers 6
    .parameter "rssi"
    .parameter "freq"

    .prologue
    const/4 v2, 0x1

    .line 1566
    const-string v0, "FmReceiverService"

    const-string v1, "onRadioSearchEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1572
    iput p1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mRssi:I

    .line 1573
    iput p2, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mFreq:I

    .line 1574
    iput-boolean v2, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mSeekSuccess:Z

    .line 1575
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendSeekCompleteEventCallbackFromLocalStore()V

    .line 1576
    return-void
.end method

.method public onRadioTuneEvent(III)V
    .registers 6
    .parameter "status"
    .parameter "rssi"
    .parameter "freq"

    .prologue
    .line 1549
    const-string v0, "FmReceiverService"

    const-string v1, "onRadioTuneEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1555
    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I

    .line 1558
    if-nez p1, :cond_16

    .line 1559
    iput p2, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mRssi:I

    .line 1560
    iput p3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mFreq:I

    .line 1562
    :cond_16
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendStatusEventCallbackFromLocalStore()V

    .line 1563
    return-void
.end method

.method public onRadioVolumeEvent(II)V
    .registers 6
    .parameter "status"
    .parameter "volume"

    .prologue
    const/4 v2, 0x1

    .line 1875
    const-string v0, "FmReceiverService"

    const-string v1, "onRadioVolumeEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1878
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1884
    sget v0, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I

    if-eq v0, v2, :cond_19

    sget v0, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_19

    .line 1887
    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I

    .line 1889
    :cond_19
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendVolumeEventCallback(II)V

    .line 1890
    return-void
.end method

.method public declared-synchronized registerCallback(Lcom/broadcom/bt/service/fm/IFmReceiverCallback;)V
    .registers 3
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 297
    monitor-enter p0

    if-eqz p1, :cond_8

    .line 298
    :try_start_3
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    .line 300
    :cond_8
    monitor-exit p0

    return-void

    .line 297
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized seekRdsStation(IIII)I
    .registers 13
    .parameter "scanMode"
    .parameter "minSignalStrength"
    .parameter "rdsCondition"
    .parameter "rdsValue"

    .prologue
    const/16 v7, 0xff

    const/4 v6, 0x2

    const/4 v5, 0x1

    const-string v3, "FmReceiverService"

    .line 639
    monitor-enter p0

    :try_start_7
    const-string v3, "FmReceiverService"

    const-string v4, "seekRdsStation():1"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_75

    .line 641
    const/4 v2, 0x0

    .line 644
    .local v2, returnStatus:I
    if-ltz p2, :cond_13

    if-le p2, v7, :cond_16

    .line 646
    :cond_13
    const/4 v2, 0x4

    .line 682
    :cond_14
    :goto_14
    monitor-exit p0

    return v2

    .line 647
    :cond_16
    if-ltz p4, :cond_1a

    if-le p4, v7, :cond_1c

    .line 649
    :cond_1a
    const/4 v2, 0x4

    goto :goto_14

    .line 650
    :cond_1c
    if-eqz p3, :cond_24

    if-eq p3, v5, :cond_24

    if-eq p3, v6, :cond_24

    .line 653
    const/4 v2, 0x4

    goto :goto_14

    .line 654
    :cond_24
    :try_start_24
    sget v3, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I

    if-eq v6, v3, :cond_48

    .line 655
    const-string v3, "FmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    const/4 v2, 0x3

    goto :goto_14

    .line 658
    :cond_48
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I

    .line 660
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 661
    .local v1, msg:Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->what:I

    .line 662
    const/16 v3, 0xa

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 663
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 664
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x4e20

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_63
    .catchall {:try_start_24 .. :try_end_63} :catchall_75

    .line 667
    and-int/lit16 p1, p1, 0x82

    .line 670
    :try_start_65
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/broadcom/bt/service/fm/FmReceiverService;->searchNative(IIII)Z
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_75
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_68} :catch_7a

    move-result v3

    if-eqz v3, :cond_78

    .line 671
    const/4 v2, 0x0

    .line 678
    :goto_6c
    if-eqz v2, :cond_14

    .line 679
    :try_start_6e
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_74
    .catchall {:try_start_6e .. :try_end_74} :catchall_75

    goto :goto_14

    .line 639
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #returnStatus:I
    :catchall_75
    move-exception v3

    monitor-exit p0

    throw v3

    .line 673
    .restart local v1       #msg:Landroid/os/Message;
    .restart local v2       #returnStatus:I
    :cond_78
    const/4 v2, 0x2

    goto :goto_6c

    .line 674
    :catch_7a
    move-exception v0

    .line 675
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    .line 676
    :try_start_7c
    const-string v3, "FmReceiverService"

    const-string v4, "searchNative failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_83
    .catchall {:try_start_7c .. :try_end_83} :catchall_75

    goto :goto_6c
.end method

.method public declared-synchronized seekStation(II)I
    .registers 9
    .parameter "scanMode"
    .parameter "minSignalStrength"

    .prologue
    const-string v3, "FmReceiverService"

    .line 582
    monitor-enter p0

    :try_start_3
    const-string v3, "FmReceiverService"

    const-string v4, "seekStation():1"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_68

    .line 584
    const/4 v2, 0x0

    .line 587
    .local v2, returnStatus:I
    if-ltz p2, :cond_11

    const/16 v3, 0xff

    if-le p2, v3, :cond_14

    .line 589
    :cond_11
    const/4 v2, 0x4

    .line 618
    :cond_12
    :goto_12
    monitor-exit p0

    return v2

    .line 590
    :cond_14
    const/4 v3, 0x2

    :try_start_15
    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I

    if-eq v3, v4, :cond_39

    .line 591
    const-string v3, "FmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    const/4 v2, 0x3

    goto :goto_12

    .line 594
    :cond_39
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I

    .line 596
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 597
    .local v1, msg:Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->what:I

    .line 598
    const/16 v3, 0xa

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 599
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 600
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x4e20

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_54
    .catchall {:try_start_15 .. :try_end_54} :catchall_68

    .line 603
    and-int/lit16 p1, p1, 0x82

    .line 606
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_58
    invoke-direct {p0, p1, p2, v3, v4}, Lcom/broadcom/bt/service/fm/FmReceiverService;->searchNative(IIII)Z
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_68
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5b} :catch_6d

    move-result v3

    if-eqz v3, :cond_6b

    .line 607
    const/4 v2, 0x0

    .line 614
    :goto_5f
    if-eqz v2, :cond_12

    .line 615
    :try_start_61
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_67
    .catchall {:try_start_61 .. :try_end_67} :catchall_68

    goto :goto_12

    .line 582
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #returnStatus:I
    :catchall_68
    move-exception v3

    monitor-exit p0

    throw v3

    .line 609
    .restart local v1       #msg:Landroid/os/Message;
    .restart local v2       #returnStatus:I
    :cond_6b
    const/4 v2, 0x2

    goto :goto_5f

    .line 610
    :catch_6d
    move-exception v0

    .line 611
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    .line 612
    :try_start_6f
    const-string v3, "FmReceiverService"

    const-string v4, "searchNative failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_76
    .catchall {:try_start_6f .. :try_end_76} :catchall_68

    goto :goto_5f
.end method

.method public declared-synchronized seekStationAbort()I
    .registers 7

    .prologue
    const-string v3, "FmReceiverService"

    .line 695
    monitor-enter p0

    :try_start_3
    const-string v3, "FmReceiverService"

    const-string v4, "seekStationAbort()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    const/4 v2, 0x0

    .line 699
    .local v2, returnStatus:I
    const/4 v3, 0x2

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I

    if-eq v3, v4, :cond_31

    .line 700
    const-string v3, "FmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_5c

    .line 701
    const/4 v2, 0x3

    .line 724
    :cond_2f
    :goto_2f
    monitor-exit p0

    return v2

    .line 703
    :cond_31
    const/4 v3, 0x4

    :try_start_32
    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I

    .line 705
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 706
    .local v1, msg:Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->what:I

    .line 707
    const/16 v3, 0x64

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 708
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 709
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_4c
    .catchall {:try_start_32 .. :try_end_4c} :catchall_5c

    .line 712
    :try_start_4c
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->searchAbortNative()Z
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_5c
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4f} :catch_61

    move-result v3

    if-eqz v3, :cond_5f

    .line 713
    const/4 v2, 0x0

    .line 720
    :goto_53
    if-eqz v2, :cond_2f

    .line 721
    :try_start_55
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_5b
    .catchall {:try_start_55 .. :try_end_5b} :catchall_5c

    goto :goto_2f

    .line 695
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #returnStatus:I
    :catchall_5c
    move-exception v3

    monitor-exit p0

    throw v3

    .line 715
    .restart local v1       #msg:Landroid/os/Message;
    .restart local v2       #returnStatus:I
    :cond_5f
    const/4 v2, 0x2

    goto :goto_53

    .line 716
    :catch_61
    move-exception v0

    .line 717
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    .line 718
    :try_start_63
    const-string v3, "FmReceiverService"

    const-string v4, "searchAbortNative failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6a
    .catchall {:try_start_63 .. :try_end_6a} :catchall_5c

    goto :goto_53
.end method

.method public declared-synchronized setAudioMode(I)I
    .registers 8
    .parameter "audioMode"

    .prologue
    const-string v3, "FmReceiverService"

    .line 805
    monitor-enter p0

    const/4 v2, 0x0

    .line 807
    .local v2, returnStatus:I
    :try_start_4
    const-string v3, "FmReceiverService"

    const-string v4, "setAudioMode()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    const/4 v3, 0x2

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I

    if-eq v3, v4, :cond_31

    .line 810
    const-string v3, "FmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catchall {:try_start_4 .. :try_end_2e} :catchall_5e

    .line 811
    const/4 v2, 0x3

    .line 838
    :cond_2f
    :goto_2f
    monitor-exit p0

    return v2

    .line 813
    :cond_31
    const/4 v3, 0x4

    :try_start_32
    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I

    .line 815
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 816
    .local v1, msg:Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->what:I

    .line 817
    const/16 v3, 0x64

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 818
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 819
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_4c
    .catchall {:try_start_32 .. :try_end_4c} :catchall_5e

    .line 822
    and-int/lit8 p1, p1, 0x3

    .line 825
    :try_start_4e
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setAudioModeNative(I)Z
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_5e
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_51} :catch_63

    move-result v3

    if-eqz v3, :cond_61

    .line 826
    const/4 v2, 0x0

    .line 833
    :goto_55
    if-eqz v2, :cond_2f

    .line 834
    :try_start_57
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_5d
    .catchall {:try_start_57 .. :try_end_5d} :catchall_5e

    goto :goto_2f

    .line 805
    .end local v1           #msg:Landroid/os/Message;
    :catchall_5e
    move-exception v3

    monitor-exit p0

    throw v3

    .line 828
    .restart local v1       #msg:Landroid/os/Message;
    :cond_61
    const/4 v2, 0x2

    goto :goto_55

    .line 829
    :catch_63
    move-exception v0

    .line 830
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    .line 831
    :try_start_65
    const-string v3, "FmReceiverService"

    const-string v4, "setAudioModeNative failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6c
    .catchall {:try_start_65 .. :try_end_6c} :catchall_5e

    goto :goto_55
.end method

.method public declared-synchronized setAudioPath(I)I
    .registers 8
    .parameter "audioPath"

    .prologue
    const-string v3, "FmReceiverService"

    .line 855
    monitor-enter p0

    const/4 v2, 0x0

    .line 857
    .local v2, returnStatus:I
    :try_start_4
    const-string v3, "FmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setAudioPath("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    const/4 v3, 0x2

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I

    if-eq v3, v4, :cond_54

    .line 860
    const-string v3, "FmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    const/4 v2, 0x3

    .line 884
    :goto_4a
    if-eqz v2, :cond_52

    .line 885
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_52
    .catchall {:try_start_4 .. :try_end_52} :catchall_85

    .line 887
    :cond_52
    monitor-exit p0

    return v2

    .line 863
    :cond_54
    const/4 v3, 0x4

    :try_start_55
    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I

    .line 865
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 866
    .local v1, msg:Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->what:I

    .line 867
    const/16 v3, 0x64

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 868
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 869
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_6f
    .catchall {:try_start_55 .. :try_end_6f} :catchall_85

    .line 872
    and-int/lit8 p1, p1, 0x3

    .line 875
    :try_start_71
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setAudioPathNative(I)Z
    :try_end_74
    .catchall {:try_start_71 .. :try_end_74} :catchall_85
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_74} :catch_7b

    move-result v3

    if-eqz v3, :cond_79

    .line 876
    const/4 v2, 0x0

    goto :goto_4a

    .line 878
    :cond_79
    const/4 v2, 0x2

    goto :goto_4a

    .line 879
    :catch_7b
    move-exception v0

    .line 880
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    .line 881
    :try_start_7d
    const-string v3, "FmReceiverService"

    const-string v4, "setAudioPathNative failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_84
    .catchall {:try_start_7d .. :try_end_84} :catchall_85

    goto :goto_4a

    .line 855
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #msg:Landroid/os/Message;
    :catchall_85
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized setFMVolume(I)I
    .registers 8
    .parameter "volume"

    .prologue
    const-string v3, "FmReceiverService"

    .line 950
    monitor-enter p0

    :try_start_3
    const-string v3, "FmReceiverService"

    const-string v4, "setFMVolume()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    const/4 v2, 0x0

    .line 955
    .local v2, returnStatus:I
    if-ltz p1, :cond_11

    const/16 v3, 0x100

    if-le p1, v3, :cond_2c

    .line 957
    :cond_11
    const-string v3, "FmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "volume is illegal ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_94

    .line 958
    const/4 v2, 0x4

    .line 984
    :cond_2a
    :goto_2a
    monitor-exit p0

    return v2

    .line 959
    :cond_2c
    const/4 v3, 0x2

    :try_start_2d
    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I

    if-eq v3, v4, :cond_51

    .line 960
    const-string v3, "FmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    const/4 v2, 0x3

    goto :goto_2a

    .line 963
    :cond_51
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I

    .line 965
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 966
    .local v1, msg:Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->what:I

    .line 967
    const/16 v3, 0x64

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 968
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 969
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 970
    const-string v3, "FmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setFMVolume ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_84
    .catchall {:try_start_2d .. :try_end_84} :catchall_94

    .line 972
    :try_start_84
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setFMVolumeNative(I)Z
    :try_end_87
    .catchall {:try_start_84 .. :try_end_87} :catchall_94
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_87} :catch_99

    move-result v3

    if-eqz v3, :cond_97

    .line 973
    const/4 v2, 0x0

    .line 980
    :goto_8b
    if-eqz v2, :cond_2a

    .line 981
    :try_start_8d
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_93
    .catchall {:try_start_8d .. :try_end_93} :catchall_94

    goto :goto_2a

    .line 950
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #returnStatus:I
    :catchall_94
    move-exception v3

    monitor-exit p0

    throw v3

    .line 975
    .restart local v1       #msg:Landroid/os/Message;
    .restart local v2       #returnStatus:I
    :cond_97
    const/4 v2, 0x2

    goto :goto_8b

    .line 976
    :catch_99
    move-exception v0

    .line 977
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    .line 978
    :try_start_9b
    const-string v3, "FmReceiverService"

    const-string v4, "setFMVolumeNative failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a2
    .catchall {:try_start_9b .. :try_end_a2} :catchall_94

    goto :goto_8b
.end method

.method public declared-synchronized setLiveAudioPolling(ZI)I
    .registers 8
    .parameter "liveAudioPolling"
    .parameter "signalPollInterval"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const-string v2, "FmReceiverService"

    .line 1108
    monitor-enter p0

    const/4 v1, 0x0

    .line 1110
    .local v1, returnStatus:I
    :try_start_5
    const-string v2, "FmReceiverService"

    const-string v3, "setLiveAudioPolling()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_52

    .line 1113
    if-eqz p1, :cond_1a

    const/16 v2, 0xa

    if-lt p2, v2, :cond_17

    const v2, 0x186a0

    if-le p2, v2, :cond_1a

    .line 1115
    :cond_17
    const/4 v1, 0x4

    .line 1136
    :goto_18
    monitor-exit p0

    return v1

    .line 1116
    :cond_1a
    :try_start_1a
    sget v2, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I

    if-eq v4, v2, :cond_3e

    .line 1117
    const-string v2, "FmReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "STATE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    const/4 v1, 0x3

    goto :goto_18

    .line 1120
    :cond_3e
    const/4 v2, 0x4

    sput v2, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I
    :try_end_41
    .catchall {:try_start_1a .. :try_end_41} :catchall_52

    .line 1123
    :try_start_41
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->getAudioQualityNative(Z)Z

    move-result v2

    if-eqz v2, :cond_55

    invoke-direct {p0, p2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->configureSignalNotificationNative(I)Z
    :try_end_4a
    .catchall {:try_start_41 .. :try_end_4a} :catchall_52
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_4a} :catch_57

    move-result v2

    if-eqz v2, :cond_55

    .line 1125
    const/4 v1, 0x0

    .line 1133
    :goto_4e
    const/4 v2, 0x2

    :try_start_4f
    sput v2, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I
    :try_end_51
    .catchall {:try_start_4f .. :try_end_51} :catchall_52

    goto :goto_18

    .line 1108
    :catchall_52
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1127
    :cond_55
    const/4 v1, 0x2

    goto :goto_4e

    .line 1128
    :catch_57
    move-exception v2

    move-object v0, v2

    .line 1129
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x2

    .line 1130
    :try_start_5a
    const-string v2, "FmReceiverService"

    const-string v3, "setLiveAudioPolling failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_61
    .catchall {:try_start_5a .. :try_end_61} :catchall_52

    goto :goto_4e
.end method

.method public declared-synchronized setRdsMode(IIII)I
    .registers 16
    .parameter "rdsMode"
    .parameter "rdsFeatures"
    .parameter "afMode"
    .parameter "afThreshold"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const-string v6, "FmReceiverService"

    .line 743
    monitor-enter p0

    const/4 v5, 0x0

    .line 745
    .local v5, returnStatus:I
    :try_start_6
    const-string v6, "FmReceiverService"

    const-string v7, "setRdsMode()"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_77

    .line 748
    if-ltz p4, :cond_13

    const/16 v6, 0xff

    if-le p4, v6, :cond_16

    .line 750
    :cond_13
    const/4 v5, 0x4

    .line 789
    :cond_14
    :goto_14
    monitor-exit p0

    return v5

    .line 751
    :cond_16
    const/4 v6, 0x2

    :try_start_17
    sget v7, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I

    if-eq v6, v7, :cond_3b

    .line 752
    const-string v6, "FmReceiverService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "STATE = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    const/4 v5, 0x3

    goto :goto_14

    .line 755
    :cond_3b
    const/4 v6, 0x4

    sput v6, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I

    .line 756
    const/4 v6, 0x0

    sput v6, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_op_state:I

    .line 758
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 759
    .local v2, msg:Landroid/os/Message;
    const/4 v6, 0x1

    iput v6, v2, Landroid/os/Message;->what:I

    .line 760
    const/16 v6, 0x64

    iput v6, v2, Landroid/os/Message;->arg1:I

    .line 761
    iget-object v6, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 762
    iget-object v6, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v7, 0x1388

    invoke-virtual {v6, v2, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_59
    .catchall {:try_start_17 .. :try_end_59} :catchall_77

    .line 765
    and-int/lit8 p1, p1, 0x3

    .line 766
    and-int/lit8 p3, p3, 0x1

    .line 767
    and-int/lit8 p2, p2, 0x7c

    .line 768
    if-eqz p1, :cond_7a

    move v4, v9

    .line 769
    .local v4, rdsOnNative:Z
    :goto_62
    if-eqz p3, :cond_7c

    move v0, v9

    .line 772
    .local v0, afOnNative:Z
    :goto_65
    and-int/lit8 v3, p1, 0x1

    .line 776
    .local v3, rdsModeNative:I
    :try_start_67
    invoke-direct {p0, v4, v0, v3}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setRdsModeNative(ZZI)Z
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_77
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6a} :catch_80

    move-result v6

    if-eqz v6, :cond_7e

    .line 777
    const/4 v5, 0x0

    .line 785
    :goto_6e
    if-eqz v5, :cond_14

    .line 786
    :try_start_70
    iget-object v6, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_76
    .catchall {:try_start_70 .. :try_end_76} :catchall_77

    goto :goto_14

    .line 743
    .end local v0           #afOnNative:Z
    .end local v2           #msg:Landroid/os/Message;
    .end local v3           #rdsModeNative:I
    .end local v4           #rdsOnNative:Z
    :catchall_77
    move-exception v6

    monitor-exit p0

    throw v6

    .restart local v2       #msg:Landroid/os/Message;
    :cond_7a
    move v4, v10

    .line 768
    goto :goto_62

    .restart local v4       #rdsOnNative:Z
    :cond_7c
    move v0, v10

    .line 769
    goto :goto_65

    .line 779
    .restart local v0       #afOnNative:Z
    .restart local v3       #rdsModeNative:I
    :cond_7e
    const/4 v5, 0x2

    goto :goto_6e

    .line 781
    :catch_80
    move-exception v1

    .line 782
    .local v1, e:Ljava/lang/Exception;
    :try_start_81
    const-string v6, "FmReceiverService"

    const-string v7, "setRdsNative failed"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_88
    .catchall {:try_start_81 .. :try_end_88} :catchall_77

    .line 783
    const/4 v5, 0x2

    goto :goto_6e
.end method

.method public declared-synchronized setStepSize(I)I
    .registers 8
    .parameter "stepSize"

    .prologue
    const-string v3, "FmReceiverService"

    .line 904
    monitor-enter p0

    :try_start_3
    const-string v3, "FmReceiverService"

    const-string v4, "setStepSize()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_64

    .line 906
    const/4 v2, 0x0

    .line 909
    .local v2, returnStatus:I
    const/16 v3, 0x10

    if-eq p1, v3, :cond_14

    if-eqz p1, :cond_14

    .line 911
    const/4 v2, 0x4

    .line 937
    :cond_12
    :goto_12
    monitor-exit p0

    return v2

    .line 912
    :cond_14
    const/4 v3, 0x2

    :try_start_15
    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I

    if-eq v3, v4, :cond_39

    .line 913
    const-string v3, "FmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    const/4 v2, 0x3

    goto :goto_12

    .line 916
    :cond_39
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I

    .line 918
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 919
    .local v1, msg:Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->what:I

    .line 920
    const/16 v3, 0x64

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 921
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 922
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_54
    .catchall {:try_start_15 .. :try_end_54} :catchall_64

    .line 925
    :try_start_54
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setScanStepNative(I)Z
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_64
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_57} :catch_69

    move-result v3

    if-eqz v3, :cond_67

    .line 926
    const/4 v2, 0x0

    .line 933
    :goto_5b
    if-eqz v2, :cond_12

    .line 934
    :try_start_5d
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_63
    .catchall {:try_start_5d .. :try_end_63} :catchall_64

    goto :goto_12

    .line 904
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #returnStatus:I
    :catchall_64
    move-exception v3

    monitor-exit p0

    throw v3

    .line 928
    .restart local v1       #msg:Landroid/os/Message;
    .restart local v2       #returnStatus:I
    :cond_67
    const/4 v2, 0x2

    goto :goto_5b

    .line 929
    :catch_69
    move-exception v0

    .line 930
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    .line 931
    :try_start_6b
    const-string v3, "FmReceiverService"

    const-string v4, "setScanStepNative failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_72
    .catchall {:try_start_6b .. :try_end_72} :catchall_64

    goto :goto_5b
.end method

.method public declared-synchronized setWorldRegion(II)I
    .registers 10
    .parameter "worldRegion"
    .parameter "deemphasisTime"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const-string v3, "FmReceiverService"

    .line 1000
    monitor-enter p0

    :try_start_5
    const-string v3, "FmReceiverService"

    const-string v4, "setWorldRegion()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_73

    .line 1002
    const/4 v2, 0x0

    .line 1005
    .local v2, returnStatus:I
    if-eqz p1, :cond_16

    if-eq p1, v5, :cond_16

    if-eq p1, v6, :cond_16

    .line 1008
    const/4 v2, 0x4

    .line 1037
    :cond_14
    :goto_14
    monitor-exit p0

    return v2

    .line 1009
    :cond_16
    if-eqz p2, :cond_1e

    const/16 v3, 0x40

    if-eq p2, v3, :cond_1e

    .line 1011
    const/4 v2, 0x4

    goto :goto_14

    .line 1012
    :cond_1e
    :try_start_1e
    sget v3, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I

    if-eq v6, v3, :cond_42

    .line 1013
    const-string v3, "FmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    const/4 v2, 0x3

    goto :goto_14

    .line 1016
    :cond_42
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I

    .line 1018
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1019
    .local v1, msg:Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->what:I

    .line 1020
    const/16 v3, 0x64

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 1021
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1022
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_5d
    .catchall {:try_start_1e .. :try_end_5d} :catchall_73

    .line 1025
    :try_start_5d
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setRegionNative(I)Z

    move-result v3

    if-eqz v3, :cond_76

    invoke-direct {p0, p2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->configureDeemphasisNative(I)Z
    :try_end_66
    .catchall {:try_start_5d .. :try_end_66} :catchall_73
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_66} :catch_78

    move-result v3

    if-eqz v3, :cond_76

    .line 1026
    const/4 v2, 0x0

    .line 1033
    :goto_6a
    if-eqz v2, :cond_14

    .line 1034
    :try_start_6c
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_72
    .catchall {:try_start_6c .. :try_end_72} :catchall_73

    goto :goto_14

    .line 1000
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #returnStatus:I
    :catchall_73
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1028
    .restart local v1       #msg:Landroid/os/Message;
    .restart local v2       #returnStatus:I
    :cond_76
    const/4 v2, 0x2

    goto :goto_6a

    .line 1029
    :catch_78
    move-exception v3

    move-object v0, v3

    .line 1030
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    .line 1031
    :try_start_7b
    const-string v3, "FmReceiverService"

    const-string v4, "setRdsNative failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_82
    .catchall {:try_start_7b .. :try_end_82} :catchall_73

    goto :goto_6a
.end method

.method public declared-synchronized tuneRadio(I)I
    .registers 8
    .parameter "freq"

    .prologue
    const/4 v5, 0x1

    const-string v3, "FmReceiverService"

    .line 469
    monitor-enter p0

    :try_start_4
    const-string v3, "FmReceiverService"

    const-string v4, "tuneRadio()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_66

    .line 471
    const/4 v2, 0x0

    .line 474
    .local v2, returnStatus:I
    if-lt p1, v5, :cond_13

    const v3, 0x1869f

    if-le p1, v3, :cond_16

    .line 476
    :cond_13
    const/4 v2, 0x4

    .line 502
    :cond_14
    :goto_14
    monitor-exit p0

    return v2

    .line 477
    :cond_16
    const/4 v3, 0x2

    :try_start_17
    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I

    if-eq v3, v4, :cond_3b

    .line 478
    const-string v3, "FmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    const/4 v2, 0x3

    goto :goto_14

    .line 481
    :cond_3b
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I

    .line 483
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 484
    .local v1, msg:Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->what:I

    .line 485
    const/16 v3, 0x64

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 486
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 487
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_56
    .catchall {:try_start_17 .. :try_end_56} :catchall_66

    .line 490
    :try_start_56
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->tuneNative(I)Z
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_66
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_59} :catch_6b

    move-result v3

    if-eqz v3, :cond_69

    .line 491
    const/4 v2, 0x0

    .line 498
    :goto_5d
    if-eqz v2, :cond_14

    .line 499
    :try_start_5f
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_65
    .catchall {:try_start_5f .. :try_end_65} :catchall_66

    goto :goto_14

    .line 469
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #returnStatus:I
    :catchall_66
    move-exception v3

    monitor-exit p0

    throw v3

    .line 493
    .restart local v1       #msg:Landroid/os/Message;
    .restart local v2       #returnStatus:I
    :cond_69
    const/4 v2, 0x2

    goto :goto_5d

    .line 494
    :catch_6b
    move-exception v0

    .line 495
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    .line 496
    :try_start_6d
    const-string v3, "FmReceiverService"

    const-string v4, "tuneNative failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_74
    .catchall {:try_start_6d .. :try_end_74} :catchall_66

    goto :goto_5d
.end method

.method public declared-synchronized turnOffRadio()I
    .registers 7

    .prologue
    const-string v3, "FmReceiverService"

    .line 420
    monitor-enter p0

    :try_start_3
    const-string v3, "FmReceiverService"

    const-string v4, "turnOffRadio()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    const/4 v2, 0x0

    .line 424
    .local v2, returnStatus:I
    const/4 v3, 0x2

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I

    if-eq v3, v4, :cond_16

    .line 426
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 428
    :cond_16
    const/4 v3, 0x3

    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I

    .line 430
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 431
    .local v1, msg:Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->what:I

    .line 432
    const/4 v3, 0x5

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 433
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 434
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x2710

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_51

    .line 437
    const/4 v3, 0x0

    :try_start_31
    invoke-direct {p0, v3}, Lcom/broadcom/bt/service/fm/FmReceiverService;->disableNative(Z)Z
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_51
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_34} :catch_47

    move-result v3

    if-eqz v3, :cond_45

    .line 438
    const/4 v2, 0x0

    .line 446
    :goto_38
    if-eqz v2, :cond_40

    .line 448
    :try_start_3a
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 454
    :cond_40
    const/4 v3, 0x0

    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I
    :try_end_43
    .catchall {:try_start_3a .. :try_end_43} :catchall_51

    .line 456
    monitor-exit p0

    return v2

    .line 440
    :cond_45
    const/4 v2, 0x2

    goto :goto_38

    .line 441
    :catch_47
    move-exception v0

    .line 442
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    .line 443
    :try_start_49
    const-string v3, "FmReceiverService"

    const-string v4, "turnOnRadioNative failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_50
    .catchall {:try_start_49 .. :try_end_50} :catchall_51

    goto :goto_38

    .line 420
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #returnStatus:I
    :catchall_51
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized turnOnRadio(I)I
    .registers 10
    .parameter "functionalityMask"

    .prologue
    const/4 v7, 0x1

    const-string v5, "FmReceiverService"

    .line 362
    monitor-enter p0

    :try_start_4
    const-string v5, "FmReceiverService"

    const-string v6, "turnOnRadio()"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_74

    .line 364
    const/4 v4, 0x0

    .line 365
    .local v4, returnStatus:I
    and-int/lit8 v3, p1, 0x3

    .line 366
    .local v3, requestedRegion:I
    and-int/lit8 v2, p1, 0x70

    .line 369
    .local v2, requestedRdsFeatures:I
    if-eq v3, v7, :cond_1a

    const/4 v5, 0x2

    if-eq v3, v5, :cond_1a

    if-eqz v3, :cond_1a

    .line 372
    const/4 v4, 0x4

    .line 406
    :cond_18
    :goto_18
    monitor-exit p0

    return v4

    .line 373
    :cond_1a
    and-int/lit8 v5, v2, 0x10

    if-eqz v5, :cond_24

    and-int/lit8 v5, v2, 0x20

    if-eqz v5, :cond_24

    .line 375
    const/4 v4, 0x4

    goto :goto_18

    .line 376
    :cond_24
    :try_start_24
    sget v5, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I

    if-eqz v5, :cond_48

    .line 377
    const-string v5, "FmReceiverService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "STATE = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const/4 v4, 0x3

    goto :goto_18

    .line 380
    :cond_48
    const/4 v5, 0x1

    sput v5, Lcom/broadcom/bt/service/fm/FmReceiverService;->radio_state:I

    .line 382
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 383
    .local v1, msg:Landroid/os/Message;
    const/4 v5, 0x1

    iput v5, v1, Landroid/os/Message;->what:I

    .line 384
    const/4 v5, 0x4

    iput v5, v1, Landroid/os/Message;->arg1:I

    .line 385
    iget-object v5, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 386
    iget-object v5, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x2710

    invoke-virtual {v5, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_62
    .catchall {:try_start_24 .. :try_end_62} :catchall_74

    .line 389
    and-int/lit8 p1, p1, 0x73

    .line 392
    :try_start_64
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->enableNative(I)Z
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_74
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_67} :catch_79

    move-result v5

    if-eqz v5, :cond_77

    .line 393
    const/4 v4, 0x0

    .line 401
    :goto_6b
    if-eqz v4, :cond_18

    .line 402
    :try_start_6d
    iget-object v5, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_73
    .catchall {:try_start_6d .. :try_end_73} :catchall_74

    goto :goto_18

    .line 362
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #requestedRdsFeatures:I
    .end local v3           #requestedRegion:I
    .end local v4           #returnStatus:I
    :catchall_74
    move-exception v5

    monitor-exit p0

    throw v5

    .line 395
    .restart local v1       #msg:Landroid/os/Message;
    .restart local v2       #requestedRdsFeatures:I
    .restart local v3       #requestedRegion:I
    .restart local v4       #returnStatus:I
    :cond_77
    const/4 v4, 0x2

    goto :goto_6b

    .line 397
    :catch_79
    move-exception v0

    .line 398
    .local v0, e:Ljava/lang/Exception;
    const/4 v4, 0x2

    .line 399
    :try_start_7b
    const-string v5, "FmReceiverService"

    const-string v6, "turnOnRadioNative failed"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_82
    .catchall {:try_start_7b .. :try_end_82} :catchall_74

    goto :goto_6b
.end method

.method public declared-synchronized unregisterCallback(Lcom/broadcom/bt/service/fm/IFmReceiverCallback;)V
    .registers 3
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 308
    monitor-enter p0

    if-eqz p1, :cond_8

    .line 309
    :try_start_3
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    .line 311
    :cond_8
    monitor-exit p0

    return-void

    .line 308
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method
