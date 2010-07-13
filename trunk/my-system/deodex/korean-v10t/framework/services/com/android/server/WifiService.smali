.class public Lcom/android/server/WifiService;
.super Landroid/net/wifi/IWifiManager$Stub;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/WifiService$6;,
        Lcom/android/server/WifiService$Multicaster;,
        Lcom/android/server/WifiService$DeathRecipient;,
        Lcom/android/server/WifiService$LockList;,
        Lcom/android/server/WifiService$WifiLock;,
        Lcom/android/server/WifiService$WifiHandler;
    }
.end annotation


# static fields
.field private static final ACTION_DEVICE_IDLE:Ljava/lang/String; = "com.android.server.WifiManager.action.DEVICE_IDLE"

.field private static final DBG:Z = false

.field private static final DEFAULT_IDLE_MILLIS:J = 0x0L

.field private static final DEFAULT_WAKELOCK_TIMEOUT:I = 0x1f40

.field private static final IDLE_REQUEST:I = 0x0

.field private static final MESSAGE_CHECK_WIFISTATS:I = 0x5

.field private static final MESSAGE_CHECK_WIFISTATS_TIMEOUT:I = 0x2710

.field private static final MESSAGE_DISABLE_WIFI:I = 0x1

.field private static final MESSAGE_ENABLE_WIFI:I = 0x0

.field private static final MESSAGE_RELEASE_WAKELOCK:I = 0x4

.field private static final MESSAGE_START_WIFI:I = 0x3

.field private static final MESSAGE_STOP_WIFI:I = 0x2

.field private static final SCAN_RESULT_BUFFER_SIZE:I = 0x200

.field private static final SCAN_RESULT_CACHE_SIZE:I = 0x50

.field private static final SET_DUE_TO_A_HIDDEN_NETWORK:Z = true

.field private static final TAG:Ljava/lang/String; = "WifiService"

.field private static final WAKELOCK_TAG:Ljava/lang/String; = "WifiService"

.field private static sDriverStopWakeLock:Landroid/os/PowerManager$WakeLock;

