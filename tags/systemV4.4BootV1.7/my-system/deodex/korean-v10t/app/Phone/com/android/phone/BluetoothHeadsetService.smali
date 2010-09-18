.class public Lcom/android/phone/BluetoothHeadsetService;
.super Landroid/app/Service;
.source "BluetoothHeadsetService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/BluetoothHeadsetService$9;,
        Lcom/android/phone/BluetoothHeadsetService$HeadsetPriority;,
        Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;
    }
.end annotation


# static fields
.field private static final ACL_DOWN_WAITING_TIME:I = 0x2710

.field private static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field private static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field private static final DBG:Z = true

.field private static final DEBUG_AUTO_RECONNECT:Ljava/lang/String; = "debug.bt.hshfp.auto_reconnect"

.field private static final DELAYED_HEADSET_CONNECTION:I = 0x2

.field private static final HANDSFREE_UUID16:S = 0x111es

.field private static final HEADSET_UUID16:S = 0x1108s

.field private static final MSG_SLC_CONNECT_TO:I = 0x3

.field private static final PHONE_STATE_CHANGED:I = 0x1

.field private static final PREF_LAST_HEADSET:Ljava/lang/String; = "lastHeadsetAddress"

.field private static final PREF_NAME:Ljava/lang/String; = null

.field private static final RECONNECT_LAST_HEADSET:I = 0x1

.field private static final RFCOMM_CONNECTED:I = 0x2

.field private static final RFCOMM_ERROR:I = 0x3

.field private static final SDP_RESULT:I = 0x1

.field private static final SLC_CONNECT_TO:I = 0xfa0

.field private static final TAG:Ljava/lang/String; = "BT HSHFP"

.field private static sHasStarted:Z


# instance fields
.field private mAclDisconnected:Z

.field private mAg:Landroid/bluetooth/BluetoothAudioGateway;

.field private mAutoConnectQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mBinder:Landroid/bluetooth/IBluetoothHeadset$Stub;

.field private mBluetooth:Landroid/bluetooth/BluetoothDevice;

.field private final mBluetoothIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

.field private mConnectThread:Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;

.field private final mConnectedStatusHandler:Landroid/os/Handler;

.field private final mConnectingStatusHandler:Landroid/os/Handler;

.field mDeviceCallback:Landroid/bluetooth/IBluetoothDeviceCallback$Stub;

.field private mForegroundCall:Lcom/android/internal/telephony/Call;

.field private mHandler:Landroid/os/Handler;

.field private mHeadset:Landroid/bluetooth/HeadsetBase;

.field private mHeadsetAddress:Ljava/lang/String;

.field private final mHeadsetPriority:Lcom/android/phone/BluetoothHeadsetService$HeadsetPriority;

.field private mHeadsetType:I

.field private final mIncomingConnectionHandler:Landroid/os/Handler;

.field private mLastHeadsetAddress:Ljava/lang/String;

.field private mLastHeadsetDisconnectedMs:J

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mRingingCall:Lcom/android/internal/telephony/Call;

.field private mScanOff:Z

.field private mState:I

.field private final mStateChangeHandler:Landroid/os/Handler;

.field private mTimestamp:J

.field private mWaitingForAclDisconnect:Z

