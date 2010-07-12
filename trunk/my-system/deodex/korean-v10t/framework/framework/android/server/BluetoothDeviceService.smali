.class public Landroid/server/BluetoothDeviceService;
.super Landroid/bluetooth/IBluetoothDevice$Stub;
.source "BluetoothDeviceService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/server/BluetoothDeviceService$BondState;,
        Landroid/server/BluetoothDeviceService$EnableThread;
    }
.end annotation


# static fields
.field private static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field private static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field private static final BRCM_PROPERTY_AVRCP_PASS_THROUGH_ACTIVE:Ljava/lang/String; = "service.brcm.bt.avrcp_pass_thru"

.field private static final BRCM_PROPERTY_BTLD_ACTIVE:Ljava/lang/String; = "service.brcm.bt.btld"

.field private static final BRCM_PROPERTY_BT_ACTIVATION:Ljava/lang/String; = "service.brcm.bt.activation"

.field private static final DBG:Z = true

.field private static final DTUN_PROPERTY_HCID_ACTIVE:Ljava/lang/String; = "dtun.hcid_active"

.field private static final DTUN_PROPERTY_OBEXD_ACTIVE:Ljava/lang/String; = "dtun.obexd_active"

.field private static final DTUN_PROPERTY_SERVER_ACTIVE:Ljava/lang/String; = "dtun.srv_active"

.field private static final IN_CALL_ACTIVE_AVRCP_PASS_THROUGH_TIMEOUT:J = 0x1388L

.field private static final IN_CALL_INACTIVE_AVRCP_PASS_THROUGH_TIMEOUT:J = 0x1388L

.field private static final MAX_OUTSTANDING_ASYNC:I = 0x20

.field private static final MESSAGE_AVRCP_PASS_THROUGH_TIMEOUT:I = 0x4

.field private static final MESSAGE_BT_BOOTUP:I = 0x3

.field private static final MESSAGE_FINISH_DISABLE:I = 0x2

.field private static final MESSAGE_REGISTER_SDP_RECORDS:I = 0x1

.field private static final REMOTE_NAME_CACHE_TIMEOUT:J = 0x1f4L

.field private static final TAG:Ljava/lang/String; = "BluetoothDeviceService"

.field public static lockObject:Ljava/lang/Object;


# instance fields
.field private mAclLinkCount:I

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBluetoothState:I

.field private final mBondState:Landroid/server/BluetoothDeviceService$BondState;

.field private final mContext:Landroid/content/Context;

.field private mDisableSaveSetting:Z

.field private mEnableThread:Landroid/server/BluetoothDeviceService$EnableThread;

.field private mEventLoop:Landroid/server/BluetoothEventLoop;

.field public mFinalBTState:I

.field private final mHandler:Landroid/os/Handler;

.field private mIsAirplaneSensitive:Z

.field private mIsDiscovering:Z

.field private mLastRemoteAddress:Ljava/lang/String;

.field private mLastRemoteMs:J

.field private mLastRemoteName:Ljava/lang/String;

.field private mNativeData:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRestart:Z

.field private mWaitingForAclDisconnected:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 112
    invoke-static {}, Landroid/server/BluetoothDeviceService;->classInitNative()V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 116
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothDevice$Stub;-><init>()V

    .line 68
    iput v1, p0, Landroid/server/BluetoothDeviceService;->mFinalBTState:I

    .line 74
    iput-boolean v1, p0, Landroid/server/BluetoothDeviceService;->mRestart:Z

    .line 76
    new-instance v0, Landroid/server/BluetoothDeviceService$BondState;

    invoke-direct {v0, p0}, Landroid/server/BluetoothDeviceService$BondState;-><init>(Landroid/server/BluetoothDeviceService;)V

    iput-object v0, p0, Landroid/server/BluetoothDeviceService;->mBondState:Landroid/server/BluetoothDeviceService$BondState;

    .line 530
    new-instance v0, Landroid/server/BluetoothDeviceService$1;

    invoke-direct {v0, p0}, Landroid/server/BluetoothDeviceService$1;-><init>(Landroid/server/BluetoothDeviceService;)V

    iput-object v0, p0, Landroid/server/BluetoothDeviceService;->mHandler:Landroid/os/Handler;

    .line 1791
    new-instance v0, Landroid/server/BluetoothDeviceService$2;

    invoke-direct {v0, p0}, Landroid/server/BluetoothDeviceService$2;-><init>(Landroid/server/BluetoothDeviceService;)V

    iput-object v0, p0, Landroid/server/BluetoothDeviceService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 117
    iput-object p1, p0, Landroid/server/BluetoothDeviceService;->mContext:Landroid/content/Context;

    .line 118
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/server/BluetoothDeviceService;->lockObject:Ljava/lang/Object;

    .line 124
    const-string v0, "batteryinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Landroid/server/BluetoothDeviceService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 126
    iput v1, p0, Landroid/server/BluetoothDeviceService;->mAclLinkCount:I

    .line 127
    iput-boolean v1, p0, Landroid/server/BluetoothDeviceService;->mWaitingForAclDisconnected:Z

    .line 129
    iput-object v2, p0, Landroid/server/BluetoothDeviceService;->mLastRemoteAddress:Ljava/lang/String;

    .line 130
    iput-object v2, p0, Landroid/server/BluetoothDeviceService;->mLastRemoteName:Ljava/lang/String;

    .line 131
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/server/BluetoothDeviceService;->mLastRemoteMs:J

    .line 132
    return-void
.end method

.method private native DUTOffNative()I
.end method

.method private native DUTOnNative()I
.end method

.method static synthetic access$100(Landroid/server/BluetoothDeviceService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Landroid/server/BluetoothDeviceService;->mDisableSaveSetting:Z

    return v0
.end method

.method static synthetic access$1000(Landroid/server/BluetoothDeviceService;)Landroid/server/BluetoothDeviceService$BondState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Landroid/server/BluetoothDeviceService;->mBondState:Landroid/server/BluetoothDeviceService$BondState;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/server/BluetoothDeviceService;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Landroid/server/BluetoothDeviceService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/server/BluetoothDeviceService;)Lcom/android/internal/app/IBatteryStats;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Landroid/server/BluetoothDeviceService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    return-object v0
.end method

.method static synthetic access$1302(Landroid/server/BluetoothDeviceService;Landroid/server/BluetoothDeviceService$EnableThread;)Landroid/server/BluetoothDeviceService$EnableThread;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Landroid/server/BluetoothDeviceService;->mEnableThread:Landroid/server/BluetoothDeviceService$EnableThread;

    return-object p1
.end method