.field private static sValidRegulatoryChannelCounts:[I

.field private static sWakeLock:Landroid/os/PowerManager$WakeLock;

.field private static sWiFiStopWakeLock:Landroid/os/PowerManager$WakeLock;

.field private static final scanResultPattern:Ljava/util/regex/Pattern;


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mContext:Landroid/content/Context;

.field private mDeviceIdle:Z

.field private mFullLocksAcquired:I

.field private mFullLocksReleased:I

.field private mIdleIntent:Landroid/app/PendingIntent;

.field private final mIsHiddenNetworkPresent:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mLastEnableUid:I

.field private final mLocks:Lcom/android/server/WifiService$LockList;

.field private mMulticastDisabled:I

.field private mMulticastEnabled:I

.field private final mMulticasters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/WifiService$Multicaster;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedReconfig:Z

.field private mNumHiddenNetworkPresent:I

.field private mPluggedType:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mScanLocksAcquired:I

.field private mScanLocksReleased:I

.field private final mScanResultCache:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenOff:Z

.field private mWiFiRxStat:J

.field private mWiFiRxStat_old:J

.field private mWiFiTxStat:J

.field private mWiFiTxStat_old:J

.field private final mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

.field private mWifiState:I

.field private final mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

.field wifiNative:Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 96
    const-string v0, "\t+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/WifiService;->scanResultPattern:Ljava/util/regex/Pattern;

    .line 228
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_12

    sput-object v0, Lcom/android/server/WifiService;->sValidRegulatoryChannelCounts:[I

    return-void

    nop

    :array_12
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiStateTracker;)V
    .registers 14
    .parameter "context"
    .parameter "tracker"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    const-string v8, "WifiService"

    .line 233
    invoke-direct {p0}, Landroid/net/wifi/IWifiManager$Stub;-><init>()V

    .line 109
    new-instance v4, Lcom/android/server/WifiService$LockList;

    invoke-direct {v4, p0, v10}, Lcom/android/server/WifiService$LockList;-><init>(Lcom/android/server/WifiService;Lcom/android/server/WifiService$1;)V

    iput-object v4, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    .line 116
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    .line 163
    iput-wide v5, p0, Lcom/android/server/WifiService;->mWiFiRxStat:J

    .line 164
    iput-wide v5, p0, Lcom/android/server/WifiService;->mWiFiTxStat:J

    .line 165
    iput-wide v5, p0, Lcom/android/server/WifiService;->mWiFiRxStat_old:J

    .line 166
    iput-wide v5, p0, Lcom/android/server/WifiService;->mWiFiTxStat_old:J

    .line 209
    new-instance v4, Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;

    invoke-direct {v4}, Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;-><init>()V

    iput-object v4, p0, Lcom/android/server/WifiService;->wifiNative:Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;

    .line 222
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    iput v4, p0, Lcom/android/server/WifiService;->mLastEnableUid:I

    .line 2010
    new-instance v4, Lcom/android/server/WifiService$5;

    invoke-direct {v4, p0}, Lcom/android/server/WifiService$5;-><init>(Lcom/android/server/WifiService;)V

    iput-object v4, p0, Lcom/android/server/WifiService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 234
    iput-object p1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    .line 235
    iput-object p2, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    .line 236
    iget-object v4, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v4, v7}, Landroid/net/wifi/WifiStateTracker;->enableRssiPolling(Z)V

    .line 237
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 242
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/server/WifiService;->mIsHiddenNetworkPresent:Ljava/util/Map;

    .line 243
    iput v9, p0, Lcom/android/server/WifiService;->mNumHiddenNetworkPresent:I

    .line 245
    new-instance v4, Lcom/android/server/WifiService$1;

    const/16 v5, 0x50

    const/high16 v6, 0x3f40

    invoke-direct {v4, p0, v5, v6, v7}, Lcom/android/server/WifiService$1;-><init>(Lcom/android/server/WifiService;IFZ)V

    iput-object v4, p0, Lcom/android/server/WifiService;->mScanResultCache:Ljava/util/LinkedHashMap;

    .line 256
    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "WifiService"

    invoke-direct {v3, v8}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 257
    .local v3, wifiThread:Landroid/os/HandlerThread;
    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 258
    new-instance v4, Lcom/android/server/WifiService$WifiHandler;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/server/WifiService$WifiHandler;-><init>(Lcom/android/server/WifiService;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    .line 260
    iput v7, p0, Lcom/android/server/WifiService;->mWifiState:I

    .line 261
    invoke-direct {p0}, Lcom/android/server/WifiService;->getPersistedWifiEnabled()Z

    move-result v2

    .line 263
    .local v2, wifiEnabled:Z
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v5, "alarm"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AlarmManager;

    iput-object v4, p0, Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 264
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.android.server.WifiManager.action.DEVICE_IDLE"

    invoke-direct {v0, v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 265
    .local v0, idleIntent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-static {v4, v9, v0, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;

    .line 267
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 268
    .local v1, powerManager:Landroid/os/PowerManager;
    const-string v4, "WifiService"

    invoke-virtual {v1, v7, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    sput-object v4, Lcom/android/server/WifiService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 269
    const-string v4, "WifiService"

    invoke-virtual {v1, v7, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    sput-object v4, Lcom/android/server/WifiService;->sDriverStopWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 273
    const-string v4, "WifiService"

    invoke-virtual {v1, v7, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    sput-object v4, Lcom/android/server/WifiService;->sWiFiStopWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 276
    iget-object v4, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    new-instance v5, Lcom/android/server/WifiService$2;

    invoke-direct {v5, p0}, Lcom/android/server/WifiService$2;-><init>(Lcom/android/server/WifiService;)V

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiStateTracker;->setReleaseWakeLockCallback(Ljava/lang/Runnable;)V

    .line 289
    const-string v4, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WifiService starting up with Wi-Fi "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v2, :cond_ff

    const-string v5, "enabled"

    :goto_ca
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/server/WifiService$3;

    invoke-direct {v5, p0}, Lcom/android/server/WifiService$3;-><init>(Lcom/android/server/WifiService;)V

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 303
    const-string v4, "WifiService"

    const-string v4, "Register Intent.ACTION_BOOT_COMPLETED ==================="

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/server/WifiService$4;

    invoke-direct {v5, p0}, Lcom/android/server/WifiService$4;-><init>(Lcom/android/server/WifiService;)V

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 322
    return-void

    .line 289
    :cond_ff
    const-string v5, "disabled"

    goto :goto_ca
.end method

.method private declared-synchronized GetWiFiStats()V
    .registers 10

    .prologue
    const-string v6, " Rx "

    const-string v6, "WifiService"

    .line 2276
    monitor-enter p0

    :try_start_5
    invoke-static {}, Landroid/net/wifi/WifiNative;->getWiFiDevStats()Ljava/lang/String;

    move-result-object v5

    .line 2277
    .local v5, listStr:Ljava/lang/String;
    if-eqz v5, :cond_d5

    .line 2279
    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2281
    .local v0, Cnt:[Ljava/lang/String;
    const/4 v6, 0x0

    aget-object v6, v0, v6

    const-string v7, "stats"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_a9

    array-length v6, v0

    const/4 v7, 0x3

    if-ne v6, v7, :cond_a9

    .line 2282
    const-string v6, "WifiService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GetWiFiStats : received str "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Cnt "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2283
    const-string v6, "WifiService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GetWiFiStats : Tx "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v8, v0, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Rx "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x2

    aget-object v8, v0, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2285
    const/4 v6, 0x1

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 2286
    .local v3, TxCnt:J
    const/4 v6, 0x2

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 2287
    .local v1, RxCnt:J
    const-string v6, "WifiService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GetWiFiStats : converted Tx "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Rx "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2289
    iget-wide v6, p0, Lcom/android/server/WifiService;->mWiFiTxStat:J

    iput-wide v6, p0, Lcom/android/server/WifiService;->mWiFiTxStat_old:J

    .line 2290
    iput-wide v3, p0, Lcom/android/server/WifiService;->mWiFiTxStat:J

    .line 2291
    iget-wide v6, p0, Lcom/android/server/WifiService;->mWiFiRxStat:J

    iput-wide v6, p0, Lcom/android/server/WifiService;->mWiFiRxStat_old:J

    .line 2292
    iput-wide v1, p0, Lcom/android/server/WifiService;->mWiFiRxStat:J
    :try_end_a7
    .catchall {:try_start_5 .. :try_end_a7} :catchall_d2

    .line 2311
    .end local v0           #Cnt:[Ljava/lang/String;
    .end local v1           #RxCnt:J
    .end local v3           #TxCnt:J
    :goto_a7
    monitor-exit p0

    return-void

    .line 2295
    .restart local v0       #Cnt:[Ljava/lang/String;
    :cond_a9
    :try_start_a9
    const-string v6, "WifiService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GetWiFiStats : Abnormal received str "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2296
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/server/WifiService;->mWiFiTxStat_old:J

    .line 2297
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/server/WifiService;->mWiFiTxStat:J

    .line 2298
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/server/WifiService;->mWiFiRxStat_old:J

    .line 2299
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/server/WifiService;->mWiFiRxStat:J
    :try_end_d1
    .catchall {:try_start_a9 .. :try_end_d1} :catchall_d2

    goto :goto_a7

    .line 2276
    .end local v0           #Cnt:[Ljava/lang/String;
    .end local v5           #listStr:Ljava/lang/String;
    :catchall_d2
    move-exception v6

    monitor-exit p0

    throw v6

    .line 2304
    .restart local v5       #listStr:Ljava/lang/String;
    :cond_d5
    :try_start_d5
    const-string v6, "WifiService"

    const-string v7, "GetWiFiStats : received str is NULL"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2305
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/server/WifiService;->mWiFiTxStat_old:J

    .line 2306
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/server/WifiService;->mWiFiTxStat:J

    .line 2307
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/server/WifiService;->mWiFiRxStat_old:J

    .line 2308
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/server/WifiService;->mWiFiRxStat:J
    :try_end_ec
    .catchall {:try_start_d5 .. :try_end_ec} :catchall_d2

    goto :goto_a7
.end method

.method private declared-synchronized KeepWiFiWakeLock()Z
    .registers 6

    .prologue
    const/4 v4, 0x1

    const-string v0, "WifiService"

    .line 2314
    monitor-enter p0

    :try_start_4
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeepWiFiWakeLock : old Tx "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/WifiService;->mWiFiTxStat_old:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " old Rx "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/WifiService;->mWiFiRxStat_old:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2315
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeepWiFiWakeLock : Tx "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/WifiService;->mWiFiTxStat:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Rx "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/WifiService;->mWiFiRxStat:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2317
    iget-wide v0, p0, Lcom/android/server/WifiService;->mWiFiRxStat_old:J

    iget-wide v2, p0, Lcom/android/server/WifiService;->mWiFiRxStat:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_6c

    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateTracker;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v0

    sget-object v1, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne v0, v1, :cond_6c

    .line 2318
    const-string v0, "WifiService"

    const-string v1, "KeepWiFiWakeLock : Keep wake lock (old value is larger than now one)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_69
    .catchall {:try_start_4 .. :try_end_69} :catchall_93

    move v0, v4

    .line 2328
    :goto_6a
    monitor-exit p0

    return v0

    .line 2323
    :cond_6c
    :try_start_6c
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateTracker;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v0

    sget-object v1, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne v0, v1, :cond_8a

    iget-wide v0, p0, Lcom/android/server/WifiService;->mWiFiRxStat:J

    iget-wide v2, p0, Lcom/android/server/WifiService;->mWiFiRxStat_old:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-lez v0, :cond_8a

    .line 2324
    const-string v0, "WifiService"

    const-string v1, "KeepWiFiWakeLock : Keep wake lock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 2325
    goto :goto_6a

    .line 2327
    :cond_8a
    const-string v0, "WifiService"

    const-string v1, "KeepWiFiWakeLock : release wake lock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_91
    .catchall {:try_start_6c .. :try_end_91} :catchall_93

    .line 2328
    const/4 v0, 0x0

    goto :goto_6a

    .line 2314
    :catchall_93
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic access$100(Lcom/android/server/WifiService;)Lcom/android/server/WifiService$WifiHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/WifiService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mScreenOff:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/WifiService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mScreenOff:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateTracker;
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/WifiService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/server/WifiService;->releaseWiFiStopWakeLock()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/WifiService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget v0, p0, Lcom/android/server/WifiService;->mPluggedType:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/WifiService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput p1, p0, Lcom/android/server/WifiService;->mPluggedType:I

    return p1
.end method

.method static synthetic access$1400()Landroid/os/PowerManager$WakeLock;
    .registers 1

    .prologue
    .line 93
    sget-object v0, Lcom/android/server/WifiService;->sWiFiStopWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/WifiService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/server/WifiService;->GetWiFiStats()V

    return-void
.end method

.method static synthetic access$1800()Landroid/os/PowerManager$WakeLock;
    .registers 1

    .prologue
    .line 93
    sget-object v0, Lcom/android/server/WifiService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/WifiService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/server/WifiService;->KeepWiFiWakeLock()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()Landroid/os/PowerManager$WakeLock;
    .registers 1

    .prologue
    .line 93
    sget-object v0, Lcom/android/server/WifiService;->sDriverStopWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/WifiService;)Lcom/android/server/WifiService$LockList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/WifiService;Landroid/os/IBinder;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->releaseWifiLockLocked(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/WifiService;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/WifiService;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/android/server/WifiService;->removeMulticasterLocked(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/WifiService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/server/WifiService;->updateWifiState()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/WifiService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/server/WifiService;->getPersistedWifiEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/WifiService;ZZI)Z
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/WifiService;->setWifiEnabledBlocking(ZZI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/WifiService;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/server/WifiService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mDeviceIdle:Z

    return p1
.end method

.method private acquireWifiLockLocked(Lcom/android/server/WifiService$WifiLock;)Z
    .registers 6
    .parameter "wifiLock"

    .prologue
    .line 2582
    iget-object v3, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    invoke-static {v3, p1}, Lcom/android/server/WifiService$LockList;->access$2300(Lcom/android/server/WifiService$LockList;Lcom/android/server/WifiService$WifiLock;)V

    .line 2584
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 2585
    .local v2, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2587
    .local v0, ident:J
    :try_start_d
    iget v3, p1, Lcom/android/server/WifiService$WifiLock;->mMode:I
    :try_end_f
    .catchall {:try_start_d .. :try_end_f} :catchall_34
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_f} :catch_26

    packed-switch v3, :pswitch_data_3a

    .line 2599
    :goto_12
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2602
    invoke-direct {p0}, Lcom/android/server/WifiService;->updateWifiState()V

    .line 2603
    const/4 v3, 0x1

    return v3

    .line 2589
    :pswitch_1a
    :try_start_1a
    iget v3, p0, Lcom/android/server/WifiService;->mFullLocksAcquired:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/WifiService;->mFullLocksAcquired:I

    .line 2590
    iget-object v3, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3, v2}, Lcom/android/internal/app/IBatteryStats;->noteFullWifiLockAcquired(I)V

    goto :goto_12

    .line 2597
    :catch_26
    move-exception v3

    goto :goto_12

    .line 2593
    :pswitch_28
    iget v3, p0, Lcom/android/server/WifiService;->mScanLocksAcquired:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/WifiService;->mScanLocksAcquired:I

    .line 2594
    iget-object v3, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3, v2}, Lcom/android/internal/app/IBatteryStats;->noteScanWifiLockAcquired(I)V
    :try_end_33
    .catchall {:try_start_1a .. :try_end_33} :catchall_34
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_33} :catch_26

    goto :goto_12

    .line 2599
    :catchall_34
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 2587
    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_28
    .end packed-switch
.end method

.method private declared-synchronized addOrUpdateHiddenNetwork(IZ)V
    .registers 7
    .parameter "netId"
    .parameter "present"

    .prologue
    .line 384
    monitor-enter p0

    if-ltz p1, :cond_34

    .line 387
    :try_start_3
    iget-object v1, p0, Lcom/android/server/WifiService;->mIsHiddenNetworkPresent:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 388
    .local v0, isPresent:Ljava/lang/Boolean;
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v1, p2, :cond_29

    .line 389
    :cond_17
    if-eqz p2, :cond_2b

    .line 390
    invoke-direct {p0}, Lcom/android/server/WifiService;->incrementHiddentNetworkPresentCounter()V

    .line 398
    :cond_1c
    :goto_1c
    iget-object v1, p0, Lcom/android/server/WifiService;->mIsHiddenNetworkPresent:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_31

    .line 406
    .end local v0           #isPresent:Ljava/lang/Boolean;
    :cond_29
    :goto_29
    monitor-exit p0

    return-void

    .line 394
    .restart local v0       #isPresent:Ljava/lang/Boolean;
    :cond_2b
    if-eqz v0, :cond_1c

    .line 395
    :try_start_2d
    invoke-direct {p0}, Lcom/android/server/WifiService;->decrementHiddentNetworkPresentCounter()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_31

    goto :goto_1c

    .line 384
    .end local v0           #isPresent:Ljava/lang/Boolean;
    :catchall_31
    move-exception v1

    monitor-exit p0

    throw v1

    .line 403
    :cond_34
    :try_start_34
    const-string v1, "WifiService"

    const-string v2, "addOrUpdateHiddenNetwork(): Invalid (negative) network id!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catchall {:try_start_34 .. :try_end_3b} :catchall_31

    goto :goto_29
.end method

.method private decrementHiddentNetworkPresentCounter()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 468
    iget v0, p0, Lcom/android/server/WifiService;->mNumHiddenNetworkPresent:I

    if-lez v0, :cond_15

    .line 469
    iget v0, p0, Lcom/android/server/WifiService;->mNumHiddenNetworkPresent:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/WifiService;->mNumHiddenNetworkPresent:I

    .line 470
    iget v0, p0, Lcom/android/server/WifiService;->mNumHiddenNetworkPresent:I

    if-nez v0, :cond_14

    .line 472
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiStateTracker;->setScanMode(ZZ)V

    .line 480
    :cond_14
    :goto_14
    return-void

    .line 477
    :cond_15
    const-string v0, "WifiService"

    const-string v1, "Hidden-network counter invariant violation!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method

.method private enforceAccessPermission()V
    .registers 4

    .prologue
    .line 930
    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    return-void
.end method

.method private enforceChangePermission()V
    .registers 4

    .prologue
    .line 935
    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_WIFI_STATE"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    return-void
.end method

.method private enforceMulticastChangePermission()V
    .registers 4

    .prologue
    .line 941
    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_WIFI_MULTICAST_STATE"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    return-void
.end method

.method private getPersistedWifiEnabled()Z
    .registers 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v6, "wifi_on"

    const-string v5, "WifiService"

    .line 483
    iget-object v2, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 486
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "WifiService"

    const-string v2, "getPersistedWifiEnabled : start"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    :try_start_13
    const-string v2, "wifi_on"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_18
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_13 .. :try_end_18} :catch_1f

    move-result v2

    if-ne v2, v4, :cond_1d

    move v2, v4

    .line 496
    :goto_1c
    return v2

    :cond_1d
    move v2, v3

    .line 489
    goto :goto_1c

    .line 490
    :catch_1f
    move-exception v2

    move-object v1, v2

    .line 493
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "WifiService"

    const-string v2, "getPersistedWifiEnabled : SettingNotFoundException"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    const-string v2, "wifi_on"

    invoke-static {v0, v6, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v2, v3

    .line 496
    goto :goto_1c
.end method

.method private incrementHiddentNetworkPresentCounter()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 456
    iget v0, p0, Lcom/android/server/WifiService;->mNumHiddenNetworkPresent:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/WifiService;->mNumHiddenNetworkPresent:I

    .line 457
    iget v0, p0, Lcom/android/server/WifiService;->mNumHiddenNetworkPresent:I

    if-ne v1, v0, :cond_10

    .line 459
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v0, v1, v1}, Landroid/net/wifi/WifiStateTracker;->setScanMode(ZZ)V

    .line 461
    :cond_10
    return-void
.end method

.method private declared-synchronized initializeHiddenNetworksState()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 330
    monitor-enter p0

    :try_start_2
    invoke-direct {p0}, Lcom/android/server/WifiService;->resetHiddenNetworksState()V

    .line 333
    invoke-virtual {p0}, Lcom/android/server/WifiService;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 334
    .local v2, networks:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_35

    .line 335
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_13
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 336
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_13

    iget-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v3, :cond_13

    .line 337
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-eq v4, v5, :cond_33

    move v4, v5

    :goto_2c
    invoke-direct {p0, v3, v4}, Lcom/android/server/WifiService;->addOrUpdateHiddenNetwork(IZ)V
    :try_end_2f
    .catchall {:try_start_2 .. :try_end_2f} :catchall_30

    goto :goto_13

    .line 330
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #networks:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :catchall_30
    move-exception v3

    monitor-exit p0

    throw v3

    .line 337
    .restart local v0       #config:Landroid/net/wifi/WifiConfiguration;
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #networks:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_33
    const/4 v4, 0x0

    goto :goto_2c

    .line 344
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_35
    monitor-exit p0

    return-void
.end method

.method private isAirplaneModeOn()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2264
    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneSensitive()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_18

    move v0, v3

    :goto_17
    return v0

    :cond_18
    move v0, v2

    goto :goto_17
.end method

.method private isAirplaneSensitive()Z
    .registers 4

    .prologue
    .line 2252
    iget-object v1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_radios"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2254
    .local v0, airplaneModeRadios:Ljava/lang/String;
    if-eqz v0, :cond_16

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    :cond_16
    const/4 v1, 0x1

    :goto_17
    return v1

    :cond_18
    const/4 v1, 0x0

    goto :goto_17
.end method

.method private declared-synchronized isHiddenNetwork(I)Z
    .registers 4
    .parameter "netId"

    .prologue
    .line 448
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/WifiService;->mIsHiddenNetworkPresent:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_d

    move-result v0

    monitor-exit p0

    return v0

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static lookupString(Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .parameter "string"
    .parameter "strings"

    .prologue
    .line 1608
    array-length v1, p1

    .line 1610
    .local v1, size:I
    const/16 v2, 0x2d

    const/16 v3, 0x5f

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 1612
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    if-ge v0, v1, :cond_19

    .line 1613
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    move v2, v0

    .line 1623
    :goto_15
    return v2

    .line 1612
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1623
    :cond_19
    const/4 v2, -0x1

    goto :goto_15
.end method

.method private static makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "set"
    .parameter "strings"

    .prologue
    .line 1588
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1589
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v1, -0x1

    .line 1593
    .local v1, nextSetBit:I
    const/4 v2, 0x0

    array-length v3, p1

    invoke-virtual {p0, v2, v3}, Ljava/util/BitSet;->get(II)Ljava/util/BitSet;

    move-result-object p0

    .line 1595
    :goto_c
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_29

    .line 1596
    aget-object v2, p1, v1

    const/16 v3, 0x5f

    const/16 v4, 0x2d

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_c

    .line 1600
    :cond_29
    invoke-virtual {p0}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    if-lez v2, :cond_38

    .line 1601
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 1604
    :cond_38
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private declared-synchronized markAllHiddenNetworksButOneAsNotPresent(I)V
    .registers 7
    .parameter "netId"

    .prologue
    .line 358
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Lcom/android/server/WifiService;->mIsHiddenNetworkPresent:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 359
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    if-eqz v0, :cond_b

    .line 360
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 361
    .local v2, networkId:Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, p1, :cond_b

    .line 362
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/android/server/WifiService;->updateNetworkIfHidden(IZ)V
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_2e

    goto :goto_b

    .line 358
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #networkId:Ljava/lang/Integer;
    :catchall_2e
    move-exception v3

    monitor-exit p0

    throw v3

    .line 367
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_31
    monitor-exit p0

    return-void
.end method

.method private parseScanResult(Ljava/lang/String;)Landroid/net/wifi/ScanResult;
    .registers 16
    .parameter "line"

    .prologue
    const/4 v13, 0x5

    const/4 v12, 0x4

    const/4 v11, 0x3

    .line 1771
    const/4 v0, 0x0

    .line 1772
    .local v0, scanResult:Landroid/net/wifi/ScanResult;
    if-eqz p1, :cond_5d

    .line 1777
    iget-object v9, p0, Lcom/android/server/WifiService;->mScanResultCache:Ljava/util/LinkedHashMap;

    monitor-enter v9

    .line 1780
    :try_start_9
    iget-object v10, p0, Lcom/android/server/WifiService;->mScanResultCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v10, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/ScanResult;
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_9d

    .line 1781
    .end local v0           #scanResult:Landroid/net/wifi/ScanResult;
    .local v8, scanResult:Landroid/net/wifi/ScanResult;
    if-nez v8, :cond_9b

    .line 1783
    :try_start_13
    sget-object v10, Lcom/android/server/WifiService;->scanResultPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v10, p1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v7

    .line 1784
    .local v7, result:[Ljava/lang/String;
    array-length v10, v7

    if-gt v11, v10, :cond_78

    array-length v10, v7

    if-gt v10, v13, :cond_78

    .line 1785
    const/4 v10, 0x0

    aget-object v2, v7, v10
    :try_end_22
    .catchall {:try_start_13 .. :try_end_22} :catchall_a0

    .line 1790
    .local v2, bssid:Ljava/lang/String;
    const/4 v10, 0x1

    :try_start_23
    aget-object v10, v7, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1791
    .local v5, frequency:I
    const/4 v10, 0x2

    aget-object v10, v7, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2f
    .catchall {:try_start_23 .. :try_end_2f} :catchall_a0
    .catch Ljava/lang/NumberFormatException; {:try_start_23 .. :try_end_2f} :catch_5e

    move-result v4

    .line 1795
    .local v4, level:I
    if-lez v4, :cond_34

    add-int/lit16 v4, v4, -0x100

    .line 1819
    :cond_34
    :goto_34
    :try_start_34
    array-length v10, v7

    if-ne v10, v12, :cond_69

    .line 1820
    const/4 v10, 0x3

    aget-object v10, v7, v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x5b

    if-ne v10, v11, :cond_63

    .line 1821
    const/4 v10, 0x3

    aget-object v3, v7, v10

    .line 1822
    .local v3, flags:Ljava/lang/String;
    const-string v1, ""

    .line 1838
    .local v1, ssid:Ljava/lang/String;
    :goto_48
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_9b

    .line 1839
    new-instance v0, Landroid/net/wifi/ScanResult;

    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/ScanResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_57
    .catchall {:try_start_34 .. :try_end_57} :catchall_a0

    .line 1844
    .end local v8           #scanResult:Landroid/net/wifi/ScanResult;
    .restart local v0       #scanResult:Landroid/net/wifi/ScanResult;
    :try_start_57
    iget-object v10, p0, Lcom/android/server/WifiService;->mScanResultCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v10, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1859
    .end local v1           #ssid:Ljava/lang/String;
    .end local v2           #bssid:Ljava/lang/String;
    .end local v3           #flags:Ljava/lang/String;
    .end local v4           #level:I
    .end local v5           #frequency:I
    .end local v7           #result:[Ljava/lang/String;
    :goto_5c
    monitor-exit v9
    :try_end_5d
    .catchall {:try_start_57 .. :try_end_5d} :catchall_9d

    .line 1862
    :cond_5d
    return-object v0

    .line 1796
    .end local v0           #scanResult:Landroid/net/wifi/ScanResult;
    .restart local v2       #bssid:Ljava/lang/String;
    .restart local v7       #result:[Ljava/lang/String;
    .restart local v8       #scanResult:Landroid/net/wifi/ScanResult;
    :catch_5e
    move-exception v10

    move-object v6, v10

    .line 1797
    .local v6, e:Ljava/lang/NumberFormatException;
    const/4 v5, 0x0

    .line 1798
    .restart local v5       #frequency:I
    const/4 v4, 0x0

    .restart local v4       #level:I
    goto :goto_34

    .line 1824
    .end local v6           #e:Ljava/lang/NumberFormatException;
    :cond_63
    :try_start_63
    const-string v3, ""

    .line 1825
    .restart local v3       #flags:Ljava/lang/String;
    const/4 v10, 0x3

    aget-object v1, v7, v10

    .restart local v1       #ssid:Ljava/lang/String;
    goto :goto_48

    .line 1827
    .end local v1           #ssid:Ljava/lang/String;
    .end local v3           #flags:Ljava/lang/String;
    :cond_69
    array-length v10, v7

    if-ne v10, v13, :cond_73

    .line 1828
    const/4 v10, 0x3

    aget-object v3, v7, v10

    .line 1829
    .restart local v3       #flags:Ljava/lang/String;
    const/4 v10, 0x4

    aget-object v1, v7, v10

    .restart local v1       #ssid:Ljava/lang/String;
    goto :goto_48

    .line 1833
    .end local v1           #ssid:Ljava/lang/String;
    .end local v3           #flags:Ljava/lang/String;
    :cond_73
    const-string v3, ""

    .line 1834
    .restart local v3       #flags:Ljava/lang/String;
    const-string v1, ""

    .restart local v1       #ssid:Ljava/lang/String;
    goto :goto_48

    .line 1852
    .end local v1           #ssid:Ljava/lang/String;
    .end local v2           #bssid:Ljava/lang/String;
    .end local v3           #flags:Ljava/lang/String;
    .end local v4           #level:I
    .end local v5           #frequency:I
    :cond_78
    const-string v10, "WifiService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Misformatted scan result text with "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v12, v7

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " fields: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9b
    .catchall {:try_start_63 .. :try_end_9b} :catchall_a0

    .end local v7           #result:[Ljava/lang/String;
    :cond_9b
    move-object v0, v8

    .end local v8           #scanResult:Landroid/net/wifi/ScanResult;
    .restart local v0       #scanResult:Landroid/net/wifi/ScanResult;
    goto :goto_5c

    .line 1859
    :catchall_9d
    move-exception v10

    :goto_9e
    :try_start_9e
    monitor-exit v9
    :try_end_9f
    .catchall {:try_start_9e .. :try_end_9f} :catchall_9d

    throw v10

    .end local v0           #scanResult:Landroid/net/wifi/ScanResult;
    .restart local v8       #scanResult:Landroid/net/wifi/ScanResult;
    :catchall_a0
    move-exception v10

    move-object v0, v8

    .end local v8           #scanResult:Landroid/net/wifi/ScanResult;
    .restart local v0       #scanResult:Landroid/net/wifi/ScanResult;
    goto :goto_9e
.end method

.method private persistWifiEnabled(Z)V
    .registers 5
    .parameter "enabled"

    .prologue
    .line 501
    iget-object v1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 502
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "wifi_on"

    if-eqz p1, :cond_f

    const/4 v2, 0x1

    :goto_b
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 503
    return-void

    .line 502
    :cond_f
    const/4 v2, 0x0

    goto :goto_b
.end method

.method private static readNetworkVariables(Landroid/net/wifi/WifiConfiguration;)V
    .registers 6
    .parameter "config"

    .prologue
    .line 1066
    iget v1, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 1067
    .local v1, netId:I
    if-gez v1, :cond_5

    .line 1225
    .end local v1           #netId:I
    :cond_4
    return-void

    .line 1085
    .restart local v1       #netId:I
    :cond_5
    const/4 v0, 0x0

    .line 1086
    .local v0, reply_tmp:[B
    const/4 v2, 0x0

    .line 1087
    .local v2, value:Ljava/lang/String;
    const-string v0, "ssid"

    .end local v0           #reply_tmp:[B
    invoke-static {v1, v0}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand_byte(ILjava/lang/String;)[B

    move-result-object v0

    .line 1088
    .restart local v0       #reply_tmp:[B
    if-eqz v0, :cond_90

    .line 1090
    :try_start_f
    new-instance v3, Ljava/lang/String;

    const-string v4, "KSC5601"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_16
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_f .. :try_end_16} :catch_88

    .end local v2           #value:Ljava/lang/String;
    .local v3, value:Ljava/lang/String;
    move-object v0, v3

    .line 1096
    .end local v3           #value:Ljava/lang/String;
    .local v0, value:Ljava/lang/String;
    :goto_17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_92

    .line 1097
    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1103
    .end local v0           #value:Ljava/lang/String;
    :goto_1f
    const-string v0, "bssid"

    invoke-static {v1, v0}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1104
    .restart local v0       #value:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_96

    .line 1105
    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 1110
    .end local v0           #value:Ljava/lang/String;
    :goto_2d
    const-string v0, "priority"

    invoke-static {v1, v0}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1111
    .restart local v0       #value:Ljava/lang/String;
    const/4 v2, -0x1

    iput v2, p0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 1112
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_42

    .line 1114
    :try_start_3c
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .end local v0           #value:Ljava/lang/String;
    iput v0, p0, Landroid/net/wifi/WifiConfiguration;->priority:I
    :try_end_42
    .catch Ljava/lang/NumberFormatException; {:try_start_3c .. :try_end_42} :catch_191

    .line 1119
    :cond_42
    :goto_42
    const-string v0, "scan_ssid"

    invoke-static {v1, v0}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1120
    .restart local v0       #value:Ljava/lang/String;
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 1121
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5a

    .line 1123
    :try_start_51
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .end local v0           #value:Ljava/lang/String;
    if-eqz v0, :cond_9a

    const/4 v0, 0x1

    :goto_58
    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z
    :try_end_5a
    .catch Ljava/lang/NumberFormatException; {:try_start_51 .. :try_end_5a} :catch_18e

    .line 1128
    :cond_5a
    :goto_5a
    const-string v0, "wep_tx_keyidx"

    invoke-static {v1, v0}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1129
    .restart local v2       #value:Ljava/lang/String;
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 1130
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6f

    .line 1132
    :try_start_69
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I
    :try_end_6f
    .catch Ljava/lang/NumberFormatException; {:try_start_69 .. :try_end_6f} :catch_18b

    .line 1141
    :cond_6f
    :goto_6f
    const/4 v0, 0x0

    .local v0, i:I
    :goto_70
    const/4 v2, 0x4

    if-ge v0, v2, :cond_a2

    .line 1142
    .end local v2           #value:Ljava/lang/String;
    sget-object v2, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v1, v2}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1143
    .restart local v2       #value:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9c

    .line 1144
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v2, v3, v0

    .line 1141
    :goto_85
    add-int/lit8 v0, v0, 0x1

    goto :goto_70

    .line 1091
    .local v0, reply_tmp:[B
    :catch_88
    move-exception v0

    .line 1092
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v0, "WifiService"

    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    const-string v3, "KSC5601 Error in readNetworkVariables"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_90
    move-object v0, v2

    .end local v2           #value:Ljava/lang/String;
    .local v0, value:Ljava/lang/String;
    goto :goto_17

    .line 1099
    :cond_92
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_1f

    .line 1107
    :cond_96
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    goto :goto_2d

    .line 1123
    .end local v0           #value:Ljava/lang/String;
    :cond_9a
    const/4 v0, 0x0

    goto :goto_58

    .line 1146
    .local v0, i:I
    .restart local v2       #value:Ljava/lang/String;
    :cond_9c
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v4, v3, v0

    goto :goto_85

    .line 1154
    .end local v2           #value:Ljava/lang/String;
    :cond_a2
    const-string v0, "psk"

    .end local v0           #i:I
    invoke-static {v1, v0}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1155
    .local v0, value:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .end local v1           #netId:I
    if-nez v1, :cond_db

    .line 1156
    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 1161
    .end local v0           #value:Ljava/lang/String;
    :goto_b0
    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string v1, "proto"

    invoke-static {v0, v1}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1163
    .restart local v0       #value:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_df

    .line 1164
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1165
    .local v0, vals:[Ljava/lang/String;
    move-object v0, v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_c7
    if-ge v1, v3, :cond_df

    aget-object v2, v0, v1

    .line 1166
    .local v2, val:Ljava/lang/String;
    sget-object v4, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/android/server/WifiService;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 1168
    .local v2, index:I
    if-ltz v2, :cond_d8

    .line 1169
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v4, v2}, Ljava/util/BitSet;->set(I)V

    .line 1165
    :cond_d8
    add-int/lit8 v1, v1, 0x1

    goto :goto_c7

    .line 1158
    .end local v1           #i$:I
    .end local v2           #index:I
    .end local v3           #len$:I
    .local v0, value:Ljava/lang/String;
    :cond_db
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_b0

    .line 1174
    .end local v0           #value:Ljava/lang/String;
    :cond_df
    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string v1, "key_mgmt"

    invoke-static {v0, v1}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1176
    .restart local v0       #value:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10a

    .line 1177
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1178
    .local v0, vals:[Ljava/lang/String;
    move-object v0, v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_f6
    if-ge v1, v3, :cond_10a

    aget-object v2, v0, v1

    .line 1179
    .local v2, val:Ljava/lang/String;
    sget-object v4, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/android/server/WifiService;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 1181
    .local v2, index:I
    if-ltz v2, :cond_107

    .line 1182
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v2}, Ljava/util/BitSet;->set(I)V

    .line 1178
    :cond_107
    add-int/lit8 v1, v1, 0x1

    goto :goto_f6

    .line 1187
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #index:I
    .end local v3           #len$:I
    :cond_10a
    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string v1, "auth_alg"

    invoke-static {v0, v1}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1189
    .local v0, value:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_135

    .line 1190
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1191
    .local v0, vals:[Ljava/lang/String;
    move-object v0, v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_121
    if-ge v1, v3, :cond_135

    aget-object v2, v0, v1

    .line 1192
    .local v2, val:Ljava/lang/String;
    sget-object v4, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/android/server/WifiService;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 1194
    .local v2, index:I
    if-ltz v2, :cond_132

    .line 1195
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v4, v2}, Ljava/util/BitSet;->set(I)V

    .line 1191
    :cond_132
    add-int/lit8 v1, v1, 0x1

    goto :goto_121

    .line 1200
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #index:I
    .end local v3           #len$:I
    :cond_135
    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string v1, "pairwise"

    invoke-static {v0, v1}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1202
    .local v0, value:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_160

    .line 1203
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1204
    .local v0, vals:[Ljava/lang/String;
    move-object v0, v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_14c
    if-ge v1, v3, :cond_160

    aget-object v2, v0, v1

    .line 1205
    .local v2, val:Ljava/lang/String;
    sget-object v4, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/android/server/WifiService;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 1207
    .local v2, index:I
    if-ltz v2, :cond_15d

    .line 1208
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v4, v2}, Ljava/util/BitSet;->set(I)V

    .line 1204
    :cond_15d
    add-int/lit8 v1, v1, 0x1

    goto :goto_14c

    .line 1213
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #index:I
    .end local v3           #len$:I
    :cond_160
    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string v1, "group"

    invoke-static {v0, v1}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1215
    .local v0, value:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1216
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1217
    .local v0, vals:[Ljava/lang/String;
    move-object v0, v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_177
    if-ge v1, v3, :cond_4

    aget-object v2, v0, v1

    .line 1218
    .local v2, val:Ljava/lang/String;
    sget-object v4, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/android/server/WifiService;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 1220
    .local v2, index:I
    if-ltz v2, :cond_188

    .line 1221
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v4, v2}, Ljava/util/BitSet;->set(I)V

    .line 1217
    :cond_188
    add-int/lit8 v1, v1, 0x1

    goto :goto_177

    .line 1133
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #len$:I
    .local v1, netId:I
    .local v2, value:Ljava/lang/String;
    :catch_18b
    move-exception v0

    goto/16 :goto_6f

    .line 1124
    .end local v2           #value:Ljava/lang/String;
    :catch_18e
    move-exception v0

    goto/16 :goto_5a

    .line 1115
    :catch_191
    move-exception v0

    goto/16 :goto_42
.end method

.method private registerForBroadcasts()V
    .registers 4

    .prologue
    .line 2242
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2243
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2244
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2245
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2246
    const-string v1, "com.android.server.WifiManager.action.DEVICE_IDLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2247
    const-string v1, "android.bluetooth.a2dp.intent.action.SINK_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2248
    iget-object v1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/WifiService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2249
    return-void
.end method

.method private releaseWiFiStopWakeLock()V
    .registers 3

    .prologue
    .line 2001
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/WifiService$WifiHandler;->removeMessages(I)V

    .line 2002
    sget-object v0, Lcom/android/server/WifiService;->sWiFiStopWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v0

    .line 2003
    :try_start_9
    sget-object v1, Lcom/android/server/WifiService;->sWiFiStopWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 2004
    sget-object v1, Lcom/android/server/WifiService;->sWiFiStopWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2006
    :cond_16
    monitor-exit v0

    .line 2007
    return-void

    .line 2006
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_9 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method private releaseWifiLockLocked(Landroid/os/IBinder;)Z
    .registers 8
    .parameter "lock"

    .prologue
    .line 2616
    iget-object v5, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    invoke-static {v5, p1}, Lcom/android/server/WifiService$LockList;->access$2400(Lcom/android/server/WifiService$LockList;Landroid/os/IBinder;)Lcom/android/server/WifiService$WifiLock;

    move-result-object v4

    .line 2617
    .local v4, wifiLock:Lcom/android/server/WifiService$WifiLock;
    if-eqz v4, :cond_20

    const/4 v5, 0x1

    move v0, v5

    .line 2619
    .local v0, hadLock:Z
    :goto_a
    if-eqz v0, :cond_1c

    .line 2620
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 2621
    .local v3, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2623
    .local v1, ident:J
    :try_start_14
    iget v5, v4, Lcom/android/server/WifiService$WifiLock;->mMode:I
    :try_end_16
    .catchall {:try_start_14 .. :try_end_16} :catchall_3d
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_16} :catch_2f

    packed-switch v5, :pswitch_data_42

    .line 2635
    :goto_19
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2639
    .end local v1           #ident:J
    .end local v3           #uid:I
    :cond_1c
    invoke-direct {p0}, Lcom/android/server/WifiService;->updateWifiState()V

    .line 2640
    return v0

    .line 2617
    .end local v0           #hadLock:Z
    :cond_20
    const/4 v5, 0x0

    move v0, v5

    goto :goto_a

    .line 2625
    .restart local v0       #hadLock:Z
    .restart local v1       #ident:J
    .restart local v3       #uid:I
    :pswitch_23
    :try_start_23
    iget v5, p0, Lcom/android/server/WifiService;->mFullLocksReleased:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/server/WifiService;->mFullLocksReleased:I

    .line 2626
    iget-object v5, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v5, v3}, Lcom/android/internal/app/IBatteryStats;->noteFullWifiLockReleased(I)V

    goto :goto_19

    .line 2633
    :catch_2f
    move-exception v5

    goto :goto_19

    .line 2629
    :pswitch_31
    iget v5, p0, Lcom/android/server/WifiService;->mScanLocksReleased:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/server/WifiService;->mScanLocksReleased:I

    .line 2630
    iget-object v5, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v5, v3}, Lcom/android/internal/app/IBatteryStats;->noteScanWifiLockReleased(I)V
    :try_end_3c
    .catchall {:try_start_23 .. :try_end_3c} :catchall_3d
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_3c} :catch_2f

    goto :goto_19

    .line 2635
    :catchall_3d
    move-exception v5

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 2623
    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_23
        :pswitch_31
    .end packed-switch
.end method

.method private declared-synchronized removeHiddenNetwork(I)V
    .registers 5
    .parameter "netId"

    .prologue
    .line 422
    monitor-enter p0

    if-ltz p1, :cond_1c

    .line 423
    :try_start_3
    iget-object v1, p0, Lcom/android/server/WifiService;->mIsHiddenNetworkPresent:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 425
    .local v0, isPresent:Ljava/lang/Boolean;
    if-eqz v0, :cond_1a

    .line 428
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 429
    invoke-direct {p0}, Lcom/android/server/WifiService;->decrementHiddentNetworkPresentCounter()V
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_24

    .line 442
    .end local v0           #isPresent:Ljava/lang/Boolean;
    :cond_1a
    :goto_1a
    monitor-exit p0

    return-void

    .line 439
    :cond_1c
    :try_start_1c
    const-string v1, "WifiService"

    const-string v2, "removeHiddenNetwork(): Invalid (negative) network id!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_24

    goto :goto_1a

    .line 422
    :catchall_24
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private removeMulticasterLocked(II)V
    .registers 8
    .parameter "i"
    .parameter "uid"

    .prologue
    .line 2731
    iget-object v2, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WifiService$Multicaster;

    .line 2732
    .local v1, removed:Lcom/android/server/WifiService$Multicaster;
    if-eqz v1, :cond_d

    .line 2733
    invoke-virtual {v1}, Lcom/android/server/WifiService$Multicaster;->unlinkDeathRecipient()V

    .line 2735
    :cond_d
    iget-object v2, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_18

    .line 2736
    invoke-static {}, Landroid/net/wifi/WifiNative;->startPacketFiltering()Z

    .line 2739
    :cond_18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 2741
    .local v0, ident:Ljava/lang/Long;
    :try_start_20
    iget-object v2, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v2, p2}, Lcom/android/internal/app/IBatteryStats;->noteWifiMulticastDisabled(I)V
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_2d
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_25} :catch_36

    .line 2744
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_29
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2746
    return-void

    .line 2744
    :catchall_2d
    move-exception v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 2742
    :catch_36
    move-exception v2

    .line 2744
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_29
.end method