.field private mWaitingForSlc:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 60
    const-class v0, Lcom/android/phone/BluetoothHeadsetService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/BluetoothHeadsetService;->PREF_NAME:Ljava/lang/String;

    .line 71
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/BluetoothHeadsetService;->sHasStarted:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 94
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 92
    new-instance v0, Lcom/android/phone/BluetoothHeadsetService$HeadsetPriority;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/BluetoothHeadsetService$HeadsetPriority;-><init>(Lcom/android/phone/BluetoothHeadsetService;Lcom/android/phone/BluetoothHeadsetService$1;)V

    iput-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mHeadsetPriority:Lcom/android/phone/BluetoothHeadsetService$HeadsetPriority;

    .line 169
    new-instance v0, Lcom/android/phone/BluetoothHeadsetService$1;

    invoke-direct {v0, p0}, Lcom/android/phone/BluetoothHeadsetService$1;-><init>(Lcom/android/phone/BluetoothHeadsetService;)V

    iput-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mIncomingConnectionHandler:Landroid/os/Handler;

    .line 265
    new-instance v0, Lcom/android/phone/BluetoothHeadsetService$2;

    invoke-direct {v0, p0}, Lcom/android/phone/BluetoothHeadsetService$2;-><init>(Lcom/android/phone/BluetoothHeadsetService;)V

    iput-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mStateChangeHandler:Landroid/os/Handler;

    .line 305
    new-instance v0, Lcom/android/phone/BluetoothHeadsetService$3;

    invoke-direct {v0, p0}, Lcom/android/phone/BluetoothHeadsetService$3;-><init>(Lcom/android/phone/BluetoothHeadsetService;)V

    iput-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mBluetoothIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 389
    new-instance v0, Lcom/android/phone/BluetoothHeadsetService$4;

    invoke-direct {v0, p0}, Lcom/android/phone/BluetoothHeadsetService$4;-><init>(Lcom/android/phone/BluetoothHeadsetService;)V

    iput-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mHandler:Landroid/os/Handler;

    .line 441
    new-instance v0, Lcom/android/phone/BluetoothHeadsetService$5;

    invoke-direct {v0, p0}, Lcom/android/phone/BluetoothHeadsetService$5;-><init>(Lcom/android/phone/BluetoothHeadsetService;)V

    iput-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mDeviceCallback:Landroid/bluetooth/IBluetoothDeviceCallback$Stub;

    .line 540
    new-instance v0, Lcom/android/phone/BluetoothHeadsetService$6;

    invoke-direct {v0, p0}, Lcom/android/phone/BluetoothHeadsetService$6;-><init>(Lcom/android/phone/BluetoothHeadsetService;)V

    iput-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mConnectingStatusHandler:Landroid/os/Handler;

    .line 588
    new-instance v0, Lcom/android/phone/BluetoothHeadsetService$7;

    invoke-direct {v0, p0}, Lcom/android/phone/BluetoothHeadsetService$7;-><init>(Lcom/android/phone/BluetoothHeadsetService;)V

    iput-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mConnectedStatusHandler:Landroid/os/Handler;

    .line 718
    new-instance v0, Lcom/android/phone/BluetoothHeadsetService$8;

    invoke-direct {v0, p0}, Lcom/android/phone/BluetoothHeadsetService$8;-><init>(Lcom/android/phone/BluetoothHeadsetService;)V

    iput-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mBinder:Landroid/bluetooth/IBluetoothHeadset$Stub;

    .line 95
    iput v2, p0, Lcom/android/phone/BluetoothHeadsetService;->mState:I

    .line 96
    iput v2, p0, Lcom/android/phone/BluetoothHeadsetService;->mHeadsetType:I

    .line 97
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/IBluetoothHeadset$Stub;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mBinder:Landroid/bluetooth/IBluetoothHeadset$Stub;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/phone/BluetoothHeadsetService;)Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mConnectThread:Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/phone/BluetoothHeadsetService;Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;)Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/phone/BluetoothHeadsetService;->mConnectThread:Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/HeadsetBase;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mHeadset:Landroid/bluetooth/HeadsetBase;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/HeadsetBase;)Landroid/bluetooth/HeadsetBase;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/phone/BluetoothHeadsetService;->mHeadset:Landroid/bluetooth/HeadsetBase;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/phone/BluetoothHeadsetService;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/phone/BluetoothHeadsetService;->setState(II)V

    return-void
.end method

