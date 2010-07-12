.class public Landroid/net/wifi/WifiStateTracker;
.super Landroid/net/NetworkStateTracker;
.source "WifiStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiStateTracker$NotificationEnabledSettingObserver;,
        Landroid/net/wifi/WifiStateTracker$SettingsObserver;,
        Landroid/net/wifi/WifiStateTracker$DhcpHandler;,
        Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;,
        Landroid/net/wifi/WifiStateTracker$SupplicantStateChangeResult;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_DHCP_RETRIES:I = 0x2

.field private static final DISCONNECT_DELAY_MSECS:I = 0x1388

.field private static final DRIVER_POWER_MODE_ACTIVE:I = 0x1

.field private static final DRIVER_POWER_MODE_AUTO:I = 0x0

.field private static final EVENTLOG_DRIVER_STATE_CHANGED:I = 0xc367

.field private static final EVENTLOG_INTERFACE_CONFIGURATION_STATE_CHANGED:I = 0xc368

.field private static final EVENTLOG_NETWORK_STATE_CHANGED:I = 0xc365

.field private static final EVENTLOG_SUPPLICANT_CONNECTION_STATE_CHANGED:I = 0xc369

.field private static final EVENTLOG_SUPPLICANT_STATE_CHANGED:I = 0xc366

.field private static final EVENT_DEFERRED_DISCONNECT:I = 0xa

.field private static final EVENT_DEFERRED_RECONNECT:I = 0xb

.field private static final EVENT_DHCP_START:I = 0x9

.field private static final EVENT_DRIVER_STATE_CHANGED:I = 0xc

.field private static final EVENT_INTERFACE_CONFIGURATION_FAILED:I = 0x7

.field private static final EVENT_INTERFACE_CONFIGURATION_SUCCEEDED:I = 0x6

.field private static final EVENT_MAYBE_START_SCAN_POST_DISCONNECT:I = 0xe

.field private static final EVENT_NETWORK_STATE_CHANGED:I = 0x4

.field private static final EVENT_PASSWORD_KEY_MAY_BE_INCORRECT:I = 0xd

.field private static final EVENT_POLL_INTERVAL:I = 0x8

.field private static final EVENT_SCAN_RESULTS_AVAILABLE:I = 0x5

.field private static final EVENT_SUPPLICANT_CONNECTION:I = 0x1

.field private static final EVENT_SUPPLICANT_DISCONNECT:I = 0x2

.field private static final EVENT_SUPPLICANT_STATE_CHANGED:I = 0x3

.field private static final ICON_NETWORKS_AVAILABLE:I = 0x1080225

.field private static final KICKSTART_SCANNING_DELAY_MSECS:I = 0x3a98

.field private static final LOCAL_LOGD:Z = true

.field private static LS:Ljava/lang/String; = null

.field private static final MAX_SUPPLICANT_LOOP_ITERATIONS:I = 0x4

.field private static final NUM_SCANS_BEFORE_ACTUALLY_SCANNING:I = 0x3

.field private static final POLL_STATUS_INTERVAL_MSECS:I = 0xbb8

.field private static final RECONNECT_DELAY_MSECS:I = 0x7d0

.field private static final RUN_STATE_RUNNING:I = 0x2

.field private static final RUN_STATE_STARTING:I = 0x1

.field private static final RUN_STATE_STOPPED:I = 0x4

.field private static final RUN_STATE_STOPPING:I = 0x3

.field public static final SUPPL_SCAN_HANDLING_LIST_ONLY:I = 0x2

.field public static final SUPPL_SCAN_HANDLING_NORMAL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WifiStateTracker"

