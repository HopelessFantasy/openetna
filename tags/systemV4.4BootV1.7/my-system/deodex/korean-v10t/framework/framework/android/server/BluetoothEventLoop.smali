.class Landroid/server/BluetoothEventLoop;
.super Ljava/lang/Object;
.source "BluetoothEventLoop.java"


# static fields
.field private static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field private static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field private static final DBG:Z = false

.field private static final EVENT_AUTO_PAIRING_FAILURE_ATTEMPT_DELAY:I = 0x1

.field private static final EVENT_RESTART_BLUETOOTH:I = 0x2

.field private static final INIT_AUTO_PAIRING_FAILURE_ATTEMPT_DELAY:J = 0xbb8L

.field private static final MAX_AUTO_PAIRING_FAILURE_ATTEMPT_DELAY:J = 0x2ee0L

.field private static final NORMAL_PAIRING_MODE:I = 0x0

.field private static final SIMPLE_PAIRING_MODE_APPROVE:I = 0x2

.field private static final SIMPLE_PAIRING_MODE_KEYBOARD:I = 0x3

.field private static final SIMPLE_PAIRING_MODE_MATCH:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BluetoothEventLoop"


# instance fields
.field private final mAuthorizeAgentRequestData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mBluetoothService:Landroid/server/BluetoothDeviceService;

.field private final mContext:Landroid/content/Context;

.field private final mGetRemoteServiceChannelCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/bluetooth/IBluetoothDeviceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mGetRemoteServicesCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/bluetooth/IBluetoothDeviceServicesCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mInterrupted:Z

.field private mNativeData:I

.field private final mPasskeyAgentRequestData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mStarted:Z

.field private mThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 94
    invoke-static {}, Landroid/server/BluetoothEventLoop;->classInitNative()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/server/BluetoothDeviceService;)V
    .registers 4
    .parameter "context"
    .parameter "bluetoothService"

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Landroid/server/BluetoothEventLoop$1;

    invoke-direct {v0, p0}, Landroid/server/BluetoothEventLoop$1;-><init>(Landroid/server/BluetoothEventLoop;)V

    iput-object v0, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/os/Handler;

    .line 98
    iput-object p2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothDeviceService;

    .line 99
    iput-object p1, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/server/BluetoothEventLoop;->mPasskeyAgentRequestData:Ljava/util/HashMap;

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/server/BluetoothEventLoop;->mAuthorizeAgentRequestData:Ljava/util/HashMap;

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/server/BluetoothEventLoop;->mGetRemoteServiceChannelCallbacks:Ljava/util/HashMap;

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/server/BluetoothEventLoop;->mGetRemoteServicesCallbacks:Ljava/util/HashMap;

    .line 104
    invoke-direct {p0}, Landroid/server/BluetoothEventLoop;->initializeNativeDataNative()V

    .line 105
    return-void
.end method

.method static synthetic access$000(Landroid/server/BluetoothEventLoop;)Landroid/server/BluetoothDeviceService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothDeviceService;

    return-object v0
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNativeDataNative()V
.end method

.method private native initializeNativeDataNative()V
.end method

.method private native isEventLoopRunningNative()Z
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 470
    const-string v0, "BluetoothEventLoop"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    return-void
.end method