.method static synthetic access$1300(Ljava/lang/String;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-static {p0}, Lcom/android/phone/BluetoothHeadsetService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/phone/BluetoothHeadsetService;)Lcom/android/internal/telephony/Call;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mForegroundCall:Lcom/android/internal/telephony/Call;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/phone/BluetoothHeadsetService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/phone/BluetoothHeadsetService;->autoConnectHeadset()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/phone/BluetoothHeadsetService;)Lcom/android/internal/telephony/Call;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mRingingCall:Lcom/android/internal/telephony/Call;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/phone/BluetoothHeadsetService;)Lcom/android/phone/BluetoothHeadsetService$HeadsetPriority;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mHeadsetPriority:Lcom/android/phone/BluetoothHeadsetService$HeadsetPriority;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/phone/BluetoothHeadsetService;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mIncomingConnectionHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothAudioGateway;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mAg:Landroid/bluetooth/BluetoothAudioGateway;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/BluetoothHeadsetService;)Landroid/os/PowerManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/phone/BluetoothHeadsetService;)Lcom/android/phone/BluetoothHandsfree;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/phone/BluetoothHeadsetService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/phone/BluetoothHeadsetService;->disconnectHeadsetLocked()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/phone/BluetoothHeadsetService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/phone/BluetoothHeadsetService;->cancelSlcTimer()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/phone/BluetoothHeadsetService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mAclDisconnected:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/android/phone/BluetoothHeadsetService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHeadsetService;->mAclDisconnected:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/phone/BluetoothHeadsetService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mWaitingForAclDisconnect:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/android/phone/BluetoothHeadsetService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHeadsetService;->mWaitingForAclDisconnect:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/phone/BluetoothHeadsetService;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/phone/BluetoothHeadsetService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/phone/BluetoothHeadsetService;->doHandsfreeSdp()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/phone/BluetoothHeadsetService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mWaitingForSlc:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/android/phone/BluetoothHeadsetService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHeadsetService;->mWaitingForSlc:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/android/phone/BluetoothHeadsetService;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mTimestamp:J

    return-wide v0
.end method