.method private declared-synchronized removeNetworkIfHidden(I)V
    .registers 3
    .parameter "netId"

    .prologue
    .line 412
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->isHiddenNetwork(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 413
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->removeHiddenNetwork(I)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 415
    :cond_a
    monitor-exit p0

    return-void

    .line 412
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized resetHiddenNetworksState()V
    .registers 2

    .prologue
    .line 350
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput v0, p0, Lcom/android/server/WifiService;->mNumHiddenNetworkPresent:I

    .line 351
    iget-object v0, p0, Lcom/android/server/WifiService;->mIsHiddenNetworkPresent:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    .line 352
    monitor-exit p0

    return-void

    .line 350
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private sendEnableMessage(ZZI)V
    .registers 9
    .parameter "enable"
    .parameter "persist"
    .parameter "uid"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2172
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    if-eqz p1, :cond_12

    move v2, v3

    :goto_7
    if-eqz p2, :cond_a

    move v3, v4

    :cond_a
    invoke-static {v1, v2, v3, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 2175
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2176
    return-void

    .end local v0           #msg:Landroid/os/Message;
    :cond_12
    move v2, v4

    .line 2172
    goto :goto_7
.end method

.method private sendStartMessage(Z)V
    .registers 6
    .parameter "scanOnlyMode"

    .prologue
    const/4 v3, 0x0

    .line 2179
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    const/4 v1, 0x3

    if-eqz p1, :cond_f

    const/4 v2, 0x1

    :goto_7
    invoke-static {v0, v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2180
    return-void

    :cond_f
    move v2, v3

    .line 2179
    goto :goto_7
.end method

.method private setWifiEnabledBlocking(ZZI)Z
    .registers 16
    .parameter "enable"
    .parameter "persist"
    .parameter "uid"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x4

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v7, "WifiService"

    .line 742
    if-eqz p1, :cond_3d

    move v2, v11

    .line 752
    .local v2, eventualWifiState:I
    :goto_9
    const-string v5, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setWifiEnabledBlocking : mWifiState "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/WifiService;->mWifiState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", enable "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", eventualWifiState "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    iget v5, p0, Lcom/android/server/WifiService;->mWifiState:I

    if-ne v5, v2, :cond_3f

    move v5, v9

    .line 900
    :goto_3c
    return v5

    .end local v2           #eventualWifiState:I
    :cond_3d
    move v2, v9

    .line 742
    goto :goto_9

    .line 757
    .restart local v2       #eventualWifiState:I
    :cond_3f
    if-eqz p1, :cond_49

    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneModeOn()Z

    move-result v5

    if-eqz v5, :cond_49

    move v5, v8

    .line 758
    goto :goto_3c

    .line 762
    :cond_49
    if-eqz p1, :cond_f8

    .line 763
    const/4 v5, 0x2

    invoke-direct {p0, v5, p3}, Lcom/android/server/WifiService;->setWifiEnabledState(II)V

    .line 772
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    .line 774
    .local v0, CountryStr:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a0

    .line 775
    const-string v5, "US"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_69

    const-string v5, "CA"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_94

    .line 776
    :cond_69
    const/4 v4, 0x0

    .line 782
    .local v4, wlan_country:I
    :goto_6a
    const-string v5, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setWifiEnabledBlocking : Country code is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    :goto_82
    invoke-static {v4}, Landroid/net/wifi/WifiNative;->loadDriver(I)Z

    move-result v5

    if-nez v5, :cond_a9

    .line 795
    const-string v5, "WifiService"

    const-string v5, "Failed to load Wi-Fi driver."

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    invoke-direct {p0, v10, p3}, Lcom/android/server/WifiService;->setWifiEnabledState(II)V

    move v5, v8

    .line 798
    goto :goto_3c

    .line 777
    .end local v4           #wlan_country:I
    :cond_94
    const-string v5, "JP"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9e

    .line 778
    const/4 v4, 0x2

    .restart local v4       #wlan_country:I
    goto :goto_6a

    .line 780
    .end local v4           #wlan_country:I
    :cond_9e
    const/4 v4, 0x1

    .restart local v4       #wlan_country:I
    goto :goto_6a

    .line 785
    .end local v4           #wlan_country:I
    :cond_a0
    const-string v5, "WifiService"

    const-string v5, "setWifiEnabledBlocking : Country code is NULL"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    const/4 v4, 0x1

    .restart local v4       #wlan_country:I
    goto :goto_82

    .line 802
    :cond_a9
    const-string v5, "WifiService"

    const-string v5, "setWifiEnabledBlocking : succeed to load wifi driver"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    const-wide/16 v5, 0x3e8

    :try_start_b2
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_b5
    .catch Ljava/lang/InterruptedException; {:try_start_b2 .. :try_end_b5} :catch_cb

    .line 815
    :goto_b5
    invoke-static {}, Landroid/net/wifi/WifiNative;->startSupplicant()Z

    move-result v5

    if-nez v5, :cond_d4

    .line 816
    invoke-static {}, Landroid/net/wifi/WifiNative;->unloadDriver()Z

    .line 819
    const-string v5, "WifiService"

    const-string v5, "Failed to start supplicant daemon."

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    invoke-direct {p0, v10, p3}, Lcom/android/server/WifiService;->setWifiEnabledState(II)V

    move v5, v8

    .line 822
    goto/16 :goto_3c

    .line 810
    :catch_cb
    move-exception v1

    .line 811
    .local v1, e:Ljava/lang/InterruptedException;
    const-string v5, "WifiService"

    const-string v5, "Interrupted while pausing before supplicant run"

    invoke-static {v7, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b5

    .line 836
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_d4
    const-string v5, "WifiService"

    const-string v5, "setWifiEnabledBlocking : succeed to load supplicant"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    invoke-direct {p0}, Lcom/android/server/WifiService;->registerForBroadcasts()V

    .line 839
    iget-object v5, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v5}, Landroid/net/wifi/WifiStateTracker;->startEventLoop()V

    .line 886
    .end local v0           #CountryStr:Ljava/lang/String;
    .end local v4           #wlan_country:I
    :cond_e3
    if-eqz p2, :cond_e8

    .line 887
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->persistWifiEnabled(Z)V

    .line 889
    :cond_e8
    invoke-direct {p0, v2, p3}, Lcom/android/server/WifiService;->setWifiEnabledState(II)V

    .line 895
    if-eqz p1, :cond_f5

    .line 896
    iget-object v5, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v5}, Landroid/net/wifi/WifiStateTracker;->setNumAllowedChannels()Z

    .line 897
    invoke-direct {p0}, Lcom/android/server/WifiService;->initializeHiddenNetworksState()V

    :cond_f5
    move v5, v9

    .line 900
    goto/16 :goto_3c

    .line 840
    :cond_f8
    iget v5, p0, Lcom/android/server/WifiService;->mWifiState:I

    if-ne v5, v11, :cond_13d

    .line 841
    invoke-direct {p0, v8, p3}, Lcom/android/server/WifiService;->setWifiEnabledState(II)V

    .line 843
    iget-object v5, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/WifiService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 845
    iget-object v5, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v5, v8, v8, v8, v8}, Landroid/net/wifi/WifiStateTracker;->setNotificationVisible(ZIZI)V

    .line 847
    const/4 v3, 0x0

    .line 848
    .local v3, failedToStopSupplicantOrUnloadDriver:Z
    invoke-static {}, Landroid/net/wifi/WifiNative;->stopSupplicant()Z

    move-result v5

    if-nez v5, :cond_11d

    .line 851
    const-string v5, "WifiService"

    const-string v5, "Failed to stop supplicant daemon."

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    invoke-direct {p0, v10, p3}, Lcom/android/server/WifiService;->setWifiEnabledState(II)V

    .line 854
    const/4 v3, 0x1

    .line 858
    :cond_11d
    iget-object v5, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v5}, Landroid/net/wifi/WifiStateTracker;->resetInterface()V

    .line 860
    invoke-static {}, Landroid/net/wifi/WifiNative;->unloadDriver()Z

    move-result v5

    if-nez v5, :cond_135

    .line 863
    const-string v5, "WifiService"

    const-string v5, "Failed to unload Wi-Fi driver."

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    if-nez v3, :cond_135

    .line 866
    invoke-direct {p0, v10, p3}, Lcom/android/server/WifiService;->setWifiEnabledState(II)V

    .line 867
    const/4 v3, 0x1

    .line 873
    :cond_135
    invoke-direct {p0}, Lcom/android/server/WifiService;->releaseWiFiStopWakeLock()V

    .line 876
    if-eqz v3, :cond_e3

    move v5, v8

    .line 877
    goto/16 :goto_3c

    .line 880
    .end local v3           #failedToStopSupplicantOrUnloadDriver:Z
    :cond_13d
    const-string v5, "WifiService"

    const-string v5, "Trying to disable wifi again"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v9

    .line 881
    goto/16 :goto_3c