.method static synthetic access$1400(Landroid/server/BluetoothDeviceService;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Landroid/server/BluetoothDeviceService;->setBluetoothState(I)V

    return-void
.end method

.method static synthetic access$1500(Landroid/server/BluetoothDeviceService;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/server/BluetoothDeviceService;->getModeNativeLocked()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Landroid/server/BluetoothDeviceService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Landroid/server/BluetoothDeviceService;->mIsAirplaneSensitive:Z

    return v0
.end method

.method static synthetic access$1700(Landroid/server/BluetoothDeviceService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/server/BluetoothDeviceService;->isAirplaneModeOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Landroid/server/BluetoothDeviceService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Landroid/server/BluetoothDeviceService;->mBluetoothState:I

    return v0
.end method

.method static synthetic access$1900(Landroid/server/BluetoothDeviceService;)[Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/server/BluetoothDeviceService;->listBondingsNativeLocked()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/server/BluetoothDeviceService;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Landroid/server/BluetoothDeviceService;->finishDisable(Z)V

    return-void
.end method

.method static synthetic access$2000(Landroid/server/BluetoothDeviceService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Landroid/server/BluetoothDeviceService;->mAclLinkCount:I

    return v0
.end method

.method static synthetic access$2008(Landroid/server/BluetoothDeviceService;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Landroid/server/BluetoothDeviceService;->mAclLinkCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/server/BluetoothDeviceService;->mAclLinkCount:I

    return v0
.end method

.method static synthetic access$2010(Landroid/server/BluetoothDeviceService;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Landroid/server/BluetoothDeviceService;->mAclLinkCount:I

    const/4 v1, 0x1

    sub-int v1, v0, v1

    iput v1, p0, Landroid/server/BluetoothDeviceService;->mAclLinkCount:I

    return v0
.end method

.method static synthetic access$2100(Landroid/server/BluetoothDeviceService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Landroid/server/BluetoothDeviceService;->mWaitingForAclDisconnected:Z

    return v0
.end method

.method static synthetic access$2102(Landroid/server/BluetoothDeviceService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Landroid/server/BluetoothDeviceService;->mWaitingForAclDisconnected:Z

    return p1
.end method

.method static synthetic access$300(Landroid/server/BluetoothDeviceService;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Landroid/server/BluetoothDeviceService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Landroid/server/BluetoothDeviceService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/server/BluetoothDeviceService;->enableNativeLocked()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Landroid/server/BluetoothDeviceService;)Landroid/server/BluetoothEventLoop;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Landroid/server/BluetoothDeviceService;->mEventLoop:Landroid/server/BluetoothEventLoop;

    return-object v0
.end method

.method static synthetic access$600(Ljava/lang/String;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-static {p0}, Landroid/server/BluetoothDeviceService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Landroid/server/BluetoothDeviceService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/server/BluetoothDeviceService;->disableNativeLocked()I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Landroid/server/BluetoothDeviceService;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Landroid/server/BluetoothDeviceService;->persistBluetoothOnSetting(Z)V

    return-void
.end method

.method static synthetic access$902(Landroid/server/BluetoothDeviceService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Landroid/server/BluetoothDeviceService;->mIsDiscovering:Z

    return p1
.end method

.method private native authorizeServiceNative(Ljava/lang/String;Ljava/lang/String;II)Z
.end method

.method private native authorizeSspNative(Ljava/lang/String;ZI)Z
.end method

.method private authorizeSspNativeLocked(Ljava/lang/String;ZI)Z
    .registers 6
    .parameter "address"
    .parameter "approved"
    .parameter "nativeData"

    .prologue
    .line 1731
    sget-object v0, Landroid/server/BluetoothDeviceService;->lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 1732
    :try_start_3
    invoke-direct {p0, p1, p2, p3}, Landroid/server/BluetoothDeviceService;->authorizeSspNative(Ljava/lang/String;ZI)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1733
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method static bluezStringToScanMode(Ljava/lang/String;)I
    .registers 3
    .parameter "mode"

    .prologue
    const/16 v1, -0x3e8

    .line 1921
    if-nez p0, :cond_6

    move v0, v1

    .line 1932
    :goto_5
    return v0

    .line 1924
    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 1925
    const-string v0, "off"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1926
    const/4 v0, 0x0

    goto :goto_5

    .line 1927
    :cond_14
    const-string v0, "connectable"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1928
    const/4 v0, 0x1

    goto :goto_5

    .line 1929
    :cond_1e
    const-string v0, "discoverable"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1930
    const/4 v0, 0x3

    goto :goto_5

    :cond_28
    move v0, v1

    .line 1932
    goto :goto_5
.end method

.method private native cancelBondingProcessNative(Ljava/lang/String;)Z
.end method

.method private cancelBondingProcessNativeLocked(Ljava/lang/String;)Z
    .registers 4
    .parameter "address"

    .prologue
    .line 1169
    sget-object v0, Landroid/server/BluetoothDeviceService;->lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 1170
    :try_start_3
    invoke-direct {p0, p1}, Landroid/server/BluetoothDeviceService;->cancelBondingProcessNative(Ljava/lang/String;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1171
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method private native cancelDiscoveryNative()Z
.end method

.method private cancelDiscoveryNativeLocked()Z
    .registers 3

    .prologue
    .line 947
    sget-object v0, Landroid/server/BluetoothDeviceService;->lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 948
    :try_start_3
    invoke-direct {p0}, Landroid/server/BluetoothDeviceService;->cancelDiscoveryNative()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 949
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method private native cancelPinNative(Ljava/lang/String;I)Z
.end method

.method private cancelPinNativeLocked(Ljava/lang/String;I)Z
    .registers 5
    .parameter "address"
    .parameter "natveiData"

    .prologue
    .line 1780
    sget-object v0, Landroid/server/BluetoothDeviceService;->lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 1781
    :try_start_3
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothDeviceService;->cancelPinNative(Ljava/lang/String;I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1782
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNativeDataNative()V
.end method

.method private native createBondingNative(Ljava/lang/String;I)Z
.end method

.method private createBondingNativeLocked(Ljava/lang/String;I)Z
    .registers 5
    .parameter "address"
    .parameter "timeout_ms"

    .prologue
    .line 1143
    sget-object v0, Landroid/server/BluetoothDeviceService;->lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 1144
    :try_start_3
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothDeviceService;->createBondingNative(Ljava/lang/String;I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1145
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method private native disableNative()I
.end method

.method private disableNativeLocked()I
    .registers 3

    .prologue
    .line 663
    sget-object v0, Landroid/server/BluetoothDeviceService;->lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 664
    :try_start_3
    invoke-direct {p0}, Landroid/server/BluetoothDeviceService;->disableNative()I

    move-result v1

    monitor-exit v0

    return v1

    .line 665
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method private native disconnectRemoteDeviceNative(Ljava/lang/String;)Z
.end method

.method private disconnectRemoteDeviceNativeLocked(Ljava/lang/String;)Z
    .registers 4
    .parameter "address"

    .prologue
    .line 1103
    sget-object v0, Landroid/server/BluetoothDeviceService;->lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 1104
    :try_start_3
    invoke-direct {p0, p1}, Landroid/server/BluetoothDeviceService;->disconnectRemoteDeviceNative(Ljava/lang/String;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1105
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method private native enableNative()I
.end method

.method private enableNativeLocked()I
    .registers 3

    .prologue
    .line 656
    sget-object v0, Landroid/server/BluetoothDeviceService;->lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 657
    :try_start_3
    invoke-direct {p0}, Landroid/server/BluetoothDeviceService;->enableNative()I

    move-result v1

    monitor-exit v0

    return v1

    .line 658
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method private declared-synchronized finishDisable(Z)V
    .registers 16
    .parameter "saveSetting"

    .prologue
    .line 256
    monitor-enter p0

    :try_start_1
    const-string v11, "BluetoothDeviceService"

    const-string v12, "finishDisable..."

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget v11, p0, Landroid/server/BluetoothDeviceService;->mBluetoothState:I
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_88

    const/4 v12, 0x3

    if-eq v11, v12, :cond_f

    .line 336
    :cond_d
    :goto_d
    monitor-exit p0

    return-void

    .line 263
    :cond_f
    :try_start_f
    iget v11, p0, Landroid/server/BluetoothDeviceService;->mAclLinkCount:I

    if-nez v11, :cond_17

    iget-boolean v11, p0, Landroid/server/BluetoothDeviceService;->mWaitingForAclDisconnected:Z

    if-eqz v11, :cond_43

    .line 264
    :cond_17
    const-string v11, "BluetoothDeviceService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "finishDisable, but mAclLinkCount = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Landroid/server/BluetoothDeviceService;->mAclLinkCount:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", mWaitingForAclDisconnected = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, p0, Landroid/server/BluetoothDeviceService;->mWaitingForAclDisconnected:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const/4 v11, 0x0

    iput v11, p0, Landroid/server/BluetoothDeviceService;->mAclLinkCount:I

    .line 266
    const/4 v11, 0x0

    iput-boolean v11, p0, Landroid/server/BluetoothDeviceService;->mWaitingForAclDisconnected:Z

    .line 269
    :cond_43
    iget-object v11, p0, Landroid/server/BluetoothDeviceService;->mEventLoop:Landroid/server/BluetoothEventLoop;

    invoke-virtual {v11}, Landroid/server/BluetoothEventLoop;->stop()V

    .line 273
    iget-object v11, p0, Landroid/server/BluetoothDeviceService;->mBondState:Landroid/server/BluetoothDeviceService$BondState;

    const/4 v12, 0x2

    invoke-static {v11, v12}, Landroid/server/BluetoothDeviceService$BondState;->access$000(Landroid/server/BluetoothDeviceService$BondState;I)[Ljava/lang/String;

    move-result-object v1

    .local v1, arr$:[Ljava/lang/String;
    array-length v9, v1

    .local v9, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_51
    if-ge v5, v9, :cond_5f

    aget-object v0, v1, v5

    .line 274
    .local v0, address:Ljava/lang/String;
    iget-object v11, p0, Landroid/server/BluetoothDeviceService;->mBondState:Landroid/server/BluetoothDeviceService$BondState;

    const/4 v12, 0x0

    const/4 v13, 0x3

    invoke-virtual {v11, v0, v12, v13}, Landroid/server/BluetoothDeviceService$BondState;->setBondState(Ljava/lang/String;II)V

    .line 273
    add-int/lit8 v5, v5, 0x1

    goto :goto_51

    .line 279
    .end local v0           #address:Ljava/lang/String;
    :cond_5f
    iget-object v11, p0, Landroid/server/BluetoothDeviceService;->mEventLoop:Landroid/server/BluetoothEventLoop;

    invoke-virtual {v11}, Landroid/server/BluetoothEventLoop;->getRemoteServiceChannelCallbacks()Ljava/util/HashMap;

    move-result-object v3

    .line 282
    .local v3, callbacksMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/bluetooth/IBluetoothDeviceCallback;>;"
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_6d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8b

    .line 283
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 284
    .restart local v0       #address:Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/IBluetoothDeviceCallback;
    :try_end_7f
    .catchall {:try_start_f .. :try_end_7f} :catchall_88

    .line 286
    .local v2, callback:Landroid/bluetooth/IBluetoothDeviceCallback;
    const/16 v11, -0x3e9

    :try_start_81
    invoke-interface {v2, v0, v11}, Landroid/bluetooth/IBluetoothDeviceCallback;->onGetRemoteServiceChannelResult(Ljava/lang/String;I)V
    :try_end_84
    .catchall {:try_start_81 .. :try_end_84} :catchall_88
    .catch Landroid/os/RemoteException; {:try_start_81 .. :try_end_84} :catch_104

    .line 288
    :goto_84
    :try_start_84
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V
    :try_end_87
    .catchall {:try_start_84 .. :try_end_87} :catchall_88

    goto :goto_6d

    .line 256
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #callback:Landroid/bluetooth/IBluetoothDeviceCallback;
    .end local v3           #callbacksMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/bluetooth/IBluetoothDeviceCallback;>;"
    .end local v4           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5           #i$:I
    .end local v9           #len$:I
    :catchall_88
    move-exception v11

    monitor-exit p0

    throw v11

    .line 292
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v3       #callbacksMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/bluetooth/IBluetoothDeviceCallback;>;"
    .restart local v4       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v5       #i$:I
    .restart local v9       #len$:I
    :cond_8b
    :try_start_8b
    iget-object v11, p0, Landroid/server/BluetoothDeviceService;->mEventLoop:Landroid/server/BluetoothEventLoop;

    invoke-virtual {v11}, Landroid/server/BluetoothEventLoop;->getRemoteServicesCallbacks()Ljava/util/HashMap;

    move-result-object v10

    .line 295
    .local v10, servicesCallbacksMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/bluetooth/IBluetoothDeviceServicesCallback;>;"
    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_99
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b4

    .line 296
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 297
    .restart local v0       #address:Ljava/lang/String;
    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/IBluetoothDeviceServicesCallback;
    :try_end_ab
    .catchall {:try_start_8b .. :try_end_ab} :catchall_88

    .line 299
    .local v2, callback:Landroid/bluetooth/IBluetoothDeviceServicesCallback;
    const/4 v11, 0x0

    const/4 v12, 0x0

    :try_start_ad
    invoke-interface {v2, v0, v11, v12}, Landroid/bluetooth/IBluetoothDeviceServicesCallback;->onGetRemoteServicesResult(Ljava/lang/String;ZI)V
    :try_end_b0
    .catchall {:try_start_ad .. :try_end_b0} :catchall_88
    .catch Landroid/os/RemoteException; {:try_start_ad .. :try_end_b0} :catch_107

    .line 301
    :goto_b0
    :try_start_b0
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_99

    .line 305
    .end local v0           #address:Ljava/lang/String;
    .end local v2           #callback:Landroid/bluetooth/IBluetoothDeviceServicesCallback;
    :cond_b4
    new-instance v8, Landroid/content/Intent;

    const-string v11, "android.bluetooth.intent.action.SCAN_MODE_CHANGED"

    invoke-direct {v8, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 306
    .local v8, intent:Landroid/content/Intent;
    const-string v11, "android.bluetooth.intent.SCAN_MODE"

    const/4 v12, 0x0

    invoke-virtual {v8, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 307
    iget-object v11, p0, Landroid/server/BluetoothDeviceService;->mContext:Landroid/content/Context;

    const-string v12, "android.permission.BLUETOOTH"

    invoke-virtual {v11, v8, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 309
    const/4 v11, 0x0

    iput-boolean v11, p0, Landroid/server/BluetoothDeviceService;->mIsDiscovering:Z

    .line 311
    if-eqz p1, :cond_d1

    .line 312
    const/4 v11, 0x0

    invoke-direct {p0, v11}, Landroid/server/BluetoothDeviceService;->persistBluetoothOnSetting(Z)V

    .line 315
    :cond_d1
    const/4 v11, 0x0

    invoke-direct {p0, v11}, Landroid/server/BluetoothDeviceService;->setBluetoothState(I)V

    .line 317
    invoke-direct {p0}, Landroid/server/BluetoothDeviceService;->disableNativeLocked()I

    .line 320
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_db
    .catchall {:try_start_b0 .. :try_end_db} :catchall_88

    move-result-wide v6

    .line 322
    .local v6, ident:J
    :try_start_dc
    iget-object v11, p0, Landroid/server/BluetoothDeviceService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v11}, Lcom/android/internal/app/IBatteryStats;->noteBluetoothOff()V
    :try_end_e1
    .catchall {:try_start_dc .. :try_end_e1} :catchall_f1
    .catch Landroid/os/RemoteException; {:try_start_dc .. :try_end_e1} :catch_109

    .line 325
    :try_start_e1
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 328
    :goto_e4
    iget-boolean v11, p0, Landroid/server/BluetoothDeviceService;->mRestart:Z

    if-eqz v11, :cond_f6

    .line 329
    const/4 v11, 0x0

    iput-boolean v11, p0, Landroid/server/BluetoothDeviceService;->mRestart:Z

    .line 330
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Landroid/server/BluetoothDeviceService;->enable(Z)Z

    goto/16 :goto_d

    .line 325
    :catchall_f1
    move-exception v11

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v11

    .line 332
    :cond_f6
    iget v11, p0, Landroid/server/BluetoothDeviceService;->mFinalBTState:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_d

    .line 333
    const/4 v11, 0x0

    iput v11, p0, Landroid/server/BluetoothDeviceService;->mFinalBTState:I

    .line 334
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Landroid/server/BluetoothDeviceService;->enable(Z)Z

    goto/16 :goto_d

    .line 287
    .end local v6           #ident:J
    .end local v8           #intent:Landroid/content/Intent;
    .end local v10           #servicesCallbacksMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/bluetooth/IBluetoothDeviceServicesCallback;>;"
    .restart local v0       #address:Ljava/lang/String;
    .local v2, callback:Landroid/bluetooth/IBluetoothDeviceCallback;
    :catch_104
    move-exception v11

    goto/16 :goto_84

    .line 300
    .local v2, callback:Landroid/bluetooth/IBluetoothDeviceServicesCallback;
    .restart local v10       #servicesCallbacksMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/bluetooth/IBluetoothDeviceServicesCallback;>;"
    :catch_107
    move-exception v11

    goto :goto_b0

    .line 323
    .end local v0           #address:Ljava/lang/String;
    .end local v2           #callback:Landroid/bluetooth/IBluetoothDeviceServicesCallback;
    .restart local v6       #ident:J
    .restart local v8       #intent:Landroid/content/Intent;
    :catch_109
    move-exception v11

    .line 325
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_10d
    .catchall {:try_start_e1 .. :try_end_10d} :catchall_88

    goto :goto_e4
.end method

.method private native getAddressNative()Ljava/lang/String;
.end method

.method private getAddressNativeLocked()Ljava/lang/String;
    .registers 3

    .prologue
    .line 839
    sget-object v0, Landroid/server/BluetoothDeviceService;->lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 840
    :try_start_3
    invoke-direct {p0}, Landroid/server/BluetoothDeviceService;->getAddressNative()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 841
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method private native getCompanyNative()Ljava/lang/String;
.end method

.method private getCompanyNativeLocked()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1338
    sget-object v0, Landroid/server/BluetoothDeviceService;->lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 1339
    :try_start_3
    invoke-direct {p0}, Landroid/server/BluetoothDeviceService;->getCompanyNative()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1340
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method private native getDiscoverableTimeoutNative()I
.end method

.method private getDiscoverableTimeoutNativeLocked()I
    .registers 3

    .prologue
    .line 1036
    sget-object v0, Landroid/server/BluetoothDeviceService;->lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 1037
    :try_start_3
    invoke-direct {p0}, Landroid/server/BluetoothDeviceService;->getDiscoverableTimeoutNative()I

    move-result v1

    monitor-exit v0

    return v1

    .line 1038
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method private native getLevel2ServicesNative(Ljava/lang/String;)I
.end method

.method private native getManufacturerNative()Ljava/lang/String;
.end method

.method private getManufacturerNativeLocked()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1313
    sget-object v0, Landroid/server/BluetoothDeviceService;->lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 1314
    :try_start_3
    invoke-direct {p0}, Landroid/server/BluetoothDeviceService;->getManufacturerNative()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1315
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method private native getModeNative()Ljava/lang/String;
.end method

.method private getModeNativeLocked()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1067
    sget-object v0, Landroid/server/BluetoothDeviceService;->lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 1068
    :try_start_3
    invoke-direct {p0}, Landroid/server/BluetoothDeviceService;->getModeNative()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1069
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method private native getNameNative()Ljava/lang/String;
.end method

.method private getNameNativeLocked()Ljava/lang/String;
    .registers 3

    .prologue
    .line 855
    sget-object v0, Landroid/server/BluetoothDeviceService;->lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 856
    :try_start_3
    invoke-direct {p0}, Landroid/server/BluetoothDeviceService;->getNameNative()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 857
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method private native getRemoteClassNative(Ljava/lang/String;)I
.end method

.method private getRemoteClassNativeLocked(Ljava/lang/String;)I
    .registers 4
    .parameter "address"

    .prologue
    .line 1507
    sget-object v0, Landroid/server/BluetoothDeviceService;->lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 1508
    :try_start_3
    invoke-direct {p0, p1}, Landroid/server/BluetoothDeviceService;->getRemoteClassNative(Ljava/lang/String;)I

    move-result v1

    monitor-exit v0

    return v1

    .line 1509
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method private native getRemoteCompanyNative(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private getRemoteCompanyNativeLocked(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "address"

    .prologue
    .line 1434
    sget-object v0, Landroid/server/BluetoothDeviceService;->lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 1435
    :try_start_3
    invoke-direct {p0, p1}, Landroid/server/BluetoothDeviceService;->getRemoteCompanyNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1436
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method private native getRemoteFeaturesNative(Ljava/lang/String;)[B
.end method

.method private getRemoteFeaturesNativeLocked(Ljava/lang/String;)[B
    .registers 4
    .parameter "address"

    .prologue
    .line 1547
    sget-object v0, Landroid/server/BluetoothDeviceService;->lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 1548
    :try_start_3
    invoke-direct {p0, p1}, Landroid/server/BluetoothDeviceService;->getRemoteFeaturesNative(Ljava/lang/String;)[B

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1549
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method private native getRemoteManufacturerNative(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private getRemoteManufacturerNativeLocked(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "address"

    .prologue
    .line 1410
    sget-object v0, Landroid/server/BluetoothDeviceService;->lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 1411
    :try_start_3
    invoke-direct {p0, p1}, Landroid/server/BluetoothDeviceService;->getRemoteManufacturerNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1412
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method private native getRemoteNameNative(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private getRemoteNameNativeLocked(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "address"

    .prologue
    .line 916
    sget-object v0, Landroid/server/BluetoothDeviceService;->lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 917
    :try_start_3
    invoke-direct {p0, p1}, Landroid/server/BluetoothDeviceService;->getRemoteNameNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 918
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method private native getRemoteRevisionNative(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private getRemoteRevisionNativeLocked(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "address"

    .prologue
    .line 1386
    sget-object v0, Landroid/server/BluetoothDeviceService;->lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 1387
    :try_start_3
    invoke-direct {p0, p1}, Landroid/server/BluetoothDeviceService;->getRemoteRevisionNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1388
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method private native getRemoteServiceChannelNative(Ljava/lang/String;S)Z
.end method

.method private getRemoteServiceChannelNativeLocked(Ljava/lang/String;S)Z
    .registers 5
    .parameter "address"
    .parameter "uuid16"

    .prologue
    .line 1677
    sget-object v0, Landroid/server/BluetoothDeviceService;->lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 1678
    :try_start_3
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothDeviceService;->getRemoteServiceChannelNative(Ljava/lang/String;S)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1679
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method private native getRemoteServiceHandlesNative(Ljava/lang/String;Ljava/lang/String;)[I
.end method

.method private getRemoteServiceHandlesNativeLocked(Ljava/lang/String;Ljava/lang/String;)[I
    .registers 5
    .parameter "address"
    .parameter "match"

    .prologue
    .line 1581
    sget-object v0, Landroid/server/BluetoothDeviceService;->lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 1582
    :try_start_3
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothDeviceService;->getRemoteServiceHandlesNative(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1583
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method private native getRemoteServiceRecordNative(Ljava/lang/String;I)[B
.end method

.method private getRemoteServiceRecordNativeLocked(Ljava/lang/String;I)[B
    .registers 5
    .parameter "address"
    .parameter "handle"

    .prologue
    .line 1614
    sget-object v0, Landroid/server/BluetoothDeviceService;->lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 1615
    :try_start_3
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothDeviceService;->getRemoteServiceRecordNative(Ljava/lang/String;I)[B

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1616
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method private native getRemoteServicesNative(Ljava/lang/String;)Z
.end method

.method private getRemoteServicesNativeLocked(Ljava/lang/String;)Z
    .registers 4
    .parameter "address"

    .prologue
    .line 1641
    sget-object v0, Landroid/server/BluetoothDeviceService;->lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 1642
    :try_start_3
    invoke-direct {p0, p1}, Landroid/server/BluetoothDeviceService;->getRemoteServicesNative(Ljava/lang/String;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1643
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method private native getRemoteVersionNative(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private getRemoteVersionNativeLocked(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "address"

    .prologue
    .line 1362
    sget-object v0, Landroid/server/BluetoothDeviceService;->lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 1363
    :try_start_3
    invoke-direct {p0, p1}, Landroid/server/BluetoothDeviceService;->getRemoteVersionNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1364
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method private native getRevisionNative()Ljava/lang/String;
.end method

.method private getRevisionNativeLocked()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1293
    sget-object v0, Landroid/server/BluetoothDeviceService;->lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 1294
    :try_start_3
    invoke-direct {p0}, Landroid/server/BluetoothDeviceService;->getRevisionNative()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1295
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method private native getVersionNative()Ljava/lang/String;
.end method

.method private getVersionNativeLocked()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1270
    sget-object v0, Landroid/server/BluetoothDeviceService;->lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 1271
    :try_start_3
    invoke-direct {p0}, Landroid/server/BluetoothDeviceService;->getVersionNative()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1272
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method private native hasBondingNative(Ljava/lang/String;)Z
.end method

.method private hasBondingNativeLocked(Ljava/lang/String;)Z
    .registers 4
    .parameter "address"

    .prologue
    .line 1203
    sget-object v0, Landroid/server/BluetoothDeviceService;->lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 1204
    :try_start_3
    invoke-direct {p0, p1}, Landroid/server/BluetoothDeviceService;->hasBondingNative(Ljava/lang/String;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1205
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method private native initializeNativeDataNative()V
.end method

.method private final isAirplaneModeOn()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1853
    iget-object v0, p0, Landroid/server/BluetoothDeviceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_12

    move v0, v3

    :goto_11
    return v0

    :cond_12
    move v0, v2

    goto :goto_11
.end method

.method private native isConnectedNative(Ljava/lang/String;)Z
.end method

.method private isConnectedNativeLocked(Ljava/lang/String;)Z
    .registers 4
    .parameter "address"

    .prologue
    .line 1051
    sget-object v0, Landroid/server/BluetoothDeviceService;->lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 1052
    :try_start_3
    invoke-direct {p0, p1}, Landroid/server/BluetoothDeviceService;->isConnectedNative(Ljava/lang/String;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1053
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method private native isEnabledNative()I
.end method

.method private isEnabledNativeLocked()I
    .registers 3

    .prologue
    .line 183
    sget-object v0, Landroid/server/BluetoothDeviceService;->lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 184
    :try_start_3
    invoke-direct {p0}, Landroid/server/BluetoothDeviceService;->isEnabledNative()I

    move-result v1

    monitor-exit v0

    return v1

    .line 185
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method private native isPeriodicDiscoveryNative()Z
.end method

.method private isPeriodicDiscoveryNativeLocked()Z
    .registers 3

    .prologue
    .line 994
    sget-object v0, Landroid/server/BluetoothDeviceService;->lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 995
    :try_start_3
    invoke-direct {p0}, Landroid/server/BluetoothDeviceService;->isPeriodicDiscoveryNative()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 996
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method private native lastSeenNative(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private lastSeenNativeLocked(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "address"

    .prologue
    .line 1456
    sget-object v0, Landroid/server/BluetoothDeviceService;->lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 1457
    :try_start_3
    invoke-direct {p0, p1}, Landroid/server/BluetoothDeviceService;->lastSeenNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1458
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method private native lastUsedNative(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private lastUsedNativeLocked(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "address"

    .prologue
    .line 1478
    sget-object v0, Landroid/server/BluetoothDeviceService;->lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 1479
    :try_start_3
    invoke-direct {p0, p1}, Landroid/server/BluetoothDeviceService;->lastUsedNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1480
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method private native listBondingsNative()[Ljava/lang/String;
.end method

.method private listBondingsNativeLocked()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 810
    sget-object v0, Landroid/server/BluetoothDeviceService;->lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 811
    :try_start_3
    invoke-direct {p0}, Landroid/server/BluetoothDeviceService;->listBondingsNative()[Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 812
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method private native listConnectionsNative()[Ljava/lang/String;
.end method

.method private listConnectionsNativeLocked()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 1228
    sget-object v0, Landroid/server/BluetoothDeviceService;->lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 1229
    :try_start_3
    invoke-direct {p0}, Landroid/server/BluetoothDeviceService;->listConnectionsNative()[Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1230
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method private native listRemoteDevicesNative()[Ljava/lang/String;
.end method

.method private listRemoteDevicesNativeLocked()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 1250
    sget-object v0, Landroid/server/BluetoothDeviceService;->lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 1251
    :try_start_3
    invoke-direct {p0}, Landroid/server/BluetoothDeviceService;->listRemoteDevicesNative()[Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1252
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 1949
    const-string v0, "BluetoothDeviceService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1950
    return-void
.end method

.method private persistBluetoothOnSetting(Z)V
    .registers 7
    .parameter "bluetoothOn"

    .prologue
    .line 647
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 648
    .local v0, origCallerIdentityToken:J
    iget-object v2, p0, Landroid/server/BluetoothDeviceService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "bluetooth_on"

    if-eqz p1, :cond_16

    const/4 v4, 0x1

    :goto_f
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 650
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 651
    return-void

    .line 648
    :cond_16
    const/4 v4, 0x0

    goto :goto_f
.end method

.method private native removeBondingNative(Ljava/lang/String;)Z
.end method

.method private removeBondingNativeLocked(Ljava/lang/String;)Z
    .registers 4
    .parameter "address"

    .prologue
    .line 1187
    sget-object v0, Landroid/server/BluetoothDeviceService;->lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 1188
    :try_start_3
    invoke-direct {p0, p1}, Landroid/server/BluetoothDeviceService;->removeBondingNative(Ljava/lang/String;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1189
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method static scanModeToBluezString(I)Ljava/lang/String;
    .registers 2
    .parameter "mode"

    .prologue
    .line 1937
    packed-switch p0, :pswitch_data_e

    .line 1945
    :pswitch_3
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 1939
    :pswitch_5
    const-string v0, "off"

    goto :goto_4

    .line 1941
    :pswitch_8
    const-string v0, "connectable"

    goto :goto_4

    .line 1943
    :pswitch_b
    const-string v0, "discoverable"

    goto :goto_4

    .line 1937
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
        :pswitch_3
        :pswitch_b
    .end packed-switch
.end method

.method private declared-synchronized setBluetoothState(I)V
    .registers 5
    .parameter "state"

    .prologue
    .line 514
    monitor-enter p0

    :try_start_1
    iget v1, p0, Landroid/server/BluetoothDeviceService;->mBluetoothState:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_4b

    if-ne p1, v1, :cond_7

    .line 528
    :goto_5
    monitor-exit p0

    return-void

    .line 518
    :cond_7
    :try_start_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bluetooth state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/server/BluetoothDeviceService;->mBluetoothState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/server/BluetoothDeviceService;->log(Ljava/lang/String;)V

    .line 520
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.intent.action.BLUETOOTH_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 521
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.intent.BLUETOOTH_PREVIOUS_STATE"

    iget v2, p0, Landroid/server/BluetoothDeviceService;->mBluetoothState:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 522
    const-string v1, "android.bluetooth.intent.BLUETOOTH_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 523
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 525
    iput p1, p0, Landroid/server/BluetoothDeviceService;->mBluetoothState:I

    .line 527
    iget-object v1, p0, Landroid/server/BluetoothDeviceService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_4a
    .catchall {:try_start_7 .. :try_end_4a} :catchall_4b

    goto :goto_5

    .line 514
    .end local v0           #intent:Landroid/content/Intent;
    :catchall_4b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private native setDiscoverableTimeoutNative(I)Z
.end method

.method private setDiscoverableTimeoutNativeLocked(I)Z
    .registers 4
    .parameter "timeout_s"

    .prologue
    .line 1016
    sget-object v0, Landroid/server/BluetoothDeviceService;->lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 1017
    :try_start_3
    invoke-direct {p0, p1}, Landroid/server/BluetoothDeviceService;->setDiscoverableTimeoutNative(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1018
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method private native setLevel2ServicesNative(Ljava/lang/String;Ljava/lang/String;Z)Z
.end method

.method private native setModeNative(Ljava/lang/String;)Z
.end method

.method private setModeNativeLocked(Ljava/lang/String;)Z
    .registers 4
    .parameter "mode"

    .prologue
    .line 1087
    sget-object v0, Landroid/server/BluetoothDeviceService;->lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 1088
    :try_start_3
    invoke-direct {p0, p1}, Landroid/server/BluetoothDeviceService;->setModeNative(Ljava/lang/String;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1089
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method private native setNameNative(Ljava/lang/String;)Z
.end method

.method private setNameNativeLocked(Ljava/lang/String;)Z
    .registers 4
    .parameter "name"

    .prologue
    .line 876
    sget-object v0, Landroid/server/BluetoothDeviceService;->lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 877
    :try_start_3
    invoke-direct {p0, p1}, Landroid/server/BluetoothDeviceService;->setNameNative(Ljava/lang/String;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 878
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method private native setPinNative(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method private setPinNativeLocked(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 6
    .parameter "address"
    .parameter "pin"
    .parameter "nativeData"

    .prologue
    .line 1710
    sget-object v0, Landroid/server/BluetoothDeviceService;->lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 1711
    :try_start_3
    invoke-direct {p0, p1, p2, p3}, Landroid/server/BluetoothDeviceService;->setPinNative(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1712
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method private native startDiscoveryNative(Z)Z
.end method

.method private startDiscoveryNativeLocked(Z)Z
    .registers 4
    .parameter "resolveNames"

    .prologue
    .line 934
    sget-object v0, Landroid/server/BluetoothDeviceService;->lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 935
    :try_start_3
    invoke-direct {p0, p1}, Landroid/server/BluetoothDeviceService;->startDiscoveryNative(Z)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 936
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method private native startPeriodicDiscoveryNative()Z
.end method

.method private startPeriodicDiscoveryNativeLocked()Z
    .registers 3

    .prologue
    .line 969
    sget-object v0, Landroid/server/BluetoothDeviceService;->lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 970
    :try_start_3
    invoke-direct {p0}, Landroid/server/BluetoothDeviceService;->startPeriodicDiscoveryNative()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 971
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method private native stopPeriodicDiscoveryNative()Z
.end method

.method private stopPeriodicDiscoveryNativeLocked()Z
    .registers 3

    .prologue
    .line 982
    sget-object v0, Landroid/server/BluetoothDeviceService;->lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 983
    :try_start_3
    invoke-direct {p0}, Landroid/server/BluetoothDeviceService;->stopPeriodicDiscoveryNative()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 984
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method private static toBondStateString(I)Ljava/lang/String;
    .registers 2
    .parameter "bondState"

    .prologue
    .line 816
    packed-switch p0, :pswitch_data_10

    .line 824
    const-string v0, "??????"

    :goto_5
    return-object v0

    .line 818
    :pswitch_6
    const-string v0, "not bonded"

    goto :goto_5

    .line 820
    :pswitch_9
    const-string v0, "bonding"

    goto :goto_5

    .line 822
    :pswitch_c
    const-string v0, "bonded"

    goto :goto_5

    .line 816
    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_6
        :pswitch_c
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public declared-synchronized DUTOff()I
    .registers 4

    .prologue
    .line 201
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothDeviceService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-direct {p0}, Landroid/server/BluetoothDeviceService;->DUTOffNative()I
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_10

    move-result v0

    monitor-exit p0

    return v0

    .line 201
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized DUTOn()I
    .registers 4

    .prologue
    .line 195
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothDeviceService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-direct {p0}, Landroid/server/BluetoothDeviceService;->DUTOnNative()I
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_10

    move-result v0

    monitor-exit p0

    return v0

    .line 195
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized authorizeService(Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .registers 10
    .parameter "address"
    .parameter "service"
    .parameter "authorized"
    .parameter "always"

    .prologue
    .line 1737
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Landroid/server/BluetoothDeviceService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    const-string v4, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1740
    iget-object v2, p0, Landroid/server/BluetoothDeviceService;->mEventLoop:Landroid/server/BluetoothEventLoop;

    invoke-virtual {v2}, Landroid/server/BluetoothEventLoop;->getAuthorizeAgentRequestData()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1741
    .local v1, data:Ljava/lang/Integer;
    if-nez v1, :cond_39

    .line 1742
    const-string v2, "BluetoothDeviceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "authorizeSsp("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") called but no native data available.\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_55

    .line 1743
    const/4 v2, 0x0

    .line 1757
    :goto_37
    monitor-exit p0

    return v2

    .line 1747
    :cond_39
    if-eqz p3, :cond_47

    if-nez p4, :cond_47

    .line 1748
    const/4 v0, 0x2

    .line 1757
    .local v0, authorized_native:I
    :goto_3e
    :try_start_3e
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, p1, p2, v0, v2}, Landroid/server/BluetoothDeviceService;->authorizeServiceNative(Ljava/lang/String;Ljava/lang/String;II)Z
    :try_end_45
    .catchall {:try_start_3e .. :try_end_45} :catchall_55

    move-result v2

    goto :goto_37

    .line 1749
    .end local v0           #authorized_native:I
    :cond_47
    if-eqz p3, :cond_4d

    if-eqz p4, :cond_4d

    .line 1750
    const/4 v0, 0x3

    .restart local v0       #authorized_native:I
    goto :goto_3e

    .line 1751
    .end local v0           #authorized_native:I
    :cond_4d
    if-nez p3, :cond_53

    if-nez p4, :cond_53

    .line 1752
    const/4 v0, 0x0

    .restart local v0       #authorized_native:I
    goto :goto_3e

    .line 1754
    .end local v0           #authorized_native:I
    :cond_53
    const/4 v0, 0x1

    .restart local v0       #authorized_native:I
    goto :goto_3e

    .line 1737
    .end local v0           #authorized_native:I
    .end local v1           #data:Ljava/lang/Integer;
    :catchall_55
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized authorizeSsp(Ljava/lang/String;Z)Z
    .registers 7
    .parameter "address"
    .parameter "approved"

    .prologue
    .line 1716
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Landroid/server/BluetoothDeviceService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1719
    iget-object v1, p0, Landroid/server/BluetoothDeviceService;->mEventLoop:Landroid/server/BluetoothEventLoop;

    invoke-virtual {v1}, Landroid/server/BluetoothEventLoop;->getPasskeyAgentRequestData()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1720
    .local v0, data:Ljava/lang/Integer;
    if-nez v0, :cond_39

    .line 1721
    const-string v1, "BluetoothDeviceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "authorizeSsp("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") called but no native data available.\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_42

    .line 1722
    const/4 v1, 0x0

    .line 1726
    :goto_37
    monitor-exit p0

    return v1

    :cond_39
    :try_start_39
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p1, p2, v1}, Landroid/server/BluetoothDeviceService;->authorizeSspNativeLocked(Ljava/lang/String;ZI)Z
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_42

    move-result v1

    goto :goto_37

    .line 1716
    .end local v0           #data:Ljava/lang/Integer;
    :catchall_42
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized cancelBondProcess(Ljava/lang/String;)Z
    .registers 6
    .parameter "address"

    .prologue
    const/4 v3, 0x0

    .line 1149
    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Landroid/server/BluetoothDeviceService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1151
    const-string v0, "BluetoothDeviceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelBond: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    invoke-static {p1}, Landroid/bluetooth/BluetoothDevice;->checkBluetoothAddress(Ljava/lang/String;)Z
    :try_end_26
    .catchall {:try_start_2 .. :try_end_26} :catchall_47

    move-result v0

    if-nez v0, :cond_2c

    move v0, v3

    .line 1164
    :goto_2a
    monitor-exit p0

    return v0

    .line 1156
    :cond_2c
    :try_start_2c
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 1157
    iget-object v0, p0, Landroid/server/BluetoothDeviceService;->mBondState:Landroid/server/BluetoothDeviceService$BondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothDeviceService$BondState;->getBondState(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3b

    move v0, v3

    .line 1158
    goto :goto_2a

    .line 1161
    :cond_3b
    iget-object v0, p0, Landroid/server/BluetoothDeviceService;->mBondState:Landroid/server/BluetoothDeviceService$BondState;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, p1, v1, v2}, Landroid/server/BluetoothDeviceService$BondState;->setBondState(Ljava/lang/String;II)V

    .line 1163
    invoke-direct {p0, p1}, Landroid/server/BluetoothDeviceService;->cancelBondingProcessNativeLocked(Ljava/lang/String;)Z
    :try_end_45
    .catchall {:try_start_2c .. :try_end_45} :catchall_47

    .line 1164
    const/4 v0, 0x1

    goto :goto_2a

    .line 1149
    :catchall_47
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized cancelDiscovery()Z
    .registers 4

    .prologue
    .line 940
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothDeviceService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    invoke-direct {p0}, Landroid/server/BluetoothDeviceService;->cancelDiscoveryNativeLocked()Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_10

    move-result v0

    monitor-exit p0

    return v0

    .line 940
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized cancelPin(Ljava/lang/String;)Z
    .registers 7
    .parameter "address"

    .prologue
    const/4 v4, 0x0

    .line 1762
    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Landroid/server/BluetoothDeviceService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1764
    invoke-static {p1}, Landroid/bluetooth/BluetoothDevice;->checkBluetoothAddress(Ljava/lang/String;)Z
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_5b

    move-result v1

    if-nez v1, :cond_14

    move v1, v4

    .line 1775
    :goto_12
    monitor-exit p0

    return v1

    .line 1767
    :cond_14
    :try_start_14
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 1768
    iget-object v1, p0, Landroid/server/BluetoothDeviceService;->mEventLoop:Landroid/server/BluetoothEventLoop;

    invoke-virtual {v1}, Landroid/server/BluetoothEventLoop;->getPasskeyAgentRequestData()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1769
    .local v0, data:Ljava/lang/Integer;
    if-nez v0, :cond_52

    .line 1770
    const-string v1, "BluetoothDeviceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelPin("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") called but no native data available, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ignoring. Maybe the PasskeyAgent Request was already cancelled by the remote "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "or by bluez.\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 1773
    goto :goto_12

    .line 1775
    :cond_52
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p1, v1}, Landroid/server/BluetoothDeviceService;->cancelPinNativeLocked(Ljava/lang/String;I)Z
    :try_end_59
    .catchall {:try_start_14 .. :try_end_59} :catchall_5b

    move-result v1

    goto :goto_12

    .line 1762
    .end local v0           #data:Ljava/lang/Integer;
    :catchall_5b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized createBond(Ljava/lang/String;)Z
    .registers 7
    .parameter "address"

    .prologue
    const/4 v4, 0x0

    .line 1109
    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Landroid/server/BluetoothDeviceService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1111
    const-string v1, "BluetoothDeviceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createBond: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    invoke-static {p1}, Landroid/bluetooth/BluetoothDevice;->checkBluetoothAddress(Ljava/lang/String;)Z
    :try_end_26
    .catchall {:try_start_2 .. :try_end_26} :catchall_74

    move-result v1

    if-nez v1, :cond_2c

    move v1, v4

    .line 1138
    :goto_2a
    monitor-exit p0

    return v1

    .line 1116
    :cond_2c
    :try_start_2c
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 1118
    iget-object v1, p0, Landroid/server/BluetoothDeviceService;->mBondState:Landroid/server/BluetoothDeviceService$BondState;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/server/BluetoothDeviceService$BondState;->access$000(Landroid/server/BluetoothDeviceService$BondState;I)[Ljava/lang/String;

    move-result-object v0

    .line 1119
    .local v0, bonding:[Ljava/lang/String;
    array-length v1, v0

    if-lez v1, :cond_4a

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4a

    .line 1120
    const-string v1, "Ignoring createBond(): another device is bonding"

    invoke-static {v1}, Landroid/server/BluetoothDeviceService;->log(Ljava/lang/String;)V

    move v1, v4

    .line 1122
    goto :goto_2a

    .line 1127
    :cond_4a
    iget-object v1, p0, Landroid/server/BluetoothDeviceService;->mBondState:Landroid/server/BluetoothDeviceService$BondState;

    invoke-virtual {v1, p1}, Landroid/server/BluetoothDeviceService$BondState;->isAutoPairingAttemptsInProgress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_61

    iget-object v1, p0, Landroid/server/BluetoothDeviceService;->mBondState:Landroid/server/BluetoothDeviceService$BondState;

    invoke-virtual {v1, p1}, Landroid/server/BluetoothDeviceService$BondState;->getBondState(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_61

    .line 1129
    const-string v1, "Ignoring createBond(): this device is already bonding or bonded"

    invoke-static {v1}, Landroid/server/BluetoothDeviceService;->log(Ljava/lang/String;)V

    move v1, v4

    .line 1130
    goto :goto_2a

    .line 1133
    :cond_61
    const v1, 0xea60

    invoke-direct {p0, p1, v1}, Landroid/server/BluetoothDeviceService;->createBondingNativeLocked(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_6c

    move v1, v4

    .line 1134
    goto :goto_2a

    .line 1137
    :cond_6c
    iget-object v1, p0, Landroid/server/BluetoothDeviceService;->mBondState:Landroid/server/BluetoothDeviceService$BondState;

    const/4 v2, 0x2

    invoke-virtual {v1, p1, v2}, Landroid/server/BluetoothDeviceService$BondState;->setBondState(Ljava/lang/String;I)V
    :try_end_72
    .catchall {:try_start_2c .. :try_end_72} :catchall_74

    .line 1138
    const/4 v1, 0x1

    goto :goto_2a

    .line 1109
    .end local v0           #bonding:[Ljava/lang/String;
    :catchall_74
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized disable(Z)Z
    .registers 9
    .parameter "saveSetting"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v2, "BluetoothDeviceService"

    .line 213
    monitor-enter p0

    :try_start_5
    iget-object v2, p0, Landroid/server/BluetoothDeviceService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    const-string v4, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v2, "BluetoothDeviceService"

    const-string v3, "disable..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget v2, p0, Landroid/server/BluetoothDeviceService;->mBluetoothState:I

    packed-switch v2, :pswitch_data_9e

    .line 225
    :pswitch_1a
    const-string v2, "BluetoothDeviceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Oops: disable BT in state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/server/BluetoothDeviceService;->mBluetoothState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catchall {:try_start_5 .. :try_end_34} :catchall_9b

    move v2, v5

    .line 252
    :goto_35
    monitor-exit p0

    return v2

    .line 220
    :pswitch_37
    :try_start_37
    const-string v2, "BluetoothDeviceService"

    const-string v3, "Oops: disable BT when BT is OFF..."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v6

    .line 221
    goto :goto_35

    .line 228
    :pswitch_40
    iget-object v2, p0, Landroid/server/BluetoothDeviceService;->mEnableThread:Landroid/server/BluetoothDeviceService$EnableThread;

    if-eqz v2, :cond_4e

    iget-object v2, p0, Landroid/server/BluetoothDeviceService;->mEnableThread:Landroid/server/BluetoothDeviceService$EnableThread;

    invoke-virtual {v2}, Landroid/server/BluetoothDeviceService$EnableThread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_4e

    move v2, v5

    .line 229
    goto :goto_35

    .line 232
    :cond_4e
    iput-boolean p1, p0, Landroid/server/BluetoothDeviceService;->mDisableSaveSetting:Z

    .line 238
    iget v2, p0, Landroid/server/BluetoothDeviceService;->mAclLinkCount:I

    if-eqz v2, :cond_95

    .line 239
    const-wide/16 v0, 0x1770

    .line 240
    .local v0, delayMs:J
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/server/BluetoothDeviceService;->mWaitingForAclDisconnected:Z

    .line 247
    :goto_59
    const-string v2, "BluetoothDeviceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mAclLinkCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/server/BluetoothDeviceService;->mAclLinkCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Wait for up to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Landroid/server/BluetoothDeviceService;->setBluetoothState(I)V

    .line 249
    iget-object v2, p0, Landroid/server/BluetoothDeviceService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/server/BluetoothDeviceService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move v2, v6

    .line 252
    goto :goto_35

    .line 243
    .end local v0           #delayMs:J
    :cond_95
    const-wide/16 v0, 0x1f4

    .line 244
    .restart local v0       #delayMs:J
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/server/BluetoothDeviceService;->mWaitingForAclDisconnected:Z
    :try_end_9a
    .catchall {:try_start_37 .. :try_end_9a} :catchall_9b

    goto :goto_59

    .line 213
    .end local v0           #delayMs:J
    :catchall_9b
    move-exception v2

    monitor-exit p0

    throw v2

    .line 218
    :pswitch_data_9e
    .packed-switch 0x0
        :pswitch_37
        :pswitch_1a
        :pswitch_40
    .end packed-switch
.end method

.method public declared-synchronized disconnectRemoteDeviceAcl(Ljava/lang/String;)Z
    .registers 5
    .parameter "address"

    .prologue
    .line 1093
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothDeviceService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    invoke-static {p1}, Landroid/bluetooth/BluetoothDevice;->checkBluetoothAddress(Ljava/lang/String;)Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_18

    move-result v0

    if-nez v0, :cond_13

    .line 1096
    const/4 v0, 0x0

    .line 1098
    :goto_11
    monitor-exit p0

    return v0

    :cond_13
    :try_start_13
    invoke-direct {p0, p1}, Landroid/server/BluetoothDeviceService;->disconnectRemoteDeviceNativeLocked(Ljava/lang/String;)Z
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_18

    move-result v0

    goto :goto_11

    .line 1093
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 14
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 1859
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\nmIsAirplaneSensitive = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Landroid/server/BluetoothDeviceService;->mIsAirplaneSensitive:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1861
    iget v6, p0, Landroid/server/BluetoothDeviceService;->mBluetoothState:I

    packed-switch v6, :pswitch_data_144

    .line 1875
    :goto_23
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\nLocal address = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/server/BluetoothDeviceService;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1876
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\nLocal name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/server/BluetoothDeviceService;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1877
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\nisDiscovering() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/server/BluetoothDeviceService;->isDiscovering()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1879
    new-instance v3, Landroid/bluetooth/BluetoothHeadset;

    iget-object v6, p0, Landroid/server/BluetoothDeviceService;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-direct {v3, v6, v7}, Landroid/bluetooth/BluetoothHeadset;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothHeadset$ServiceListener;)V

    .line 1881
    .local v3, headset:Landroid/bluetooth/BluetoothHeadset;
    invoke-virtual {p0}, Landroid/server/BluetoothDeviceService;->listRemoteDevices()[Ljava/lang/String;

    move-result-object v1

    .line 1883
    .local v1, addresses:[Ljava/lang/String;
    const-string v6, "\n--Known devices--"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1884
    move-object v2, v1

    .local v2, arr$:[Ljava/lang/String;
    array-length v5, v2

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_85
    if-ge v4, v5, :cond_d1

    aget-object v0, v2, v4

    .line 1885
    .local v0, address:Ljava/lang/String;
    const-string v6, "%s %10s (%d) %s\n"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Landroid/server/BluetoothDeviceService;->mBondState:Landroid/server/BluetoothDeviceService$BondState;

    invoke-virtual {v9, v0}, Landroid/server/BluetoothDeviceService$BondState;->getBondState(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Landroid/server/BluetoothDeviceService;->toBondStateString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    iget-object v9, p0, Landroid/server/BluetoothDeviceService;->mBondState:Landroid/server/BluetoothDeviceService$BondState;

    invoke-virtual {v9, v0}, Landroid/server/BluetoothDeviceService$BondState;->getAttempt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-virtual {p0, v0}, Landroid/server/BluetoothDeviceService;->getRemoteName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {p2, v6, v7}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1884
    add-int/lit8 v4, v4, 0x1

    goto :goto_85

    .line 1863
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #addresses:[Ljava/lang/String;
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v3           #headset:Landroid/bluetooth/BluetoothHeadset;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :pswitch_b8
    const-string v6, "\nBluetooth OFF\n"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1918
    :goto_bd
    return-void

    .line 1866
    :pswitch_be
    const-string v6, "\nBluetooth TURNING ON\n"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_bd

    .line 1869
    :pswitch_c4
    const-string v6, "\nBluetooth TURNING OFF\n"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_bd

    .line 1872
    :pswitch_ca
    const-string v6, "\nBluetooth ON\n"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_23

    .line 1891
    .restart local v1       #addresses:[Ljava/lang/String;
    .restart local v2       #arr$:[Ljava/lang/String;
    .restart local v3       #headset:Landroid/bluetooth/BluetoothHeadset;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    :cond_d1
    invoke-virtual {p0}, Landroid/server/BluetoothDeviceService;->listAclConnections()[Ljava/lang/String;

    move-result-object v1

    .line 1892
    const-string v6, "\n--ACL connected devices--"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1893
    move-object v2, v1

    array-length v5, v2

    const/4 v4, 0x0

    :goto_dd
    if-ge v4, v5, :cond_e7

    aget-object v0, v2, v4

    .line 1894
    .restart local v0       #address:Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1893
    add-int/lit8 v4, v4, 0x1

    goto :goto_dd

    .line 1899
    .end local v0           #address:Ljava/lang/String;
    :cond_e7
    const-string v6, "\n--Headset Service--"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1900
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothHeadset;->getState()I

    move-result v6

    packed-switch v6, :pswitch_data_150

    .line 1914
    :goto_f3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getHeadsetAddress() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothHeadset;->getHeadsetAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1915
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getBatteryUsageHint() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothHeadset;->getBatteryUsageHint()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1917
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothHeadset;->close()V

    goto :goto_bd

    .line 1902
    :pswitch_12b
    const-string v6, "getState() = STATE_DISCONNECTED"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_f3

    .line 1905
    :pswitch_131
    const-string v6, "getState() = STATE_CONNECTING"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_f3

    .line 1908
    :pswitch_137
    const-string v6, "getState() = STATE_CONNECTED"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_f3

    .line 1911
    :pswitch_13d
    const-string v6, "getState() = STATE_ERROR"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_f3

    .line 1861
    nop

    :pswitch_data_144
    .packed-switch 0x0
        :pswitch_b8
        :pswitch_be
        :pswitch_ca
        :pswitch_c4
    .end packed-switch

    .line 1900
    :pswitch_data_150
    .packed-switch -0x1
        :pswitch_13d
        :pswitch_12b
        :pswitch_131
        :pswitch_137
    .end packed-switch
.end method

.method public declared-synchronized enable(Z)Z
    .registers 15
    .parameter "saveSetting"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const-string v8, "0"

    const-string v8, "1"

    const-string v8, "BluetoothDeviceService"

    .line 346
    monitor-enter p0

    :try_start_9
    iget-object v8, p0, Landroid/server/BluetoothDeviceService;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.BLUETOOTH_ADMIN"

    const-string v10, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const-string v8, "BluetoothDeviceService"

    const-string v9, "enable..."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-boolean v8, p0, Landroid/server/BluetoothDeviceService;->mIsAirplaneSensitive:Z

    if-eqz v8, :cond_26

    invoke-direct {p0}, Landroid/server/BluetoothDeviceService;->isAirplaneModeOn()Z
    :try_end_20
    .catchall {:try_start_9 .. :try_end_20} :catchall_21a

    move-result v8

    if-eqz v8, :cond_26

    move v8, v11

    .line 499
    :goto_24
    monitor-exit p0

    return v8

    .line 354
    :cond_26
    :try_start_26
    iget v8, p0, Landroid/server/BluetoothDeviceService;->mBluetoothState:I

    if-eqz v8, :cond_2c

    move v8, v11

    .line 355
    goto :goto_24

    .line 357
    :cond_2c
    iget-object v8, p0, Landroid/server/BluetoothDeviceService;->mEnableThread:Landroid/server/BluetoothDeviceService$EnableThread;

    if-eqz v8, :cond_3a

    iget-object v8, p0, Landroid/server/BluetoothDeviceService;->mEnableThread:Landroid/server/BluetoothDeviceService$EnableThread;

    invoke-virtual {v8}, Landroid/server/BluetoothDeviceService$EnableThread;->isAlive()Z

    move-result v8

    if-eqz v8, :cond_3a

    move v8, v11

    .line 358
    goto :goto_24

    .line 366
    :cond_3a
    const-string v8, "dtun.hcid_active"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 367
    .local v5, prop:Ljava/lang/String;
    if-eqz v5, :cond_dd

    const-string v8, "1"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_dd

    .line 368
    const-string v8, "BluetoothDeviceService"

    const-string v9, "Oops: hcid is still active. Stop it now..."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    const-string v8, "ctl.stop"

    const-string v9, "hcid"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const/4 v3, 0x1

    .line 375
    .local v3, hcidRunning:Z
    :goto_59
    const-string v8, "dtun.obexd_active"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 376
    if-eqz v5, :cond_e0

    const-string v8, "1"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e0

    .line 377
    const-string v8, "BluetoothDeviceService"

    const-string v9, "Oops: obexd is still active. Stop it now..."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const-string v8, "ctl.stop"

    const-string v9, "obexd"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const/4 v4, 0x1

    .line 384
    .local v4, obexdRunning:Z
    :goto_78
    const-string v8, "dtun.srv_active"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 385
    if-eqz v5, :cond_e2

    const-string v8, "1"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e2

    .line 386
    const-string v8, "BluetoothDeviceService"

    const-string v9, "Oops: btld is still active. Stop it now..."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    const-string v8, "ctl.stop"

    const-string v9, "btld"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_96
    .catchall {:try_start_26 .. :try_end_96} :catchall_21a

    .line 388
    const/4 v2, 0x1

    .line 394
    .local v2, btldRunning:Z
    :goto_97
    const/4 v6, 0x4

    .local v6, retryCnt:I
    move v7, v6

    .line 395
    .end local v6           #retryCnt:I
    .local v7, retryCnt:I
    :goto_99
    if-nez v3, :cond_9f

    if-nez v4, :cond_9f

    if-eqz v2, :cond_e4

    :cond_9f
    sub-int v6, v7, v12

    .end local v7           #retryCnt:I
    .restart local v6       #retryCnt:I
    if-lez v7, :cond_e5

    .line 397
    const-wide/16 v8, 0xfa

    :try_start_a5
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a8
    .catchall {:try_start_a5 .. :try_end_a8} :catchall_21a
    .catch Ljava/lang/InterruptedException; {:try_start_a5 .. :try_end_a8} :catch_214

    .line 400
    :goto_a8
    if-eqz v3, :cond_b9

    :try_start_aa
    const-string v8, "dtun.hcid_active"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "1"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b9

    .line 402
    const/4 v3, 0x0

    .line 404
    :cond_b9
    if-eqz v4, :cond_ca

    const-string v8, "dtun.obexd_active"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "1"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_ca

    .line 406
    const/4 v4, 0x0

    .line 408
    :cond_ca
    if-eqz v2, :cond_220

    const-string v8, "dtun.srv_active"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "1"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_220

    .line 410
    const/4 v2, 0x0

    move v7, v6

    .end local v6           #retryCnt:I
    .restart local v7       #retryCnt:I
    goto :goto_99

    .line 373
    .end local v2           #btldRunning:Z
    .end local v3           #hcidRunning:Z
    .end local v4           #obexdRunning:Z
    .end local v7           #retryCnt:I
    :cond_dd
    const/4 v3, 0x0

    .restart local v3       #hcidRunning:Z
    goto/16 :goto_59

    .line 382
    :cond_e0
    const/4 v4, 0x0

    .restart local v4       #obexdRunning:Z
    goto :goto_78

    .line 391
    :cond_e2
    const/4 v2, 0x0

    .restart local v2       #btldRunning:Z
    goto :goto_97

    .restart local v7       #retryCnt:I
    :cond_e4
    move v6, v7

    .line 413
    .end local v7           #retryCnt:I
    .restart local v6       #retryCnt:I
    :cond_e5
    if-nez v3, :cond_eb

    if-nez v4, :cond_eb

    if-eqz v2, :cond_11b

    .line 414
    :cond_eb
    if-eqz v3, :cond_fb

    .line 415
    const-string v8, "dtun.hcid_active"

    const-string v9, "0"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    const-string v8, "BluetoothDeviceService"

    const-string v9, "Oops: hcid stop timed out..."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :cond_fb
    if-eqz v4, :cond_10b

    .line 419
    const-string v8, "dtun.obexd_active"

    const-string v9, "0"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const-string v8, "BluetoothDeviceService"

    const-string v9, "Oops: obexd stop timed out..."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :cond_10b
    if-eqz v2, :cond_11b

    .line 423
    const-string v8, "dtun.srv_active"

    const-string v9, "0"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    const-string v8, "BluetoothDeviceService"

    const-string v9, "Oops: btld stop timed out..."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :cond_11b
    const-string v8, "service.brcm.bt.btld"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "1"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1c1

    .line 433
    const-string v8, "BluetoothDeviceService"

    const-string v9, "Oops: service.brcm.bt.btld is set. Clear it now!"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    const-string v8, "service.brcm.bt.btld"

    const-string v9, "0"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    const/4 v1, 0x1

    .line 440
    .local v1, btldActive:Z
    :goto_138
    const-string v8, "service.brcm.bt.activation"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "1"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1c4

    .line 441
    const-string v8, "BluetoothDeviceService"

    const-string v9, "Oops: service.brcm.bt.activation is set. Clear it now!"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    const-string v8, "service.brcm.bt.activation"

    const-string v9, "0"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_154
    .catchall {:try_start_aa .. :try_end_154} :catchall_21a

    .line 443
    const/4 v0, 0x1

    .line 450
    .local v0, btActivation:Z
    :goto_155
    const/4 v6, 0x5

    move v7, v6

    .line 451
    .end local v6           #retryCnt:I
    .restart local v7       #retryCnt:I
    :goto_157
    if-nez v3, :cond_161

    if-nez v4, :cond_161

    if-nez v2, :cond_161

    if-nez v1, :cond_161

    if-eqz v0, :cond_1c6

    :cond_161
    sub-int v6, v7, v12

    .end local v7           #retryCnt:I
    .restart local v6       #retryCnt:I
    if-lez v7, :cond_1c7

    .line 453
    const-wide/16 v8, 0xfa

    :try_start_167
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_16a
    .catchall {:try_start_167 .. :try_end_16a} :catchall_21a
    .catch Ljava/lang/InterruptedException; {:try_start_167 .. :try_end_16a} :catch_217

    .line 456
    :goto_16a
    if-eqz v3, :cond_17b

    :try_start_16c
    const-string v8, "dtun.hcid_active"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "1"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_17b

    .line 458
    const/4 v3, 0x0

    .line 460
    :cond_17b
    if-eqz v4, :cond_18c

    const-string v8, "dtun.obexd_active"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "1"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_18c

    .line 462
    const/4 v4, 0x0

    .line 464
    :cond_18c
    if-eqz v2, :cond_19d

    const-string v8, "dtun.srv_active"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "1"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_19d

    .line 466
    const/4 v2, 0x0

    .line 468
    :cond_19d
    if-eqz v1, :cond_1ae

    const-string v8, "service.brcm.bt.btld"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "1"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1ae

    .line 470
    const/4 v1, 0x0

    .line 472
    :cond_1ae
    if-eqz v0, :cond_21d

    const-string v8, "service.brcm.bt.activation"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "1"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_21d

    .line 474
    const/4 v0, 0x0

    move v7, v6

    .end local v6           #retryCnt:I
    .restart local v7       #retryCnt:I
    goto :goto_157

    .line 438
    .end local v0           #btActivation:Z
    .end local v1           #btldActive:Z
    .end local v7           #retryCnt:I
    .restart local v6       #retryCnt:I
    :cond_1c1
    const/4 v1, 0x0

    .restart local v1       #btldActive:Z
    goto/16 :goto_138

    .line 446
    :cond_1c4
    const/4 v0, 0x0

    .restart local v0       #btActivation:Z
    goto :goto_155

    .end local v6           #retryCnt:I
    .restart local v7       #retryCnt:I
    :cond_1c6
    move v6, v7

    .line 477
    .end local v7           #retryCnt:I
    .restart local v6       #retryCnt:I
    :cond_1c7
    if-nez v3, :cond_1d1

    if-nez v4, :cond_1d1

    if-nez v2, :cond_1d1

    if-nez v1, :cond_1d1

    if-eqz v0, :cond_201

    .line 478
    :cond_1d1
    if-eqz v3, :cond_1da

    .line 479
    const-string v8, "BluetoothDeviceService"

    const-string v9, "Oops: Reset property dtun.hcid_active timed out. Give up..."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :cond_1da
    if-eqz v4, :cond_1e3

    .line 482
    const-string v8, "BluetoothDeviceService"

    const-string v9, "Oops: Reset property dtun.obexd_active timed out. Give up..."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :cond_1e3
    if-eqz v2, :cond_1ec

    .line 485
    const-string v8, "BluetoothDeviceService"

    const-string v9, "Oops: Reset property dtun.srv_active timed out. Give up..."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :cond_1ec
    if-eqz v1, :cond_1f5

    .line 488
    const-string v8, "BluetoothDeviceService"

    const-string v9, "Oops: Reset property service.brcm.bt.btld timed out. Give up..."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    :cond_1f5
    if-nez v0, :cond_1fe

    .line 491
    const-string v8, "BluetoothDeviceService"

    const-string v9, "Oops: Reset property service.brcm.bt.activation timed out. Give up..."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1fe
    move v8, v11

    .line 493
    goto/16 :goto_24

    .line 496
    :cond_201
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Landroid/server/BluetoothDeviceService;->setBluetoothState(I)V

    .line 497
    new-instance v8, Landroid/server/BluetoothDeviceService$EnableThread;

    invoke-direct {v8, p0, p1}, Landroid/server/BluetoothDeviceService$EnableThread;-><init>(Landroid/server/BluetoothDeviceService;Z)V

    iput-object v8, p0, Landroid/server/BluetoothDeviceService;->mEnableThread:Landroid/server/BluetoothDeviceService$EnableThread;

    .line 498
    iget-object v8, p0, Landroid/server/BluetoothDeviceService;->mEnableThread:Landroid/server/BluetoothDeviceService$EnableThread;

    invoke-virtual {v8}, Landroid/server/BluetoothDeviceService$EnableThread;->start()V
    :try_end_211
    .catchall {:try_start_16c .. :try_end_211} :catchall_21a

    move v8, v12

    .line 499
    goto/16 :goto_24

    .line 398
    .end local v0           #btActivation:Z
    .end local v1           #btldActive:Z
    :catch_214
    move-exception v8

    goto/16 :goto_a8

    .line 454
    .restart local v0       #btActivation:Z
    .restart local v1       #btldActive:Z
    :catch_217
    move-exception v8

    goto/16 :goto_16a

    .line 346
    .end local v0           #btActivation:Z
    .end local v1           #btldActive:Z
    .end local v2           #btldRunning:Z
    .end local v3           #hcidRunning:Z
    .end local v4           #obexdRunning:Z
    .end local v5           #prop:Ljava/lang/String;
    .end local v6           #retryCnt:I
    :catchall_21a
    move-exception v8

    monitor-exit p0

    throw v8

    .restart local v0       #btActivation:Z
    .restart local v1       #btldActive:Z
    .restart local v2       #btldRunning:Z
    .restart local v3       #hcidRunning:Z
    .restart local v4       #obexdRunning:Z
    .restart local v5       #prop:Ljava/lang/String;
    .restart local v6       #retryCnt:I
    :cond_21d
    move v7, v6

    .end local v6           #retryCnt:I
    .restart local v7       #retryCnt:I
    goto/16 :goto_157

    .end local v0           #btActivation:Z
    .end local v1           #btldActive:Z
    .end local v7           #retryCnt:I
    .restart local v6       #retryCnt:I
    :cond_220
    move v7, v6

    .end local v6           #retryCnt:I
    .restart local v7       #retryCnt:I
    goto/16 :goto_99
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Landroid/server/BluetoothDeviceService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/server/BluetoothDeviceService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 169
    :try_start_7
    invoke-direct {p0}, Landroid/server/BluetoothDeviceService;->cleanupNativeDataNative()V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_e

    .line 171
    invoke-super {p0}, Landroid/bluetooth/IBluetoothDevice$Stub;->finalize()V

    .line 173
    return-void

    .line 171
    :catchall_e
    move-exception v0

    invoke-super {p0}, Landroid/bluetooth/IBluetoothDevice$Stub;->finalize()V

    throw v0
.end method

.method native getAdapterPathNative()Ljava/lang/String;
.end method

.method public declared-synchronized getAddress()Ljava/lang/String;
    .registers 4

    .prologue
    .line 829
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothDeviceService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    iget v0, p0, Landroid/server/BluetoothDeviceService;->mBluetoothState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_15

    .line 832
    invoke-direct {p0}, Landroid/server/BluetoothDeviceService;->getAddressNativeLocked()Ljava/lang/String;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_17

    move-result-object v0

    .line 834
    :goto_13
    monitor-exit p0

    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_13

    .line 829
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBluetoothState()I
    .registers 4

    .prologue
    .line 189
    iget-object v0, p0, Landroid/server/BluetoothDeviceService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget v0, p0, Landroid/server/BluetoothDeviceService;->mBluetoothState:I

    return v0
.end method

.method public declared-synchronized getBondState(Ljava/lang/String;)I
    .registers 5
    .parameter "address"

    .prologue
    .line 1214
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothDeviceService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1215
    invoke-static {p1}, Landroid/bluetooth/BluetoothDevice;->checkBluetoothAddress(Ljava/lang/String;)Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_1f

    move-result v0

    if-nez v0, :cond_14

    .line 1216
    const/16 v0, -0x3e8

    .line 1218
    :goto_12
    monitor-exit p0

    return v0

    :cond_14
    :try_start_14
    iget-object v0, p0, Landroid/server/BluetoothDeviceService;->mBondState:Landroid/server/BluetoothDeviceService$BondState;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/server/BluetoothDeviceService$BondState;->getBondState(Ljava/lang/String;)I
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_1f

    move-result v0

    goto :goto_12

    .line 1214
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getBondState()Landroid/server/BluetoothDeviceService$BondState;
    .registers 2

    .prologue
    .line 669
    iget-object v0, p0, Landroid/server/BluetoothDeviceService;->mBondState:Landroid/server/BluetoothDeviceService$BondState;

    return-object v0
.end method

.method public declared-synchronized getCompany()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1332
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothDeviceService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1333
    invoke-direct {p0}, Landroid/server/BluetoothDeviceService;->getCompanyNativeLocked()Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_10

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1332
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDiscoverableTimeout()I
    .registers 4

    .prologue
    .line 1030
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothDeviceService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    invoke-direct {p0}, Landroid/server/BluetoothDeviceService;->getDiscoverableTimeoutNativeLocked()I
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_10

    move-result v0

    monitor-exit p0

    return v0

    .line 1030
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLevel2Services(Ljava/lang/String;)I
    .registers 5
    .parameter "address"

    .prologue
    .line 1513
    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Landroid/bluetooth/BluetoothDevice;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 1514
    iget-object v0, p0, Landroid/server/BluetoothDeviceService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_18

    .line 1515
    const/4 v0, -0x1

    .line 1517
    :goto_11
    monitor-exit p0

    return v0

    :cond_13
    :try_start_13
    invoke-direct {p0, p1}, Landroid/server/BluetoothDeviceService;->getLevel2ServicesNative(Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_18

    move-result v0

    goto :goto_11

    .line 1513
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getManufacturer()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1307
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothDeviceService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1308
    invoke-direct {p0}, Landroid/server/BluetoothDeviceService;->getManufacturerNativeLocked()Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_10

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1307
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 845
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothDeviceService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    iget v0, p0, Landroid/server/BluetoothDeviceService;->mBluetoothState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_15

    .line 848
    invoke-direct {p0}, Landroid/server/BluetoothDeviceService;->getNameNativeLocked()Ljava/lang/String;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_17

    move-result-object v0

    .line 850
    :goto_13
    monitor-exit p0

    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_13

    .line 845
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRemoteClass(Ljava/lang/String;)I
    .registers 5
    .parameter "address"

    .prologue
    .line 1498
    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Landroid/bluetooth/BluetoothDevice;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 1499
    iget-object v0, p0, Landroid/server/BluetoothDeviceService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_19

    .line 1500
    const/high16 v0, -0x100

    .line 1502
    :goto_12
    monitor-exit p0

    return v0

    :cond_14
    :try_start_14
    invoke-direct {p0, p1}, Landroid/server/BluetoothDeviceService;->getRemoteClassNativeLocked(Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_19

    move-result v0

    goto :goto_12

    .line 1498
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRemoteCompany(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "address"

    .prologue
    .line 1425
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothDeviceService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1426
    invoke-static {p1}, Landroid/bluetooth/BluetoothDevice;->checkBluetoothAddress(Ljava/lang/String;)Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_18

    move-result v0

    if-nez v0, :cond_13

    .line 1427
    const/4 v0, 0x0

    .line 1429
    :goto_11
    monitor-exit p0

    return-object v0

    :cond_13
    :try_start_13
    invoke-direct {p0, p1}, Landroid/server/BluetoothDeviceService;->getRemoteCompanyNativeLocked(Ljava/lang/String;)Ljava/lang/String;
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_18

    move-result-object v0

    goto :goto_11

    .line 1425
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRemoteFeatures(Ljava/lang/String;)[B
    .registers 5
    .parameter "address"

    .prologue
    .line 1538
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothDeviceService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1539
    invoke-static {p1}, Landroid/bluetooth/BluetoothDevice;->checkBluetoothAddress(Ljava/lang/String;)Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_18

    move-result v0

    if-nez v0, :cond_13

    .line 1540
    const/4 v0, 0x0

    .line 1542
    :goto_11
    monitor-exit p0

    return-object v0

    :cond_13
    :try_start_13
    invoke-direct {p0, p1}, Landroid/server/BluetoothDeviceService;->getRemoteFeaturesNativeLocked(Ljava/lang/String;)[B
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_18

    move-result-object v0

    goto :goto_11

    .line 1538
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRemoteManufacturer(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "address"

    .prologue
    .line 1401
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothDeviceService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1402
    invoke-static {p1}, Landroid/bluetooth/BluetoothDevice;->checkBluetoothAddress(Ljava/lang/String;)Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_18

    move-result v0

    if-nez v0, :cond_13

    .line 1403
    const/4 v0, 0x0

    .line 1405
    :goto_11
    monitor-exit p0

    return-object v0

    :cond_13
    :try_start_13
    invoke-direct {p0, p1}, Landroid/server/BluetoothDeviceService;->getRemoteManufacturerNativeLocked(Ljava/lang/String;)Ljava/lang/String;
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_18

    move-result-object v0

    goto :goto_11

    .line 1401
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRemoteName(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "address"

    .prologue
    .line 892
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Landroid/server/BluetoothDeviceService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    const-string v4, "Need BLUETOOTH permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    invoke-static {p1}, Landroid/bluetooth/BluetoothDevice;->checkBluetoothAddress(Ljava/lang/String;)Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_39

    move-result v2

    if-nez v2, :cond_13

    .line 894
    const/4 v2, 0x0

    .line 911
    :goto_11
    monitor-exit p0

    return-object v2

    .line 897
    :cond_13
    :try_start_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 898
    .local v0, ms:J
    iget-object v2, p0, Landroid/server/BluetoothDeviceService;->mLastRemoteAddress:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 899
    iget-wide v2, p0, Landroid/server/BluetoothDeviceService;->mLastRemoteMs:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-gez v2, :cond_2e

    .line 901
    iget-object v2, p0, Landroid/server/BluetoothDeviceService;->mLastRemoteName:Ljava/lang/String;

    goto :goto_11

    .line 905
    :cond_2c
    iput-object p1, p0, Landroid/server/BluetoothDeviceService;->mLastRemoteAddress:Ljava/lang/String;

    .line 908
    :cond_2e
    invoke-direct {p0, p1}, Landroid/server/BluetoothDeviceService;->getRemoteNameNativeLocked(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/server/BluetoothDeviceService;->mLastRemoteName:Ljava/lang/String;

    .line 909
    iput-wide v0, p0, Landroid/server/BluetoothDeviceService;->mLastRemoteMs:J

    .line 911
    iget-object v2, p0, Landroid/server/BluetoothDeviceService;->mLastRemoteName:Ljava/lang/String;
    :try_end_38
    .catchall {:try_start_13 .. :try_end_38} :catchall_39

    goto :goto_11

    .line 892
    .end local v0           #ms:J
    :catchall_39
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getRemoteRevision(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "address"

    .prologue
    .line 1377
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothDeviceService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1378
    invoke-static {p1}, Landroid/bluetooth/BluetoothDevice;->checkBluetoothAddress(Ljava/lang/String;)Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_18

    move-result v0

    if-nez v0, :cond_13

    .line 1379
    const/4 v0, 0x0

    .line 1381
    :goto_11
    monitor-exit p0

    return-object v0

    :cond_13
    :try_start_13
    invoke-direct {p0, p1}, Landroid/server/BluetoothDeviceService;->getRemoteRevisionNativeLocked(Ljava/lang/String;)Ljava/lang/String;
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_18

    move-result-object v0

    goto :goto_11

    .line 1377
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRemoteServiceChannel(Ljava/lang/String;ILandroid/bluetooth/IBluetoothDeviceCallback;)Z
    .registers 9
    .parameter "address"
    .parameter "uuid16"
    .parameter "callback"

    .prologue
    const/4 v4, 0x0

    const-string v1, "BluetoothDeviceService"

    .line 1651
    monitor-enter p0

    :try_start_4
    iget-object v1, p0, Landroid/server/BluetoothDeviceService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1652
    invoke-static {p1}, Landroid/bluetooth/BluetoothDevice;->checkBluetoothAddress(Ljava/lang/String;)Z
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_6f

    move-result v1

    if-nez v1, :cond_16

    move v1, v4

    .line 1672
    :goto_14
    monitor-exit p0

    return v1

    .line 1655
    :cond_16
    :try_start_16
    iget-object v1, p0, Landroid/server/BluetoothDeviceService;->mEventLoop:Landroid/server/BluetoothEventLoop;

    invoke-virtual {v1}, Landroid/server/BluetoothEventLoop;->getRemoteServiceChannelCallbacks()Ljava/util/HashMap;

    move-result-object v0

    .line 1657
    .local v0, callbacks:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/bluetooth/IBluetoothDeviceCallback;>;"
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 1658
    const-string v1, "BluetoothDeviceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SDP request already in progress for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 1659
    goto :goto_14

    .line 1662
    :cond_3c
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    const/16 v2, 0x20

    if-le v1, v2, :cond_5e

    .line 1663
    const-string v1, "BluetoothDeviceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too many outstanding SDP requests, dropping request for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 1664
    goto :goto_14

    .line 1666
    :cond_5e
    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1668
    int-to-short v1, p2

    invoke-direct {p0, p1, v1}, Landroid/server/BluetoothDeviceService;->getRemoteServiceChannelNativeLocked(Ljava/lang/String;S)Z

    move-result v1

    if-nez v1, :cond_6d

    .line 1669
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6b
    .catchall {:try_start_16 .. :try_end_6b} :catchall_6f

    move v1, v4

    .line 1670
    goto :goto_14

    .line 1672
    :cond_6d
    const/4 v1, 0x1

    goto :goto_14

    .line 1651
    .end local v0           #callbacks:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/bluetooth/IBluetoothDeviceCallback;>;"
    :catchall_6f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getRemoteServiceHandles(Ljava/lang/String;Ljava/lang/String;)[I
    .registers 6
    .parameter "address"
    .parameter "match"

    .prologue
    .line 1569
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothDeviceService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1570
    invoke-static {p1}, Landroid/bluetooth/BluetoothDevice;->checkBluetoothAddress(Ljava/lang/String;)Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_1c

    move-result v0

    if-nez v0, :cond_13

    .line 1571
    const/4 v0, 0x0

    .line 1576
    :goto_11
    monitor-exit p0

    return-object v0

    .line 1573
    :cond_13
    if-nez p2, :cond_17

    .line 1574
    :try_start_15
    const-string p2, ""

    .line 1576
    :cond_17
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothDeviceService;->getRemoteServiceHandlesNativeLocked(Ljava/lang/String;Ljava/lang/String;)[I
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_1c

    move-result-object v0

    goto :goto_11

    .line 1569
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRemoteServiceRecord(Ljava/lang/String;I)[B
    .registers 6
    .parameter "address"
    .parameter "handle"

    .prologue
    .line 1605
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothDeviceService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1606
    invoke-static {p1}, Landroid/bluetooth/BluetoothDevice;->checkBluetoothAddress(Ljava/lang/String;)Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_18

    move-result v0

    if-nez v0, :cond_13

    .line 1607
    const/4 v0, 0x0

    .line 1609
    :goto_11
    monitor-exit p0

    return-object v0

    :cond_13
    :try_start_13
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothDeviceService;->getRemoteServiceRecordNativeLocked(Ljava/lang/String;I)[B
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_18

    move-result-object v0

    goto :goto_11

    .line 1605
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRemoteServices(Ljava/lang/String;Landroid/bluetooth/IBluetoothDeviceServicesCallback;)Z
    .registers 8
    .parameter "address"
    .parameter "callback"

    .prologue
    const/4 v4, 0x0

    .line 1620
    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Landroid/server/BluetoothDeviceService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1621
    invoke-static {p1}, Landroid/bluetooth/BluetoothDevice;->checkBluetoothAddress(Ljava/lang/String;)Z
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_4a

    move-result v1

    if-nez v1, :cond_14

    move v1, v4

    .line 1636
    :goto_12
    monitor-exit p0

    return v1

    .line 1624
    :cond_14
    :try_start_14
    iget-object v1, p0, Landroid/server/BluetoothDeviceService;->mEventLoop:Landroid/server/BluetoothEventLoop;

    invoke-virtual {v1}, Landroid/server/BluetoothEventLoop;->getRemoteServicesCallbacks()Ljava/util/HashMap;

    move-result-object v0

    .line 1626
    .local v0, callbacks:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/bluetooth/IBluetoothDeviceServicesCallback;>;"
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 1627
    const-string v1, "BluetoothDeviceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SDP request already in progress for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 1628
    goto :goto_12

    .line 1630
    :cond_3a
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1632
    invoke-direct {p0, p1}, Landroid/server/BluetoothDeviceService;->getRemoteServicesNativeLocked(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_48

    .line 1633
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_46
    .catchall {:try_start_14 .. :try_end_46} :catchall_4a

    move v1, v4

    .line 1634
    goto :goto_12

    .line 1636
    :cond_48
    const/4 v1, 0x1

    goto :goto_12

    .line 1620
    .end local v0           #callbacks:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/bluetooth/IBluetoothDeviceServicesCallback;>;"
    :catchall_4a
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getRemoteVersion(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "address"

    .prologue
    .line 1353
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothDeviceService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1354
    invoke-static {p1}, Landroid/bluetooth/BluetoothDevice;->checkBluetoothAddress(Ljava/lang/String;)Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_18

    move-result v0

    if-nez v0, :cond_13

    .line 1355
    const/4 v0, 0x0

    .line 1357
    :goto_11
    monitor-exit p0

    return-object v0

    :cond_13
    :try_start_13
    invoke-direct {p0, p1}, Landroid/server/BluetoothDeviceService;->getRemoteVersionNativeLocked(Ljava/lang/String;)Ljava/lang/String;
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_18

    move-result-object v0

    goto :goto_11

    .line 1353
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRevision()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1287
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothDeviceService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1288
    invoke-direct {p0}, Landroid/server/BluetoothDeviceService;->getRevisionNativeLocked()Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_10

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1287
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getScanMode()I
    .registers 4

    .prologue
    .line 1057
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothDeviceService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    iget v0, p0, Landroid/server/BluetoothDeviceService;->mBluetoothState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_19

    .line 1060
    invoke-direct {p0}, Landroid/server/BluetoothDeviceService;->getModeNativeLocked()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/server/BluetoothDeviceService;->bluezStringToScanMode(Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_1b

    move-result v0

    .line 1062
    :goto_17
    monitor-exit p0

    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_17

    .line 1057
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getVersion()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1264
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothDeviceService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1265
    invoke-direct {p0}, Landroid/server/BluetoothDeviceService;->getVersionNativeLocked()Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_10

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1264
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasBond(Ljava/lang/String;)Z
    .registers 5
    .parameter "address"

    .prologue
    .line 1193
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothDeviceService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1195
    invoke-static {p1}, Landroid/bluetooth/BluetoothDevice;->checkBluetoothAddress(Ljava/lang/String;)Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_18

    move-result v0

    if-nez v0, :cond_13

    .line 1196
    const/4 v0, 0x0

    .line 1198
    :goto_11
    monitor-exit p0

    return v0

    :cond_13
    :try_start_13
    invoke-direct {p0, p1}, Landroid/server/BluetoothDeviceService;->hasBondingNativeLocked(Ljava/lang/String;)Z
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_18

    move-result v0

    goto :goto_11

    .line 1193
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized init()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 137
    monitor-enter p0

    :try_start_2
    invoke-direct {p0}, Landroid/server/BluetoothDeviceService;->initializeNativeDataNative()V

    .line 139
    invoke-direct {p0}, Landroid/server/BluetoothDeviceService;->isEnabledNativeLocked()I

    move-result v2

    if-ne v2, v4, :cond_15

    .line 140
    const-string v2, "BluetoothDeviceService"

    const-string v3, "Bluetooth daemons already running - runtime restart? "

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-direct {p0}, Landroid/server/BluetoothDeviceService;->disableNativeLocked()I

    .line 144
    :cond_15
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroid/server/BluetoothDeviceService;->setBluetoothState(I)V

    .line 145
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/server/BluetoothDeviceService;->mIsDiscovering:Z

    .line 146
    new-instance v2, Landroid/server/BluetoothEventLoop;

    iget-object v3, p0, Landroid/server/BluetoothDeviceService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p0}, Landroid/server/BluetoothEventLoop;-><init>(Landroid/content/Context;Landroid/server/BluetoothDeviceService;)V

    iput-object v2, p0, Landroid/server/BluetoothDeviceService;->mEventLoop:Landroid/server/BluetoothEventLoop;

    .line 148
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 149
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "android.bluetooth.intent.action.CALL_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    const-string v2, "android.bluetooth.intent.action.REMOTE_DEVICE_CONNECTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    const-string v2, "android.bluetooth.intent.action.REMOTE_DEVICE_DISCONNECTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    iget-object v2, p0, Landroid/server/BluetoothDeviceService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_radios"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, airplaneModeRadios:Ljava/lang/String;
    if-nez v0, :cond_5e

    move v2, v4

    :goto_4a
    iput-boolean v2, p0, Landroid/server/BluetoothDeviceService;->mIsAirplaneSensitive:Z

    .line 157
    iget-boolean v2, p0, Landroid/server/BluetoothDeviceService;->mIsAirplaneSensitive:Z

    if-eqz v2, :cond_55

    .line 158
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    :cond_55
    iget-object v2, p0, Landroid/server/BluetoothDeviceService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/server/BluetoothDeviceService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_5c
    .catchall {:try_start_2 .. :try_end_5c} :catchall_65

    .line 162
    monitor-exit p0

    return-void

    .line 155
    :cond_5e
    :try_start_5e
    const-string v2, "bluetooth"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_63
    .catchall {:try_start_5e .. :try_end_63} :catchall_65

    move-result v2

    goto :goto_4a

    .line 137
    .end local v0           #airplaneModeRadios:Ljava/lang/String;
    .end local v1           #filter:Landroid/content/IntentFilter;
    :catchall_65
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized isAclConnected(Ljava/lang/String;)Z
    .registers 5
    .parameter "address"

    .prologue
    .line 1042
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothDeviceService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    invoke-static {p1}, Landroid/bluetooth/BluetoothDevice;->checkBluetoothAddress(Ljava/lang/String;)Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_18

    move-result v0

    if-nez v0, :cond_13

    .line 1044
    const/4 v0, 0x0

    .line 1046
    :goto_11
    monitor-exit p0

    return v0

    :cond_13
    :try_start_13
    invoke-direct {p0, p1}, Landroid/server/BluetoothDeviceService;->isConnectedNativeLocked(Ljava/lang/String;)Z
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_18

    move-result v0

    goto :goto_11

    .line 1042
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDiscovering()Z
    .registers 4

    .prologue
    .line 953
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothDeviceService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    iget-boolean v0, p0, Landroid/server/BluetoothDeviceService;->mIsDiscovering:Z
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return v0

    .line 953
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isEnabled()Z
    .registers 4

    .prologue
    .line 177
    iget-object v0, p0, Landroid/server/BluetoothDeviceService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget v0, p0, Landroid/server/BluetoothDeviceService;->mBluetoothState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public declared-synchronized isPeriodicDiscovery()Z
    .registers 4

    .prologue
    .line 988
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothDeviceService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    invoke-direct {p0}, Landroid/server/BluetoothDeviceService;->isPeriodicDiscoveryNativeLocked()Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_10

    move-result v0

    monitor-exit p0

    return v0

    .line 988
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized lastSeen(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "address"

    .prologue
    .line 1447
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothDeviceService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1448
    invoke-static {p1}, Landroid/bluetooth/BluetoothDevice;->checkBluetoothAddress(Ljava/lang/String;)Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_18

    move-result v0

    if-nez v0, :cond_13

    .line 1449
    const/4 v0, 0x0

    .line 1451
    :goto_11
    monitor-exit p0

    return-object v0

    :cond_13
    :try_start_13
    invoke-direct {p0, p1}, Landroid/server/BluetoothDeviceService;->lastSeenNativeLocked(Ljava/lang/String;)Ljava/lang/String;
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_18

    move-result-object v0

    goto :goto_11

    .line 1447
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized lastUsed(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "address"

    .prologue
    .line 1469
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothDeviceService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1470
    invoke-static {p1}, Landroid/bluetooth/BluetoothDevice;->checkBluetoothAddress(Ljava/lang/String;)Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_18

    move-result v0

    if-nez v0, :cond_13

    .line 1471
    const/4 v0, 0x0

    .line 1473
    :goto_11
    monitor-exit p0

    return-object v0

    :cond_13
    :try_start_13
    invoke-direct {p0, p1}, Landroid/server/BluetoothDeviceService;->lastUsedNativeLocked(Ljava/lang/String;)Ljava/lang/String;
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_18

    move-result-object v0

    goto :goto_11

    .line 1469
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized listAclConnections()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 1222
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothDeviceService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1223
    invoke-direct {p0}, Landroid/server/BluetoothDeviceService;->listConnectionsNativeLocked()[Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_10

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1222
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized listBonds()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 1209
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothDeviceService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    iget-object v0, p0, Landroid/server/BluetoothDeviceService;->mBondState:Landroid/server/BluetoothDeviceService$BondState;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/server/BluetoothDeviceService$BondState;->access$000(Landroid/server/BluetoothDeviceService$BondState;I)[Ljava/lang/String;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_13

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1209
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized listRemoteDevices()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 1244
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothDeviceService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1245
    invoke-direct {p0}, Landroid/server/BluetoothDeviceService;->listRemoteDevicesNativeLocked()[Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_10

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1244
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeBond(Ljava/lang/String;)Z
    .registers 5
    .parameter "address"

    .prologue
    .line 1175
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothDeviceService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    const-string v0, "BluetoothDeviceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeBond: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    invoke-static {p1}, Landroid/bluetooth/BluetoothDevice;->checkBluetoothAddress(Ljava/lang/String;)Z
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_30

    move-result v0

    if-nez v0, :cond_2b

    .line 1180
    const/4 v0, 0x0

    .line 1182
    :goto_29
    monitor-exit p0

    return v0

    :cond_2b
    :try_start_2b
    invoke-direct {p0, p1}, Landroid/server/BluetoothDeviceService;->removeBondingNativeLocked(Ljava/lang/String;)Z
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_30

    move-result v0

    goto :goto_29

    .line 1175
    :catchall_30
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized restart()V
    .registers 3

    .prologue
    .line 504
    monitor-enter p0

    :try_start_1
    iget v0, p0, Landroid/server/BluetoothDeviceService;->mBluetoothState:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_16

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    .line 511
    :cond_6
    :goto_6
    monitor-exit p0

    return-void

    .line 507
    :cond_8
    const/4 v0, 0x1

    :try_start_9
    iput-boolean v0, p0, Landroid/server/BluetoothDeviceService;->mRestart:Z

    .line 508
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/server/BluetoothDeviceService;->disable(Z)Z

    move-result v0

    if-nez v0, :cond_6

    .line 509
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/server/BluetoothDeviceService;->mRestart:Z
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_16

    goto :goto_6

    .line 504
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDiscoverableTimeout(I)Z
    .registers 5
    .parameter "timeout"

    .prologue
    .line 1009
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothDeviceService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    invoke-direct {p0, p1}, Landroid/server/BluetoothDeviceService;->setDiscoverableTimeoutNativeLocked(I)Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_10

    move-result v0

    monitor-exit p0

    return v0

    .line 1009
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setIsDiscovering(Z)V
    .registers 2
    .parameter "isDiscovering"

    .prologue
    .line 958
    iput-boolean p1, p0, Landroid/server/BluetoothDeviceService;->mIsDiscovering:Z

    .line 959
    return-void
.end method

.method public declared-synchronized setLevel2Services(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 7
    .parameter "address"
    .parameter "servObjPath"
    .parameter "trusted"

    .prologue
    .line 1522
    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Landroid/bluetooth/BluetoothDevice;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 1523
    iget-object v0, p0, Landroid/server/BluetoothDeviceService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_18

    .line 1524
    const/4 v0, 0x0

    .line 1526
    :goto_11
    monitor-exit p0

    return v0

    :cond_13
    :try_start_13
    invoke-direct {p0, p1, p2, p3}, Landroid/server/BluetoothDeviceService;->setLevel2ServicesNative(Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_18

    move-result v0

    goto :goto_11

    .line 1522
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setName(Ljava/lang/String;)Z
    .registers 6
    .parameter "name"

    .prologue
    const/4 v3, 0x0

    .line 861
    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Landroid/server/BluetoothDeviceService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_1c

    .line 863
    if-nez p1, :cond_10

    move v0, v3

    .line 871
    :goto_e
    monitor-exit p0

    return v0

    .line 868
    :cond_10
    :try_start_10
    iget v0, p0, Landroid/server/BluetoothDeviceService;->mBluetoothState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1a

    .line 869
    invoke-direct {p0, p1}, Landroid/server/BluetoothDeviceService;->setNameNativeLocked(Ljava/lang/String;)Z
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_1c

    move-result v0

    goto :goto_e

    :cond_1a
    move v0, v3

    .line 871
    goto :goto_e

    .line 861
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPin(Ljava/lang/String;[B)Z
    .registers 10
    .parameter "address"
    .parameter "pin"

    .prologue
    const/4 v6, 0x0

    const-string v3, "BluetoothDeviceService"

    .line 1683
    monitor-enter p0

    :try_start_4
    iget-object v3, p0, Landroid/server/BluetoothDeviceService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH_ADMIN"

    const-string v5, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1685
    if-eqz p2, :cond_1d

    array-length v3, p2

    if-lez v3, :cond_1d

    array-length v3, p2

    const/16 v4, 0x10

    if-gt v3, v4, :cond_1d

    invoke-static {p1}, Landroid/bluetooth/BluetoothDevice;->checkBluetoothAddress(Ljava/lang/String;)Z
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_79

    move-result v3

    if-nez v3, :cond_20

    :cond_1d
    move v3, v6

    .line 1705
    :goto_1e
    monitor-exit p0

    return v3

    .line 1689
    :cond_20
    :try_start_20
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 1690
    iget-object v3, p0, Landroid/server/BluetoothDeviceService;->mEventLoop:Landroid/server/BluetoothEventLoop;

    invoke-virtual {v3}, Landroid/server/BluetoothEventLoop;->getPasskeyAgentRequestData()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1691
    .local v0, data:Ljava/lang/Integer;
    if-nez v0, :cond_5e

    .line 1692
    const-string v3, "BluetoothDeviceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setPin("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") called but no native data available, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ignoring. Maybe the PasskeyAgent Request was cancelled by the remote device"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " or by bluez.\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c
    .catchall {:try_start_20 .. :try_end_5c} :catchall_79

    move v3, v6

    .line 1695
    goto :goto_1e

    .line 1700
    :cond_5e
    :try_start_5e
    new-instance v1, Ljava/lang/String;

    const-string v3, "UTF8"

    invoke-direct {v1, p2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_65
    .catchall {:try_start_5e .. :try_end_65} :catchall_79
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5e .. :try_end_65} :catch_6e

    .line 1705
    .local v1, pinString:Ljava/lang/String;
    :try_start_65
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, p1, v1, v3}, Landroid/server/BluetoothDeviceService;->setPinNativeLocked(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    goto :goto_1e

    .line 1701
    .end local v1           #pinString:Ljava/lang/String;
    :catch_6e
    move-exception v3

    move-object v2, v3

    .line 1702
    .local v2, uee:Ljava/io/UnsupportedEncodingException;
    const-string v3, "BluetoothDeviceService"

    const-string v4, "UTF8 not supported?!?"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_77
    .catchall {:try_start_65 .. :try_end_77} :catchall_79

    move v3, v6

    .line 1703
    goto :goto_1e

    .line 1683
    .end local v0           #data:Ljava/lang/Integer;
    .end local v2           #uee:Ljava/io/UnsupportedEncodingException;
    :catchall_79
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized setScanMode(I)Z
    .registers 6
    .parameter "mode"

    .prologue
    .line 1073
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Landroid/server/BluetoothDeviceService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    iget v1, p0, Landroid/server/BluetoothDeviceService;->mBluetoothState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1b

    .line 1077
    invoke-static {p1}, Landroid/server/BluetoothDeviceService;->scanModeToBluezString(I)Ljava/lang/String;

    move-result-object v0

    .line 1078
    .local v0, bluezMode:Ljava/lang/String;
    if-eqz v0, :cond_1b

    .line 1079
    invoke-direct {p0, v0}, Landroid/server/BluetoothDeviceService;->setModeNativeLocked(Ljava/lang/String;)Z
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1d

    move-result v1

    .line 1082
    .end local v0           #bluezMode:Ljava/lang/String;
    :goto_19
    monitor-exit p0

    return v1

    :cond_1b
    const/4 v1, 0x0

    goto :goto_19

    .line 1073
    :catchall_1d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized startDiscovery(Z)Z
    .registers 5
    .parameter "resolveNames"

    .prologue
    .line 924
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothDeviceService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    iget v0, p0, Landroid/server/BluetoothDeviceService;->mBluetoothState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_15

    .line 927
    invoke-direct {p0, p1}, Landroid/server/BluetoothDeviceService;->startDiscoveryNativeLocked(Z)Z
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_17

    move-result v0

    .line 929
    :goto_13
    monitor-exit p0

    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_13

    .line 924
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startPeriodicDiscovery()Z
    .registers 4

    .prologue
    .line 962
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothDeviceService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    invoke-direct {p0}, Landroid/server/BluetoothDeviceService;->startPeriodicDiscoveryNativeLocked()Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_10

    move-result v0

    monitor-exit p0

    return v0

    .line 962
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopPeriodicDiscovery()Z
    .registers 4

    .prologue
    .line 975
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothDeviceService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    invoke-direct {p0}, Landroid/server/BluetoothDeviceService;->stopPeriodicDiscoveryNativeLocked()Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_10

    move-result v0

    monitor-exit p0

    return v0

    .line 975
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method