.field private static final mRunStateNames:[Ljava/lang/String;

.field private static sDnsPropNames:[Ljava/lang/String;


# instance fields
.field private final NOTIFICATION_REPEAT_DELAY_MS:J

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

.field private mDhcpInfo:Landroid/net/DhcpInfo;

.field private mDhcpTarget:Landroid/net/wifi/WifiStateTracker$DhcpHandler;

.field private mDisconnectExpected:Z

.field private mDisconnectPending:Z

.field private mEnableRssiPolling:Z

.field private mHaveIpAddress:Z

.field private mInterfaceName:Ljava/lang/String;

.field private mIsScanModeActive:Z

.field private mIsScanModeSetDueToAHiddenNetwork:Z

.field private mIsScanOnly:Z

.field private mLastBssid:Ljava/lang/String;

.field private mLastNetworkId:I

.field private mLastSignalLevel:I

.field private mLastSsid:Ljava/lang/String;

.field private mNotification:Landroid/app/Notification;

.field private mNotificationEnabled:Z

.field private mNotificationEnabledSettingObserver:Landroid/net/wifi/WifiStateTracker$NotificationEnabledSettingObserver;

.field private mNotificationRepeatTime:J

.field private mNotificationShown:Z

.field private mNumScansSinceNetworkStateChange:I

.field private mNumSupplicantLoopIterations:I

.field private mNumSupplicantStateChanges:I

.field private mObtainingIpAddress:Z

.field private mPasswordKeyMayBeIncorrect:Z

.field private mReconnectCount:I

.field private mReleaseWakeLockCallback:Ljava/lang/Runnable;

.field private mRunState:I

.field private mScanResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingsObserver:Landroid/net/wifi/WifiStateTracker$SettingsObserver;

.field private mSupplicantLoopState:Landroid/net/wifi/SupplicantState;

.field private mTornDownByConnMgr:Z

.field private mUseStaticIp:Z

.field private mWM:Landroid/net/wifi/WifiManager;

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private mWifiMonitor:Landroid/net/wifi/WifiMonitor;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 280
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Starting"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Running"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Stopping"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Stopped"

    aput-object v2, v0, v1

    sput-object v0, Landroid/net/wifi/WifiStateTracker;->mRunStateNames:[Ljava/lang/String;

    .line 295
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/WifiStateTracker;->LS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 12
    .parameter "context"
    .parameter "target"

    .prologue
    const/4 v7, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v8, "dhcp."

    .line 333
    const-string v5, "WIFI"

    const-string v6, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Landroid/net/NetworkStateTracker;-><init>(Landroid/content/Context;Landroid/os/Handler;IILjava/lang/String;Ljava/lang/String;)V

    .line 161
    sget-object v0, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mSupplicantLoopState:Landroid/net/wifi/SupplicantState;

    .line 166
    iput v4, p0, Landroid/net/wifi/WifiStateTracker;->mNumSupplicantLoopIterations:I

    .line 176
    iput v4, p0, Landroid/net/wifi/WifiStateTracker;->mNumSupplicantStateChanges:I

    .line 185
    iput-boolean v4, p0, Landroid/net/wifi/WifiStateTracker;->mPasswordKeyMayBeIncorrect:Z

    .line 209
    iput v7, p0, Landroid/net/wifi/WifiStateTracker;->mLastSignalLevel:I

    .line 212
    iput v7, p0, Landroid/net/wifi/WifiStateTracker;->mLastNetworkId:I

    .line 213
    iput-boolean v4, p0, Landroid/net/wifi/WifiStateTracker;->mUseStaticIp:Z

    .line 335
    new-instance v0, Landroid/net/wifi/WifiInfo;

    invoke-direct {v0}, Landroid/net/wifi/WifiInfo;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 336
    new-instance v0, Landroid/net/wifi/WifiMonitor;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiMonitor;-><init>(Landroid/net/wifi/WifiStateTracker;)V

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiMonitor:Landroid/net/wifi/WifiMonitor;

    .line 337
    iput-boolean v4, p0, Landroid/net/wifi/WifiStateTracker;->mHaveIpAddress:Z

    .line 338
    iput-boolean v4, p0, Landroid/net/wifi/WifiStateTracker;->mObtainingIpAddress:Z

    .line 339
    invoke-direct {p0, v4}, Landroid/net/wifi/WifiStateTracker;->setTornDownByConnMgr(Z)V

    .line 340
    iput-boolean v4, p0, Landroid/net/wifi/WifiStateTracker;->mDisconnectPending:Z

    .line 341
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mScanResults:Ljava/util/List;

    .line 343
    new-instance v0, Landroid/net/DhcpInfo;

    invoke-direct {v0}, Landroid/net/DhcpInfo;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    .line 344
    iput-boolean v4, p0, Landroid/net/wifi/WifiStateTracker;->mIsScanModeSetDueToAHiddenNetwork:Z

    .line 345
    iput v3, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    .line 348
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_networks_available_repeat_delay"

    const/16 v2, 0x384

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v5, 0x3e8

    mul-long/2addr v0, v5

    iput-wide v0, p0, Landroid/net/wifi/WifiStateTracker;->NOTIFICATION_REPEAT_DELAY_MS:J

    .line 350
    new-instance v0, Landroid/net/wifi/WifiStateTracker$NotificationEnabledSettingObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Landroid/net/wifi/WifiStateTracker$NotificationEnabledSettingObserver;-><init>(Landroid/net/wifi/WifiStateTracker;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mNotificationEnabledSettingObserver:Landroid/net/wifi/WifiStateTracker$NotificationEnabledSettingObserver;

    .line 351
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mNotificationEnabledSettingObserver:Landroid/net/wifi/WifiStateTracker$NotificationEnabledSettingObserver;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateTracker$NotificationEnabledSettingObserver;->register()V

    .line 353
    new-instance v0, Landroid/net/wifi/WifiStateTracker$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Landroid/net/wifi/WifiStateTracker$SettingsObserver;-><init>(Landroid/net/wifi/WifiStateTracker;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mSettingsObserver:Landroid/net/wifi/WifiStateTracker$SettingsObserver;

    .line 359
    const-string v0, "wifi.interface"

    const-string v1, "wlan0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mInterfaceName:Ljava/lang/String;

    .line 362
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dhcp."

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".dns1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dhcp."

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".dns2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    sput-object v0, Landroid/net/wifi/WifiStateTracker;->sDnsPropNames:[Ljava/lang/String;

    .line 366
    const-string v0, "batteryinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 368
    return-void
.end method

.method static synthetic access$000(Landroid/net/wifi/WifiStateTracker;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Landroid/net/wifi/WifiStateTracker;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/net/wifi/WifiStateTracker;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mNotificationEnabled:Z

    return v0
.end method

.method static synthetic access$1002(Landroid/net/wifi/WifiStateTracker;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateTracker;->mNotificationEnabled:Z

    return p1
.end method

.method static synthetic access$1100(Landroid/net/wifi/WifiStateTracker;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker;->resetNotificationTimer()V

    return-void
.end method

.method static synthetic access$1200(Landroid/net/wifi/WifiStateTracker;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Landroid/net/wifi/WifiStateTracker;)Landroid/net/DhcpInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    return-object v0
.end method

.method static synthetic access$300(Landroid/net/wifi/WifiStateTracker;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Landroid/net/wifi/WifiStateTracker;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mUseStaticIp:Z

    return v0
.end method

.method static synthetic access$500(Landroid/net/wifi/WifiStateTracker;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker;->checkUseStaticIp()V

    return-void
.end method

.method static synthetic access$600(Landroid/net/wifi/WifiStateTracker;)Landroid/net/wifi/WifiInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method static synthetic access$700(Landroid/net/wifi/WifiStateTracker;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker;->configureInterface()V

    return-void
.end method

.method static synthetic access$800(Landroid/net/wifi/WifiStateTracker;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mTarget:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Landroid/net/wifi/WifiStateTracker;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private cancelDisconnect()V
    .registers 2

    .prologue
    .line 1445
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mDisconnectPending:Z

    .line 1446
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateTracker;->removeMessages(I)V

    .line 1447
    return-void
.end method

.method private checkIsBluetoothPlaying()V
    .registers 7

    .prologue
    .line 690
    const/4 v3, 0x0

    .line 691
    .local v3, isBluetoothPlaying:Z
    iget-object v4, p0, Landroid/net/wifi/WifiStateTracker;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothA2dp;->listConnectedSinks()Ljava/util/List;

    move-result-object v1

    .line 693
    .local v1, connected:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 694
    .local v0, address:Ljava/lang/String;
    iget-object v4, p0, Landroid/net/wifi/WifiStateTracker;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothA2dp;->getSinkState(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_b

    .line 695
    const/4 v3, 0x1

    .line 699
    .end local v0           #address:Ljava/lang/String;
    :cond_21
    invoke-virtual {p0, v3}, Landroid/net/wifi/WifiStateTracker;->setBluetoothScanMode(Z)V

    .line 700
    return-void
.end method

.method private declared-synchronized checkPollTimer()V
    .registers 4

    .prologue
    .line 602
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mEnableRssiPolling:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v0

    sget-object v1, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne v0, v1, :cond_1e

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateTracker;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 605
    const/16 v0, 0x8

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/WifiStateTracker;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    .line 607
    :cond_1e
    monitor-exit p0

    return-void

    .line 602
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private checkUseStaticIp()V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 2016
    iput-boolean v3, p0, Landroid/net/wifi/WifiStateTracker;->mUseStaticIp:Z

    .line 2017
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2019
    .local v1, cr:Landroid/content/ContentResolver;
    :try_start_9
    const-string v3, "wifi_use_static_ip"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_e
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_9 .. :try_end_e} :catch_12

    move-result v3

    if-nez v3, :cond_15

    .line 2061
    :cond_11
    :goto_11
    return-void

    .line 2022
    :catch_12
    move-exception v3

    move-object v2, v3

    .line 2023
    .local v2, e:Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_11

    .line 2027
    .end local v2           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_15
    :try_start_15
    const-string v3, "wifi_static_ip"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2028
    .local v0, addr:Ljava/lang/String;
    if-eqz v0, :cond_11

    .line 2029
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    invoke-static {v0}, Landroid/net/wifi/WifiStateTracker;->stringToIpAddr(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroid/net/DhcpInfo;->ipAddress:I

    .line 2033
    const-string v3, "wifi_static_gateway"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2034
    if-eqz v0, :cond_11

    .line 2035
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    invoke-static {v0}, Landroid/net/wifi/WifiStateTracker;->stringToIpAddr(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroid/net/DhcpInfo;->gateway:I

    .line 2039
    const-string v3, "wifi_static_netmask"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2040
    if-eqz v0, :cond_11

    .line 2041
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    invoke-static {v0}, Landroid/net/wifi/WifiStateTracker;->stringToIpAddr(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroid/net/DhcpInfo;->netmask:I

    .line 2045
    const-string v3, "wifi_static_dns1"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2046
    if-eqz v0, :cond_11

    .line 2047
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    invoke-static {v0}, Landroid/net/wifi/WifiStateTracker;->stringToIpAddr(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroid/net/DhcpInfo;->dns1:I

    .line 2051
    const-string v3, "wifi_static_dns2"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2052
    if-eqz v0, :cond_69

    .line 2053
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    invoke-static {v0}, Landroid/net/wifi/WifiStateTracker;->stringToIpAddr(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroid/net/DhcpInfo;->dns2:I
    :try_end_65
    .catch Ljava/net/UnknownHostException; {:try_start_15 .. :try_end_65} :catch_6f

    .line 2060
    :goto_65
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/net/wifi/WifiStateTracker;->mUseStaticIp:Z

    goto :goto_11

    .line 2055
    :cond_69
    :try_start_69
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    const/4 v4, 0x0

    iput v4, v3, Landroid/net/DhcpInfo;->dns2:I
    :try_end_6e
    .catch Ljava/net/UnknownHostException; {:try_start_69 .. :try_end_6e} :catch_6f

    goto :goto_65

    .line 2057
    .end local v0           #addr:Ljava/lang/String;
    :catch_6f
    move-exception v3

    move-object v2, v3

    .line 2058
    .local v2, e:Ljava/net/UnknownHostException;
    goto :goto_11
.end method

.method private configureInterface()V
    .registers 6

    .prologue
    const/4 v3, 0x1

    const-string v4, "WifiStateTracker"

    .line 1351
    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker;->checkPollTimer()V

    .line 1352
    const/4 v1, -0x1

    iput v1, p0, Landroid/net/wifi/WifiStateTracker;->mLastSignalLevel:I

    .line 1353
    iget-boolean v1, p0, Landroid/net/wifi/WifiStateTracker;->mUseStaticIp:Z

    if-nez v1, :cond_33

    .line 1357
    iget-boolean v1, p0, Landroid/net/wifi/WifiStateTracker;->mHaveIpAddress:Z

    if-nez v1, :cond_32

    iget-boolean v1, p0, Landroid/net/wifi/WifiStateTracker;->mObtainingIpAddress:Z

    if-nez v1, :cond_32

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isConnectionCompleted()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 1358
    iput-boolean v3, p0, Landroid/net/wifi/WifiStateTracker;->mObtainingIpAddress:Z

    .line 1359
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 1360
    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateTracker;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V

    .line 1363
    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpTarget:Landroid/net/wifi/WifiStateTracker$DhcpHandler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->sendEmptyMessage(I)Z

    .line 1378
    :cond_32
    :goto_32
    return-void

    .line 1367
    :cond_33
    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mInterfaceName:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    invoke-static {v1, v2}, Landroid/net/NetworkUtils;->configureInterface(Ljava/lang/String;Landroid/net/DhcpInfo;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 1368
    iput-boolean v3, p0, Landroid/net/wifi/WifiStateTracker;->mHaveIpAddress:Z

    .line 1369
    const/4 v0, 0x6

    .line 1370
    .local v0, event:I
    const-string v1, "WifiStateTracker"

    const-string v1, "Static IP configuration succeeded"

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    :goto_47
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateTracker;->sendEmptyMessage(I)Z

    goto :goto_32

    .line 1372
    .end local v0           #event:I
    :cond_4b
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/wifi/WifiStateTracker;->mHaveIpAddress:Z

    .line 1373
    const/4 v0, 0x7

    .line 1374
    .restart local v0       #event:I
    const-string v1, "WifiStateTracker"

    const-string v1, "Static IP configuration failed"

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47
.end method

.method private getMaxDhcpRetries()I
    .registers 4

    .prologue
    .line 2082
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_max_dhcp_retry_count"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private handleDisconnectedState(Landroid/net/NetworkInfo$DetailedState;)V
    .registers 6
    .parameter "newState"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1386
    const-string v0, "WifiStateTracker"

    const-string v1, "Deconfiguring interface and stopping DHCP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mDisconnectPending:Z

    if-eqz v0, :cond_10

    .line 1388
    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker;->cancelDisconnect()V

    .line 1390
    :cond_10
    iput-boolean v3, p0, Landroid/net/wifi/WifiStateTracker;->mDisconnectExpected:Z

    .line 1391
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->resetInterface()V

    .line 1392
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 1393
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mLastBssid:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateTracker;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V

    .line 1394
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    .line 1395
    iput-object v2, p0, Landroid/net/wifi/WifiStateTracker;->mLastBssid:Ljava/lang/String;

    .line 1396
    iput-object v2, p0, Landroid/net/wifi/WifiStateTracker;->mLastSsid:Ljava/lang/String;

    .line 1397
    iput-boolean v3, p0, Landroid/net/wifi/WifiStateTracker;->mDisconnectPending:Z

    .line 1398
    return-void
.end method

.method private isSupplicantLooping(Landroid/net/wifi/SupplicantState;)Z
    .registers 4
    .parameter "newSupplicantState"

    .prologue
    .line 727
    sget-object v0, Landroid/net/wifi/SupplicantState;->ASSOCIATING:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v0

    invoke-virtual {p1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_37

    invoke-virtual {p1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v0

    sget-object v1, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v1

    if-ge v0, v1, :cond_37

    .line 729
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mSupplicantLoopState:Landroid/net/wifi/SupplicantState;

    if-eq v0, p1, :cond_30

    .line 730
    invoke-virtual {p1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v0

    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mSupplicantLoopState:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v1

    if-ge v0, v1, :cond_2e

    .line 731
    iget v0, p0, Landroid/net/wifi/WifiStateTracker;->mNumSupplicantLoopIterations:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiStateTracker;->mNumSupplicantLoopIterations:I

    .line 734
    :cond_2e
    iput-object p1, p0, Landroid/net/wifi/WifiStateTracker;->mSupplicantLoopState:Landroid/net/wifi/SupplicantState;

    .line 740
    :cond_30
    :goto_30
    iget v0, p0, Landroid/net/wifi/WifiStateTracker;->mNumSupplicantLoopIterations:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_3f

    const/4 v0, 0x1

    :goto_36
    return v0

    .line 736
    :cond_37
    sget-object v0, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne p1, v0, :cond_30

    .line 737
    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker;->resetSupplicantLoopState()V

    goto :goto_30

    .line 740
    :cond_3f
    const/4 v0, 0x0

    goto :goto_36
.end method

.method private noteRunState()V
    .registers 3

    .prologue
    .line 617
    :try_start_0
    iget v0, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    .line 618
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0}, Lcom/android/internal/app/IBatteryStats;->noteWifiRunning()V

    .line 624
    :cond_a
    :goto_a
    return-void

    .line 619
    :cond_b
    iget v0, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_a

    .line 620
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0}, Lcom/android/internal/app/IBatteryStats;->noteWifiStopped()V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16

    goto :goto_a

    .line 622
    :catch_16
    move-exception v0

    goto :goto_a
.end method

.method private requestConnectionStatus(Landroid/net/wifi/WifiInfo;)V
    .registers 23
    .parameter "info"

    .prologue
    .line 1472
    const/4 v14, 0x0

    .line 1481
    .local v14, reply:Ljava/lang/String;
    const/16 v16, 0x0

    .line 1482
    .local v16, reply_byte:[B
    monitor-enter p0

    .line 1484
    :try_start_4
    invoke-static {}, Landroid/net/wifi/WifiNative;->statusCommand_byte()[B
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_27

    move-result-object v16

    .line 1485
    if-eqz v16, :cond_17

    .line 1487
    :try_start_a
    new-instance v15, Ljava/lang/String;

    const-string v19, "KSC5601"

    move-object v0, v15

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_27
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a .. :try_end_16} :catch_1b

    .end local v14           #reply:Ljava/lang/String;
    .local v15, reply:Ljava/lang/String;
    move-object v14, v15

    .line 1493
    .end local v15           #reply:Ljava/lang/String;
    .restart local v14       #reply:Ljava/lang/String;
    :cond_17
    :goto_17
    :try_start_17
    monitor-exit p0

    .line 1494
    if-nez v14, :cond_2a

    .line 1535
    :cond_1a
    :goto_1a
    return-void

    .line 1488
    :catch_1b
    move-exception v19

    move-object/from16 v6, v19

    .line 1489
    .local v6, e:Ljava/io/UnsupportedEncodingException;
    const-string v19, "WifiStateTracker"

    const-string v20, "KSC5601 Error"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    const/4 v14, 0x0

    goto :goto_17

    .line 1493
    .end local v6           #e:Ljava/io/UnsupportedEncodingException;
    :catchall_27
    move-exception v19

    monitor-exit p0
    :try_end_29
    .catchall {:try_start_17 .. :try_end_29} :catchall_27

    throw v19

    .line 1503
    :cond_2a
    const/4 v4, 0x0

    .line 1504
    .local v4, SSID:Ljava/lang/String;
    const/4 v3, 0x0

    .line 1505
    .local v3, BSSID:Ljava/lang/String;
    const/16 v17, 0x0

    .line 1506
    .local v17, suppState:Ljava/lang/String;
    const/4 v12, -0x1

    .line 1507
    .local v12, netId:I
    const-string v19, "\n"

    move-object v0, v14

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 1508
    .local v10, lines:[Ljava/lang/String;
    move-object v5, v10

    .local v5, arr$:[Ljava/lang/String;
    array-length v8, v5

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_3b
    if-ge v7, v8, :cond_99

    aget-object v9, v5, v7

    .line 1509
    .local v9, line:Ljava/lang/String;
    const-string v19, " *= *"

    move-object v0, v9

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 1510
    .local v13, prop:[Ljava/lang/String;
    move-object v0, v13

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_57

    .line 1508
    :cond_54
    :goto_54
    add-int/lit8 v7, v7, 0x1

    goto :goto_3b

    .line 1512
    :cond_57
    const/16 v19, 0x0

    aget-object v11, v13, v19

    .line 1513
    .local v11, name:Ljava/lang/String;
    const/16 v19, 0x1

    aget-object v18, v13, v19

    .line 1514
    .local v18, value:Ljava/lang/String;
    const-string v19, "id"

    move-object v0, v11

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_6f

    .line 1515
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    goto :goto_54

    .line 1516
    :cond_6f
    const-string v19, "ssid"

    move-object v0, v11

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_7d

    .line 1517
    move-object/from16 v4, v18

    goto :goto_54

    .line 1518
    :cond_7d
    const-string v19, "bssid"

    move-object v0, v11

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_8b

    .line 1519
    move-object/from16 v3, v18

    goto :goto_54

    .line 1520
    :cond_8b
    const-string v19, "wpa_state"

    move-object v0, v11

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_54

    .line 1521
    move-object/from16 v17, v18

    goto :goto_54

    .line 1523
    .end local v9           #line:Ljava/lang/String;
    .end local v11           #name:Ljava/lang/String;
    .end local v13           #prop:[Ljava/lang/String;
    .end local v18           #value:Ljava/lang/String;
    :cond_99
    move-object/from16 v0, p1

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    .line 1524
    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setSSID(Ljava/lang/String;)V

    .line 1525
    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    .line 1533
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v19

    sget-object v20, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_1a

    if-eqz v17, :cond_1a

    .line 1534
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setSupplicantState(Ljava/lang/String;)V

    goto/16 :goto_1a
.end method

.method private declared-synchronized requestPolledInfo(Landroid/net/wifi/WifiInfo;)V
    .registers 7
    .parameter "info"

    .prologue
    const/4 v4, -0x1

    const/16 v3, -0xc8

    .line 1543
    monitor-enter p0

    :try_start_4
    invoke-static {}, Landroid/net/wifi/WifiNative;->getRssiCommand()I

    move-result v1

    .line 1551
    .local v1, newRssi:I
    if-eqz v1, :cond_2e

    if-eq v1, v4, :cond_2e

    if-ge v3, v1, :cond_2e

    const/16 v3, 0x64

    if-ge v1, v3, :cond_2e

    .line 1554
    invoke-virtual {p1, v1}, Landroid/net/wifi/WifiInfo;->setRssi(I)V

    .line 1568
    const/4 v3, 0x4

    invoke-static {v1, v3}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v2

    .line 1569
    .local v2, newSignalLevel:I
    iget v3, p0, Landroid/net/wifi/WifiStateTracker;->mLastSignalLevel:I

    if-eq v2, v3, :cond_21

    .line 1570
    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateTracker;->sendRssiChangeBroadcast(I)V

    .line 1572
    :cond_21
    iput v2, p0, Landroid/net/wifi/WifiStateTracker;->mLastSignalLevel:I

    .line 1576
    .end local v2           #newSignalLevel:I
    :goto_23
    invoke-static {}, Landroid/net/wifi/WifiNative;->getLinkSpeedCommand()I

    move-result v0

    .line 1577
    .local v0, newLinkSpeed:I
    if-eq v0, v4, :cond_2c

    .line 1578
    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiInfo;->setLinkSpeed(I)V
    :try_end_2c
    .catchall {:try_start_4 .. :try_end_2c} :catchall_34

    .line 1580
    :cond_2c
    monitor-exit p0

    return-void

    .line 1574
    .end local v0           #newLinkSpeed:I
    :cond_2e
    const/16 v3, -0xc8

    :try_start_30
    invoke-virtual {p1, v3}, Landroid/net/wifi/WifiInfo;->setRssi(I)V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_34

    goto :goto_23

    .line 1543
    .end local v1           #newRssi:I
    :catchall_34
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private resetNotificationTimer()V
    .registers 3

    .prologue
    .line 1863
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/wifi/WifiStateTracker;->mNotificationRepeatTime:J

    .line 1864
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiStateTracker;->mNumScansSinceNetworkStateChange:I

    .line 1865
    return-void
.end method

.method private resetSupplicantLoopState()V
    .registers 2

    .prologue
    .line 747
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiStateTracker;->mNumSupplicantLoopIterations:I

    .line 748
    return-void
.end method

.method private scheduleDisconnect()V
    .registers 4

    .prologue
    const/16 v2, 0xa

    .line 1438
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mDisconnectPending:Z

    .line 1439
    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiStateTracker;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1440
    const-wide/16 v0, 0x1388

    invoke-virtual {p0, v2, v0, v1}, Landroid/net/wifi/WifiStateTracker;->sendEmptyMessageDelayed(IJ)Z

    .line 1442
    :cond_10
    return-void
.end method

.method private sendNetworkStateChangeBroadcast(Ljava/lang/String;)V
    .registers 5
    .parameter "bssid"

    .prologue
    .line 1603
    const-string v1, "WifiStateTracker"

    const-string v2, "sendNetworkStateChangeBroadcast"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1606
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1607
    const-string v1, "networkInfo"

    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1608
    if-eqz p1, :cond_21

    .line 1609
    const-string v1, "bssid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1610
    :cond_21
    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1611
    return-void
.end method

.method private sendRssiChangeBroadcast(I)V
    .registers 4
    .parameter "newRssi"

    .prologue
    .line 1593
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1594
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1595
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "newRssi"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1596
    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1598
    .end local v0           #intent:Landroid/content/Intent;
    :cond_17
    return-void
.end method

.method private setSupplicantState(Landroid/net/wifi/SupplicantState;)V
    .registers 3
    .parameter "state"

    .prologue
    .line 376
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiInfo;->setSupplicantState(Landroid/net/wifi/SupplicantState;)V

    .line 377
    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker;->updateNetworkInfo()V

    .line 378
    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker;->checkPollTimer()V

    .line 379
    return-void
.end method

.method private setSupplicantState(Ljava/lang/String;)V
    .registers 3
    .parameter "stateName"

    .prologue
    .line 391
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiInfo;->setSupplicantState(Ljava/lang/String;)V

    .line 392
    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker;->updateNetworkInfo()V

    .line 393
    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker;->checkPollTimer()V

    .line 394
    return-void
.end method

.method private setTornDownByConnMgr(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 404
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateTracker;->mTornDownByConnMgr:Z

    .line 405
    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker;->updateNetworkInfo()V

    .line 406
    return-void
.end method

.method private static stringToIpAddr(Ljava/lang/String;)I
    .registers 9
    .parameter "addrString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 2065
    :try_start_0
    const-string v6, "\\."

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2066
    .local v5, parts:[Ljava/lang/String;
    array-length v6, v5

    const/4 v7, 0x4

    if-eq v6, v7, :cond_18

    .line 2067
    new-instance v6, Ljava/net/UnknownHostException;

    invoke-direct {v6, p0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_10} :catch_10

    .line 2076
    .end local v5           #parts:[Ljava/lang/String;
    :catch_10
    move-exception v6

    move-object v4, v6

    .line 2077
    .local v4, ex:Ljava/lang/NumberFormatException;
    new-instance v6, Ljava/net/UnknownHostException;

    invoke-direct {v6, p0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2070
    .end local v4           #ex:Ljava/lang/NumberFormatException;
    .restart local v5       #parts:[Ljava/lang/String;
    :cond_18
    const/4 v6, 0x0

    :try_start_19
    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2071
    .local v0, a:I
    const/4 v6, 0x1

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    shl-int/lit8 v1, v6, 0x8

    .line 2072
    .local v1, b:I
    const/4 v6, 0x2

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    shl-int/lit8 v2, v6, 0x10

    .line 2073
    .local v2, c:I
    const/4 v6, 0x3

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_37
    .catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_37} :catch_10

    move-result v6

    shl-int/lit8 v3, v6, 0x18

    .line 2075
    .local v3, d:I
    or-int v6, v0, v1

    or-int/2addr v6, v2

    or-int/2addr v6, v3

    return v6
.end method

.method private updateNetworkInfo()V
    .registers 3

    .prologue
    .line 473
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 474
    return-void
.end method

.method private wifiManagerDisableNetwork(I)Z
    .registers 6
    .parameter "networkId"

    .prologue
    const-string v3, "WifiStateTracker"

    .line 1324
    const/4 v0, 0x0

    .line 1325
    .local v0, disabledNetwork:Z
    if-ltz p1, :cond_25

    .line 1326
    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mWM:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, p1}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    move-result v0

    .line 1328
    if-eqz v0, :cond_25

    .line 1329
    const-string v1, "WifiStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disabled network: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    :cond_25
    if-nez v0, :cond_3f

    .line 1335
    const-string v1, "WifiStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to disable network: invalid network id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    :cond_3f
    return v0
.end method


# virtual methods
.method public declared-synchronized addToBlacklist(Ljava/lang/String;)Z
    .registers 3
    .parameter "bssid"

    .prologue
    .line 1868
    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Landroid/net/wifi/WifiNative;->addToBlacklistCommand(Ljava/lang/String;)Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result v0

    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearBlacklist()Z
    .registers 2

    .prologue
    .line 1872
    monitor-enter p0

    :try_start_1
    invoke-static {}, Landroid/net/wifi/WifiNative;->clearBlacklistCommand()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result v0

    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized disconnectAndStop()Z
    .registers 5

    .prologue
    const/4 v1, 0x3

    const-string v0, "WifiStateTracker"

    .line 1653
    monitor-enter p0

    :try_start_4
    iget v0, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    if-eq v0, v1, :cond_60

    iget v0, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_60

    .line 1655
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/net/wifi/WifiStateTracker;->setNotificationVisible(ZIZI)V

    .line 1657
    const/4 v0, 0x3

    iput v0, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    .line 1658
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v0

    sget-object v1, Landroid/net/wifi/SupplicantState;->DORMANT:Landroid/net/wifi/SupplicantState;

    if-ne v0, v1, :cond_41

    .line 1661
    const-string v0, "WifiStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnectAndStop:stopDriverCommand : mRunState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    invoke-static {}, Landroid/net/wifi/WifiNative;->stopDriverCommand()Z
    :try_end_3e
    .catchall {:try_start_4 .. :try_end_3e} :catchall_65

    move-result v0

    .line 1686
    :goto_3f
    monitor-exit p0

    return v0

    .line 1667
    :cond_41
    :try_start_41
    const-string v0, "WifiStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnectAndStop:disconnectCommand : mRunState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    invoke-static {}, Landroid/net/wifi/WifiNative;->disconnectCommand()Z

    move-result v0

    goto :goto_3f

    .line 1684
    :cond_60
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->releaseWakeLock()V
    :try_end_63
    .catchall {:try_start_41 .. :try_end_63} :catchall_65

    .line 1686
    const/4 v0, 0x1

    goto :goto_3f

    .line 1653
    :catchall_65
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public enableRssiPolling(Z)V
    .registers 3
    .parameter "enable"

    .prologue
    .line 703
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mEnableRssiPolling:Z

    if-eq v0, p1, :cond_9

    .line 704
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateTracker;->mEnableRssiPolling:Z

    .line 705
    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker;->checkPollTimer()V

    .line 707
    :cond_9
    return-void
.end method

.method public getDhcpInfo()Landroid/net/DhcpInfo;
    .registers 2

    .prologue
    .line 1450
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    return-object v0
.end method

.method public getNameServers()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 414
    sget-object v0, Landroid/net/wifi/WifiStateTracker;->sDnsPropNames:[Ljava/lang/String;

    invoke-static {v0}, Landroid/net/wifi/WifiStateTracker;->getNameServerList([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkSubtype()I
    .registers 2

    .prologue
    .line 465
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized getScanResultsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1454
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mScanResults:Ljava/util/List;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSupplicantState()Landroid/net/wifi/SupplicantState;
    .registers 2

    .prologue
    .line 382
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v0

    return-object v0
.end method

.method public getTcpBufferSizesPropName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 422
    const-string v0, "net.tcp.buffersize.wifi"

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 30
    .parameter "msg"

    .prologue
    .line 754
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v24, v0

    packed-switch v24, :pswitch_data_8d4

    .line 1321
    :cond_9
    :goto_9
    :pswitch_9
    return-void

    .line 756
    :pswitch_a
    const/16 v24, 0x2

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    .line 757
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->noteRunState()V

    .line 758
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->checkUseStaticIp()V

    .line 764
    const-string v24, "WifiStateTracker"

    const-string v25, "run DHCP thread~~~~~"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    new-instance v6, Landroid/os/HandlerThread;

    const-string v24, "DHCP Handler Thread"

    move-object v0, v6

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 767
    .local v6, dhcpThread:Landroid/os/HandlerThread;
    invoke-virtual {v6}, Landroid/os/HandlerThread;->start()V

    .line 768
    new-instance v24, Landroid/net/wifi/WifiStateTracker$DhcpHandler;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    move-object/from16 v3, p0

    invoke-direct {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateTracker$DhcpHandler;-><init>(Landroid/net/wifi/WifiStateTracker;Landroid/os/Looper;Landroid/os/Handler;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/WifiStateTracker;->mDhcpTarget:Landroid/net/wifi/WifiStateTracker$DhcpHandler;

    .line 769
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiStateTracker;->mIsScanModeActive:Z

    .line 770
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiStateTracker;->mTornDownByConnMgr:Z

    .line 771
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/WifiStateTracker;->mLastBssid:Ljava/lang/String;

    .line 772
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/WifiStateTracker;->mLastSsid:Ljava/lang/String;

    .line 773
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->requestConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 774
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v20

    .line 780
    .local v20, supplState:Landroid/net/wifi/SupplicantState;
    monitor-enter p0

    .line 781
    :try_start_71
    invoke-static {}, Landroid/net/wifi/WifiNative;->getMacAddressCommand()Ljava/lang/String;

    move-result-object v14

    .line 782
    .local v14, macaddr:Ljava/lang/String;
    monitor-exit p0
    :try_end_76
    .catchall {:try_start_71 .. :try_end_76} :catchall_147

    .line 783
    if-eqz v14, :cond_84

    .line 784
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setMacAddress(Ljava/lang/String;)V

    .line 786
    :cond_84
    const-string v24, "WifiStateTracker"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Connection to supplicant established, state="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    const v24, 0xc369

    const/16 v25, 0x1

    invoke-static/range {v24 .. v25}, Landroid/util/EventLog;->writeEvent(II)I

    .line 798
    sget-object v24, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_d3

    .line 799
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/WifiStateTracker;->mLastBssid:Ljava/lang/String;

    .line 800
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/WifiStateTracker;->mLastSsid:Ljava/lang/String;

    .line 801
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->configureInterface()V

    .line 803
    :cond_d3
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v24

    if-eqz v24, :cond_fb

    .line 804
    new-instance v12, Landroid/content/Intent;

    const-string v24, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    move-object v0, v12

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 805
    .local v12, intent:Landroid/content/Intent;
    const-string v24, "connected"

    const/16 v25, 0x1

    move-object v0, v12

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 806
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 808
    .end local v12           #intent:Landroid/content/Intent;
    :cond_fb
    sget-object v24, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_14a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mHaveIpAddress:Z

    move/from16 v24, v0

    if-eqz v24, :cond_14a

    .line 809
    sget-object v24, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 823
    :goto_114
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWM:Landroid/net/wifi/WifiManager;

    move-object/from16 v24, v0

    const-string v25, "WifiStateTracker"

    invoke-virtual/range {v24 .. v25}, Landroid/net/wifi/WifiManager;->createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v13

    .line 825
    .local v13, l:Landroid/net/wifi/WifiManager$MulticastLock;
    invoke-virtual {v13}, Landroid/net/wifi/WifiManager$MulticastLock;->acquire()V

    .line 826
    invoke-virtual {v13}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V

    .line 828
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    move-object/from16 v24, v0

    if-nez v24, :cond_13f

    .line 829
    new-instance v24, Landroid/bluetooth/BluetoothA2dp;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-direct/range {v24 .. v25}, Landroid/bluetooth/BluetoothA2dp;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/WifiStateTracker;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 831
    :cond_13f
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->checkIsBluetoothPlaying()V

    .line 837
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->resetNotificationTimer()V

    goto/16 :goto_9

    .line 782
    .end local v13           #l:Landroid/net/wifi/WifiManager$MulticastLock;
    .end local v14           #macaddr:Ljava/lang/String;
    :catchall_147
    move-exception v24

    :try_start_148
    monitor-exit p0
    :try_end_149
    .catchall {:try_start_148 .. :try_end_149} :catchall_147

    throw v24

    .line 811
    .restart local v14       #macaddr:Ljava/lang/String;
    :cond_14a
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_114

    .line 845
    .end local v6           #dhcpThread:Landroid/os/HandlerThread;
    .end local v14           #macaddr:Ljava/lang/String;
    .end local v20           #supplState:Landroid/net/wifi/SupplicantState;
    :pswitch_156
    const/16 v24, 0x4

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    .line 846
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->noteRunState()V

    .line 847
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWM:Landroid/net/wifi/WifiManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v23

    .line 848
    .local v23, wifiState:I
    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_223

    if-eqz v23, :cond_223

    const/16 v24, 0x1

    move/from16 v7, v24

    .line 850
    .local v7, died:Z
    :goto_179
    if-eqz v7, :cond_229

    .line 851
    const-string v24, "WifiStateTracker"

    const-string v25, "Supplicant died unexpectedly"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    :goto_182
    const v24, 0xc369

    if-eqz v7, :cond_232

    const/16 v25, 0x2

    :goto_189
    invoke-static/range {v24 .. v25}, Landroid/util/EventLog;->writeEvent(II)I

    .line 860
    monitor-enter p0

    .line 861
    :try_start_18d
    invoke-static {}, Landroid/net/wifi/WifiNative;->closeSupplicantConnection()V

    .line 862
    monitor-exit p0
    :try_end_191
    .catchall {:try_start_18d .. :try_end_191} :catchall_236

    .line 863
    if-eqz v7, :cond_196

    .line 864
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->resetInterface()V

    .line 867
    :cond_196
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mDhcpTarget:Landroid/net/wifi/WifiStateTracker$DhcpHandler;

    move-object/from16 v24, v0

    if-eqz v24, :cond_1ba

    .line 868
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mDhcpTarget:Landroid/net/wifi/WifiStateTracker$DhcpHandler;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->getLooper()Landroid/os/Looper;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/os/Looper;->quit()V

    .line 869
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/WifiStateTracker;->mDhcpTarget:Landroid/net/wifi/WifiStateTracker$DhcpHandler;

    .line 872
    const-string v24, "WifiStateTracker"

    const-string v25, "When supplicant dies, kill the DHCP thread"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    :cond_1ba
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    new-instance v25, Landroid/content/Intent;

    const-string v26, "android.net.wifi.STATE_CHANGE"

    invoke-direct/range {v25 .. v26}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 876
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v24

    if-eqz v24, :cond_1f2

    .line 877
    new-instance v12, Landroid/content/Intent;

    const-string v24, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    move-object v0, v12

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 878
    .restart local v12       #intent:Landroid/content/Intent;
    const-string v24, "connected"

    const/16 v25, 0x0

    move-object v0, v12

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 879
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 881
    .end local v12           #intent:Landroid/content/Intent;
    :cond_1f2
    sget-object v24, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 882
    sget-object v24, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setSupplicantState(Landroid/net/wifi/SupplicantState;)V

    .line 883
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiStateTracker;->mHaveIpAddress:Z

    .line 884
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiStateTracker;->mObtainingIpAddress:Z

    .line 885
    if-eqz v7, :cond_9

    .line 886
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWM:Landroid/net/wifi/WifiManager;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto/16 :goto_9

    .line 848
    .end local v7           #died:Z
    :cond_223
    const/16 v24, 0x0

    move/from16 v7, v24

    goto/16 :goto_179

    .line 853
    .restart local v7       #died:Z
    :cond_229
    const-string v24, "WifiStateTracker"

    const-string v25, "Connection to supplicant lost"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_182

    .line 859
    :cond_232
    const/16 v25, 0x0

    goto/16 :goto_189

    .line 862
    :catchall_236
    move-exception v24

    :try_start_237
    monitor-exit p0
    :try_end_238
    .catchall {:try_start_237 .. :try_end_238} :catchall_236

    throw v24

    .line 895
    .end local v7           #died:Z
    .end local v23           #wifiState:I
    :pswitch_239
    const-string v24, "WifiStateTracker"

    const-string v25, "[mingi.sung@lge.com] EVENT_START_SCAN_POST_DISCONNECT"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiStateTracker;->mNumSupplicantStateChanges:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_9

    .line 898
    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Landroid/net/wifi/WifiNative;->scanCommand(Z)Z

    goto/16 :goto_9

    .line 903
    :pswitch_259
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiStateTracker;->mNumSupplicantStateChanges:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiStateTracker;->mNumSupplicantStateChanges:I

    .line 904
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/net/wifi/WifiStateTracker$SupplicantStateChangeResult;

    .line 906
    .local v21, supplicantStateResult:Landroid/net/wifi/WifiStateTracker$SupplicantStateChangeResult;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker$SupplicantStateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    move-object/from16 v17, v0

    .line 907
    .local v17, newState:Landroid/net/wifi/SupplicantState;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v5

    .line 912
    .local v5, currentState:Landroid/net/wifi/SupplicantState;
    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v24

    and-int/lit8 v10, v24, 0x3f

    .line 913
    .local v10, eventLogParam:I
    const v24, 0xc366

    move/from16 v0, v24

    move v1, v10

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 915
    const-string v24, "WifiStateTracker"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Changing supplicant state: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " ==> "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    move-object/from16 v0, v21

    iget v0, v0, Landroid/net/wifi/WifiStateTracker$SupplicantStateChangeResult;->networkId:I

    move v15, v0

    .line 925
    .local v15, networkId:I
    sget-object v24, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_2cc

    sget-object v24, Landroid/net/wifi/SupplicantState;->INACTIVE:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_2f4

    .line 927
    :cond_2cc
    const-string v24, "WifiStateTracker"

    const-string v25, "[dongp.kim@lge.com] EVENT_SUPPLICANT_STATE_CHANGED"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    const/16 v24, 0xe

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiStateTracker;->mNumSupplicantStateChanges:I

    move/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateTracker;->obtainMessage(III)Landroid/os/Message;

    move-result-object v24

    const-wide/16 v25, 0x3a98

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-wide/from16 v2, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 937
    :cond_2f4
    const/4 v11, 0x0

    .line 938
    .local v11, failedToAuthenticate:Z
    sget-object v24, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_302

    .line 939
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mPasswordKeyMayBeIncorrect:Z

    move v11, v0

    .line 941
    :cond_302
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiStateTracker;->mPasswordKeyMayBeIncorrect:Z

    .line 947
    const/4 v8, 0x0

    .line 948
    .local v8, disabledNetwork:Z
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiStateTracker;->isSupplicantLooping(Landroid/net/wifi/SupplicantState;)Z

    move-result v24

    if-eqz v24, :cond_323

    .line 950
    const-string v24, "WifiStateTracker"

    const-string v25, "Stop WPA supplicant loop and disable network"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    move-object/from16 v0, p0

    move v1, v15

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiStateTracker;->wifiManagerDisableNetwork(I)Z

    move-result v8

    .line 956
    :cond_323
    if-eqz v8, :cond_331

    .line 960
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->resetSupplicantLoopState()V

    .line 963
    const-string v24, "WifiStateTracker"

    const-string v25, "handleMessage:EVENT_SUPPLICANT_STATE_CHANGED:disabledNetwork"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 965
    :cond_331
    move-object/from16 v0, v17

    move-object v1, v5

    if-ne v0, v1, :cond_344

    sget-object v24, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z

    move-result v24

    if-eqz v24, :cond_9

    .line 967
    :cond_344
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setSupplicantState(Landroid/net/wifi/SupplicantState;)V

    .line 968
    sget-object v24, Landroid/net/wifi/SupplicantState;->DORMANT:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_4a7

    .line 970
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mIsScanOnly:Z

    move/from16 v24, v0

    if-nez v24, :cond_369

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    move/from16 v24, v0

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_42f

    .line 971
    :cond_369
    sget-object v16, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    .line 975
    .local v16, newDetailedState:Landroid/net/NetworkInfo$DetailedState;
    :goto_36b
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiStateTracker;->handleDisconnectedState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 983
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    move/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_433

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mIsScanOnly:Z

    move/from16 v24, v0

    if-nez v24, :cond_433

    const/16 v24, -0x1

    move v0, v15

    move/from16 v1, v24

    if-eq v0, v1, :cond_433

    .line 984
    const/16 v24, 0xb

    const-wide/16 v25, 0x7d0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-wide/from16 v2, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateTracker;->sendEmptyMessageDelayed(IJ)Z

    .line 1025
    .end local v16           #newDetailedState:Landroid/net/NetworkInfo$DetailedState;
    :cond_39c
    :goto_39c
    sget-object v24, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    move-object v0, v5

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_3ce

    sget-object v24, Landroid/net/wifi/SupplicantState;->ASSOCIATING:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_3ce

    .line 1027
    const-string v24, "WifiStateTracker"

    const-string v25, "handleMessage:EVENT_SUPPLICANT_STATE_CHANGED:update to ASSOCIATING status"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 1029
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiStateTracker;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V

    .line 1034
    :cond_3ce
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiStateTracker;->mDisconnectExpected:Z

    .line 1035
    new-instance v12, Landroid/content/Intent;

    const-string v24, "android.net.wifi.supplicant.STATE_CHANGE"

    move-object v0, v12

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1036
    .restart local v12       #intent:Landroid/content/Intent;
    const/high16 v24, 0x2000

    move-object v0, v12

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1037
    const-string v24, "newState"

    move-object v0, v12

    move-object/from16 v1, v24

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1038
    if-eqz v11, :cond_421

    .line 1039
    const-string v24, "WifiStateTracker"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Failed to authenticate, disabling network "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    move-object/from16 v0, p0

    move v1, v15

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiStateTracker;->wifiManagerDisableNetwork(I)Z

    .line 1041
    const-string v24, "supplicantError"

    const/16 v25, 0x1

    move-object v0, v12

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1045
    :cond_421
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_9

    .line 973
    .end local v12           #intent:Landroid/content/Intent;
    :cond_42f
    sget-object v16, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    .restart local v16       #newDetailedState:Landroid/net/NetworkInfo$DetailedState;
    goto/16 :goto_36b

    .line 985
    :cond_433
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    move/from16 v24, v0

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_469

    .line 986
    monitor-enter p0

    .line 989
    :try_start_442
    const-string v24, "WifiStateTracker"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "handleMessage:EVENT_SUPPLICANT_STATE_CHANGED:stopDriverCommand : mRunState "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    invoke-static {}, Landroid/net/wifi/WifiNative;->stopDriverCommand()Z

    .line 992
    monitor-exit p0

    goto/16 :goto_39c

    :catchall_466
    move-exception v24

    monitor-exit p0
    :try_end_468
    .catchall {:try_start_442 .. :try_end_468} :catchall_466

    throw v24

    .line 993
    :cond_469
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_39c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mIsScanOnly:Z

    move/from16 v24, v0

    if-nez v24, :cond_39c

    .line 994
    monitor-enter p0

    .line 997
    :try_start_480
    const-string v24, "WifiStateTracker"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "handleMessage:EVENT_SUPPLICANT_STATE_CHANGED:reconnectCommand : mRunState "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    invoke-static {}, Landroid/net/wifi/WifiNative;->reconnectCommand()Z

    .line 1000
    monitor-exit p0

    goto/16 :goto_39c

    :catchall_4a4
    move-exception v24

    monitor-exit p0
    :try_end_4a6
    .catchall {:try_start_480 .. :try_end_4a6} :catchall_4a4

    throw v24

    .line 1002
    .end local v16           #newDetailedState:Landroid/net/NetworkInfo$DetailedState;
    :cond_4a7
    sget-object v24, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_4cd

    .line 1003
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z

    move-result v24

    if-nez v24, :cond_4bd

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mDisconnectExpected:Z

    move/from16 v24, v0

    if-eqz v24, :cond_4c8

    .line 1004
    :cond_4bd
    sget-object v24, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiStateTracker;->handleDisconnectedState(Landroid/net/NetworkInfo$DetailedState;)V

    goto/16 :goto_39c

    .line 1006
    :cond_4c8
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->scheduleDisconnect()V

    goto/16 :goto_39c

    .line 1008
    :cond_4cd
    sget-object v24, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_39c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mDisconnectPending:Z

    move/from16 v24, v0

    if-nez v24, :cond_39c

    .line 1013
    sget-object v24, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    move-object v0, v5

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_504

    sget-object v24, Landroid/net/wifi/SupplicantState;->ASSOCIATING:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_39c

    sget-object v24, Landroid/net/wifi/SupplicantState;->ASSOCIATED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_39c

    sget-object v24, Landroid/net/wifi/SupplicantState;->FOUR_WAY_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_39c

    sget-object v24, Landroid/net/wifi/SupplicantState;->GROUP_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_39c

    .line 1018
    :cond_504
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    goto/16 :goto_39c

    .line 1061
    .end local v5           #currentState:Landroid/net/wifi/SupplicantState;
    .end local v8           #disabledNetwork:Z
    .end local v10           #eventLogParam:I
    .end local v11           #failedToAuthenticate:Z
    .end local v15           #networkId:I
    .end local v17           #newState:Landroid/net/wifi/SupplicantState;
    .end local v21           #supplicantStateResult:Landroid/net/wifi/WifiStateTracker$SupplicantStateChangeResult;
    :pswitch_511
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;

    .line 1067
    .local v18, result:Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;->state:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v24

    and-int/lit8 v10, v24, 0x3f

    .line 1068
    .restart local v10       #eventLogParam:I
    const v24, 0xc365

    move/from16 v0, v24

    move v1, v10

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1070
    const-string v24, "WifiStateTracker"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "New network state is "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;->state:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mIsScanOnly:Z

    move/from16 v24, v0

    if-eqz v24, :cond_55d

    .line 1076
    const-string v24, "WifiStateTracker"

    const-string v25, "Dropping event in scan-only mode"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 1079
    :cond_55d
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;->state:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v24, v0

    sget-object v25, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-eq v0, v1, :cond_573

    .line 1085
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiStateTracker;->mNumScansSinceNetworkStateChange:I

    .line 1095
    :cond_573
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;->state:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v24, v0

    sget-object v25, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_598

    .line 1096
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v24

    sget-object v25, Landroid/net/wifi/SupplicantState;->DORMANT:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-eq v0, v1, :cond_9

    .line 1097
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->scheduleDisconnect()V

    goto/16 :goto_9

    .line 1101
    :cond_598
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiStateTracker;->requestConnectionStatus(Landroid/net/wifi/WifiInfo;)V

    .line 1102
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;->state:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v24, v0

    sget-object v25, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_5c3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mHaveIpAddress:Z

    move/from16 v24, v0

    if-eqz v24, :cond_5d0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mDisconnectPending:Z

    move/from16 v24, v0

    if-nez v24, :cond_5d0

    .line 1104
    :cond_5c3
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;->state:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 1107
    :cond_5d0
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;->state:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v24, v0

    sget-object v25, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_671

    .line 1112
    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/net/wifi/WifiStateTracker;->setNotificationVisible(ZIZI)V

    .line 1113
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mDisconnectPending:Z

    move/from16 v22, v0

    .line 1114
    .local v22, wasDisconnectPending:Z
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->cancelDisconnect()V

    .line 1115
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mLastSsid:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-static/range {v24 .. v25}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_62d

    .line 1122
    if-eqz v22, :cond_62a

    .line 1123
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v19

    .line 1128
    .local v19, saveState:Landroid/net/NetworkInfo$DetailedState;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiStateTracker;->handleDisconnectedState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 1131
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setDetailedStateInternal(Landroid/net/NetworkInfo$DetailedState;)V

    .line 1133
    .end local v19           #saveState:Landroid/net/NetworkInfo$DetailedState;
    :cond_62a
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->configureInterface()V

    .line 1138
    :cond_62d
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->checkPollTimer()V

    .line 1139
    const/16 v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiStateTracker;->mLastSignalLevel:I

    .line 1142
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;->BSSID:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/WifiStateTracker;->mLastBssid:Ljava/lang/String;

    .line 1143
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/WifiStateTracker;->mLastSsid:Ljava/lang/String;

    .line 1144
    move-object/from16 v0, v18

    iget v0, v0, Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;->networkId:I

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiStateTracker;->mLastNetworkId:I

    .line 1145
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mHaveIpAddress:Z

    move/from16 v24, v0

    if-eqz v24, :cond_68b

    .line 1146
    sget-object v24, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 1151
    .end local v22           #wasDisconnectPending:Z
    :cond_671
    :goto_671
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiStateTracker;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V

    .line 1154
    const-string v24, "WifiStateTracker"

    const-string v25, "handleMessage:EVENT_NETWORK_STATE_CHANGED"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 1148
    .restart local v22       #wasDisconnectPending:Z
    :cond_68b
    sget-object v24, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_671

    .line 1161
    .end local v10           #eventLogParam:I
    .end local v18           #result:Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;
    .end local v22           #wasDisconnectPending:Z
    :pswitch_695
    const-string v24, "WifiStateTracker"

    const-string v25, "handleMessage:EVENT_SCAN_RESULTS_AVAILABLE:start"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v24

    if-eqz v24, :cond_6b2

    .line 1164
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    new-instance v25, Landroid/content/Intent;

    const-string v26, "android.net.wifi.SCAN_RESULTS"

    invoke-direct/range {v25 .. v26}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1166
    :cond_6b2
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->sendScanResultsAvailable()V

    .line 1171
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mIsScanModeSetDueToAHiddenNetwork:Z

    move/from16 v24, v0

    if-nez v24, :cond_6ca

    .line 1175
    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiStateTracker;->setScanMode(ZZ)V

    .line 1179
    :cond_6ca
    const-string v24, "WifiStateTracker"

    const-string v25, "handleMessage:EVENT_SCAN_RESULTS_AVAILABLE:end"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 1184
    :pswitch_6d3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v24

    sget-object v25, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-eq v0, v1, :cond_9

    .line 1185
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiStateTracker;->requestPolledInfo(Landroid/net/wifi/WifiInfo;)V

    .line 1186
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->checkPollTimer()V

    goto/16 :goto_9

    .line 1191
    :pswitch_6f7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v24

    sget-object v25, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-eq v0, v1, :cond_9

    .line 1192
    sget-object v24, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiStateTracker;->handleDisconnectedState(Landroid/net/NetworkInfo$DetailedState;)V

    goto/16 :goto_9

    .line 1203
    :pswitch_714
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v24

    sget-object v25, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-eq v0, v1, :cond_9

    .line 1204
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiStateTracker;->mReconnectCount:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiStateTracker;->mReconnectCount:I

    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->getMaxDhcpRetries()I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_74d

    .line 1205
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWM:Landroid/net/wifi/WifiManager;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiStateTracker;->mLastNetworkId:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    .line 1207
    :cond_74d
    monitor-enter p0

    .line 1208
    :try_start_74e
    invoke-static {}, Landroid/net/wifi/WifiNative;->reconnectCommand()Z

    .line 1209
    monitor-exit p0

    goto/16 :goto_9

    :catchall_754
    move-exception v24

    monitor-exit p0
    :try_end_756
    .catchall {:try_start_74e .. :try_end_756} :catchall_754

    throw v24

    .line 1221
    :pswitch_757
    const-string v24, "WifiStateTracker"

    const-string v25, "handleMessage: EVENT_INTERFACE_CONFIGURATION_SUCCEEDED"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v24

    sget-object v25, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-eq v0, v1, :cond_9

    .line 1226
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiStateTracker;->mReconnectCount:I

    .line 1227
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiStateTracker;->mHaveIpAddress:Z

    .line 1228
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiStateTracker;->mObtainingIpAddress:Z

    .line 1229
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/net/DhcpInfo;->ipAddress:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/net/wifi/WifiInfo;->setIpAddress(I)V

    .line 1230
    const/16 v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiStateTracker;->mLastSignalLevel:I

    .line 1237
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v24

    sget-object v25, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-eq v0, v1, :cond_813

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mUseStaticIp:Z

    move/from16 v24, v0

    if-nez v24, :cond_813

    .line 1242
    sget-object v24, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 1243
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiStateTracker;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V

    .line 1253
    :goto_7d9
    const-string v24, "WifiStateTracker"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "IP configuration: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    const v24, 0xc368

    const/16 v25, 0x1

    invoke-static/range {v24 .. v25}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1260
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->resetNotificationTimer()V

    .line 1264
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/net/DhcpInfo;->ipAddress:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/net/wifi/WifiNative;->getIPCommand(I)Z

    goto/16 :goto_9

    .line 1245
    :cond_813
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mTarget:Landroid/os/Handler;

    move-object/from16 v24, v0

    const/16 v25, 0x4

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1249
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiStateTracker;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V

    goto :goto_7d9

    .line 1270
    :pswitch_830
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v24

    sget-object v25, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-eq v0, v1, :cond_9

    .line 1274
    const v24, 0xc368

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1276
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiStateTracker;->mHaveIpAddress:Z

    .line 1277
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/net/wifi/WifiInfo;->setIpAddress(I)V

    .line 1278
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiStateTracker;->mObtainingIpAddress:Z

    .line 1279
    monitor-enter p0

    .line 1280
    :try_start_866
    invoke-static {}, Landroid/net/wifi/WifiNative;->disconnectCommand()Z

    .line 1281
    monitor-exit p0

    goto/16 :goto_9

    :catchall_86c
    move-exception v24

    monitor-exit p0
    :try_end_86e
    .catchall {:try_start_866 .. :try_end_86e} :catchall_86c

    throw v24

    .line 1286
    :pswitch_86f
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    if-eqz v24, :cond_8b7

    const/16 v24, 0x1

    move/from16 v9, v24

    .line 1291
    .local v9, driverStarted:Z
    :goto_87b
    if-eqz v9, :cond_8bc

    const/16 v24, 0x1

    move/from16 v10, v24

    .line 1292
    .restart local v10       #eventLogParam:I
    :goto_881
    const v24, 0xc367

    move/from16 v0, v24

    move v1, v10

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1294
    if-eqz v9, :cond_8b2

    .line 1300
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->setNumAllowedChannels()Z

    .line 1301
    monitor-enter p0

    .line 1302
    :try_start_890
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_8b1

    .line 1303
    const/16 v24, 0x2

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    .line 1304
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mIsScanOnly:Z

    move/from16 v24, v0

    if-nez v24, :cond_8c1

    .line 1305
    invoke-static {}, Landroid/net/wifi/WifiNative;->reconnectCommand()Z

    .line 1312
    :cond_8b1
    :goto_8b1
    monitor-exit p0
    :try_end_8b2
    .catchall {:try_start_890 .. :try_end_8b2} :catchall_8c7

    .line 1314
    :cond_8b2
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->noteRunState()V

    goto/16 :goto_9

    .line 1286
    .end local v9           #driverStarted:Z
    .end local v10           #eventLogParam:I
    :cond_8b7
    const/16 v24, 0x0

    move/from16 v9, v24

    goto :goto_87b

    .line 1291
    .restart local v9       #driverStarted:Z
    :cond_8bc
    const/16 v24, 0x0

    move/from16 v10, v24

    goto :goto_881

    .line 1309
    .restart local v10       #eventLogParam:I
    :cond_8c1
    const/16 v24, 0x1

    :try_start_8c3
    invoke-static/range {v24 .. v24}, Landroid/net/wifi/WifiNative;->scanCommand(Z)Z

    goto :goto_8b1

    .line 1312
    :catchall_8c7
    move-exception v24

    monitor-exit p0
    :try_end_8c9
    .catchall {:try_start_8c3 .. :try_end_8c9} :catchall_8c7

    throw v24

    .line 1318
    .end local v9           #driverStarted:Z
    .end local v10           #eventLogParam:I
    :pswitch_8ca
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiStateTracker;->mPasswordKeyMayBeIncorrect:Z

    goto/16 :goto_9

    .line 754
    :pswitch_data_8d4
    .packed-switch 0x1
        :pswitch_a
        :pswitch_156
        :pswitch_259
        :pswitch_511
        :pswitch_695
        :pswitch_757
        :pswitch_830
        :pswitch_6d3
        :pswitch_9
        :pswitch_6f7
        :pswitch_714
        :pswitch_86f
        :pswitch_8ca
        :pswitch_239
    .end packed-switch
.end method

.method public hasIpAddress()Z
    .registers 2

    .prologue
    .line 490
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mHaveIpAddress:Z

    return v0
.end method

.method public interpretScanResultsAvailable()V
    .registers 12

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v10, "WifiStateTracker"

    .line 1732
    iget-boolean v6, p0, Landroid/net/wifi/WifiStateTracker;->mNotificationEnabled:Z

    if-nez v6, :cond_9

    .line 1778
    :cond_8
    :goto_8
    return-void

    .line 1734
    :cond_9
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1736
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    .line 1737
    .local v5, state:Landroid/net/NetworkInfo$State;
    sget-object v6, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v5, v6, :cond_19

    sget-object v6, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    if-ne v5, v6, :cond_58

    .line 1741
    :cond_19
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->getScanResultsList()Ljava/util/List;

    move-result-object v4

    .line 1742
    .local v4, scanResults:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v4, :cond_58

    .line 1743
    const/4 v2, 0x0

    .line 1744
    .local v2, numOpenNetworks:I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    sub-int v0, v6, v9

    .local v0, i:I
    :goto_26
    if-ltz v0, :cond_3b

    .line 1745
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 1747
    .local v3, scanResult:Landroid/net/wifi/ScanResult;
    iget-object v6, v3, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_38

    .line 1748
    add-int/lit8 v2, v2, 0x1

    .line 1744
    :cond_38
    add-int/lit8 v0, v0, -0x1

    goto :goto_26

    .line 1752
    .end local v3           #scanResult:Landroid/net/wifi/ScanResult;
    :cond_3b
    if-lez v2, :cond_58

    .line 1755
    const-string v6, "WifiStateTracker"

    const-string v6, "interpretScanResultsAvailable : Skip setting visible"

    invoke-static {v10, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    iget v6, p0, Landroid/net/wifi/WifiStateTracker;->mNumScansSinceNetworkStateChange:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Landroid/net/wifi/WifiStateTracker;->mNumScansSinceNetworkStateChange:I

    const/4 v7, 0x3

    if-lt v6, v7, :cond_8

    .line 1767
    const-string v6, "WifiStateTracker"

    const-string v6, "interpretScanResultsAvailable : Actually set visible"

    invoke-static {v10, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1769
    invoke-virtual {p0, v9, v2, v8, v8}, Landroid/net/wifi/WifiStateTracker;->setNotificationVisible(ZIZI)V

    goto :goto_8

    .line 1777
    .end local v0           #i:I
    .end local v2           #numOpenNetworks:I
    .end local v4           #scanResults:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_58
    invoke-virtual {p0, v8, v8, v8, v8}, Landroid/net/wifi/WifiStateTracker;->setNotificationVisible(ZIZI)V

    goto :goto_8
.end method

.method public declared-synchronized isAvailable()Z
    .registers 3

    .prologue
    .line 454
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v0

    .line 455
    .local v0, suppState:Landroid/net/wifi/SupplicantState;
    sget-object v1, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    if-eq v0, v1, :cond_1c

    sget-object v1, Landroid/net/wifi/SupplicantState;->INACTIVE:Landroid/net/wifi/SupplicantState;

    if-eq v0, v1, :cond_1c

    iget-boolean v1, p0, Landroid/net/wifi/WifiStateTracker;->mTornDownByConnMgr:Z

    if-nez v1, :cond_19

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_1e

    move-result v1

    if-nez v1, :cond_1c

    :cond_19
    const/4 v1, 0x1

    :goto_1a
    monitor-exit p0

    return v1

    :cond_1c
    const/4 v1, 0x0

    goto :goto_1a

    .line 454
    .end local v0           #suppState:Landroid/net/wifi/SupplicantState;
    :catchall_1e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public isConnectionCompleted()Z
    .registers 3

    .prologue
    .line 482
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v0

    sget-object v1, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public declared-synchronized isDriverStopped()Z
    .registers 3

    .prologue
    .line 612
    monitor-enter p0

    :try_start_1
    iget v0, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_b

    iget v0, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_10

    const/4 v1, 0x3

    if-ne v0, v1, :cond_e

    :cond_b
    const/4 v0, 0x1

    :goto_c
    monitor-exit p0

    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_c

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method notifyDriverStarted()V
    .registers 4

    .prologue
    .line 594
    const/16 v0, 0xc

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 595
    return-void
.end method

.method notifyDriverStopped()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 568
    const-string v0, "WifiStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyDriverStopped : mRunState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    iget v0, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    if-ne v0, v4, :cond_24

    .line 570
    invoke-static {}, Landroid/net/wifi/WifiNative;->startDriverCommand()Z

    .line 586
    :cond_23
    :goto_23
    return-void

    .line 571
    :cond_24
    iget v0, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2f

    .line 572
    iput v4, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    .line 573
    invoke-static {}, Landroid/net/wifi/WifiNative;->startDriverCommand()Z

    goto :goto_23

    .line 574
    :cond_2f
    iget v0, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_23

    .line 575
    const/4 v0, 0x4

    iput v0, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    .line 578
    const/16 v0, 0xc

    invoke-static {p0, v0, v3, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_23
.end method

.method notifyPasswordKeyMayBeIncorrect()V
    .registers 2

    .prologue
    .line 498
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateTracker;->sendEmptyMessage(I)Z

    .line 499
    return-void
.end method

.method notifyScanResultsAvailable()V
    .registers 2

    .prologue
    .line 545
    monitor-enter p0

    .line 546
    const/4 v0, 0x1

    :try_start_2
    invoke-static {v0}, Landroid/net/wifi/WifiNative;->setScanResultHandlingCommand(I)Z

    .line 547
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_b

    .line 548
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateTracker;->sendEmptyMessage(I)Z

    .line 549
    return-void

    .line 547
    :catchall_b
    move-exception v0

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw v0
.end method

.method notifyStateChange(ILandroid/net/wifi/SupplicantState;)V
    .registers 6
    .parameter "networkId"
    .parameter "newState"

    .prologue
    .line 516
    const/4 v1, 0x3

    new-instance v2, Landroid/net/wifi/WifiStateTracker$SupplicantStateChangeResult;

    invoke-direct {v2, p1, p2}, Landroid/net/wifi/WifiStateTracker$SupplicantStateChangeResult;-><init>(ILandroid/net/wifi/SupplicantState;)V

    invoke-static {p0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 519
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 520
    return-void
.end method

.method notifyStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;I)V
    .registers 7
    .parameter "newState"
    .parameter "BSSID"
    .parameter "networkId"

    .prologue
    .line 533
    const/4 v1, 0x4

    new-instance v2, Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;

    invoke-direct {v2, p1, p2, p3}, Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;-><init>(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;I)V

    invoke-static {p0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 536
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 537
    return-void
.end method

.method notifySupplicantConnection()V
    .registers 2

    .prologue
    .line 506
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateTracker;->sendEmptyMessage(I)Z

    .line 507
    return-void
.end method

.method notifySupplicantLost()V
    .registers 2

    .prologue
    .line 556
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateTracker;->sendEmptyMessage(I)Z

    .line 557
    return-void
.end method

.method public reconnect()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1633
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mTornDownByConnMgr:Z

    if-eqz v0, :cond_13

    .line 1634
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->restart()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1635
    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateTracker;->setTornDownByConnMgr(Z)V

    move v0, v2

    .line 1641
    :goto_10
    return v0

    :cond_11
    move v0, v1

    .line 1638
    goto :goto_10

    :cond_13
    move v0, v2

    .line 1641
    goto :goto_10
.end method

.method public releaseWakeLock()V
    .registers 2

    .prologue
    .line 711
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mReleaseWakeLockCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_9

    .line 712
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mReleaseWakeLockCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 714
    :cond_9
    return-void
.end method

.method public declared-synchronized removeNetwork(I)Z
    .registers 3
    .parameter "networkId"

    .prologue
    .line 1700
    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Landroid/net/wifi/WifiNative;->removeNetworkCommand(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mDisconnectExpected:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public requestConnectionInfo()Landroid/net/wifi/WifiInfo;
    .registers 2

    .prologue
    .line 1466
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateTracker;->requestConnectionStatus(Landroid/net/wifi/WifiInfo;)V

    .line 1467
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateTracker;->requestPolledInfo(Landroid/net/wifi/WifiInfo;)V

    .line 1468
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method public resetInterface()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    const-string v2, "WifiStateTracker"

    .line 1405
    iput-boolean v1, p0, Landroid/net/wifi/WifiStateTracker;->mHaveIpAddress:Z

    .line 1406
    iput-boolean v1, p0, Landroid/net/wifi/WifiStateTracker;->mObtainingIpAddress:Z

    .line 1407
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setIpAddress(I)V

    .line 1413
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/NetworkUtils;->resetConnections(Ljava/lang/String;)I

    .line 1416
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpTarget:Landroid/net/wifi/WifiStateTracker$DhcpHandler;

    if-eqz v0, :cond_29

    .line 1419
    const-string v0, "WifiStateTracker"

    const-string v0, "stop DHCP~~~"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpTarget:Landroid/net/wifi/WifiStateTracker$DhcpHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->setCancelCallback(Z)V

    .line 1422
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpTarget:Landroid/net/wifi/WifiStateTracker$DhcpHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->removeMessages(I)V

    .line 1424
    :cond_29
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/NetworkUtils;->stopDhcp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 1425
    const-string v0, "WifiStateTracker"

    const-string v0, "Could not stop DHCP"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    :cond_38
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/NetworkUtils;->disableInterface(Ljava/lang/String;)I

    .line 1429
    return-void
.end method

.method public declared-synchronized restart()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 1690
    monitor-enter p0

    :try_start_2
    iget v0, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_10

    .line 1691
    const/4 v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    .line 1692
    invoke-static {}, Landroid/net/wifi/WifiNative;->startDriverCommand()Z
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_1a

    move-result v0

    .line 1696
    :goto_e
    monitor-exit p0

    return v0

    .line 1693
    :cond_10
    :try_start_10
    iget v0, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_18

    .line 1694
    const/4 v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_1a

    :cond_18
    move v0, v2

    .line 1696
    goto :goto_e

    .line 1690
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public sendBroadcast(Landroid/content/Intent;)V
    .registers 5
    .parameter "intent"

    .prologue
    .line 1586
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 1590
    :goto_5
    return-void

    .line 1587
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 1588
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "N3"

    const-string v2, "Broadcast Exception"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public declared-synchronized setBluetoothScanMode(Z)V
    .registers 3
    .parameter "isBluetoothPlaying"

    .prologue
    .line 686
    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Landroid/net/wifi/WifiNative;->setBluetoothCoexistenceScanModeCommand(Z)Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 687
    monitor-exit p0

    return-void

    .line 686
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setNotificationVisible(ZIZI)V
    .registers 16
    .parameter "visible"
    .parameter "numNetworks"
    .parameter "force"
    .parameter "delay"

    .prologue
    const v9, 0x1080225

    const/4 v8, 0x3

    const/4 v7, 0x0

    const-string v10, "WifiStateTracker"

    .line 1800
    const-string v3, "WifiStateTracker"

    const-string v3, "setNotificationVisible : start"

    invoke-static {v10, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1802
    if-nez p1, :cond_17

    iget-boolean v3, p0, Landroid/net/wifi/WifiStateTracker;->mNotificationShown:Z

    if-nez v3, :cond_17

    if-nez p3, :cond_17

    .line 1853
    :goto_16
    return-void

    .line 1807
    :cond_17
    if-eqz p1, :cond_9c

    .line 1810
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Landroid/net/wifi/WifiStateTracker;->mNotificationRepeatTime:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_2b

    .line 1813
    const-string v3, "WifiStateTracker"

    const-string v3, "setNotificationVisible : not enough time has passed"

    invoke-static {v10, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 1818
    :cond_2b
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mNotification:Landroid/app/Notification;

    if-nez v3, :cond_57

    .line 1822
    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3}, Landroid/app/Notification;-><init>()V

    iput-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mNotification:Landroid/app/Notification;

    .line 1823
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mNotification:Landroid/app/Notification;

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Landroid/app/Notification;->when:J

    .line 1824
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mNotification:Landroid/app/Notification;

    iput v9, v3, Landroid/app/Notification;->icon:I

    .line 1825
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mNotification:Landroid/app/Notification;

    const/16 v4, 0x10

    iput v4, v3, Landroid/app/Notification;->flags:I

    .line 1826
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mNotification:Landroid/app/Notification;

    iget-object v4, p0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.net.wifi.PICK_WIFI_NETWORK"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v7, v5, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1830
    :cond_57
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10f0010

    invoke-virtual {v3, v4, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1832
    .local v2, title:Ljava/lang/CharSequence;
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10f0011

    invoke-virtual {v3, v4, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1834
    .local v0, details:Ljava/lang/CharSequence;
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mNotification:Landroid/app/Notification;

    iput-object v2, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1835
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mNotification:Landroid/app/Notification;

    iget-object v4, p0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/net/wifi/WifiStateTracker;->mNotification:Landroid/app/Notification;

    iget-object v5, v5, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4, v2, v0, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1837
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Landroid/net/wifi/WifiStateTracker;->NOTIFICATION_REPEAT_DELAY_MS:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Landroid/net/wifi/WifiStateTracker;->mNotificationRepeatTime:J

    .line 1839
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mTarget:Landroid/os/Handler;

    const/4 v4, 0x1

    iget-object v5, p0, Landroid/net/wifi/WifiStateTracker;->mNotification:Landroid/app/Notification;

    invoke-virtual {v3, v8, v4, v9, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1850
    .end local v0           #details:Ljava/lang/CharSequence;
    .end local v2           #title:Ljava/lang/CharSequence;
    .local v1, message:Landroid/os/Message;
    :goto_92
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mTarget:Landroid/os/Handler;

    int-to-long v4, p4

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1852
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateTracker;->mNotificationShown:Z

    goto/16 :goto_16

    .line 1845
    .end local v1           #message:Landroid/os/Message;
    :cond_9c
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mTarget:Landroid/os/Handler;

    iget-object v4, p0, Landroid/net/wifi/WifiStateTracker;->mNotification:Landroid/app/Notification;

    invoke-virtual {v3, v8, v4}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1847
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mTarget:Landroid/os/Handler;

    invoke-virtual {v3, v8, v7, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .restart local v1       #message:Landroid/os/Message;
    goto :goto_92
.end method

.method public setNumAllowedChannels()Z
    .registers 3

    .prologue
    .line 634
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_num_allowed_channels"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateTracker;->setNumAllowedChannels(I)Z
    :try_end_f
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_f} :catch_11

    move-result v0

    .line 640
    :goto_10
    return v0

    .line 637
    :catch_11
    move-exception v0

    .line 640
    const/4 v0, 0x1

    goto :goto_10
.end method

.method public declared-synchronized setNumAllowedChannels(I)Z
    .registers 3
    .parameter "numChannels"

    .prologue
    .line 652
    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Landroid/net/wifi/WifiNative;->setNumAllowedChannelsCommand(I)Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result v0

    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setRadio(Z)Z
    .registers 3
    .parameter "turnOn"

    .prologue
    .line 1704
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWM:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public setReleaseWakeLockCallback(Ljava/lang/Runnable;)V
    .registers 2
    .parameter "callback"

    .prologue
    .line 717
    iput-object p1, p0, Landroid/net/wifi/WifiStateTracker;->mReleaseWakeLockCallback:Ljava/lang/Runnable;

    .line 718
    return-void
.end method

.method public declared-synchronized setScanMode(ZZ)V
    .registers 4
    .parameter "isScanModeActive"
    .parameter "setDueToAHiddenNetwork"

    .prologue
    .line 1344
    monitor-enter p0

    :try_start_1
    iput-boolean p2, p0, Landroid/net/wifi/WifiStateTracker;->mIsScanModeSetDueToAHiddenNetwork:Z

    .line 1345
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mIsScanModeActive:Z

    if-eq v0, p1, :cond_c

    .line 1346
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateTracker;->mIsScanModeActive:Z

    invoke-static {p1}, Landroid/net/wifi/WifiNative;->setScanModeCommand(Z)Z
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 1348
    :cond_c
    monitor-exit p0

    return-void

    .line 1344
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setScanOnlyMode(Z)V
    .registers 6
    .parameter "scanOnlyMode"

    .prologue
    .line 661
    monitor-enter p0

    :try_start_1
    iget-boolean v1, p0, Landroid/net/wifi/WifiStateTracker;->mIsScanOnly:Z

    if-eq v1, p1, :cond_3e

    .line 662
    if-eqz p1, :cond_40

    const/4 v1, 0x2

    move v0, v1

    .line 664
    .local v0, scanType:I
    :goto_9
    const-string v1, "WifiStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scan-only mode changing to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " scanType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    invoke-static {v0}, Landroid/net/wifi/WifiNative;->setScanResultHandlingCommand(I)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 666
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateTracker;->mIsScanOnly:Z

    .line 667
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z

    move-result v1

    if-nez v1, :cond_3e

    .line 668
    if-eqz p1, :cond_43

    .line 669
    invoke-static {}, Landroid/net/wifi/WifiNative;->disconnectCommand()Z
    :try_end_3e
    .catchall {:try_start_1 .. :try_end_3e} :catchall_47

    .line 676
    .end local v0           #scanType:I
    :cond_3e
    :goto_3e
    monitor-exit p0

    return-void

    .line 662
    :cond_40
    const/4 v1, 0x1

    move v0, v1

    goto :goto_9

    .line 671
    .restart local v0       #scanType:I
    :cond_43
    :try_start_43
    invoke-static {}, Landroid/net/wifi/WifiNative;->reconnectCommand()Z
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_47

    goto :goto_3e

    .line 661
    .end local v0           #scanType:I
    :catchall_47
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setScanResultsList(Ljava/util/List;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1458
    .local p1, scanList:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Landroid/net/wifi/WifiStateTracker;->mScanResults:Ljava/util/List;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 1459
    monitor-exit p0

    return-void

    .line 1458
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startEventLoop()V
    .registers 2

    .prologue
    .line 434
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiMonitor:Landroid/net/wifi/WifiMonitor;

    invoke-virtual {v0}, Landroid/net/wifi/WifiMonitor;->startMonitoring()V

    .line 435
    return-void
.end method

.method public startMonitoring()V
    .registers 3

    .prologue
    .line 430
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWM:Landroid/net/wifi/WifiManager;

    .line 431
    return-void
.end method

.method public startUsingNetworkFeature(Ljava/lang/String;II)I
    .registers 5
    .parameter "feature"
    .parameter "callingPid"
    .parameter "callingUid"

    .prologue
    .line 1714
    const/4 v0, -0x1

    return v0
.end method

.method public stopUsingNetworkFeature(Ljava/lang/String;II)I
    .registers 5
    .parameter "feature"
    .parameter "callingPid"
    .parameter "callingUid"

    .prologue
    .line 1724
    const/4 v0, -0x1

    return v0
.end method

.method public teardown()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1617
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mTornDownByConnMgr:Z

    if-nez v0, :cond_12

    .line 1618
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->disconnectAndStop()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1619
    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateTracker;->setTornDownByConnMgr(Z)V

    move v0, v1

    .line 1625
    :goto_f
    return v0

    .line 1622
    :cond_10
    const/4 v0, 0x0

    goto :goto_f

    :cond_12
    move v0, v1

    .line 1625
    goto :goto_f
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 1877
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1878
    .local v0, sb:Ljava/lang/StringBuffer;
    const-string v1, "interface "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1879
    const-string v1, " runState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1880
    iget v1, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    if-lt v1, v3, :cond_8d

    iget v1, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    sget-object v2, Landroid/net/wifi/WifiStateTracker;->mRunStateNames:[Ljava/lang/String;

    array-length v2, v2

    if-gt v1, v2, :cond_8d

    .line 1881
    sget-object v1, Landroid/net/wifi/WifiStateTracker;->mRunStateNames:[Ljava/lang/String;

    iget v2, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    sub-int/2addr v2, v3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1885
    :goto_2b
    sget-object v1, Landroid/net/wifi/WifiStateTracker;->LS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiStateTracker;->LS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1886
    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiStateTracker;->LS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1887
    const-string v1, "haveIpAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/WifiStateTracker;->mHaveIpAddress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", obtainingIpAddress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/WifiStateTracker;->mObtainingIpAddress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", scanModeActive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/WifiStateTracker;->mIsScanModeActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiStateTracker;->LS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "lastSignalLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiStateTracker;->mLastSignalLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", explicitlyDisabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/WifiStateTracker;->mTornDownByConnMgr:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 1892
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1883
    :cond_8d
    iget v1, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_2b
.end method