.end method

.method private setWifiEnabledState(II)V
    .registers 8
    .parameter "wifiState"
    .parameter "uid"

    .prologue
    .line 904
    iget v3, p0, Lcom/android/server/WifiService;->mWifiState:I

    .line 906
    .local v3, previousWifiState:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 908
    .local v0, ident:J
    const/4 v4, 0x3

    if-ne p1, v4, :cond_2f

    .line 909
    :try_start_9
    iget-object v4, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v4, p2}, Lcom/android/internal/app/IBatteryStats;->noteWifiOn(I)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_3a
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_38

    .line 915
    :cond_e
    :goto_e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 919
    iput p1, p0, Lcom/android/server/WifiService;->mWifiState:I

    .line 922
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 923
    .local v2, intent:Landroid/content/Intent;
    const/high16 v4, 0x2000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 924
    const-string v4, "wifi_state"

    invoke-virtual {v2, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 925
    const-string v4, "previous_wifi_state"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 926
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 927
    return-void

    .line 910
    .end local v2           #intent:Landroid/content/Intent;
    :cond_2f
    const/4 v4, 0x1

    if-ne p1, v4, :cond_e

    .line 911
    :try_start_32
    iget-object v4, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v4, p2}, Lcom/android/internal/app/IBatteryStats;->noteWifiOff(I)V
    :try_end_37
    .catchall {:try_start_32 .. :try_end_37} :catchall_3a
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_37} :catch_38

    goto :goto_e

    .line 913
    :catch_38
    move-exception v4

    goto :goto_e

    .line 915
    :catchall_3a
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private static stateName(I)Ljava/lang/String;
    .registers 2
    .parameter "wifiState"

    .prologue
    .line 2474
    packed-switch p0, :pswitch_data_16

    .line 2486
    const-string v0, "[invalid state]"

    :goto_5
    return-object v0

    .line 2476
    :pswitch_6
    const-string v0, "disabling"

    goto :goto_5

    .line 2478
    :pswitch_9
    const-string v0, "disabled"

    goto :goto_5

    .line 2480
    :pswitch_c
    const-string v0, "enabling"

    goto :goto_5

    .line 2482
    :pswitch_f
    const-string v0, "enabled"

    goto :goto_5

    .line 2484
    :pswitch_12
    const-string v0, "unknown state"

    goto :goto_5

    .line 2474
    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_12
    .end packed-switch