.method static synthetic access$2900(Lcom/android/phone/BluetoothHeadsetService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/phone/BluetoothHeadsetService;->doHeadsetSdp()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothDevice;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mBluetooth:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/phone/BluetoothHeadsetService;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mLastHeadsetAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/phone/BluetoothHeadsetService;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mLastHeadsetDisconnectedMs:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/android/phone/BluetoothHeadsetService;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mConnectedStatusHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/BluetoothHeadsetService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mState:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/phone/BluetoothHeadsetService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput p1, p0, Lcom/android/phone/BluetoothHeadsetService;->mState:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/phone/BluetoothHeadsetService;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHeadsetService;->setState(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/BluetoothHeadsetService;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mHeadsetAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/phone/BluetoothHeadsetService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/phone/BluetoothHeadsetService;->mHeadsetAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/phone/BluetoothHeadsetService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mHeadsetType:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/phone/BluetoothHeadsetService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput p1, p0, Lcom/android/phone/BluetoothHeadsetService;->mHeadsetType:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/phone/BluetoothHeadsetService;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mConnectingStatusHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private declared-synchronized autoConnectHeadset()V
    .registers 3

    .prologue
    .line 295
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/android/phone/BluetoothHeadsetService;->debugDontReconnect()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_1a

    move-result v0

    if-eqz v0, :cond_9

    .line 303
    :cond_7
    :goto_7
    monitor-exit p0

    return-void

    .line 298
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mBluetooth:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->isEnabled()Z
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_1a

    move-result v0

    if-eqz v0, :cond_7

    .line 300
    :try_start_11
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mBinder:Landroid/bluetooth/IBluetoothHeadset$Stub;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->connectHeadset(Ljava/lang/String;)Z
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_1a
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_17} :catch_18

    goto :goto_7

    .line 301
    :catch_18
    move-exception v0

    goto :goto_7

    .line 295
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private cancelSlcTimer()V
    .registers 3

    .prologue
    .line 973
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mWaitingForSlc:Z

    if-eqz v0, :cond_14

    .line 974
    const-string v0, "BT HSHFP"

    const-string v1, "Remove SLC connection timer."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mWaitingForSlc:Z

    .line 976
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 978
    :cond_14
    return-void
.end method

.method private debugDontReconnect()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 984
    const-string v0, "debug.bt.hshfp.auto_reconnect"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_b

    move v0, v1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private declared-synchronized disableScan()V
    .registers 4

    .prologue
    .line 155
    monitor-enter p0

    :try_start_1
    const-string v0, "BT HSHFP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableScan: mScanOff: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/BluetoothHeadsetService;->mScanOff:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mScanOff:Z

    if-nez v0, :cond_28

    .line 157
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mBluetooth:Landroid/bluetooth/BluetoothDevice;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->setScanMode(I)V

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mScanOff:Z
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2a

    .line 160
    :cond_28
    monitor-exit p0

    return-void

    .line 155
    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private disconnectHeadsetLocked()V
    .registers 8

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string v6, "BT HSHFP"

    .line 672
    invoke-direct {p0}, Lcom/android/phone/BluetoothHeadsetService;->cancelSlcTimer()V

    .line 673
    iget v1, p0, Lcom/android/phone/BluetoothHeadsetService;->mState:I

    packed-switch v1, :pswitch_data_5c

    .line 713
    :goto_d
    return-void

    .line 675
    :pswitch_e
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService;->mConnectThread:Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;

    if-eqz v1, :cond_17

    .line 677
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService;->mConnectThread:Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->interrupt()V

    .line 680
    :cond_17
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService;->mConnectThread:Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;

    if-eqz v1, :cond_29

    .line 683
    :try_start_1b
    const-string v1, "BT HSHFP"

    const-string v2, "Block in main thread to join stale outgoing connection thread"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService;->mConnectThread:Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->join()V
    :try_end_27
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_27} :catch_38

    .line 688
    :goto_27
    iput-object v3, p0, Lcom/android/phone/BluetoothHeadsetService;->mConnectThread:Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;

    .line 690
    :cond_29
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService;->mHeadset:Landroid/bluetooth/HeadsetBase;

    if-eqz v1, :cond_34

    .line 691
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v1}, Landroid/bluetooth/HeadsetBase;->disconnect()V

    .line 692
    iput-object v3, p0, Lcom/android/phone/BluetoothHeadsetService;->mHeadset:Landroid/bluetooth/HeadsetBase;

    .line 694
    :cond_34
    invoke-direct {p0, v4, v5}, Lcom/android/phone/BluetoothHeadsetService;->setState(II)V

    goto :goto_d

    .line 685
    :catch_38
    move-exception v1

    move-object v0, v1

    .line 686
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "BT HSHFP"

    const-string v1, "Connection cancelled twice?"

    invoke-static {v6, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_27

    .line 703
    .end local v0           #e:Ljava/lang/InterruptedException;
    :pswitch_42
    iget v1, p0, Lcom/android/phone/BluetoothHeadsetService;->mHeadsetType:I

    if-ne v1, v5, :cond_4d

    .line 704
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService;->mHeadset:Landroid/bluetooth/HeadsetBase;

    const-string v2, "+CIEV: 7,3"

    invoke-virtual {v1, v2}, Landroid/bluetooth/HeadsetBase;->sendURC(Ljava/lang/String;)Z

    .line 706
    :cond_4d
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService;->mHeadset:Landroid/bluetooth/HeadsetBase;

    if-eqz v1, :cond_58

    .line 707
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v1}, Landroid/bluetooth/HeadsetBase;->disconnect()V

    .line 708
    iput-object v3, p0, Lcom/android/phone/BluetoothHeadsetService;->mHeadset:Landroid/bluetooth/HeadsetBase;

    .line 710
    :cond_58
    invoke-direct {p0, v4}, Lcom/android/phone/BluetoothHeadsetService;->setState(I)V

    goto :goto_d

    .line 673
    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_e
        :pswitch_42
    .end packed-switch
.end method