.method private onAuthAgentAuthorize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 12
    .parameter "address"
    .parameter "service"
    .parameter "uuid"
    .parameter "nativeData"

    .prologue
    const-string v6, " connection from "

    const-string v5, "BluetoothEventLoop"

    .line 410
    const/4 v1, 0x0

    .line 411
    .local v1, authorized:Z
    const-string v3, "service_pbap"

    invoke-virtual {p2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2d

    const-string v3, "service_opp"

    invoke-virtual {p2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2d

    const-string v3, "service_ftp"

    invoke-virtual {p2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2d

    const-string v3, "service_dun"

    invoke-virtual {p2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2d

    const-string v3, "service_spp"

    invoke-virtual {p2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_73

    .line 412
    :cond_2d
    const-string v3, "BluetoothEventLoop"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Authorization for incoming "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " connection from "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mAuthorizeAgentRequestData:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.bluetooth.intent.action.AUTHORIZE_REQUEST"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 415
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "android.bluetooth.intent.ADDRESS"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 416
    const-string v3, "android.bluetooth.intent.SERVICE"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 417
    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 418
    const/4 v1, 0x1

    .line 431
    .end local v2           #intent:Landroid/content/Intent;
    :goto_72
    return v1

    .line 420
    :cond_73
    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothDeviceService;

    invoke-virtual {v3}, Landroid/server/BluetoothDeviceService;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_c9

    const-string v3, "service_audio"

    invoke-virtual {p2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c9

    .line 421
    new-instance v0, Landroid/bluetooth/BluetoothA2dp;

    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/bluetooth/BluetoothA2dp;-><init>(Landroid/content/Context;)V

    .line 422
    .local v0, a2dp:Landroid/bluetooth/BluetoothA2dp;
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->getSinkPriority(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_ad

    const/4 v3, 0x1

    move v1, v3

    .line 423
    :goto_92
    if-eqz v1, :cond_b0

    .line 424
    const-string v3, "BluetoothEventLoop"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Allowing incoming A2DP connection from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_72

    .line 422
    :cond_ad
    const/4 v3, 0x0

    move v1, v3

    goto :goto_92

    .line 426
    :cond_b0
    const-string v3, "BluetoothEventLoop"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Rejecting incoming A2DP connection from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_72

    .line 429
    .end local v0           #a2dp:Landroid/bluetooth/BluetoothA2dp;
    :cond_c9
    const-string v3, "BluetoothEventLoop"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Rejecting incoming "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " connection from "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_72
.end method

.method private onAuthAgentCancel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "address"
    .parameter "service"
    .parameter "uuid"

    .prologue
    const-string v2, ", "

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAuthAgentCancel("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    .line 438
    return-void
.end method

.method private onBondingCreated(Ljava/lang/String;)V
    .registers 5
    .parameter "address"

    .prologue
    .line 282
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothDeviceService;

    invoke-virtual {v0}, Landroid/server/BluetoothDeviceService;->getBondState()Landroid/server/BluetoothDeviceService$BondState;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/server/BluetoothDeviceService$BondState;->setBondState(Ljava/lang/String;I)V

    .line 284
    return-void
.end method

.method private onBondingRemoved(Ljava/lang/String;)V
    .registers 6
    .parameter "address"

    .prologue
    .line 287
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothDeviceService;

    invoke-virtual {v0}, Landroid/server/BluetoothDeviceService;->getBondState()Landroid/server/BluetoothDeviceService$BondState;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/server/BluetoothDeviceService$BondState;->setBondState(Ljava/lang/String;II)V

    .line 289
    return-void
.end method

.method private onCreateBondingResult(Ljava/lang/String;I)V
    .registers 5
    .parameter "address"
    .parameter "result"

    .prologue
    const/4 v1, 0x1

    .line 229
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 230
    if-nez p2, :cond_26

    .line 231
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothDeviceService;

    invoke-virtual {v0}, Landroid/server/BluetoothDeviceService;->getBondState()Landroid/server/BluetoothDeviceService$BondState;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Landroid/server/BluetoothDeviceService$BondState;->setBondState(Ljava/lang/String;I)V

    .line 232
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothDeviceService;

    invoke-virtual {v0}, Landroid/server/BluetoothDeviceService;->getBondState()Landroid/server/BluetoothDeviceService$BondState;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/server/BluetoothDeviceService$BondState;->isAutoPairingAttemptsInProgress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 233
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothDeviceService;

    invoke-virtual {v0}, Landroid/server/BluetoothDeviceService;->getBondState()Landroid/server/BluetoothDeviceService$BondState;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/server/BluetoothDeviceService$BondState;->clearPinAttempts(Ljava/lang/String;)V

    .line 249
    :cond_25
    :goto_25
    return-void

    .line 235
    :cond_26
    if-ne p2, v1, :cond_41

    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothDeviceService;

    invoke-virtual {v0}, Landroid/server/BluetoothDeviceService;->getBondState()Landroid/server/BluetoothDeviceService$BondState;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/server/BluetoothDeviceService$BondState;->getAttempt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_41

    .line 237
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothDeviceService;

    invoke-virtual {v0}, Landroid/server/BluetoothDeviceService;->getBondState()Landroid/server/BluetoothDeviceService$BondState;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/server/BluetoothDeviceService$BondState;->addAutoPairingFailure(Ljava/lang/String;)V

    .line 238
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothEventLoop;->pairingAttempt(Ljava/lang/String;I)V

    goto :goto_25

    .line 239
    :cond_41
    const/4 v0, 0x4

    if-ne p2, v0, :cond_54

    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothDeviceService;

    invoke-virtual {v0}, Landroid/server/BluetoothDeviceService;->getBondState()Landroid/server/BluetoothDeviceService$BondState;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/server/BluetoothDeviceService$BondState;->isAutoPairingAttemptsInProgress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 241
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothEventLoop;->pairingAttempt(Ljava/lang/String;I)V

    goto :goto_25

    .line 243
    :cond_54
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothDeviceService;

    invoke-virtual {v0}, Landroid/server/BluetoothDeviceService;->getBondState()Landroid/server/BluetoothDeviceService$BondState;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Landroid/server/BluetoothDeviceService$BondState;->setBondState(Ljava/lang/String;II)V

    .line 245
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothDeviceService;

    invoke-virtual {v0}, Landroid/server/BluetoothDeviceService;->getBondState()Landroid/server/BluetoothDeviceService$BondState;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/server/BluetoothDeviceService$BondState;->isAutoPairingAttemptsInProgress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 246
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothDeviceService;

    invoke-virtual {v0}, Landroid/server/BluetoothDeviceService;->getBondState()Landroid/server/BluetoothDeviceService$BondState;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/server/BluetoothDeviceService$BondState;->clearPinAttempts(Ljava/lang/String;)V

    goto :goto_25
.end method

.method private onDiscoveryCompleted()V
    .registers 4

    .prologue
    .line 172
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothDeviceService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/server/BluetoothDeviceService;->setIsDiscovering(Z)V

    .line 173
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.intent.action.DISCOVERY_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 174
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method private onDiscoveryStarted()V
    .registers 4

    .prologue
    .line 167
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothDeviceService;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/server/BluetoothDeviceService;->setIsDiscovering(Z)V

    .line 168
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.intent.action.DISCOVERY_STARTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 169
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method private onGetRemoteServiceChannelResult(Ljava/lang/String;I)V
    .registers 7
    .parameter "address"
    .parameter "channel"

    .prologue
    .line 441
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mGetRemoteServiceChannelCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothDeviceCallback;

    .line 442
    .local v0, callback:Landroid/bluetooth/IBluetoothDeviceCallback;
    const-string v1, "BluetoothEventLoop"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGetRemoteServiceChannelResult for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": channel="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    if-eqz v0, :cond_34

    .line 444
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mGetRemoteServiceChannelCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    :try_start_31
    invoke-interface {v0, p1, p2}, Landroid/bluetooth/IBluetoothDeviceCallback;->onGetRemoteServiceChannelResult(Ljava/lang/String;I)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_34} :catch_35

    .line 449
    :cond_34
    :goto_34
    return-void

    .line 447
    :catch_35
    move-exception v1

    goto :goto_34
.end method

.method private onGetRemoteServicesResult(Ljava/lang/String;ZI)V
    .registers 8
    .parameter "address"
    .parameter "success"
    .parameter "service_mask"

    .prologue
    .line 452
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mGetRemoteServicesCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothDeviceServicesCallback;

    .line 453
    .local v0, callback:Landroid/bluetooth/IBluetoothDeviceServicesCallback;
    const-string v1, "BluetoothEventLoop"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGetRemoteServicesResult for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "success:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": service_mask="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    if-eqz v0, :cond_3e

    .line 455
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mGetRemoteServicesCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    :try_start_3b
    invoke-interface {v0, p1, p2, p3}, Landroid/bluetooth/IBluetoothDeviceServicesCallback;->onGetRemoteServicesResult(Ljava/lang/String;ZI)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_3e} :catch_3f

    .line 460
    :cond_3e
    :goto_3e
    return-void

    .line 458
    :catch_3f
    move-exception v1

    goto :goto_3e
.end method

.method private onNameChanged(Ljava/lang/String;)V
    .registers 5
    .parameter "name"

    .prologue
    .line 292
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.intent.action.NAME_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 293
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.intent.NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 295
    return-void
.end method

.method private onPasskeyAgentCancel(Ljava/lang/String;)V
    .registers 3
    .parameter "address"

    .prologue
    .line 379
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/server/BluetoothEventLoop;->onPasskeyAgentCancelExt(Ljava/lang/String;I)V

    .line 380
    return-void
.end method

.method private onPasskeyAgentRequest(Ljava/lang/String;I)V
    .registers 7
    .parameter "address"
    .parameter "nativeData"

    .prologue
    const/4 v3, 0x0

    .line 298
    const-string v0, "BluetoothEventLoop"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPasskeyAgentRequest recieved ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") OK!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    invoke-virtual {p0, p1, p2, v3, v3}, Landroid/server/BluetoothEventLoop;->onPasskeyAgentRequestExt(Ljava/lang/String;III)V

    .line 301
    return-void
.end method

.method private onRemoteClassUpdated(Ljava/lang/String;I)V
    .registers 6
    .parameter "address"
    .parameter "deviceClass"

    .prologue
    .line 190
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.intent.action.REMOTE_DEVICE_DISAPPEARED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 191
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.intent.ADDRESS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    const-string v1, "android.bluetooth.intent.CLASS"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 193
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method private onRemoteDeviceConnected(Ljava/lang/String;)V
    .registers 5
    .parameter "address"

    .prologue
    .line 196
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.intent.action.REMOTE_DEVICE_CONNECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 197
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.intent.ADDRESS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method private onRemoteDeviceDisappeared(Ljava/lang/String;)V
    .registers 5
    .parameter "address"

    .prologue
    .line 185
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.intent.action.REMOTE_DEVICE_DISAPPEARED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 186
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.intent.ADDRESS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method private onRemoteDeviceDisconnectRequested(Ljava/lang/String;)V
    .registers 5
    .parameter "address"

    .prologue
    .line 201
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.intent.action.REMOTE_DEVICE_DISCONNECT_REQUESTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 202
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.intent.ADDRESS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method private onRemoteDeviceDisconnected(Ljava/lang/String;)V
    .registers 5
    .parameter "address"

    .prologue
    .line 206
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.intent.action.REMOTE_DEVICE_DISCONNECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 207
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.intent.ADDRESS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method private onRemoteDeviceFound(Ljava/lang/String;IS)V
    .registers 7
    .parameter "address"
    .parameter "deviceClass"
    .parameter "rssi"

    .prologue
    .line 178
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.intent.action.REMOTE_DEVICE_FOUND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 179
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.intent.ADDRESS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    const-string v1, "android.bluetooth.intent.CLASS"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 181
    const-string v1, "android.bluetooth.intent.RSSI"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;S)Landroid/content/Intent;

    .line 182
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method private onRemoteNameChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "address"
    .parameter "name"

    .prologue
    .line 222
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.intent.action.REMOTE_NAME_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 223
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.intent.ADDRESS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    const-string v1, "android.bluetooth.intent.NAME"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method private onRemoteNameFailed(Ljava/lang/String;)V
    .registers 5
    .parameter "address"

    .prologue
    .line 217
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.intent.action.REMOTE_NAME_FAILED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 218
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.intent.ADDRESS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method private onRemoteNameUpdated(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "address"
    .parameter "name"

    .prologue
    .line 211
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.intent.action.REMOTE_NAME_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 212
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.intent.ADDRESS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    const-string v1, "android.bluetooth.intent.NAME"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method private onRestartRequired()V
    .registers 3

    .prologue
    .line 463
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothDeviceService;

    invoke-virtual {v0}, Landroid/server/BluetoothDeviceService;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 464
    const-string v0, "BluetoothEventLoop"

    const-string v1, "*** A serious error occured (did hcid crash?) - restarting Bluetooth ***"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 467
    :cond_15
    return-void
.end method

.method private pairingAttempt(Ljava/lang/String;I)V
    .registers 13
    .parameter "address"
    .parameter "result"

    .prologue
    const-wide/16 v8, 0xbb8

    const/4 v7, 0x0

    .line 259
    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothDeviceService;

    invoke-virtual {v3}, Landroid/server/BluetoothDeviceService;->getBondState()Landroid/server/BluetoothDeviceService$BondState;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/server/BluetoothDeviceService$BondState;->getAttempt(Ljava/lang/String;)I

    move-result v0

    .line 260
    .local v0, attempt:I
    int-to-long v3, v0

    mul-long/2addr v3, v8

    const-wide/16 v5, 0x2ee0

    cmp-long v3, v3, v5

    if-lez v3, :cond_28

    .line 262
    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothDeviceService;

    invoke-virtual {v3}, Landroid/server/BluetoothDeviceService;->getBondState()Landroid/server/BluetoothDeviceService$BondState;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/server/BluetoothDeviceService$BondState;->clearPinAttempts(Ljava/lang/String;)V

    .line 263
    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothDeviceService;

    invoke-virtual {v3}, Landroid/server/BluetoothDeviceService;->getBondState()Landroid/server/BluetoothDeviceService$BondState;

    move-result-object v3

    invoke-virtual {v3, p1, v7, p2}, Landroid/server/BluetoothDeviceService$BondState;->setBondState(Ljava/lang/String;II)V

    .line 279
    :goto_27
    return-void

    .line 268
    :cond_28
    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 269
    .local v1, message:Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 270
    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/os/Handler;

    int-to-long v4, v0

    mul-long/2addr v4, v8

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v2

    .line 272
    .local v2, postResult:Z
    if-nez v2, :cond_4e

    .line 273
    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothDeviceService;

    invoke-virtual {v3}, Landroid/server/BluetoothDeviceService;->getBondState()Landroid/server/BluetoothDeviceService$BondState;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/server/BluetoothDeviceService$BondState;->clearPinAttempts(Ljava/lang/String;)V

    .line 274
    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothDeviceService;

    invoke-virtual {v3}, Landroid/server/BluetoothDeviceService;->getBondState()Landroid/server/BluetoothDeviceService$BondState;

    move-result-object v3

    invoke-virtual {v3, p1, v7, p2}, Landroid/server/BluetoothDeviceService$BondState;->setBondState(Ljava/lang/String;II)V

    goto :goto_27

    .line 278
    :cond_4e
    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothDeviceService;

    invoke-virtual {v3}, Landroid/server/BluetoothDeviceService;->getBondState()Landroid/server/BluetoothDeviceService$BondState;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/server/BluetoothDeviceService$BondState;->attempt(Ljava/lang/String;)V

    goto :goto_27
.end method

.method private native startEventLoopNative()V
.end method

.method private native stopEventLoopNative()V
.end method


# virtual methods
.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 110
    :try_start_0
    invoke-direct {p0}, Landroid/server/BluetoothEventLoop;->cleanupNativeDataNative()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    .line 112
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 114
    return-void

    .line 112
    :catchall_7
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method getAuthorizeAgentRequestData()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mAuthorizeAgentRequestData:Ljava/util/HashMap;

    return-object v0
.end method

.method getPasskeyAgentRequestData()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mPasskeyAgentRequestData:Ljava/util/HashMap;

    return-object v0
.end method

.method getRemoteServiceChannelCallbacks()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/bluetooth/IBluetoothDeviceCallback;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mGetRemoteServiceChannelCallbacks:Ljava/util/HashMap;

    return-object v0
.end method

.method getRemoteServicesCallbacks()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/bluetooth/IBluetoothDeviceServicesCallback;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mGetRemoteServicesCallbacks:Ljava/util/HashMap;

    return-object v0
.end method

.method public isEventLoopRunning()Z
    .registers 2

    .prologue
    .line 153
    invoke-direct {p0}, Landroid/server/BluetoothEventLoop;->isEventLoopRunningNative()Z

    move-result v0

    return v0
.end method

.method onModeChanged(Ljava/lang/String;)V
    .registers 6
    .parameter "bluezMode"

    .prologue
    .line 157
    invoke-static {p1}, Landroid/server/BluetoothDeviceService;->bluezStringToScanMode(Ljava/lang/String;)I

    move-result v1

    .line 158
    .local v1, mode:I
    if-ltz v1, :cond_1e

    .line 159
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.bluetooth.intent.action.SCAN_MODE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 160
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.bluetooth.intent.SCAN_MODE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 161
    const/high16 v2, 0x2000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 162
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 164
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1e
    return-void
.end method

.method public onPasskeyAgentCancelExt(Ljava/lang/String;I)V
    .registers 7
    .parameter "address"
    .parameter "passkeyMode"

    .prologue
    const-string v2, "android.bluetooth.intent.ADDRESS"

    .line 390
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 391
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothDeviceService;

    invoke-virtual {v1, p1}, Landroid/server/BluetoothDeviceService;->cancelPin(Ljava/lang/String;)Z

    .line 394
    if-nez p2, :cond_2c

    .line 395
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.intent.action.PAIRING_CANCEL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 397
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.intent.ADDRESS"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 404
    :goto_19
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 405
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothDeviceService;

    invoke-virtual {v1}, Landroid/server/BluetoothDeviceService;->getBondState()Landroid/server/BluetoothDeviceService$BondState;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v1, p1, v2, v3}, Landroid/server/BluetoothDeviceService$BondState;->setBondState(Ljava/lang/String;II)V

    .line 407
    return-void

    .line 399
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2c
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.intent.action.SIMPLE_PAIRING_CANCEL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 401
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.intent.ADDRESS"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 402
    const-string v1, "android.bluetooth.intent.PAIRING_TYPE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_19
.end method

.method public onPasskeyAgentRequestExt(Ljava/lang/String;III)V
    .registers 13
    .parameter "address"
    .parameter "nativeData"
    .parameter "passkeyMode"
    .parameter "pinCode"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const-string v7, "android.permission.BLUETOOTH_ADMIN"

    const-string v6, "android.bluetooth.intent.ADDRESS"

    .line 320
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 321
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mPasskeyAgentRequestData:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothDeviceService;

    invoke-virtual {v2}, Landroid/server/BluetoothDeviceService;->getBluetoothState()I

    move-result v2

    if-ne v2, v5, :cond_22

    .line 325
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothDeviceService;

    invoke-virtual {v2, p1}, Landroid/server/BluetoothDeviceService;->cancelPin(Ljava/lang/String;)Z

    .line 366
    :cond_21
    :goto_21
    return-void

    .line 329
    :cond_22
    if-nez p3, :cond_7e

    .line 331
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothDeviceService;

    invoke-virtual {v2}, Landroid/server/BluetoothDeviceService;->getBondState()Landroid/server/BluetoothDeviceService$BondState;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/server/BluetoothDeviceService$BondState;->getBondState(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v4, :cond_3d

    .line 334
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothDeviceService;

    invoke-virtual {v2, p1}, Landroid/server/BluetoothDeviceService;->getRemoteClass(Ljava/lang/String;)I

    move-result v0

    .line 337
    .local v0, btClass:I
    invoke-static {v0}, Landroid/bluetooth/BluetoothClass$Device;->getDevice(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_a4

    .line 352
    .end local v0           #btClass:I
    :cond_3d
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.bluetooth.intent.action.PAIRING_REQUEST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 353
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.bluetooth.intent.ADDRESS"

    invoke-virtual {v1, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 354
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v2, v1, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_21

    .line 344
    .end local v1           #intent:Landroid/content/Intent;
    .restart local v0       #btClass:I
    :sswitch_51
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothDeviceService;

    invoke-virtual {v2}, Landroid/server/BluetoothDeviceService;->getBondState()Landroid/server/BluetoothDeviceService$BondState;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/server/BluetoothDeviceService$BondState;->hasAutoPairingFailed(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3d

    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothDeviceService;

    invoke-virtual {v2}, Landroid/server/BluetoothDeviceService;->getBondState()Landroid/server/BluetoothDeviceService$BondState;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/server/BluetoothDeviceService$BondState;->isAutoPairingBlacklisted(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3d

    .line 346
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothDeviceService;

    invoke-virtual {v2}, Landroid/server/BluetoothDeviceService;->getBondState()Landroid/server/BluetoothDeviceService$BondState;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/server/BluetoothDeviceService$BondState;->attempt(Ljava/lang/String;)V

    .line 347
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothDeviceService;

    const-string v3, "0000"

    invoke-static {v3}, Landroid/bluetooth/BluetoothDevice;->convertPinToBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/server/BluetoothDeviceService;->setPin(Ljava/lang/String;[B)Z

    goto :goto_21

    .line 356
    .end local v0           #btClass:I
    :cond_7e
    const/4 v2, 0x1

    if-eq v2, p3, :cond_85

    if-eq v4, p3, :cond_85

    if-ne v5, p3, :cond_21

    .line 360
    :cond_85
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.bluetooth.intent.action.SIMPLE_PAIRING_REQUEST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 361
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "android.bluetooth.intent.ADDRESS"

    invoke-virtual {v1, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 362
    const-string v2, "android.bluetooth.intent.PAIRING_TYPE"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 363
    const-string v2, "android.bluetooth.intent.PINCODE"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 364
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v2, v1, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_21

    .line 337
    :sswitch_data_a4
    .sparse-switch
        0x404 -> :sswitch_51
        0x408 -> :sswitch_51
        0x418 -> :sswitch_51
        0x41c -> :sswitch_51
        0x420 -> :sswitch_51
        0x428 -> :sswitch_51
    .end sparse-switch
.end method

.method public onPasskeyAgentRequestExtUpdate(Ljava/lang/String;II)V
    .registers 8
    .parameter "address"
    .parameter "updateType"
    .parameter "updateData"

    .prologue
    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    .line 370
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.intent.action.PAIRING_UPDATE_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 371
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.intent.ADDRESS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 372
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v1, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 373
    const-string v1, "android.bluetooth.intent.UPDATE_TYPE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 374
    const-string v1, "android.bluetooth.intent.UPDATE_DATA"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 375
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v1, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 376
    return-void
.end method

.method start()V
    .registers 2

    .prologue
    .line 139
    invoke-direct {p0}, Landroid/server/BluetoothEventLoop;->isEventLoopRunningNative()Z

    move-result v0

    if-nez v0, :cond_9

    .line 141
    invoke-direct {p0}, Landroid/server/BluetoothEventLoop;->startEventLoopNative()V

    .line 143
    :cond_9
    return-void
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 146
    invoke-direct {p0}, Landroid/server/BluetoothEventLoop;->isEventLoopRunningNative()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 148
    invoke-direct {p0}, Landroid/server/BluetoothEventLoop;->stopEventLoopNative()V

    .line 150
    :cond_9
    return-void
.end method