.end method

.method private declared-synchronized updateNetworkIfHidden(IZ)V
    .registers 4
    .parameter "netId"
    .parameter "present"

    .prologue
    .line 374
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->isHiddenNetwork(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 375
    invoke-direct {p0, p1, p2}, Lcom/android/server/WifiService;->addOrUpdateHiddenNetwork(IZ)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 377
    :cond_a
    monitor-exit p0

    return-void

    .line 374
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateWifiState()V
    .registers 15

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 2183
    invoke-direct {p0}, Lcom/android/server/WifiService;->getPersistedWifiEnabled()Z

    move-result v4

    .line 2184
    .local v4, wifiEnabled:Z
    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneModeOn()Z

    move-result v0

    .line 2185
    .local v0, airplaneMode:Z
    iget-object v7, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    invoke-static {v7}, Lcom/android/server/WifiService$LockList;->access$1600(Lcom/android/server/WifiService$LockList;)Z

    move-result v1

    .line 2187
    .local v1, lockHeld:Z
    if-eqz v4, :cond_56

    if-nez v0, :cond_56

    move v5, v12

    .line 2188
    .local v5, wifiShouldBeEnabled:Z
    :goto_16
    iget-boolean v7, p0, Lcom/android/server/WifiService;->mDeviceIdle:Z

    if-eqz v7, :cond_1c

    if-eqz v1, :cond_58

    :cond_1c
    move v6, v12

    .line 2189
    .local v6, wifiShouldBeStarted:Z
    :goto_1d
    iget-boolean v7, p0, Lcom/android/server/WifiService;->mDeviceIdle:Z

    if-eqz v7, :cond_5a

    if-eqz v1, :cond_5a

    .line 2190
    iget-object v7, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    invoke-static {v7}, Lcom/android/server/WifiService$LockList;->access$1700(Lcom/android/server/WifiService$LockList;)I

    move-result v2

    .line 2197
    .local v2, strongestLockMode:I
    :goto_29
    const-string v7, "WifiService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateWifiState: wifiShouldBeEnabled "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", wifiShouldBeStarted "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2199
    iget-object v7, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    monitor-enter v7

    .line 2200
    :try_start_4e
    iget v8, p0, Lcom/android/server/WifiService;->mWifiState:I

    if-ne v8, v13, :cond_5c

    if-nez v0, :cond_5c

    .line 2201
    monitor-exit v7

    .line 2239
    :goto_55
    return-void

    .end local v2           #strongestLockMode:I
    .end local v5           #wifiShouldBeEnabled:Z
    .end local v6           #wifiShouldBeStarted:Z
    :cond_56
    move v5, v11

    .line 2187
    goto :goto_16

    .restart local v5       #wifiShouldBeEnabled:Z
    :cond_58
    move v6, v11

    .line 2188
    goto :goto_1d

    .line 2192
    .restart local v6       #wifiShouldBeStarted:Z
    :cond_5a
    const/4 v2, 0x1

    .restart local v2       #strongestLockMode:I
    goto :goto_29

    .line 2203
    :cond_5c
    if-eqz v5, :cond_a2

    .line 2204
    if-eqz v6, :cond_7e

    .line 2205
    sget-object v8, Lcom/android/server/WifiService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2206
    const/4 v8, 0x1

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/server/WifiService;->mLastEnableUid:I

    invoke-direct {p0, v8, v9, v10}, Lcom/android/server/WifiService;->sendEnableMessage(ZZI)V

    .line 2207
    sget-object v8, Lcom/android/server/WifiService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2208
    if-ne v2, v13, :cond_7c

    move v8, v12

    :goto_74
    invoke-direct {p0, v8}, Lcom/android/server/WifiService;->sendStartMessage(Z)V

    .line 2238
    :goto_77
    monitor-exit v7

    goto :goto_55

    :catchall_79
    move-exception v8

    monitor-exit v7
    :try_end_7b
    .catchall {:try_start_4e .. :try_end_7b} :catchall_79

    throw v8

    :cond_7c
    move v8, v11

    .line 2208
    goto :goto_74

    .line 2210
    :cond_7e
    :try_start_7e
    iget-object v8, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "wifi_mobile_data_transition_wakelock_timeout_ms"

    const/16 v10, 0x1f40

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 2224
    .local v3, wakeLockTimeout:I
    sget-object v8, Lcom/android/server/WifiService;->sDriverStopWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2225
    iget-object v8, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/android/server/WifiService$WifiHandler;->sendEmptyMessage(I)Z

    .line 2226
    iget-object v8, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    const/4 v9, 0x4

    int-to-long v10, v3

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/server/WifiService$WifiHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2230
    invoke-direct {p0}, Lcom/android/server/WifiService;->releaseWiFiStopWakeLock()V

    goto :goto_77

    .line 2235
    .end local v3           #wakeLockTimeout:I
    :cond_a2
    sget-object v8, Lcom/android/server/WifiService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2236
    const/4 v8, 0x0

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/server/WifiService;->mLastEnableUid:I

    invoke-direct {p0, v8, v9, v10}, Lcom/android/server/WifiService;->sendEnableMessage(ZZI)V
    :try_end_ae
    .catchall {:try_start_7e .. :try_end_ae} :catchall_79

    goto :goto_77
.end method


# virtual methods
.method public Channel_HiddenMenu(I)Z
    .registers 4
    .parameter "Channel"

    .prologue
    const-string v1, "WifiService"

    .line 683
    iget-object v0, p0, Lcom/android/server/WifiService;->wifiNative:Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;

    invoke-static {p1}, Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;->Channel(I)Z

    move-result v0

    if-nez v0, :cond_13

    .line 684
    const-string v0, "WifiService"

    const-string v0, "[dongp.kim] [Channel] Failed to call RxStart."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    const/4 v0, 0x0

    .line 688
    :goto_12
    return v0

    .line 687
    :cond_13
    const-string v0, "WifiService"

    const-string v0, "[dongp.kim][Channel] called."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    const/4 v0, 0x1

    goto :goto_12
.end method

.method public CloseDUT_HiddenMenu(Z)Z
    .registers 4
    .parameter "enable"

    .prologue
    const-string v1, "WifiService"

    .line 602
    iget-object v0, p0, Lcom/android/server/WifiService;->wifiNative:Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;

    invoke-static {}, Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;->CloseDUT()Z

    move-result v0

    if-nez v0, :cond_13

    .line 603
    const-string v0, "WifiService"

    const-string v0, "[dongp.kim] [LGE_RFT_CloseDUT] Failed to load Wi-Fi driver."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    const/4 v0, 0x0

    .line 607
    :goto_12
    return v0

    .line 606
    :cond_13
    const-string v0, "WifiService"

    const-string v0, "[dongp.kim][setWifiEnabled_HiddenMenu][WifiServic.java] is called."

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    const/4 v0, 0x1

    goto :goto_12
.end method

.method public FRError_HiddenMenu(Z)I
    .registers 3
    .parameter "enable"

    .prologue
    .line 719
    iget-object v0, p0, Lcom/android/server/WifiService;->wifiNative:Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;

    invoke-static {}, Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;->FRError()I

    move-result v0

    return v0
.end method

.method public FRGood_HiddenMenu(Z)I
    .registers 3
    .parameter "enable"

    .prologue
    .line 723
    iget-object v0, p0, Lcom/android/server/WifiService;->wifiNative:Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;

    invoke-static {}, Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;->FRGood()I

    move-result v0

    return v0
.end method

.method public OpenDUT_HiddenMenu(Z)Z
    .registers 4
    .parameter "enable"

    .prologue
    const-string v1, "WifiService"

    .line 593
    iget-object v0, p0, Lcom/android/server/WifiService;->wifiNative:Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;

    invoke-static {}, Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;->OpenDUT()Z

    move-result v0

    if-nez v0, :cond_13

    .line 594
    const-string v0, "WifiService"

    const-string v0, "[dongp.kim] [LGE_RFT_OpenDUT] Failed to load Wi-Fi driver."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    const/4 v0, 0x0

    .line 598
    :goto_12
    return v0

    .line 597
    :cond_13
    const-string v0, "WifiService"

    const-string v0, "[dongp.kim][setWifiEnabled_HiddenMenu][WifiServic.java] is called."

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    const/4 v0, 0x1

    goto :goto_12
.end method

.method public RSSI_HiddenMenu(Z)I
    .registers 3
    .parameter "enable"

    .prologue
    .line 727
    iget-object v0, p0, Lcom/android/server/WifiService;->wifiNative:Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;

    invoke-static {}, Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;->RSSI()I

    move-result v0

    return v0
.end method

.method public RxStart_HiddenMenu(Z)Z
    .registers 4
    .parameter "enable"

    .prologue
    const-string v1, "WifiService"

    .line 692
    iget-object v0, p0, Lcom/android/server/WifiService;->wifiNative:Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;

    invoke-static {}, Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;->RxStart()Z

    move-result v0

    if-nez v0, :cond_13

    .line 693
    const-string v0, "WifiService"

    const-string v0, "[dongp.kim] [RxStart] Failed to call RxStart."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    const/4 v0, 0x0

    .line 697
    :goto_12
    return v0

    .line 696
    :cond_13
    const-string v0, "WifiService"

    const-string v0, "[dongp.kim][RxStart()] called."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    const/4 v0, 0x1

    goto :goto_12
.end method

.method public RxStop_HiddenMenu(Z)Z
    .registers 4
    .parameter "enable"

    .prologue
    const-string v1, "WifiService"

    .line 701
    iget-object v0, p0, Lcom/android/server/WifiService;->wifiNative:Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;

    invoke-static {}, Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;->RxStop()Z

    move-result v0

    if-nez v0, :cond_13

    .line 702
    const-string v0, "WifiService"

    const-string v0, "[dongp.kim] [RxStop] Failed to call RxStop"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    const/4 v0, 0x0

    .line 706
    :goto_12
    return v0

    .line 705
    :cond_13
    const-string v0, "WifiService"

    const-string v0, "[dongp.kim][RxStop()] called."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    const/4 v0, 0x1

    goto :goto_12
.end method

.method public SetPreamble_HiddenMenu(Ljava/lang/String;)Z
    .registers 4
    .parameter "Preamble"

    .prologue
    const-string v1, "WifiService"

    .line 629
    iget-object v0, p0, Lcom/android/server/WifiService;->wifiNative:Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;

    invoke-static {p1}, Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;->SetPreamble(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 630
    const-string v0, "WifiService"

    const-string v0, "[dongp.kim] [LGE_RFT_SetPreamble] Failed to load Wi-Fi driver."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    const/4 v0, 0x0

    .line 634
    :goto_12
    return v0

    .line 633
    :cond_13
    const-string v0, "WifiService"

    const-string v0, "[dongp.kim][setWifiEnabled_SetPreamble][WifiService.java] is called."

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    const/4 v0, 0x1

    goto :goto_12
.end method

.method public TxBurstFrames_HiddenMenu(I)Z
    .registers 4
    .parameter "FramNumbers"

    .prologue
    const-string v1, "WifiService"

    .line 665
    iget-object v0, p0, Lcom/android/server/WifiService;->wifiNative:Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;

    invoke-static {p1}, Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;->TxBurstFrames(I)Z

    move-result v0

    if-nez v0, :cond_13

    .line 666
    const-string v0, "WifiService"

    const-string v0, "[dongp.kim] [LGE_RFT_TxBurstFrames] Failed to load Wi-Fi driver."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    const/4 v0, 0x0

    .line 670
    :goto_12
    return v0

    .line 669
    :cond_13
    const-string v0, "WifiService"

    const-string v0, "[dongp.kim][LGE_RFT_TxBurstFrames][WifiService.java] is called."

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    const/4 v0, 0x1

    goto :goto_12
.end method

.method public TxBurstInterval_HiddenMenu(I)Z
    .registers 4
    .parameter "SIFS"

    .prologue
    const-string v1, "WifiService"

    .line 647
    iget-object v0, p0, Lcom/android/server/WifiService;->wifiNative:Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;

    invoke-static {p1}, Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;->TxBurstInterval(I)Z

    move-result v0

    if-nez v0, :cond_13

    .line 648
    const-string v0, "WifiService"

    const-string v0, "[dongp.kim] [LGE_RFT_TxBurstInterval] Failed to load Wi-Fi driver."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    const/4 v0, 0x0

    .line 652
    :goto_12
    return v0

    .line 651
    :cond_13
    const-string v0, "WifiService"

    const-string v0, "[dongp.kim][LGE_RFT_TxBurstInterval][WifiService.java] is called."

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    const/4 v0, 0x1

    goto :goto_12
.end method

.method public TxDataRate_HiddenMenu(Ljava/lang/String;)Z
    .registers 4
    .parameter "value"

    .prologue
    const-string v1, "WifiService"

    .line 620
    iget-object v0, p0, Lcom/android/server/WifiService;->wifiNative:Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;

    invoke-static {p1}, Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;->TxDataRate(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 621
    const-string v0, "WifiService"

    const-string v0, "[dongp.kim] [LGE_RFT_TxDataRate] Failed to load Wi-Fi driver."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    const/4 v0, 0x0

    .line 625
    :goto_12
    return v0

    .line 624
    :cond_13
    const-string v0, "WifiService"

    const-string v0, "[dongp.kim][setWifiEnabled_HiddenMen][WifiService.java] is called."

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    const/4 v0, 0x1

    goto :goto_12
.end method

.method public TxDestAddress_HiddenMenu(Ljava/lang/String;)Z
    .registers 4
    .parameter "daddr"

    .prologue
    const-string v1, "WifiService"

    .line 674
    iget-object v0, p0, Lcom/android/server/WifiService;->wifiNative:Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;

    invoke-static {p1}, Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;->TxDestAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 675
    const-string v0, "WifiService"

    const-string v0, "[dongp.kim] [LGE_RFT_TxDestAddr] Failed to load Wi-Fi driver."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    const/4 v0, 0x0

    .line 679
    :goto_12
    return v0

    .line 678
    :cond_13
    const-string v0, "WifiService"

    const-string v0, "[dongp.kim][setWifiEnabled_HiddenMen][WifiService.java] is called."

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    const/4 v0, 0x1

    goto :goto_12
.end method

.method public TxGain_HiddenMenu(I)Z
    .registers 4
    .parameter "TxGain"

    .prologue
    const-string v1, "WifiService"

    .line 638
    iget-object v0, p0, Lcom/android/server/WifiService;->wifiNative:Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;

    invoke-static {p1}, Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;->TxGain(I)Z

    move-result v0

    if-nez v0, :cond_13

    .line 639
    const-string v0, "WifiService"

    const-string v0, "[dongp.kim] [LGE_RFT_TxGain] Failed to load Wi-Fi driver."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    const/4 v0, 0x0

    .line 643
    :goto_12
    return v0

    .line 642
    :cond_13
    const-string v0, "WifiService"

    const-string v0, "[dongp.kim][setWifiEnabled_HiddenMen][WifiService.java] is called."

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    const/4 v0, 0x1

    goto :goto_12
.end method

.method public TxPayloadLength_HiddenMenu(I)Z
    .registers 4
    .parameter "PayLength"

    .prologue
    const-string v1, "WifiService"

    .line 656
    iget-object v0, p0, Lcom/android/server/WifiService;->wifiNative:Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;

    invoke-static {p1}, Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;->TxPayloadLength(I)Z

    move-result v0

    if-nez v0, :cond_13

    .line 657
    const-string v0, "WifiService"

    const-string v0, "[dongp.kim] [LGE_RFT_TxPayloadLength] Failed to load Wi-Fi driver."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    const/4 v0, 0x0

    .line 661
    :goto_12
    return v0

    .line 660
    :cond_13
    const-string v0, "WifiService"

    const-string v0, "[dongp.kim][LGE_RFT_TxPayloadLength][WifiService.java] is called."

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    const/4 v0, 0x1

    goto :goto_12
.end method

.method public TxStart_HiddenMenu(Z)Z
    .registers 4
    .parameter "enable"

    .prologue
    const-string v1, "WifiService"

    .line 611
    iget-object v0, p0, Lcom/android/server/WifiService;->wifiNative:Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;

    invoke-static {}, Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;->TxStart()Z

    move-result v0

    if-nez v0, :cond_13

    .line 612
    const-string v0, "WifiService"

    const-string v0, "[dongp.kim] [LGE_RFT_TxStart] Failed to load Wi-Fi driver."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    const/4 v0, 0x0

    .line 616
    :goto_12
    return v0

    .line 615
    :cond_13
    const-string v0, "WifiService"

    const-string v0, "[dongp.kim][setWifiEnabled_HiddenMen][WifiService.java] is called."

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    const/4 v0, 0x1

    goto :goto_12
.end method

.method public TxStop_HiddenMenu(Z)Z
    .registers 4
    .parameter "enable"

    .prologue
    const-string v1, "WifiService"

    .line 710
    iget-object v0, p0, Lcom/android/server/WifiService;->wifiNative:Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;

    invoke-static {}, Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;->TxStop()Z

    move-result v0

    if-nez v0, :cond_13

    .line 711
    const-string v0, "WifiService"

    const-string v0, "[dongp.kim] [TxStop] Failed to call TxStop"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    const/4 v0, 0x0

    .line 715
    :goto_12
    return v0

    .line 714
    :cond_13
    const-string v0, "WifiService"

    const-string v0, "[dongp.kim][TxStop()] called."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    const/4 v0, 0x1

    goto :goto_12
.end method

.method public acquireMulticastLock(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 8
    .parameter "binder"
    .parameter "tag"

    .prologue
    .line 2691
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceMulticastChangePermission()V

    .line 2693
    iget-object v2, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    monitor-enter v2

    .line 2694
    :try_start_6
    iget v3, p0, Lcom/android/server/WifiService;->mMulticastEnabled:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/WifiService;->mMulticastEnabled:I

    .line 2695
    iget-object v3, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    new-instance v4, Lcom/android/server/WifiService$Multicaster;

    invoke-direct {v4, p0, p2, p1}, Lcom/android/server/WifiService$Multicaster;-><init>(Lcom/android/server/WifiService;Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2700
    invoke-static {}, Landroid/net/wifi/WifiNative;->stopPacketFiltering()Z

    .line 2701
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_33

    .line 2703
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2704
    .local v1, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 2706
    .local v0, ident:Ljava/lang/Long;
    :try_start_26
    iget-object v2, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v2, v1}, Lcom/android/internal/app/IBatteryStats;->noteWifiMulticastEnabled(I)V
    :try_end_2b
    .catchall {:try_start_26 .. :try_end_2b} :catchall_36
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2b} :catch_3f

    .line 2709
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_2f
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2711
    return-void

    .line 2701
    .end local v0           #ident:Ljava/lang/Long;
    .end local v1           #uid:I
    :catchall_33
    move-exception v3

    :try_start_34
    monitor-exit v2
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v3

    .line 2709
    .restart local v0       #ident:Ljava/lang/Long;
    .restart local v1       #uid:I
    :catchall_36
    move-exception v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 2707
    :catch_3f
    move-exception v2

    .line 2709
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_2f
.end method

.method public acquireWifiLock(Landroid/os/IBinder;ILjava/lang/String;)Z
    .registers 8
    .parameter "binder"
    .parameter "lockMode"
    .parameter "tag"

    .prologue
    .line 2571
    iget-object v1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WAKE_LOCK"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2572
    const/4 v1, 0x1

    if-eq p2, v1, :cond_10

    const/4 v1, 0x2

    if-eq p2, v1, :cond_10

    .line 2573
    const/4 v1, 0x0

    .line 2577
    :goto_f
    return v1

    .line 2575
    :cond_10
    new-instance v0, Lcom/android/server/WifiService$WifiLock;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/android/server/WifiService$WifiLock;-><init>(Lcom/android/server/WifiService;ILjava/lang/String;Landroid/os/IBinder;)V

    .line 2576
    .local v0, wifiLock:Lcom/android/server/WifiService$WifiLock;
    iget-object v1, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    monitor-enter v1

    .line 2577
    :try_start_18
    invoke-direct {p0, v0}, Lcom/android/server/WifiService;->acquireWifiLockLocked(Lcom/android/server/WifiService$WifiLock;)Z

    move-result v2

    monitor-exit v1

    move v1, v2

    goto :goto_f

    .line 2578
    :catchall_1f
    move-exception v2

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_1f

    throw v2
.end method

.method public declared-synchronized addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .registers 21
    .parameter "config"

    .prologue
    .line 1233
    monitor-enter p0

    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1239
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move v14, v0

    .line 1240
    .local v14, netId:I
    const/16 v17, -0x1

    move v0, v14

    move/from16 v1, v17

    if-ne v0, v1, :cond_20

    const/16 v17, 0x1

    move/from16 v15, v17

    .line 1244
    .local v15, newNetwork:Z
    :goto_14
    if-eqz v15, :cond_84

    .line 1245
    invoke-static {}, Landroid/net/wifi/WifiNative;->addNetworkCommand()I
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_bf

    move-result v14

    .line 1246
    if-gez v14, :cond_25

    .line 1250
    const/16 v17, -0x1

    .line 1584
    :goto_1e
    monitor-exit p0

    return v17

    .line 1240
    .end local v15           #newNetwork:Z
    :cond_20
    const/16 v17, 0x0

    move/from16 v15, v17

    goto :goto_14

    .line 1252
    .restart local v15       #newNetwork:Z
    :cond_25
    const/4 v10, 0x1

    .line 1264
    .local v10, doReconfig:Z
    :goto_26
    :try_start_26
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WifiService;->mNeedReconfig:Z

    move/from16 v17, v0

    if-nez v17, :cond_30

    if-eqz v10, :cond_ae

    :cond_30
    const/16 v17, 0x1

    :goto_32
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WifiService;->mNeedReconfig:Z

    .line 1269
    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    move/from16 v17, v0

    if-eqz v17, :cond_58

    .line 1271
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_b1

    const/16 v17, 0x1

    :goto_50
    move-object/from16 v0, p0

    move v1, v14

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/server/WifiService;->addOrUpdateHiddenNetwork(IZ)V

    .line 1295
    :cond_58
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v17, v0
    :try_end_5e
    .catchall {:try_start_26 .. :try_end_5e} :catchall_bf

    if-eqz v17, :cond_c2

    .line 1296
    const/4 v8, 0x0

    .line 1299
    .local v8, buffer:[B
    :try_start_61
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "KSC5601"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_6c
    .catchall {:try_start_61 .. :try_end_6c} :catchall_bf
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_61 .. :try_end_6c} :catch_b4

    move-result-object v8

    .line 1304
    :goto_6d
    :try_start_6d
    const-string v17, "ssid"

    move v0, v14

    move-object/from16 v1, v17

    move-object v2, v8

    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand_byte(ILjava/lang/String;[B)Z

    move-result v17

    if-nez v17, :cond_c2

    .line 1576
    .end local v8           #buffer:[B
    :cond_79
    if-eqz v15, :cond_81

    .line 1577
    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/android/server/WifiService;->removeNetwork(I)Z

    .line 1584
    :cond_81
    const/16 v17, -0x1

    goto :goto_1e

    .line 1254
    .end local v10           #doReconfig:Z
    :cond_84
    const-string v17, "priority"

    move v0, v14

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1255
    .local v16, priorityVal:Ljava/lang/String;
    const/4 v9, -0x1

    .line 1256
    .local v9, currentPriority:I
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_91
    .catchall {:try_start_6d .. :try_end_91} :catchall_bf

    move-result v17

    if-nez v17, :cond_98

    .line 1258
    :try_start_94
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_97
    .catchall {:try_start_94 .. :try_end_97} :catchall_bf
    .catch Ljava/lang/NumberFormatException; {:try_start_94 .. :try_end_97} :catch_357

    move-result v9

    .line 1262
    :cond_98
    :goto_98
    :try_start_98
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v17, v0

    move v0, v9

    move/from16 v1, v17

    if-eq v0, v1, :cond_a9

    const/16 v17, 0x1

    move/from16 v10, v17

    .restart local v10       #doReconfig:Z
    :goto_a7
    goto/16 :goto_26

    .end local v10           #doReconfig:Z
    :cond_a9
    const/16 v17, 0x0

    move/from16 v10, v17

    goto :goto_a7

    .line 1264
    .end local v9           #currentPriority:I
    .end local v16           #priorityVal:Ljava/lang/String;
    .restart local v10       #doReconfig:Z
    :cond_ae
    const/16 v17, 0x0

    goto :goto_32

    .line 1271
    :cond_b1
    const/16 v17, 0x0

    goto :goto_50

    .line 1300
    .restart local v8       #buffer:[B
    :catch_b4
    move-exception v17

    move-object/from16 v11, v17

    .line 1301
    .local v11, e:Ljava/io/UnsupportedEncodingException;
    const-string v17, "WifiService"

    const-string v18, "KSC5601 Error in addOrUpdateNetwork"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_be
    .catchall {:try_start_98 .. :try_end_be} :catchall_bf

    goto :goto_6d

    .line 1233
    .end local v8           #buffer:[B
    .end local v10           #doReconfig:Z
    .end local v11           #e:Ljava/io/UnsupportedEncodingException;
    .end local v14           #netId:I
    .end local v15           #newNetwork:Z
    :catchall_bf
    move-exception v17

    monitor-exit p0

    throw v17

    .line 1316
    .restart local v10       #doReconfig:Z
    .restart local v14       #netId:I
    .restart local v15       #newNetwork:Z
    :cond_c2
    :try_start_c2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_dd

    const-string v17, "bssid"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    move-object/from16 v18, v0

    move v0, v14

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_79

    .line 1327
    :cond_dd
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v17, v0

    sget-object v18, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    invoke-static/range {v17 .. v18}, Lcom/android/server/WifiService;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1329
    .local v5, allowedKeyManagementString:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/BitSet;->cardinality()I

    move-result v17

    if-eqz v17, :cond_101

    const-string v17, "key_mgmt"

    move v0, v14

    move-object/from16 v1, v17

    move-object v2, v5

    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_79

    .line 1341
    :cond_101
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    move-object/from16 v17, v0

    sget-object v18, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    invoke-static/range {v17 .. v18}, Lcom/android/server/WifiService;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1343
    .local v7, allowedProtocolsString:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/BitSet;->cardinality()I

    move-result v17

    if-eqz v17, :cond_125

    const-string v17, "proto"

    move v0, v14

    move-object/from16 v1, v17

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_79

    .line 1355
    :cond_125
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    move-object/from16 v17, v0

    sget-object v18, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    invoke-static/range {v17 .. v18}, Lcom/android/server/WifiService;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1357
    .local v3, allowedAuthAlgorithmsString:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/BitSet;->cardinality()I

    move-result v17

    if-eqz v17, :cond_149

    const-string v17, "auth_alg"

    move v0, v14

    move-object/from16 v1, v17

    move-object v2, v3

    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_79

    .line 1369
    :cond_149
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    move-object/from16 v17, v0

    sget-object v18, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    invoke-static/range {v17 .. v18}, Lcom/android/server/WifiService;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1371
    .local v6, allowedPairwiseCiphersString:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/BitSet;->cardinality()I

    move-result v17

    if-eqz v17, :cond_16d

    const-string v17, "pairwise"

    move v0, v14

    move-object/from16 v1, v17

    move-object v2, v6

    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_79

    .line 1383
    :cond_16d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    move-object/from16 v17, v0

    sget-object v18, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    invoke-static/range {v17 .. v18}, Lcom/android/server/WifiService;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1385
    .local v4, allowedGroupCiphersString:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/BitSet;->cardinality()I

    move-result v17

    if-eqz v17, :cond_191

    const-string v17, "group"

    move v0, v14

    move-object/from16 v1, v17

    move-object v2, v4

    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_79

    .line 1399
    :cond_191
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1ba

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "*"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1ba

    const-string v17, "psk"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v18, v0

    move v0, v14

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_79

    .line 1410
    :cond_1ba
    const/4 v12, 0x0

    .line 1411
    .local v12, hasSetKey:Z
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_209

    .line 1412
    const/4 v13, 0x0

    .local v13, i:I
    :goto_1c4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move v0, v13

    move/from16 v1, v17

    if-ge v0, v1, :cond_209

    .line 1415
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v17, v0

    aget-object v17, v17, v13

    if-eqz v17, :cond_206

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v17, v0

    aget-object v17, v17, v13

    const-string v18, "*"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_206

    .line 1416
    sget-object v17, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    aget-object v17, v17, v13

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v18, v0

    aget-object v18, v18, v13

    move v0, v14

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_79

    .line 1427
    const/4 v12, 0x1

    .line 1412
    :cond_206
    add-int/lit8 v13, v13, 0x1

    goto :goto_1c4

    .line 1432
    .end local v13           #i:I
    :cond_209
    if-eqz v12, :cond_222

    .line 1433
    const-string v17, "wep_tx_keyidx"

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    move v0, v14

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_79

    .line 1446
    :cond_222
    const-string v17, "priority"

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    move v0, v14

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_79

    .line 1457
    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    move/from16 v17, v0

    if-eqz v17, :cond_25c

    const-string v17, "scan_ssid"

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    move/from16 v18, v0

    if-eqz v18, :cond_353

    const/16 v18, 0x1

    :goto_24d
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    move v0, v14

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_79

    .line 1468
    :cond_25c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->eap:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_277

    const-string v17, "eap"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->eap:Ljava/lang/String;

    move-object/from16 v18, v0

    move v0, v14

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_79

    .line 1479
    :cond_277
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->phase2:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_292

    const-string v17, "phase2"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->phase2:Ljava/lang/String;

    move-object/from16 v18, v0

    move v0, v14

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_79

    .line 1490
    :cond_292
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->identity:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2ad

    const-string v17, "identity"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->identity:Ljava/lang/String;

    move-object/from16 v18, v0

    move v0, v14

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_79

    .line 1501
    :cond_2ad
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->anonymousIdentity:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2c8

    const-string v17, "anonymous_identity"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->anonymousIdentity:Ljava/lang/String;

    move-object/from16 v18, v0

    move v0, v14

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_79

    .line 1512
    :cond_2c8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->password:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2e3

    const-string v17, "password"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->password:Ljava/lang/String;

    move-object/from16 v18, v0

    move v0, v14

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_79

    .line 1523
    :cond_2e3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->clientCert:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2fe

    const-string v17, "client_cert"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->clientCert:Ljava/lang/String;

    move-object/from16 v18, v0

    move v0, v14

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_79

    .line 1534
    :cond_2fe
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->caCert:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_319

    const-string v17, "ca_cert"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->caCert:Ljava/lang/String;

    move-object/from16 v18, v0

    move v0, v14

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_79

    .line 1545
    :cond_319
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->privateKey:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_334

    const-string v17, "private_key"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->privateKey:Ljava/lang/String;

    move-object/from16 v18, v0

    move v0, v14

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_79

    .line 1556
    :cond_334
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->privateKeyPasswd:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_34f

    const-string v17, "private_key_passwd"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->privateKeyPasswd:Ljava/lang/String;

    move-object/from16 v18, v0

    move v0, v14

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_34c
    .catchall {:try_start_c2 .. :try_end_34c} :catchall_bf

    move-result v17

    if-eqz v17, :cond_79

    :cond_34f
    move/from16 v17, v14

    .line 1567
    goto/16 :goto_1e

    .line 1457
    :cond_353
    const/16 v18, 0x0

    goto/16 :goto_24d

    .line 1259
    .end local v3           #allowedAuthAlgorithmsString:Ljava/lang/String;
    .end local v4           #allowedGroupCiphersString:Ljava/lang/String;
    .end local v5           #allowedKeyManagementString:Ljava/lang/String;
    .end local v6           #allowedPairwiseCiphersString:Ljava/lang/String;
    .end local v7           #allowedProtocolsString:Ljava/lang/String;
    .end local v10           #doReconfig:Z
    .end local v12           #hasSetKey:Z
    .restart local v9       #currentPriority:I
    .restart local v16       #priorityVal:Ljava/lang/String;
    :catch_357
    move-exception v17

    goto/16 :goto_98
.end method

.method public disableNetwork(I)Z
    .registers 4
    .parameter "netId"

    .prologue
    .line 1675
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1680
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/WifiService;->updateNetworkIfHidden(IZ)V

    .line 1682
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    monitor-enter v0

    .line 1683
    :try_start_a
    invoke-static {p1}, Landroid/net/wifi/WifiNative;->disableNetworkCommand(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1684
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_10

    throw v1
.end method

.method public disconnect()Z
    .registers 3

    .prologue
    .line 964
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 965
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    monitor-enter v0

    .line 966
    :try_start_6
    invoke-static {}, Landroid/net/wifi/WifiNative;->disconnectCommand()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 967
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_c

    throw v1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 14
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    const/4 v7, 0x0

    const-string v9, " scan"

    const-string v8, " full, "

    .line 2434
    iget-object v3, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.DUMP"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_38

    .line 2436
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: can\'t dump WifiService from from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2471
    :goto_37
    return-void

    .line 2441
    :cond_38
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wi-Fi is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/WifiService;->mWifiState:I

    invoke-static {v4}, Lcom/android/server/WifiService;->stateName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2442
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stay-awake conditions: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "stay_on_while_plugged_in"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2445
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2447
    const-string v3, "Internal state:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2448
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2449
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2450
    const-string v3, "Latest scan results:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2451
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v3}, Landroid/net/wifi/WifiStateTracker;->getScanResultsList()Ljava/util/List;

    move-result-object v2

    .line 2452
    .local v2, scanResults:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v2, :cond_de

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_de

    .line 2453
    const-string v3, "  BSSID              Frequency   RSSI  Flags             SSID"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2454
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_a2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_de

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 2455
    .local v1, r:Landroid/net/wifi/ScanResult;
    const-string v3, "  %17s  %9d  %5d  %-16s  %s%n"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    aput-object v5, v4, v7

    const/4 v5, 0x1

    iget v6, v1, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget v6, v1, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-object v6, v1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    iget-object v6, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-nez v6, :cond_db

    const-string v6, ""

    :goto_d5
    aput-object v6, v4, v5

    invoke-virtual {p2, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_a2

    :cond_db
    iget-object v6, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    goto :goto_d5

    .line 2463
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #r:Landroid/net/wifi/ScanResult;
    :cond_de
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2464
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Locks acquired: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/WifiService;->mFullLocksAcquired:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " full, "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/WifiService;->mScanLocksAcquired:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " scan"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2466
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Locks released: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/WifiService;->mFullLocksReleased:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " full, "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/WifiService;->mScanLocksReleased:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " scan"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2468
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2469
    const-string v3, "Locks held:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2470
    iget-object v3, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    invoke-static {v3, p2}, Lcom/android/server/WifiService$LockList;->access$2000(Lcom/android/server/WifiService$LockList;Ljava/io/PrintWriter;)V

    goto/16 :goto_37
.end method

.method public enableNetwork(IZ)Z
    .registers 5
    .parameter "netId"
    .parameter "disableOthers"

    .prologue
    .line 1651
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1656
    monitor-enter p0

    .line 1657
    if-eqz p2, :cond_9

    .line 1658
    :try_start_6
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->markAllHiddenNetworksButOneAsNotPresent(I)V

    .line 1660
    :cond_9
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/WifiService;->updateNetworkIfHidden(IZ)V

    .line 1661
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_17

    .line 1663
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    monitor-enter v0

    .line 1664
    :try_start_11
    invoke-static {p1, p2}, Landroid/net/wifi/WifiNative;->enableNetworkCommand(IZ)Z

    move-result v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_1a

    return v1

    .line 1661
    :catchall_17
    move-exception v0

    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v0

    .line 1665
    :catchall_1a
    move-exception v1

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public getConfiguredNetworks()Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x0

    const/4 v12, -0x1

    const/4 v11, 0x3

    .line 997
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 1009
    const/4 v7, 0x0

    .line 1010
    .local v7, reply_tmp:[B
    const/4 v4, 0x0

    .line 1011
    .local v4, listStr:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    monitor-enter v9

    .line 1012
    :try_start_c
    invoke-static {}, Landroid/net/wifi/WifiNative;->listNetworksCommand()[B

    move-result-object v7

    .line 1013
    monitor-exit v9
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_23

    .line 1014
    if-eqz v7, :cond_1b

    .line 1016
    :try_start_13
    new-instance v5, Ljava/lang/String;

    const-string v9, "KSC5601"

    invoke-direct {v5, v7, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_13 .. :try_end_1a} :catch_26

    .end local v4           #listStr:Ljava/lang/String;
    .local v5, listStr:Ljava/lang/String;
    move-object v4, v5

    .line 1023
    .end local v5           #listStr:Ljava/lang/String;
    .restart local v4       #listStr:Ljava/lang/String;
    :cond_1b
    :goto_1b
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1025
    .local v6, networks:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-nez v4, :cond_30

    .line 1054
    :cond_22
    return-object v6

    .line 1013
    .end local v6           #networks:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :catchall_23
    move-exception v10

    :try_start_24
    monitor-exit v9
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v10

    .line 1017
    :catch_26
    move-exception v9

    move-object v1, v9

    .line 1018
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    const-string v9, "WifiService"

    const-string v10, "KSC5601 Error in getConfiguredNetworks"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 1028
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v6       #networks:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_30
    const-string v9, "\n"

    invoke-virtual {v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1030
    .local v3, lines:[Ljava/lang/String;
    const/4 v2, 0x1

    .local v2, i:I
    :goto_37
    array-length v9, v3

    if-ge v2, v9, :cond_22

    .line 1031
    aget-object v9, v3, v2

    const-string v10, "\t"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1033
    .local v8, result:[Ljava/lang/String;
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 1035
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    const/4 v9, 0x0

    :try_start_48
    aget-object v9, v8, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I
    :try_end_50
    .catch Ljava/lang/NumberFormatException; {:try_start_48 .. :try_end_50} :catch_6c

    .line 1039
    array-length v9, v8

    if-le v9, v11, :cond_80

    .line 1040
    aget-object v9, v8, v11

    const-string v10, "[CURRENT]"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-eq v9, v12, :cond_6f

    .line 1041
    iput v13, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 1048
    :goto_5f
    iget-object v9, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    monitor-enter v9

    .line 1049
    :try_start_62
    invoke-static {v0}, Lcom/android/server/WifiService;->readNetworkVariables(Landroid/net/wifi/WifiConfiguration;)V

    .line 1050
    monitor-exit v9
    :try_end_66
    .catchall {:try_start_62 .. :try_end_66} :catchall_83

    .line 1051
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1030
    :goto_69
    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    .line 1036
    :catch_6c
    move-exception v9

    move-object v1, v9

    .line 1037
    .local v1, e:Ljava/lang/NumberFormatException;
    goto :goto_69

    .line 1042
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :cond_6f
    aget-object v9, v8, v11

    const-string v10, "[DISABLED]"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-eq v9, v12, :cond_7d

    .line 1043
    const/4 v9, 0x1

    iput v9, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto :goto_5f

    .line 1045
    :cond_7d
    iput v14, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto :goto_5f

    .line 1047
    :cond_80
    iput v14, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto :goto_5f

    .line 1050
    :catchall_83
    move-exception v10

    :try_start_84
    monitor-exit v9
    :try_end_85
    .catchall {:try_start_84 .. :try_end_85} :catchall_83

    throw v10
.end method

.method public getConnectionInfo()Landroid/net/wifi/WifiInfo;
    .registers 2

    .prologue
    .line 1692
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 1697
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateTracker;->requestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDhcpInfo()Landroid/net/DhcpInfo;
    .registers 2

    .prologue
    .line 1992
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 1993
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateTracker;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    return-object v0
.end method

.method getNetworkStateTracker()Landroid/net/NetworkStateTracker;
    .registers 2

    .prologue
    .line 506
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    return-object v0
.end method

.method public getNumAllowedChannels()I
    .registers 6

    .prologue
    .line 1959
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 1960
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    monitor-enter v1

    .line 1966
    :try_start_6
    invoke-static {}, Landroid/net/wifi/WifiNative;->getNumAllowedChannelsCommand()I

    move-result v0

    .line 1967
    .local v0, numChannels:I
    if-gez v0, :cond_19

    .line 1968
    iget-object v2, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_num_allowed_channels"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1972
    :cond_19
    monitor-exit v1

    .line 1973
    return v0

    .line 1972
    .end local v0           #numChannels:I
    :catchall_1b
    move-exception v2

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_1b

    throw v2
.end method

.method public getScanResults()Ljava/util/List;
    .registers 14
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
    .line 1706
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 1714
    const/4 v8, 0x0

    .line 1715
    .local v8, reply_tmp:[B
    const/4 v5, 0x0

    .line 1716
    .local v5, reply:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    monitor-enter v11

    .line 1717
    :try_start_8
    invoke-static {}, Landroid/net/wifi/WifiNative;->scanResultsCommand()[B

    move-result-object v8

    .line 1718
    monitor-exit v11
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_1b

    .line 1719
    if-eqz v8, :cond_17

    .line 1721
    :try_start_f
    new-instance v6, Ljava/lang/String;

    const-string v11, "KSC5601"

    invoke-direct {v6, v8, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_16
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_f .. :try_end_16} :catch_1e

    .end local v5           #reply:Ljava/lang/String;
    .local v6, reply:Ljava/lang/String;
    move-object v5, v6

    .line 1728
    .end local v6           #reply:Ljava/lang/String;
    .restart local v5       #reply:Ljava/lang/String;
    :cond_17
    :goto_17
    if-nez v5, :cond_28

    .line 1729
    const/4 v11, 0x0

    .line 1762
    :goto_1a
    return-object v11

    .line 1718
    :catchall_1b
    move-exception v12

    :try_start_1c
    monitor-exit v11
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v12

    .line 1722
    :catch_1e
    move-exception v11

    move-object v0, v11

    .line 1723
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v11, "WifiService"

    const-string v12, "KSC5601 Error in getScanResults"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 1732
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :cond_28
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1734
    .local v9, scanList:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    const/4 v3, 0x0

    .line 1736
    .local v3, lineCount:I
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    .line 1739
    .local v7, replyLen:I
    const/4 v2, 0x0

    .local v2, lineBeg:I
    const/4 v4, 0x0

    .local v4, lineEnd:I
    :goto_34
    if-gt v4, v7, :cond_5c

    .line 1740
    if-eq v4, v7, :cond_40

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0xa

    if-ne v11, v12, :cond_47

    .line 1741
    :cond_40
    add-int/lit8 v3, v3, 0x1

    .line 1745
    const/4 v11, 0x1

    if-ne v3, v11, :cond_4a

    .line 1746
    add-int/lit8 v2, v4, 0x1

    .line 1739
    :cond_47
    :goto_47
    add-int/lit8 v4, v4, 0x1

    goto :goto_34

    .line 1749
    :cond_4a
    if-le v4, v2, :cond_59

    .line 1750
    invoke-virtual {v5, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1751
    .local v1, line:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/server/WifiService;->parseScanResult(Ljava/lang/String;)Landroid/net/wifi/ScanResult;

    move-result-object v10

    .line 1752
    .local v10, scanResult:Landroid/net/wifi/ScanResult;
    if-eqz v10, :cond_59

    .line 1753
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1758
    .end local v1           #line:Ljava/lang/String;
    .end local v10           #scanResult:Landroid/net/wifi/ScanResult;
    :cond_59
    add-int/lit8 v2, v4, 0x1

    goto :goto_47

    .line 1761
    :cond_5c
    iget-object v11, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v11, v9}, Landroid/net/wifi/WifiStateTracker;->setScanResultsList(Ljava/util/List;)V

    move-object v11, v9

    .line 1762
    goto :goto_1a
.end method

.method public getValidChannelCounts()[I
    .registers 2

    .prologue
    .line 1982
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 1983
    sget-object v0, Lcom/android/server/WifiService;->sValidRegulatoryChannelCounts:[I

    return-object v0
.end method

.method public getWifiEnabledState()I
    .registers 2

    .prologue
    .line 955
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 956
    iget v0, p0, Lcom/android/server/WifiService;->mWifiState:I

    return v0
.end method

.method public isMulticastEnabled()Z
    .registers 3

    .prologue
    .line 2749
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 2751
    iget-object v0, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    monitor-enter v0

    .line 2752
    :try_start_6
    iget-object v1, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_11

    const/4 v1, 0x1

    :goto_f
    monitor-exit v0

    return v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_f

    .line 2753
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_13

    throw v1
.end method

.method parseScanFlags(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .registers 5
    .parameter "flags"

    .prologue
    .line 1873
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 1875
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_11

    .line 1876
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1879
    :cond_11
    return-object v0
.end method

.method public pingSupplicant()Z
    .registers 3

    .prologue
    .line 514
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 515
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    monitor-enter v0

    .line 516
    :try_start_6
    invoke-static {}, Landroid/net/wifi/WifiNative;->pingCommand()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 517
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public reassociate()Z
    .registers 3

    .prologue
    .line 986
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 987
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    monitor-enter v0

    .line 988
    :try_start_6
    invoke-static {}, Landroid/net/wifi/WifiNative;->reassociateCommand()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 989
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public reconnect()Z
    .registers 3

    .prologue
    .line 975
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 976
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    monitor-enter v0

    .line 977
    :try_start_6
    invoke-static {}, Landroid/net/wifi/WifiNative;->reconnectCommand()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 978
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public releaseMulticastLock()V
    .registers 7

    .prologue
    .line 2714
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceMulticastChangePermission()V

    .line 2716
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 2717
    .local v3, uid:I
    iget-object v4, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    monitor-enter v4

    .line 2718
    :try_start_a
    iget v5, p0, Lcom/android/server/WifiService;->mMulticastDisabled:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/server/WifiService;->mMulticastDisabled:I

    .line 2719
    iget-object v5, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    .line 2720
    .local v2, size:I
    const/4 v5, 0x1

    sub-int v0, v2, v5

    .local v0, i:I
    :goto_19
    if-ltz v0, :cond_31

    .line 2721
    iget-object v5, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WifiService$Multicaster;

    .line 2722
    .local v1, m:Lcom/android/server/WifiService$Multicaster;
    if-eqz v1, :cond_2e

    invoke-virtual {v1}, Lcom/android/server/WifiService$Multicaster;->getUid()I

    move-result v5

    if-ne v5, v3, :cond_2e

    .line 2723
    invoke-direct {p0, v0, v3}, Lcom/android/server/WifiService;->removeMulticasterLocked(II)V

    .line 2720
    :cond_2e
    add-int/lit8 v0, v0, -0x1

    goto :goto_19

    .line 2726
    .end local v1           #m:Lcom/android/server/WifiService$Multicaster;
    :cond_31
    monitor-exit v4

    .line 2727
    return-void

    .line 2726
    .end local v0           #i:I
    .end local v2           #size:I
    :catchall_33
    move-exception v5

    monitor-exit v4
    :try_end_35
    .catchall {:try_start_a .. :try_end_35} :catchall_33

    throw v5
.end method

.method public releaseWifiLock(Landroid/os/IBinder;)Z
    .registers 5
    .parameter "lock"

    .prologue
    .line 2607
    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WAKE_LOCK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2608
    iget-object v0, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    monitor-enter v0

    .line 2609
    :try_start_b
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->releaseWifiLockLocked(Landroid/os/IBinder;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 2610
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_11

    throw v1
.end method

.method public removeNetwork(I)Z
    .registers 3
    .parameter "netId"

    .prologue
    .line 1633
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1638
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->removeNetworkIfHidden(I)V

    .line 1640
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateTracker;->removeNetwork(I)Z

    move-result v0

    return v0
.end method

.method public saveConfiguration()Z
    .registers 6

    .prologue
    .line 1888
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1889
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    monitor-enter v3

    .line 1890
    :try_start_6
    invoke-static {}, Landroid/net/wifi/WifiNative;->saveConfigCommand()Z

    move-result v2

    .line 1891
    .local v2, result:Z
    if-eqz v2, :cond_25

    iget-boolean v4, p0, Lcom/android/server/WifiService;->mNeedReconfig:Z

    if-eqz v4, :cond_25

    .line 1892
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/WifiService;->mNeedReconfig:Z

    .line 1893
    invoke-static {}, Landroid/net/wifi/WifiNative;->reloadConfigCommand()Z

    move-result v2

    .line 1895
    if-eqz v2, :cond_25

    .line 1896
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1897
    .local v1, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1900
    .end local v1           #intent:Landroid/content/Intent;
    :cond_25
    monitor-exit v3
    :try_end_26
    .catchall {:try_start_6 .. :try_end_26} :catchall_38

    .line 1902
    const-string v3, "backup"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/backup/IBackupManager;

    move-result-object v0

    .line 1904
    .local v0, ibm:Landroid/backup/IBackupManager;
    if-eqz v0, :cond_37

    .line 1906
    :try_start_32
    const-string v3, "com.android.providers.settings"

    invoke-interface {v0, v3}, Landroid/backup/IBackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_37} :catch_3b

    .line 1911
    :cond_37
    :goto_37
    return v2

    .line 1900
    .end local v0           #ibm:Landroid/backup/IBackupManager;
    .end local v2           #result:Z
    :catchall_38
    move-exception v4

    :try_start_39
    monitor-exit v3
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v4

    .line 1907
    .restart local v0       #ibm:Landroid/backup/IBackupManager;
    .restart local v2       #result:Z
    :catch_3b
    move-exception v3

    goto :goto_37
.end method

.method public setNumAllowedChannels(I)Z
    .registers 9
    .parameter "numChannels"

    .prologue
    .line 1926
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1933
    const/4 v1, 0x0

    .line 1934
    .local v1, found:Z
    sget-object v0, Lcom/android/server/WifiService;->sValidRegulatoryChannelCounts:[I

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_8
    if-ge v2, v3, :cond_f

    aget v4, v0, v2

    .line 1935
    .local v4, validChan:I
    if-ne v4, p1, :cond_13

    .line 1936
    const/4 v1, 0x1

    .line 1940
    .end local v4           #validChan:I
    :cond_f
    if-nez v1, :cond_16

    .line 1941
    const/4 v5, 0x0

    .line 1948
    :goto_12
    return v5

    .line 1934
    .restart local v4       #validChan:I
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1944
    .end local v4           #validChan:I
    :cond_16
    iget-object v5, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi_num_allowed_channels"

    invoke-static {v5, v6, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1947
    iget-object v5, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v5, p1}, Landroid/net/wifi/WifiStateTracker;->setNumAllowedChannels(I)Z

    .line 1948
    const/4 v5, 0x1

    goto :goto_12
.end method

.method public setWifiEnabled(Z)Z
    .registers 6
    .parameter "enable"

    .prologue
    const/4 v3, 0x1

    .line 577
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 578
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    .line 586
    :goto_9
    return v0

    .line 580
    :cond_a
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    monitor-enter v0

    .line 581
    :try_start_d
    sget-object v1, Lcom/android/server/WifiService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 582
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iput v1, p0, Lcom/android/server/WifiService;->mLastEnableUid:I

    .line 583
    const/4 v1, 0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/WifiService;->sendEnableMessage(ZZI)V

    .line 584
    monitor-exit v0

    move v0, v3

    .line 586
    goto :goto_9

    .line 584
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_d .. :try_end_25} :catchall_23

    throw v1
.end method

.method public startScan(Z)Z
    .registers 5
    .parameter "forceActive"

    .prologue
    const-string v1, "WifiService"

    .line 527
    const-string v0, "WifiService"

    const-string v0, "startScan"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 530
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    monitor-enter v0

    .line 533
    :try_start_f
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v1}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 534
    const-string v1, "WifiService"

    const-string v2, "[dongp.kim@lge.com] Before SCREEN_ON, isDriverStopped"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    const/4 v1, 0x1

    monitor-exit v0

    move v0, v1

    .line 566
    :goto_21
    return v0

    .line 538
    :cond_22
    sget-object v1, Lcom/android/server/WifiService$6;->$SwitchMap$android$net$wifi$SupplicantState:[I

    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateTracker;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_46

    .line 562
    const/4 v1, 0x2

    invoke-static {v1}, Landroid/net/wifi/WifiNative;->setScanResultHandlingCommand(I)Z

    .line 566
    :pswitch_37
    invoke-static {p1}, Landroid/net/wifi/WifiNative;->scanCommand(Z)Z

    move-result v1

    monitor-exit v0

    move v0, v1

    goto :goto_21

    .line 546
    :pswitch_3e
    const/4 v1, 0x0

    monitor-exit v0

    move v0, v1

    goto :goto_21

    .line 567
    :catchall_42
    move-exception v1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_f .. :try_end_44} :catchall_42

    throw v1

    .line 538
    nop

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_3e
        :pswitch_3e
        :pswitch_3e
        :pswitch_3e
        :pswitch_37
        :pswitch_37
        :pswitch_37
        :pswitch_37
        :pswitch_37
    .end packed-switch
.end method