.method private doHandsfreeSdp()V
    .registers 6

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x0

    .line 518
    const-string v0, "Handsfree SDP request"

    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService;->log(Ljava/lang/String;)V

    .line 521
    invoke-direct {p0}, Lcom/android/phone/BluetoothHeadsetService;->disableScan()V

    .line 523
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mWaitingForAclDisconnect:Z

    if-eqz v0, :cond_15

    .line 524
    iput-boolean v4, p0, Lcom/android/phone/BluetoothHeadsetService;->mWaitingForAclDisconnect:Z

    .line 525
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 528
    :cond_15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mTimestamp:J

    .line 529
    iput v2, p0, Lcom/android/phone/BluetoothHeadsetService;->mHeadsetType:I

    .line 530
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mBluetooth:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService;->mHeadsetAddress:Ljava/lang/String;

    const/16 v2, 0x111e

    iget-object v3, p0, Lcom/android/phone/BluetoothHeadsetService;->mDeviceCallback:Landroid/bluetooth/IBluetoothDeviceCallback$Stub;

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothDevice;->getRemoteServiceChannel(Ljava/lang/String;SLandroid/bluetooth/IBluetoothDeviceCallback;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 532
    const-string v0, "BT HSHFP"

    const-string v1, "Could not start handsfree SDP query"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    invoke-direct {p0, v4, v4}, Lcom/android/phone/BluetoothHeadsetService;->setState(II)V

    .line 535
    :cond_35
    return-void
.end method

.method private doHeadsetSdp()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 507
    const-string v0, "Headset SDP request"

    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService;->log(Ljava/lang/String;)V

    .line 508
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mTimestamp:J

    .line 509
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mHeadsetType:I

    .line 510
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mBluetooth:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService;->mHeadsetAddress:Ljava/lang/String;

    const/16 v2, 0x1108

    iget-object v3, p0, Lcom/android/phone/BluetoothHeadsetService;->mDeviceCallback:Landroid/bluetooth/IBluetoothDeviceCallback$Stub;

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothDevice;->getRemoteServiceChannel(Ljava/lang/String;SLandroid/bluetooth/IBluetoothDeviceCallback;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 512
    const-string v0, "BT HSHFP"

    const-string v1, "Could not start headset SDP query"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    invoke-direct {p0, v4, v4}, Lcom/android/phone/BluetoothHeadsetService;->setState(II)V

    .line 515
    :cond_27
    return-void
.end method

.method private declared-synchronized enableScan()V
    .registers 4

    .prologue
    .line 162
    monitor-enter p0

    :try_start_1
    const-string v0, "BT HSHFP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableScan: mScanOff: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/BluetoothHeadsetService;->mScanOff:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mScanOff:Z

    if-eqz v0, :cond_28

    .line 164
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mBluetooth:Landroid/bluetooth/BluetoothDevice;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->setScanMode(I)V

    .line 165
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mScanOff:Z
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2a

    .line 167
    :cond_28
    monitor-exit p0

    return-void

    .line 162
    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 988
    const-string v0, "BT HSHFP"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    return-void
.end method

.method private setState(I)V
    .registers 3
    .parameter "state"

    .prologue
    .line 600
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/phone/BluetoothHeadsetService;->setState(II)V

    .line 601
    return-void
.end method

.method private declared-synchronized setState(II)V
    .registers 9
    .parameter "state"
    .parameter "result"

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x2

    .line 604
    monitor-enter p0

    :try_start_3
    iget v1, p0, Lcom/android/phone/BluetoothHeadsetService;->mState:I

    if-eq p1, v1, :cond_87

    .line 605
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Headset state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/BluetoothHeadsetService;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->log(Ljava/lang/String;)V

    .line 607
    if-eq p1, v3, :cond_38

    .line 608
    invoke-direct {p0}, Lcom/android/phone/BluetoothHeadsetService;->enableScan()V

    .line 611
    :cond_38
    iget v1, p0, Lcom/android/phone/BluetoothHeadsetService;->mState:I

    if-ne v1, v5, :cond_46

    .line 613
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->audioOff()V

    .line 614
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->disconnectHeadset()V

    .line 619
    :cond_46
    invoke-direct {p0}, Lcom/android/phone/BluetoothHeadsetService;->cancelSlcTimer()V

    .line 620
    if-ne p1, v5, :cond_4f

    iget v1, p0, Lcom/android/phone/BluetoothHeadsetService;->mHeadsetType:I

    if-eq v1, v5, :cond_89

    .line 622
    :cond_4f
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.intent.action.HEADSET_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 623
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.intent.HEADSET_PREVIOUS_STATE"

    iget v2, p0, Lcom/android/phone/BluetoothHeadsetService;->mState:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 624
    const-string v1, "android.bluetooth.intent.HEADSET_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 625
    const-string v1, "android.bluetooth.intent.ADDRESS"

    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService;->mHeadsetAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 626
    const-string v1, "android.permission.BLUETOOTH"

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/BluetoothHeadsetService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 633
    .end local v0           #intent:Landroid/content/Intent;
    :goto_6e
    iput p1, p0, Lcom/android/phone/BluetoothHeadsetService;->mState:I

    .line 635
    iget v1, p0, Lcom/android/phone/BluetoothHeadsetService;->mState:I

    if-nez v1, :cond_a0

    .line 637
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService;->mHeadsetAddress:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/BluetoothHeadsetService;->mLastHeadsetAddress:Ljava/lang/String;

    .line 638
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/phone/BluetoothHeadsetService;->mLastHeadsetDisconnectedMs:J

    .line 640
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/BluetoothHeadsetService;->mHeadset:Landroid/bluetooth/HeadsetBase;

    .line 641
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/BluetoothHeadsetService;->mHeadsetAddress:Ljava/lang/String;

    .line 642
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/phone/BluetoothHeadsetService;->mHeadsetType:I
    :try_end_87
    .catchall {:try_start_3 .. :try_end_87} :catchall_9d

    .line 653
    :cond_87
    :goto_87
    monitor-exit p0

    return-void

    .line 629
    :cond_89
    const/4 v1, 0x1

    :try_start_8a
    iput-boolean v1, p0, Lcom/android/phone/BluetoothHeadsetService;->mWaitingForSlc:Z

    .line 630
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/phone/BluetoothHeadsetService;->mHeadsetAddress:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0xfa0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_9c
    .catchall {:try_start_8a .. :try_end_9c} :catchall_9d

    goto :goto_6e

    .line 604
    :catchall_9d
    move-exception v1

    monitor-exit p0

    throw v1

    .line 648
    :cond_a0
    :try_start_a0
    iget v1, p0, Lcom/android/phone/BluetoothHeadsetService;->mState:I

    if-ne v1, v5, :cond_87

    .line 649
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/BluetoothHeadsetService;->mAutoConnectQueue:Ljava/util/LinkedList;

    .line 650
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService;->mHeadsetPriority:Lcom/android/phone/BluetoothHeadsetService$HeadsetPriority;

    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService;->mHeadsetAddress:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/BluetoothHeadsetService$HeadsetPriority;->bump(Ljava/lang/String;)V
    :try_end_b2
    .catchall {:try_start_a0 .. :try_end_b2} :catchall_9d

    goto :goto_87
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mBinder:Landroid/bluetooth/IBluetoothHeadset$Stub;

    return-object v0
.end method

.method public onCreate()V
    .registers 9

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v7, "android.media.VOLUME_CHANGED_ACTION"

    const-string v6, "android.bluetooth.intent.action.REMOTE_DEVICE_DISCONNECTED"

    .line 101
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 102
    const-string v1, "bluetooth"

    invoke-virtual {p0, v1}, Lcom/android/phone/BluetoothHeadsetService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    iput-object v1, p0, Lcom/android/phone/BluetoothHeadsetService;->mBluetooth:Landroid/bluetooth/BluetoothDevice;

    .line 103
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/android/phone/BluetoothHeadsetService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/phone/BluetoothHeadsetService;->mPowerManager:Landroid/os/PowerManager;

    .line 104
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/BluetoothHeadsetService;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    .line 105
    new-instance v1, Landroid/bluetooth/BluetoothAudioGateway;

    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService;->mBluetooth:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {v1, v2}, Landroid/bluetooth/BluetoothAudioGateway;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    iput-object v1, p0, Lcom/android/phone/BluetoothHeadsetService;->mAg:Landroid/bluetooth/BluetoothAudioGateway;

    .line 106
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/BluetoothHeadsetService;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 107
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/BluetoothHeadsetService;->mRingingCall:Lcom/android/internal/telephony/Call;

    .line 108
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/BluetoothHeadsetService;->mForegroundCall:Lcom/android/internal/telephony/Call;

    .line 109
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService;->mBluetooth:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_54

    .line 110
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService;->mHeadsetPriority:Lcom/android/phone/BluetoothHeadsetService$HeadsetPriority;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHeadsetService$HeadsetPriority;->load()Z

    .line 112
    :cond_54
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.intent.action.REMOTE_DEVICE_DISCONNECT_REQUESTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 114
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.intent.action.BLUETOOTH_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    const-string v1, "android.bluetooth.intent.action.BOND_STATE_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    const-string v1, "android.bluetooth.intent.action.HEADSET_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    const-string v1, "android.bluetooth.intent.action.REMOTE_DEVICE_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    const-string v1, "android.bluetooth.intent.action.REMOTE_DEVICE_DISCONNECTED"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 119
    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    const-string v1, "android.bluetooth.intent.action.REMOTE_DEVICE_DISCONNECTED"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService;->mBluetoothIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/phone/BluetoothHeadsetService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 124
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService;->mStateChangeHandler:Landroid/os/Handler;

    invoke-interface {v1, v2, v4, v5}, Lcom/android/internal/telephony/Phone;->registerForPhoneStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 126
    iput-object v5, p0, Lcom/android/phone/BluetoothHeadsetService;->mLastHeadsetAddress:Ljava/lang/String;

    .line 127
    iput-boolean v4, p0, Lcom/android/phone/BluetoothHeadsetService;->mAclDisconnected:Z

    .line 128
    iput-boolean v3, p0, Lcom/android/phone/BluetoothHeadsetService;->mWaitingForAclDisconnect:Z

    .line 129
    iput-boolean v3, p0, Lcom/android/phone/BluetoothHeadsetService;->mWaitingForSlc:Z

    .line 130
    iput-boolean v3, p0, Lcom/android/phone/BluetoothHeadsetService;->mScanOff:Z

    .line 131
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 850
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 851
    const-string v0, "Stopping BluetoothHeadsetService"

    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService;->log(Ljava/lang/String;)V

    .line 852
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mBluetoothIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/BluetoothHeadsetService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 853
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->onBluetoothDisabled()V

    .line 854
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mAg:Landroid/bluetooth/BluetoothAudioGateway;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAudioGateway;->stop()V

    .line 855
    sput-boolean v1, Lcom/android/phone/BluetoothHeadsetService;->sHasStarted:Z

    .line 856
    const/4 v0, 0x2

    invoke-direct {p0, v1, v0}, Lcom/android/phone/BluetoothHeadsetService;->setState(II)V

    .line 857
    iput v1, p0, Lcom/android/phone/BluetoothHeadsetService;->mHeadsetType:I

    .line 858
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 5
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mBluetooth:Landroid/bluetooth/BluetoothDevice;

    if-nez v0, :cond_f

    .line 136
    const-string v0, "BT HSHFP"

    const-string v1, "Stopping BluetoothHeadsetService: device does not have BT"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHeadsetService;->stopSelf()V

    .line 152
    :cond_e
    :goto_e
    return-void

    .line 139
    :cond_f
    sget-boolean v0, Lcom/android/phone/BluetoothHeadsetService;->sHasStarted:Z

    if-nez v0, :cond_e

    .line 140
    const-string v0, "Starting BluetoothHeadsetService"

    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService;->log(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mBluetooth:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 142
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mAg:Landroid/bluetooth/BluetoothAudioGateway;

    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService;->mIncomingConnectionHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAudioGateway;->start(Landroid/os/Handler;)Z

    .line 143
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->onBluetoothEnabled()V

    .line 149
    :cond_2c
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/BluetoothHeadsetService;->sHasStarted:Z

    goto :goto_e
.end method
