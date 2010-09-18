.class public Lcom/android/internal/location/GpsLocationProvider;
.super Landroid/location/ILocationProvider$Stub;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/location/GpsLocationProvider$GpsNetworkThread;,
        Lcom/android/internal/location/GpsLocationProvider$GpsEventThread;,
        Lcom/android/internal/location/GpsLocationProvider$Listener;
    }
.end annotation


# static fields
.field private static final AGPS_DATA_CONNECTION_CLOSED:I = 0x0

.field private static final AGPS_DATA_CONNECTION_OPEN:I = 0x2

.field private static final AGPS_DATA_CONNECTION_OPENING:I = 0x1

.field private static final AGPS_TYPE_C2K:I = 0x2

.field private static final AGPS_TYPE_SUPL:I = 0x1

.field public static final AIRTEST_TEST_TYPE_PRESC_DWELL:I = 0x0

.field private static final ALARM_TIMEOUT:Ljava/lang/String; = "com.android.internal.location.ALARM_TIMEOUT"

.field private static final ALARM_WAKEUP:Ljava/lang/String; = "com.android.internal.location.ALARM_WAKEUP"

.field private static final ALMANAC_MASK:I = 0x1

.field private static final DEBUG:Z = true

.field private static final EPHEMERIS_MASK:I = 0x0

.field public static final EXTRA_ENABLED:Ljava/lang/String; = "enabled"

.field public static final GPSRESULT_RECEIVED:Ljava/lang/String; = "com.lge.gps.GPSRESULT_RECEIVED"

.field private static final GPS_AGPS_DATA_CONNECTED:I = 0x3

.field private static final GPS_AGPS_DATA_CONN_DONE:I = 0x4

.field private static final GPS_AGPS_DATA_CONN_FAILED:I = 0x5

.field private static final GPS_DELETE_ALL:I = 0xffff

.field private static final GPS_DELETE_ALMANAC:I = 0x2

.field private static final GPS_DELETE_CELLDB_INFO:I = 0x8000

.field private static final GPS_DELETE_EPHEMERIS:I = 0x1

.field private static final GPS_DELETE_HEALTH:I = 0x40

.field private static final GPS_DELETE_IONO:I = 0x10

.field private static final GPS_DELETE_POSITION:I = 0x4

.field private static final GPS_DELETE_RTI:I = 0x400

.field private static final GPS_DELETE_SADATA:I = 0x200

.field private static final GPS_DELETE_SVDIR:I = 0x80

.field private static final GPS_DELETE_SVSTEER:I = 0x100

.field private static final GPS_DELETE_TIME:I = 0x8

.field private static final GPS_DELETE_UTC:I = 0x20

.field public static final GPS_ENABLED_CHANGE_ACTION:Ljava/lang/String; = "android.location.GPS_ENABLED_CHANGE"

.field private static final GPS_ENV_FILE:Ljava/lang/String; = "/data/gps_env.conf"

.field public static final GPS_FIX_CHANGE_ACTION:Ljava/lang/String; = "android.location.GPS_FIX_CHANGE"

.field public static final GPS_FT_BEGIN:Ljava/lang/String; = "com.lge.gps.GPS_FT_BEGIN"

.field public static final GPS_FT_DATA:Ljava/lang/String; = "com.lge.gps.GPS_FT_DATA"

.field private static final GPS_POSITION_MODE_MS_ASSISTED:I = 0x2

.field private static final GPS_POSITION_MODE_MS_BASED:I = 0x1

.field private static final GPS_POSITION_MODE_STANDALONE:I = 0x0

.field private static final GPS_RELEASE_AGPS_DATA_CONN:I = 0x2

.field private static final GPS_REQUEST_AGPS_DATA_CONN:I = 0x1

.field public static final GPS_SETTINGS_FILE:Ljava/lang/String; = "/data/ext_gps.conf"

.field private static final GPS_STATUS_ENGINE_OFF:I = 0x4

.field private static final GPS_STATUS_ENGINE_ON:I = 0x3

.field private static final GPS_STATUS_NONE:I = 0x0

.field private static final GPS_STATUS_SESSION_BEGIN:I = 0x1

.field private static final GPS_STATUS_SESSION_END:I = 0x2

.field private static INTENT_XTRA_SETTING_CHANGED:Ljava/lang/String; = null

.field private static final LOCATION_HAS_ACCURACY:I = 0x10

.field private static final LOCATION_HAS_ALTITUDE:I = 0x2

.field private static final LOCATION_HAS_BEARING:I = 0x8

.field private static final LOCATION_HAS_LAT_LONG:I = 0x1

.field private static final LOCATION_HAS_SPEED:I = 0x4

.field private static final LOCATION_INVALID:I = 0x0

.field public static final LOC_OPER_MODE_ATCOP:I = 0x7

.field public static final LOC_OPER_MODE_FT:I = 0x9

.field private static final MAX_SVS:I = 0x20

.field private static final MIN_FIX_COUNT:I = 0xa

.field private static final NO_FIX_TIMEOUT:I = 0x3c

.field private static final NTP_INTERVAL:J = 0xdbba00L

.field private static final PROPERTIES_FILE:Ljava/lang/String; = "/etc/gps.conf"

.field private static final RECENT_FIX_TIMEOUT:J = 0xaL

.field private static final RETRY_INTERVAL:J = 0x493e0L

.field private static final TAG:Ljava/lang/String; = "GpsLocationProvider"

.field private static final USED_FOR_FIX_MASK:I = 0x2

.field private static final VERBOSE:Z = false

.field private static final WAKELOCK_KEY:Ljava/lang/String; = "GpsLocationProvider"

.field public static mXtraAutoDownloadEnabled:I

.field public static mXtraAutoDownloadFrequency:I

.field public static mXtraDownloadDate:J

.field public static mXtraEnabled:I


# instance fields
.field private mAGpsApn:Ljava/lang/String;

.field private mAGpsDataConnectionState:I

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mBroadcastReciever:Landroid/content/BroadcastReceiver;

.field private final mClientUids:Landroid/util/SparseIntArray;

.field private mColdStart:I

.field private final mConnMgr:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private mEventThread:Lcom/android/internal/location/GpsLocationProvider$GpsEventThread;

.field private mFactoryTestStarted:Z

.field private mFactoryTestStertTime:J

.field private mFixCount:I

.field private mFixInterval:I

.field private mFixRequestTime:J

.field private final mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

.field private mLastFixTime:J

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/location/GpsLocationProvider$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mLocation:Landroid/location/Location;

.field private mLocationExtras:Landroid/os/Bundle;

.field private mLocationFlags:I

.field private final mLocationManager:Landroid/location/ILocationManager;

.field private final mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

.field private mNavigating:Z

.field private final mNetInitiatedListener:Landroid/location/INetInitiatedListener;

.field private mNetworkAvailable:Z

.field private mNetworkThread:Lcom/android/internal/location/GpsLocationProvider$GpsNetworkThread;

.field private mNetworkThreadLock:Ljava/lang/Object;

.field private mNotificationId:I

.field private mNtpServer:Ljava/lang/String;

.field private mPositionMode:I

.field private mProperties:Ljava/util/Properties;

.field private mRunnable:Ljava/lang/Runnable;

.field private mSetSuplServer:Z

.field private mSlpMode:I

.field private mSnrs:[F

.field private mStarted:Z

.field private mStatus:I

.field private mStatusUpdateTime:J

.field private mSuplHost:Ljava/lang/String;

.field private mSuplPort:I

.field private mSvAzimuths:[F

.field private mSvCount:I

.field private mSvElevations:[F

.field private mSvMasks:[I

.field private mSvs:[I

.field private mTTFF:I

.field private mThread:Ljava/lang/Thread;

.field private final mTimeoutIntent:Landroid/app/PendingIntent;

.field private mTls:I

.field private mUserResponse:I

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mWakeupIntent:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 101
    const/4 v0, 0x1

    sput v0, Lcom/android/internal/location/GpsLocationProvider;->mXtraEnabled:I

    .line 102
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/location/GpsLocationProvider;->mXtraAutoDownloadEnabled:I

    .line 103
    const/16 v0, 0xa8

    sput v0, Lcom/android/internal/location/GpsLocationProvider;->mXtraAutoDownloadFrequency:I

    .line 104
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/internal/location/GpsLocationProvider;->mXtraDownloadDate:J

    .line 105
    const-string v0, "android.location.xtra_setting_changed"

    sput-object v0, Lcom/android/internal/location/GpsLocationProvider;->INTENT_XTRA_SETTING_CHANGED:Ljava/lang/String;

    .line 1730
    invoke-static {}, Lcom/android/internal/location/GpsLocationProvider;->class_init_native()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/location/ILocationManager;)V
    .registers 26
    .parameter "context"
    .parameter "locationManager"

    .prologue
    .line 379
    invoke-direct/range {p0 .. p0}, Landroid/location/ILocationProvider$Stub;-><init>()V

    .line 113
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/location/GpsLocationProvider;->mFactoryTestStarted:Z

    .line 114
    const-wide/16 v19, 0x0

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/location/GpsLocationProvider;->mFactoryTestStertTime:J

    .line 119
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/location/GpsLocationProvider;->mNotificationId:I

    .line 120
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/location/GpsLocationProvider;->mUserResponse:I

    .line 122
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/location/GpsLocationProvider;->mSlpMode:I

    .line 123
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/location/GpsLocationProvider;->mColdStart:I

    .line 126
    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/location/GpsLocationProvider;->mTls:I

    .line 206
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/location/GpsLocationProvider;->mLocationFlags:I

    .line 209
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/location/GpsLocationProvider;->mStatus:I

    .line 212
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/location/GpsLocationProvider;->mStatusUpdateTime:J

    .line 233
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/location/GpsLocationProvider;->mFixInterval:I

    .line 238
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/location/GpsLocationProvider;->mPositionMode:I

    .line 244
    const-wide/16 v19, 0x0

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/location/GpsLocationProvider;->mFixRequestTime:J

    .line 246
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/location/GpsLocationProvider;->mTTFF:I

    .line 256
    new-instance v19, Landroid/location/Location;

    const-string v20, "gps"

    invoke-direct/range {v19 .. v20}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    .line 257
    new-instance v19, Landroid/os/Bundle;

    invoke-direct/range {v19 .. v19}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    .line 258
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    .line 261
    new-instance v19, Ljava/lang/Object;

    invoke-direct/range {v19 .. v19}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/location/GpsLocationProvider;->mNetworkThreadLock:Ljava/lang/Object;

    .line 285
    new-instance v19, Landroid/util/SparseIntArray;

    invoke-direct/range {v19 .. v19}, Landroid/util/SparseIntArray;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/location/GpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    .line 294
    new-instance v19, Lcom/android/internal/location/GpsLocationProvider$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/location/GpsLocationProvider$1;-><init>(Lcom/android/internal/location/GpsLocationProvider;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/location/GpsLocationProvider;->mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

    .line 345
    new-instance v19, Lcom/android/internal/location/GpsLocationProvider$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/location/GpsLocationProvider$2;-><init>(Lcom/android/internal/location/GpsLocationProvider;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/location/GpsLocationProvider;->mBroadcastReciever:Landroid/content/BroadcastReceiver;

    .line 1382
    new-instance v19, Lcom/android/internal/location/GpsLocationProvider$3;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/location/GpsLocationProvider$3;-><init>(Lcom/android/internal/location/GpsLocationProvider;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/location/GpsLocationProvider;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    .line 1723
    const/16 v19, 0x20

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/location/GpsLocationProvider;->mSvs:[I

    .line 1724
    const/16 v19, 0x20

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/location/GpsLocationProvider;->mSnrs:[F

    .line 1725
    const/16 v19, 0x20

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/location/GpsLocationProvider;->mSvElevations:[F

    .line 1726
    const/16 v19, 0x20

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/location/GpsLocationProvider;->mSvAzimuths:[F

    .line 1727
    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/location/GpsLocationProvider;->mSvMasks:[I

    .line 380
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    .line 381
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/location/GpsLocationProvider;->mLocationManager:Landroid/location/ILocationManager;

    .line 382
    new-instance v19, Lcom/android/internal/location/GpsNetInitiatedHandler;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/location/GpsNetInitiatedHandler;-><init>(Landroid/content/Context;Lcom/android/internal/location/GpsLocationProvider;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/location/GpsLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    .line 385
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v10

    .line 389
    .local v10, oper:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "power"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/PowerManager;

    .line 390
    .local v14, powerManager:Landroid/os/PowerManager;
    const/16 v19, 0x1

    const-string v20, "GpsLocationProvider"

    move-object v0, v14

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "alarm"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    .end local p2
    check-cast p2, Landroid/app/AlarmManager;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    new-instance v21, Landroid/content/Intent;

    const-string v22, "com.android.internal.location.ALARM_WAKEUP"

    invoke-direct/range {v21 .. v22}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v22, 0x0

    invoke-static/range {v19 .. v22}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/location/GpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    new-instance v21, Landroid/content/Intent;

    const-string v22, "com.android.internal.location.ALARM_TIMEOUT"

    invoke-direct/range {v21 .. v22}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v22, 0x0

    invoke-static/range {v19 .. v22}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    .line 396
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 397
    .local v9, intentFilter:Landroid/content/IntentFilter;
    const-string v19, "com.android.internal.location.ALARM_WAKEUP"

    move-object v0, v9

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 398
    const-string v19, "com.android.internal.location.ALARM_TIMEOUT"

    move-object v0, v9

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 399
    const-string v19, "android.intent.action.ANY_DATA_STATE"

    move-object v0, v9

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider;->mBroadcastReciever:Landroid/content/BroadcastReceiver;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 402
    const-string v19, "connectivity"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/net/ConnectivityManager;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 405
    const-string v19, "batteryinfo"

    invoke-static/range {v19 .. v19}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/location/GpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 409
    const-string v13, ""

    .line 410
    .local v13, positionMode:Ljava/lang/String;
    const-string v15, ""

    .line 411
    .local v15, slpMode:Ljava/lang/String;
    const-string v4, ""

    .line 412
    .local v4, coldStart:Ljava/lang/String;
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/location/GpsLocationProvider;->mSlpMode:I

    .line 413
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/location/GpsLocationProvider;->mColdStart:I

    .line 415
    new-instance v19, Ljava/util/Properties;

    invoke-direct/range {v19 .. v19}, Ljava/util/Properties;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    .line 417
    :try_start_21b
    new-instance v6, Ljava/io/File;

    const-string v19, "/etc/gps.conf"

    move-object v0, v6

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 418
    .local v6, file:Ljava/io/File;
    new-instance v16, Ljava/io/FileInputStream;

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 419
    .local v16, stream:Ljava/io/FileInputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 420
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    move-object/from16 v19, v0

    const-string v20, "NTP_SERVER"

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/location/GpsLocationProvider;->mNtpServer:Ljava/lang/String;

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    move-object/from16 v19, v0

    const-string v20, "SUPL_HOST"

    invoke-virtual/range {v19 .. v20}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 429
    .local v8, host:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    move-object/from16 v19, v0

    const-string v20, "SUPL_PORT"

    invoke-virtual/range {v19 .. v20}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 432
    .local v12, portString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    move-object/from16 v19, v0

    const-string v20, "SUPL_HOST"

    invoke-virtual/range {v19 .. v20}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/location/GpsLocationProvider;->mSuplHost:Ljava/lang/String;

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    move-object/from16 v19, v0

    const-string v20, "SUPL_PORT"

    invoke-virtual/range {v19 .. v20}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 434
    .local v18, suplPortString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    move-object/from16 v19, v0

    const-string v20, "POSITION_MODE"

    invoke-virtual/range {v19 .. v20}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    move-object/from16 v19, v0

    const-string v20, "SLP_MODE"

    invoke-virtual/range {v19 .. v20}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    move-object/from16 v19, v0

    const-string v20, "COLD_START"

    invoke-virtual/range {v19 .. v20}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2aa
    .catch Ljava/io/IOException; {:try_start_21b .. :try_end_2aa} :catch_558

    move-result-object v4

    .line 443
    if-eqz v12, :cond_2d6

    .line 446
    :try_start_2ad
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 449
    .local v11, port:I
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/location/GpsLocationProvider;->mSuplPort:I

    .line 450
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/location/GpsLocationProvider;->mSetSuplServer:Z

    .line 453
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object v2, v8

    move v3, v11

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/location/GpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 455
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/location/GpsLocationProvider;->mPositionMode:I
    :try_end_2d6
    .catch Ljava/lang/NumberFormatException; {:try_start_2ad .. :try_end_2d6} :catch_530
    .catch Ljava/io/IOException; {:try_start_2ad .. :try_end_2d6} :catch_558

    .line 467
    .end local v11           #port:I
    :cond_2d6
    :goto_2d6
    :try_start_2d6
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/location/GpsLocationProvider;->mPositionMode:I
    :try_end_2f6
    .catch Ljava/lang/NumberFormatException; {:try_start_2d6 .. :try_end_2f6} :catch_5ac
    .catch Ljava/io/IOException; {:try_start_2d6 .. :try_end_2f6} :catch_558

    .line 470
    :goto_2f6
    :try_start_2f6
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/location/GpsLocationProvider;->mSlpMode:I
    :try_end_316
    .catch Ljava/lang/NumberFormatException; {:try_start_2f6 .. :try_end_316} :catch_5a9
    .catch Ljava/io/IOException; {:try_start_2f6 .. :try_end_316} :catch_558

    .line 473
    :goto_316
    :try_start_316
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/location/GpsLocationProvider;->mColdStart:I
    :try_end_336
    .catch Ljava/lang/NumberFormatException; {:try_start_316 .. :try_end_336} :catch_5a6
    .catch Ljava/io/IOException; {:try_start_316 .. :try_end_336} :catch_558

    .line 477
    :goto_336
    :try_start_336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    move-object/from16 v19, v0

    const-string v20, "C2K_HOST"

    invoke-virtual/range {v19 .. v20}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    move-object/from16 v19, v0

    const-string v20, "C2K_PORT"

    invoke-virtual/range {v19 .. v20}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_34d
    .catch Ljava/io/IOException; {:try_start_336 .. :try_end_34d} :catch_558

    move-result-object v12

    .line 479
    if-eqz v8, :cond_369

    if-eqz v12, :cond_369

    .line 481
    :try_start_352
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 482
    .restart local v11       #port:I
    const/16 v19, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object v2, v8

    move v3, v11

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/location/GpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 484
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/location/GpsLocationProvider;->mPositionMode:I
    :try_end_369
    .catch Ljava/lang/NumberFormatException; {:try_start_352 .. :try_end_369} :catch_564
    .catch Ljava/io/IOException; {:try_start_352 .. :try_end_369} :catch_558

    .line 494
    .end local v6           #file:Ljava/io/File;
    .end local v8           #host:Ljava/lang/String;
    .end local v11           #port:I
    .end local v12           #portString:Ljava/lang/String;
    .end local v16           #stream:Ljava/io/FileInputStream;
    .end local v18           #suplPortString:Ljava/lang/String;
    :cond_369
    :goto_369
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/location/GpsLocationProvider;->loadSettings()V

    .line 500
    :try_start_36c
    new-instance v7, Ljava/io/File;

    const-string v19, "/data/ext_gps.conf"

    move-object v0, v7

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 501
    .local v7, file2:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_451

    .line 502
    new-instance v17, Ljava/io/FileInputStream;

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 503
    .local v17, stream2:Ljava/io/FileInputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 504
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    move-object/from16 v19, v0

    const-string v20, "SUPL_HOST"

    invoke-virtual/range {v19 .. v20}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/location/GpsLocationProvider;->mSuplHost:Ljava/lang/String;

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    move-object/from16 v19, v0

    const-string v20, "SUPL_PORT"

    invoke-virtual/range {v19 .. v20}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 507
    .restart local v18       #suplPortString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    move-object/from16 v19, v0

    const-string v20, "POSITION_MODE"

    invoke-virtual/range {v19 .. v20}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    move-object/from16 v19, v0

    const-string v20, "SLP_MODE"

    invoke-virtual/range {v19 .. v20}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    move-object/from16 v19, v0

    const-string v20, "COLD_START"

    invoke-virtual/range {v19 .. v20}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3d5
    .catch Ljava/lang/Exception; {:try_start_36c .. :try_end_3d5} :catch_591

    move-result-object v4

    .line 512
    if-eqz v18, :cond_3ea

    .line 514
    :try_start_3d8
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/location/GpsLocationProvider;->mSuplPort:I

    .line 515
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/location/GpsLocationProvider;->mSetSuplServer:Z
    :try_end_3ea
    .catch Ljava/lang/NumberFormatException; {:try_start_3d8 .. :try_end_3ea} :catch_584
    .catch Ljava/lang/Exception; {:try_start_3d8 .. :try_end_3ea} :catch_591

    .line 521
    :cond_3ea
    :goto_3ea
    :try_start_3ea
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/location/GpsLocationProvider;->mPositionMode:I
    :try_end_40a
    .catch Ljava/lang/NumberFormatException; {:try_start_3ea .. :try_end_40a} :catch_5a3
    .catch Ljava/lang/Exception; {:try_start_3ea .. :try_end_40a} :catch_591

    .line 524
    :goto_40a
    :try_start_40a
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/location/GpsLocationProvider;->mSlpMode:I
    :try_end_42a
    .catch Ljava/lang/NumberFormatException; {:try_start_40a .. :try_end_42a} :catch_5a0
    .catch Ljava/lang/Exception; {:try_start_40a .. :try_end_42a} :catch_591

    .line 527
    :goto_42a
    :try_start_42a
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/location/GpsLocationProvider;->mColdStart:I
    :try_end_44a
    .catch Ljava/lang/NumberFormatException; {:try_start_42a .. :try_end_44a} :catch_59d
    .catch Ljava/lang/Exception; {:try_start_42a .. :try_end_44a} :catch_591

    .line 529
    :goto_44a
    :try_start_44a
    const-string v19, "GpsLocationProvider"

    const-string v20, "Read from file: /data/ext_gps.conf"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_451
    .catch Ljava/lang/Exception; {:try_start_44a .. :try_end_451} :catch_591

    .line 536
    .end local v7           #file2:Ljava/io/File;
    .end local v17           #stream2:Ljava/io/FileInputStream;
    .end local v18           #suplPortString:Ljava/lang/String;
    :cond_451
    :goto_451
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/location/GpsLocationProvider;->loadTlsSetting()V

    .line 539
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/location/GpsLocationProvider;->mSlpMode:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_465

    .line 540
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/location/GpsLocationProvider;->setSuplAuto()V

    .line 544
    :cond_465
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/location/GpsLocationProvider;->mTls:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/location/GpsLocationProvider;->setTls(I)Z

    .line 547
    const-string v19, "GpsLocationProvider"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[ji.park] SLP Mode = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/location/GpsLocationProvider;->mSlpMode:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider;->mSuplHost:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/location/GpsLocationProvider;->mSuplPort:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/location/GpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 550
    const-string v19, "GpsLocationProvider"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "  SUPL_HOST: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider;->mSuplHost:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    const-string v19, "GpsLocationProvider"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "  SUPL_PORT: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/location/GpsLocationProvider;->mSuplPort:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    const-string v19, "GpsLocationProvider"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "  POSITION_MODE: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    const-string v19, "TSR"

    move-object/from16 v0, v19

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v19

    if-nez v19, :cond_514

    .line 557
    const/16 v19, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/location/GpsLocationProvider;->setPositionMode(I)V

    .line 561
    :cond_514
    const-string v19, "KTF"

    move-object/from16 v0, v19

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v19

    if-nez v19, :cond_52f

    .line 563
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/location/GpsLocationProvider;->setPositionMode(I)V

    .line 564
    const-string v19, "GpsLocationProvider"

    const-string v20, "[LJS] PositionMode = 0"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    :cond_52f
    return-void

    .line 456
    .restart local v6       #file:Ljava/io/File;
    .restart local v8       #host:Ljava/lang/String;
    .restart local v12       #portString:Ljava/lang/String;
    .restart local v16       #stream:Ljava/io/FileInputStream;
    .restart local v18       #suplPortString:Ljava/lang/String;
    :catch_530
    move-exception v19

    move-object/from16 v5, v19

    .line 457
    .local v5, e:Ljava/lang/NumberFormatException;
    :try_start_533
    const-string v19, "GpsLocationProvider"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "unable to parse SUPL_PORT: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const/16 v19, 0x1c6b

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/location/GpsLocationProvider;->mSuplPort:I
    :try_end_556
    .catch Ljava/io/IOException; {:try_start_533 .. :try_end_556} :catch_558

    goto/16 :goto_2d6

    .line 489
    .end local v5           #e:Ljava/lang/NumberFormatException;
    .end local v6           #file:Ljava/io/File;
    .end local v8           #host:Ljava/lang/String;
    .end local v12           #portString:Ljava/lang/String;
    .end local v16           #stream:Ljava/io/FileInputStream;
    .end local v18           #suplPortString:Ljava/lang/String;
    :catch_558
    move-exception v19

    move-object/from16 v5, v19

    .line 490
    .local v5, e:Ljava/io/IOException;
    const-string v19, "GpsLocationProvider"

    const-string v20, "Could not open GPS configuration file /etc/gps.conf"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_369

    .line 485
    .end local v5           #e:Ljava/io/IOException;
    .restart local v6       #file:Ljava/io/File;
    .restart local v8       #host:Ljava/lang/String;
    .restart local v12       #portString:Ljava/lang/String;
    .restart local v16       #stream:Ljava/io/FileInputStream;
    .restart local v18       #suplPortString:Ljava/lang/String;
    :catch_564
    move-exception v19

    move-object/from16 v5, v19

    .line 486
    .local v5, e:Ljava/lang/NumberFormatException;
    :try_start_567
    const-string v19, "GpsLocationProvider"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "unable to parse C2K_PORT: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_582
    .catch Ljava/io/IOException; {:try_start_567 .. :try_end_582} :catch_558

    goto/16 :goto_369

    .line 516
    .end local v5           #e:Ljava/lang/NumberFormatException;
    .end local v6           #file:Ljava/io/File;
    .end local v8           #host:Ljava/lang/String;
    .end local v12           #portString:Ljava/lang/String;
    .end local v16           #stream:Ljava/io/FileInputStream;
    .restart local v7       #file2:Ljava/io/File;
    .restart local v17       #stream2:Ljava/io/FileInputStream;
    :catch_584
    move-exception v19

    move-object/from16 v5, v19

    .line 517
    .restart local v5       #e:Ljava/lang/NumberFormatException;
    const/16 v19, 0x1c6b

    :try_start_589
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/location/GpsLocationProvider;->mSuplPort:I
    :try_end_58f
    .catch Ljava/lang/Exception; {:try_start_589 .. :try_end_58f} :catch_591

    goto/16 :goto_3ea

    .line 531
    .end local v5           #e:Ljava/lang/NumberFormatException;
    .end local v7           #file2:Ljava/io/File;
    .end local v17           #stream2:Ljava/io/FileInputStream;
    .end local v18           #suplPortString:Ljava/lang/String;
    :catch_591
    move-exception v19

    move-object/from16 v5, v19

    .line 532
    .local v5, e:Ljava/lang/Exception;
    const-string v19, "GpsLocationProvider"

    const-string v20, "Could not open GPS configuration file /data/ext_gps.conf"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_451

    .line 528
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v7       #file2:Ljava/io/File;
    .restart local v17       #stream2:Ljava/io/FileInputStream;
    .restart local v18       #suplPortString:Ljava/lang/String;
    :catch_59d
    move-exception v19

    goto/16 :goto_44a

    .line 525
    :catch_5a0
    move-exception v19

    goto/16 :goto_42a

    .line 522
    :catch_5a3
    move-exception v19

    goto/16 :goto_40a

    .line 474
    .end local v7           #file2:Ljava/io/File;
    .end local v17           #stream2:Ljava/io/FileInputStream;
    .restart local v6       #file:Ljava/io/File;
    .restart local v8       #host:Ljava/lang/String;
    .restart local v12       #portString:Ljava/lang/String;
    .restart local v16       #stream:Ljava/io/FileInputStream;
    :catch_5a6
    move-exception v19

    goto/16 :goto_336

    .line 471
    :catch_5a9
    move-exception v19

    goto/16 :goto_316

    .line 468
    :catch_5ac
    move-exception v19

    goto/16 :goto_2f6
.end method

.method static synthetic access$000(Lcom/android/internal/location/GpsLocationProvider;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/location/GpsLocationProvider;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->hibernate()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/location/GpsLocationProvider;)Ljava/lang/Thread;
    .registers 2
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/internal/location/GpsLocationProvider;Ljava/lang/Thread;)Ljava/lang/Thread;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/internal/location/GpsLocationProvider;->mThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/internal/location/GpsLocationProvider;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mEnabled:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/internal/location/GpsLocationProvider;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->native_wait_for_event()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/location/GpsLocationProvider;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mNetworkThreadLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/location/GpsLocationProvider;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->native_supports_xtra()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/internal/location/GpsLocationProvider;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/location/GpsLocationProvider;)Ljava/util/Properties;
    .registers 2
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/location/GpsLocationProvider;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mNtpServer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/internal/location/GpsLocationProvider;JJI)V
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 76
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/location/GpsLocationProvider;->native_inject_time(JJI)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/internal/location/GpsLocationProvider;[BI)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/internal/location/GpsLocationProvider;->native_inject_xtra_data([BI)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/location/GpsLocationProvider;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mAGpsApn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/location/GpsLocationProvider;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->saveSettings()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/internal/location/GpsLocationProvider;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/internal/location/GpsLocationProvider;->mAGpsApn:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/internal/location/GpsLocationProvider;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/internal/location/GpsLocationProvider;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput p1, p0, Lcom/android/internal/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/internal/location/GpsLocationProvider;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/internal/location/GpsLocationProvider;->native_agps_data_conn_open(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/location/GpsLocationProvider;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mNotificationId:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/internal/location/GpsLocationProvider;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput p1, p0, Lcom/android/internal/location/GpsLocationProvider;->mNotificationId:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/internal/location/GpsLocationProvider;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mUserResponse:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/internal/location/GpsLocationProvider;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput p1, p0, Lcom/android/internal/location/GpsLocationProvider;->mUserResponse:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/internal/location/GpsLocationProvider;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/internal/location/GpsLocationProvider;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/internal/location/GpsLocationProvider;->mRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/internal/location/GpsLocationProvider;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mNetworkAvailable:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/location/GpsLocationProvider;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/internal/location/GpsLocationProvider;->native_send_ni_response(II)V

    return-void
.end method

.method private static native class_init_native()V
.end method

.method private deleteAidingData(Landroid/os/Bundle;)Z
    .registers 4
    .parameter "extras"

    .prologue
    .line 955
    if-nez p1, :cond_c

    .line 956
    const v0, 0xffff

    .line 974
    .local v0, flags:I
    :cond_5
    :goto_5
    if-eqz v0, :cond_95

    .line 975
    invoke-direct {p0, v0}, Lcom/android/internal/location/GpsLocationProvider;->native_delete_aiding_data(I)V

    .line 976
    const/4 v1, 0x1

    .line 979
    :goto_b
    return v1

    .line 958
    .end local v0           #flags:I
    :cond_c
    const/4 v0, 0x0

    .line 959
    .restart local v0       #flags:I
    const-string v1, "ephemeris"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    or-int/lit8 v0, v0, 0x1

    .line 960
    :cond_17
    const-string v1, "almanac"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    or-int/lit8 v0, v0, 0x2

    .line 961
    :cond_21
    const-string v1, "position"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    or-int/lit8 v0, v0, 0x4

    .line 962
    :cond_2b
    const-string v1, "time"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    or-int/lit8 v0, v0, 0x8

    .line 963
    :cond_35
    const-string v1, "iono"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3f

    or-int/lit8 v0, v0, 0x10

    .line 964
    :cond_3f
    const-string v1, "utc"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_49

    or-int/lit8 v0, v0, 0x20

    .line 965
    :cond_49
    const-string v1, "health"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_53

    or-int/lit8 v0, v0, 0x40

    .line 966
    :cond_53
    const-string v1, "svdir"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5d

    or-int/lit16 v0, v0, 0x80

    .line 967
    :cond_5d
    const-string v1, "svsteer"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_67

    or-int/lit16 v0, v0, 0x100

    .line 968
    :cond_67
    const-string v1, "sadata"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_71

    or-int/lit16 v0, v0, 0x200

    .line 969
    :cond_71
    const-string v1, "rti"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7b

    or-int/lit16 v0, v0, 0x400

    .line 970
    :cond_7b
    const-string v1, "celldb-info"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_87

    const v1, 0x8000

    or-int/2addr v0, v1

    .line 971
    :cond_87
    const-string v1, "all"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const v1, 0xffff

    or-int/2addr v0, v1

    goto/16 :goto_5

    .line 979
    :cond_95
    const/4 v1, 0x0

    goto/16 :goto_b
.end method

.method private forceTimeInjection()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 985
    sget v0, Lcom/android/internal/location/GpsLocationProvider;->mXtraEnabled:I

    if-nez v0, :cond_7

    move v0, v2

    .line 993
    :goto_6
    return v0

    .line 988
    :cond_7
    const-string v0, "GpsLocationProvider"

    const-string v1, "forceTimeInjection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mNetworkThread:Lcom/android/internal/location/GpsLocationProvider$GpsNetworkThread;

    if-eqz v0, :cond_19

    .line 990
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mNetworkThread:Lcom/android/internal/location/GpsLocationProvider$GpsNetworkThread;

    invoke-virtual {v0}, Lcom/android/internal/location/GpsLocationProvider$GpsNetworkThread;->timeInjectRequest()V

    .line 991
    const/4 v0, 0x1

    goto :goto_6

    :cond_19
    move v0, v2

    .line 993
    goto :goto_6
.end method

.method private hibernate()V
    .registers 9

    .prologue
    .line 1095
    invoke-virtual {p0}, Lcom/android/internal/location/GpsLocationProvider;->stopNavigating()V

    .line 1096
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mFixCount:I

    .line 1097
    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/android/internal/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1098
    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/android/internal/location/GpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1099
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1100
    .local v0, now:J
    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget v6, p0, Lcom/android/internal/location/GpsLocationProvider;->mFixInterval:I

    mul-int/lit16 v6, v6, 0x3e8

    int-to-long v6, v6

    add-long/2addr v4, v6

    iget-object v6, p0, Lcom/android/internal/location/GpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1102
    return-void
.end method

.method public static isSupported()Z
    .registers 1

    .prologue
    .line 376
    invoke-static {}, Lcom/android/internal/location/GpsLocationProvider;->native_is_supported()Z

    move-result v0

    return v0
.end method

.method private loadSettings()V
    .registers 9

    .prologue
    const-string v4, ""

    .line 1970
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 1972
    .local v2, mProperties:Ljava/util/Properties;
    :try_start_7
    new-instance v1, Ljava/io/File;

    const-string v4, "/data/gps_env.conf"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1973
    .local v1, file:Ljava/io/File;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1974
    .local v3, stream:Ljava/io/FileInputStream;
    invoke-virtual {v2, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 1975
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_19} :catch_c6

    .line 1976
    :try_start_19
    const-string v4, "XTRA_ENABLED"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/internal/location/GpsLocationProvider;->mXtraEnabled:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/android/internal/location/GpsLocationProvider;->mXtraEnabled:I
    :try_end_3a
    .catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_3a} :catch_bf
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_3a} :catch_c6

    .line 1978
    :goto_3a
    :try_start_3a
    const-string v4, "XTRA_DOWNLOAD_DATE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-wide v6, Lcom/android/internal/location/GpsLocationProvider;->mXtraDownloadDate:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    sput-wide v4, Lcom/android/internal/location/GpsLocationProvider;->mXtraDownloadDate:J
    :try_end_5b
    .catch Ljava/lang/NumberFormatException; {:try_start_3a .. :try_end_5b} :catch_d0
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_5b} :catch_c6

    .line 1980
    :goto_5b
    :try_start_5b
    const-string v4, "XTRA_AUTO_DOWNLOAD_ENABLED"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/internal/location/GpsLocationProvider;->mXtraAutoDownloadEnabled:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/android/internal/location/GpsLocationProvider;->mXtraAutoDownloadEnabled:I
    :try_end_7c
    .catch Ljava/lang/NumberFormatException; {:try_start_5b .. :try_end_7c} :catch_d6
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_7c} :catch_c6

    .line 1982
    :goto_7c
    :try_start_7c
    const-string v4, "XTRA_AUTO_DOWNLOAD_FREQUENCY"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/internal/location/GpsLocationProvider;->mXtraAutoDownloadFrequency:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/android/internal/location/GpsLocationProvider;->mXtraAutoDownloadFrequency:I
    :try_end_9d
    .catch Ljava/lang/NumberFormatException; {:try_start_7c .. :try_end_9d} :catch_dc
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_9d} :catch_c6

    .line 1984
    :goto_9d
    :try_start_9d
    const-string v4, "XTRA_POSITION_MODE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/location/GpsLocationProvider;->mPositionMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/internal/location/GpsLocationProvider;->mPositionMode:I
    :try_end_be
    .catch Ljava/lang/NumberFormatException; {:try_start_9d .. :try_end_be} :catch_e2
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_be} :catch_c6

    .line 1989
    .end local v1           #file:Ljava/io/File;
    .end local v3           #stream:Ljava/io/FileInputStream;
    :goto_be
    return-void

    .line 1977
    .restart local v1       #file:Ljava/io/File;
    .restart local v3       #stream:Ljava/io/FileInputStream;
    :catch_bf
    move-exception v4

    move-object v0, v4

    .local v0, e:Ljava/lang/NumberFormatException;
    :try_start_c1
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_c4
    .catch Ljava/io/IOException; {:try_start_c1 .. :try_end_c4} :catch_c6

    goto/16 :goto_3a

    .line 1986
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v1           #file:Ljava/io/File;
    .end local v3           #stream:Ljava/io/FileInputStream;
    :catch_c6
    move-exception v4

    move-object v0, v4

    .line 1987
    .local v0, e:Ljava/io/IOException;
    const-string v4, "GpsLocationProvider"

    const-string v5, "Could not open file: /data/gps_env.conf"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_be

    .line 1979
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #file:Ljava/io/File;
    .restart local v3       #stream:Ljava/io/FileInputStream;
    :catch_d0
    move-exception v4

    move-object v0, v4

    .local v0, e:Ljava/lang/NumberFormatException;
    :try_start_d2
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_5b

    .line 1981
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :catch_d6
    move-exception v4

    move-object v0, v4

    .restart local v0       #e:Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_7c

    .line 1983
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :catch_dc
    move-exception v4

    move-object v0, v4

    .restart local v0       #e:Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_9d

    .line 1985
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :catch_e2
    move-exception v4

    move-object v0, v4

    .restart local v0       #e:Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_e7
    .catch Ljava/io/IOException; {:try_start_d2 .. :try_end_e7} :catch_c6

    goto :goto_be
.end method

.method private native native_agps_data_conn_closed()V
.end method

.method private native native_agps_data_conn_failed()V
.end method

.method private native native_agps_data_conn_open(Ljava/lang/String;)V
.end method

.method private native native_cleanup()V
.end method

.method private native native_delete_aiding_data(I)V
.end method

.method private native native_disable()V
.end method

.method private native native_init()Z
.end method

.method private native native_inject_location(DDF)V
.end method

.method private native native_inject_time(JJI)V
.end method

.method private native native_inject_xtra_data([BI)V
.end method

.method private static native native_is_supported()Z
.end method

.method private native native_read_sv_status([I[F[F[F[I)I
.end method

.method private native native_send_ni_response(II)V
.end method

.method private native native_set_agps_server(ILjava/lang/String;I)V
.end method

.method private native native_set_fix_frequency(I)V
.end method

.method private native native_start(IZI)Z
.end method

.method private native native_stop()Z
.end method

.method private native native_supports_xtra()Z
.end method

.method private native native_wait_for_event()V
.end method

.method private reportAGpsStatus(II)V
    .registers 9
    .parameter "type"
    .parameter "status"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "enableSUPL"

    .line 1311
    packed-switch p2, :pswitch_data_44

    .line 1347
    :cond_7
    :goto_7
    :pswitch_7
    return-void

    .line 1313
    :pswitch_8
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    const-string v2, "enableSUPL"

    invoke-virtual {v1, v3, v5}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v0

    .line 1315
    .local v0, result:I
    if-nez v0, :cond_2a

    .line 1316
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mAGpsApn:Ljava/lang/String;

    if-eqz v1, :cond_1f

    .line 1317
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mAGpsApn:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/internal/location/GpsLocationProvider;->native_agps_data_conn_open(Ljava/lang/String;)V

    .line 1318
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    goto :goto_7

    .line 1320
    :cond_1f
    const-string v1, "GpsLocationProvider"

    const-string v2, "mAGpsApn not set when receiving Phone.APN_ALREADY_ACTIVE"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->native_agps_data_conn_failed()V

    goto :goto_7

    .line 1323
    :cond_2a
    if-ne v0, v4, :cond_2f

    .line 1324
    iput v4, p0, Lcom/android/internal/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    goto :goto_7

    .line 1326
    :cond_2f
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->native_agps_data_conn_failed()V

    goto :goto_7

    .line 1330
    .end local v0           #result:I
    :pswitch_33
    iget v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    if-eqz v1, :cond_7

    .line 1331
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    const-string v2, "enableSUPL"

    invoke-virtual {v1, v3, v5}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    .line 1333
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->native_agps_data_conn_closed()V

    .line 1334
    iput v3, p0, Lcom/android/internal/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    goto :goto_7

    .line 1311
    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_8
        :pswitch_33
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method private reportAirtestResult(IIIII)V
    .registers 15
    .parameter "error_code"
    .parameter "Success_num"
    .parameter "Completed_num"
    .parameter "Avg_Cno"
    .parameter "Dev_Cno"

    .prologue
    const/4 v7, 0x0

    const-string v8, "GpsLocationProvider"

    .line 1076
    const-string v3, "<%d,%d,%d,%d,%d,0,0,0,0>"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1078
    .local v2, msg:Ljava/lang/String;
    const-string v3, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Air] reportAirtestResult - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    invoke-static {v2}, Landroid/location/LocationManager;->setAirTestResult(Ljava/lang/String;)V

    .line 1081
    const-string v3, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[GPS-SMS] Broadcasting Intent: GPSRESULT_RECEIVED, extra(msgText)="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.lge.gps.GPSRESULT_RECEIVED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1083
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "msgText"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1084
    iget-object v3, p0, Lcom/android/internal/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1087
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.location.GPS_ENABLED_CHANGE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1088
    .local v1, intent2:Landroid/content/Intent;
    const-string v3, "enabled"

    invoke-virtual {v1, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1089
    iget-object v3, p0, Lcom/android/internal/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1090
    return-void
.end method

.method private reportFactoryTestResult(I)V
    .registers 6
    .parameter "Snr"

    .prologue
    .line 1065
    const-string v1, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FT] reportFactoryTestResult - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.gps.GPS_FT_DATA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1067
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "Snr"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1068
    const-string v1, "Time"

    iget-wide v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mFactoryTestStertTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1069
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1070
    return-void
.end method

.method private reportLocation(IDDDFFFFJ)V
    .registers 26
    .parameter "flags"
    .parameter "latitude"
    .parameter "longitude"
    .parameter "altitude"
    .parameter "speed"
    .parameter "bearing"
    .parameter "accuracy"
    .parameter "vertical_accuracy"
    .parameter "timestamp"

    .prologue
    .line 1118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mLastFixTime:J

    .line 1120
    iget v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mTTFF:I

    if-nez v8, :cond_61

    and-int/lit8 v8, p1, 0x1

    const/4 v9, 0x1

    if-ne v8, v9, :cond_61

    .line 1121
    iget-wide v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mLastFixTime:J

    iget-wide v10, p0, Lcom/android/internal/location/GpsLocationProvider;->mFixRequestTime:J

    sub-long/2addr v8, v10

    long-to-int v8, v8

    iput v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mTTFF:I

    .line 1122
    const-string v8, "GpsLocationProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TTFF: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/internal/location/GpsLocationProvider;->mTTFF:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    iget-object v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v8

    .line 1126
    :try_start_34
    iget-object v9, p0, Lcom/android/internal/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1127
    .local v7, size:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_3b
    if-ge v4, v7, :cond_60

    .line 1128
    iget-object v9, p0, Lcom/android/internal/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/location/GpsLocationProvider$Listener;
    :try_end_45
    .catchall {:try_start_34 .. :try_end_45} :catchall_108

    .line 1130
    .local v6, listener:Lcom/android/internal/location/GpsLocationProvider$Listener;
    :try_start_45
    iget-object v9, v6, Lcom/android/internal/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    iget v10, p0, Lcom/android/internal/location/GpsLocationProvider;->mTTFF:I

    invoke-interface {v9, v10}, Landroid/location/IGpsStatusListener;->onFirstFix(I)V
    :try_end_4c
    .catchall {:try_start_45 .. :try_end_4c} :catchall_108
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_4c} :catch_4f

    .line 1127
    :goto_4c
    add-int/lit8 v4, v4, 0x1

    goto :goto_3b

    .line 1131
    :catch_4f
    move-exception v9

    move-object v3, v9

    .line 1132
    .local v3, e:Landroid/os/RemoteException;
    :try_start_51
    const-string v9, "GpsLocationProvider"

    const-string v10, "RemoteException in stopNavigating"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    iget-object v9, p0, Lcom/android/internal/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1135
    add-int/lit8 v7, v7, -0x1

    goto :goto_4c

    .line 1138
    .end local v3           #e:Landroid/os/RemoteException;
    .end local v6           #listener:Lcom/android/internal/location/GpsLocationProvider$Listener;
    :cond_60
    monitor-exit v8
    :try_end_61
    .catchall {:try_start_51 .. :try_end_61} :catchall_108

    .line 1141
    .end local v4           #i:I
    .end local v7           #size:I
    :cond_61
    iget-object v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    monitor-enter v8

    .line 1142
    :try_start_64
    iput p1, p0, Lcom/android/internal/location/GpsLocationProvider;->mLocationFlags:I

    .line 1143
    and-int/lit8 v9, p1, 0x1

    const/4 v10, 0x1

    if-ne v9, v10, :cond_80

    .line 1144
    iget-object v9, p0, Lcom/android/internal/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v9, p2, p3}, Landroid/location/Location;->setLatitude(D)V

    .line 1145
    iget-object v9, p0, Lcom/android/internal/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move-object v0, v9

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    .line 1146
    iget-object v9, p0, Lcom/android/internal/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move-object v0, v9

    move-wide/from16 v1, p12

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setTime(J)V

    .line 1148
    :cond_80
    and-int/lit8 v9, p1, 0x2

    const/4 v10, 0x2

    if-ne v9, v10, :cond_10b

    .line 1149
    iget-object v9, p0, Lcom/android/internal/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move-object v0, v9

    move-wide/from16 v1, p6

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setAltitude(D)V

    .line 1153
    :goto_8d
    and-int/lit8 v9, p1, 0x4

    const/4 v10, 0x4

    if-ne v9, v10, :cond_115

    .line 1154
    iget-object v9, p0, Lcom/android/internal/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move-object v0, v9

    move/from16 v1, p8

    invoke-virtual {v0, v1}, Landroid/location/Location;->setSpeed(F)V

    .line 1158
    :goto_9a
    and-int/lit8 v9, p1, 0x8

    const/16 v10, 0x8

    if-ne v9, v10, :cond_11b

    .line 1159
    iget-object v9, p0, Lcom/android/internal/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move-object v0, v9

    move/from16 v1, p9

    invoke-virtual {v0, v1}, Landroid/location/Location;->setBearing(F)V

    .line 1163
    :goto_a8
    and-int/lit8 v9, p1, 0x10

    const/16 v10, 0x10

    if-ne v9, v10, :cond_121

    .line 1164
    iget-object v9, p0, Lcom/android/internal/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move-object v0, v9

    move/from16 v1, p10

    invoke-virtual {v0, v1}, Landroid/location/Location;->setAccuracy(F)V

    .line 1166
    iget-object v9, p0, Lcom/android/internal/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move-object v0, v9

    move/from16 v1, p11

    invoke-virtual {v0, v1}, Landroid/location/Location;->setVerticalAccuracy(F)V
    :try_end_be
    .catchall {:try_start_64 .. :try_end_be} :catchall_112

    .line 1173
    :goto_be
    :try_start_be
    iget-object v9, p0, Lcom/android/internal/location/GpsLocationProvider;->mLocationManager:Landroid/location/ILocationManager;

    iget-object v10, p0, Lcom/android/internal/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-interface {v9, v10}, Landroid/location/ILocationManager;->reportLocation(Landroid/location/Location;)V
    :try_end_c5
    .catchall {:try_start_be .. :try_end_c5} :catchall_112
    .catch Landroid/os/RemoteException; {:try_start_be .. :try_end_c5} :catch_127

    .line 1177
    :goto_c5
    :try_start_c5
    monitor-exit v8
    :try_end_c6
    .catchall {:try_start_c5 .. :try_end_c6} :catchall_112

    .line 1179
    iget-boolean v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mStarted:Z

    if-eqz v8, :cond_ee

    iget v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mStatus:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_ee

    .line 1180
    iget-object v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v9, p0, Lcom/android/internal/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v8, v9}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1182
    new-instance v5, Landroid/content/Intent;

    const-string v8, "android.location.GPS_FIX_CHANGE"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1183
    .local v5, intent:Landroid/content/Intent;
    const-string v8, "enabled"

    const/4 v9, 0x1

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1184
    iget-object v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1185
    const/4 v8, 0x2

    iget v9, p0, Lcom/android/internal/location/GpsLocationProvider;->mSvCount:I

    invoke-direct {p0, v8, v9}, Lcom/android/internal/location/GpsLocationProvider;->updateStatus(II)V

    .line 1188
    .end local v5           #intent:Landroid/content/Intent;
    :cond_ee
    iget v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mFixCount:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/android/internal/location/GpsLocationProvider;->mFixCount:I

    const/16 v9, 0xa

    if-lt v8, v9, :cond_107

    iget v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mFixInterval:I

    const/4 v9, 0x1

    if-le v8, v9, :cond_107

    .line 1189
    const-string v8, "GpsLocationProvider"

    const-string v9, "exceeded MIN_FIX_COUNT"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->hibernate()V

    .line 1192
    :cond_107
    return-void

    .line 1138
    :catchall_108
    move-exception v9

    :try_start_109
    monitor-exit v8
    :try_end_10a
    .catchall {:try_start_109 .. :try_end_10a} :catchall_108

    throw v9

    .line 1151
    :cond_10b
    :try_start_10b
    iget-object v9, p0, Lcom/android/internal/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v9}, Landroid/location/Location;->removeAltitude()V

    goto/16 :goto_8d

    .line 1177
    :catchall_112
    move-exception v9

    monitor-exit v8
    :try_end_114
    .catchall {:try_start_10b .. :try_end_114} :catchall_112

    throw v9

    .line 1156
    :cond_115
    :try_start_115
    iget-object v9, p0, Lcom/android/internal/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v9}, Landroid/location/Location;->removeSpeed()V

    goto :goto_9a

    .line 1161
    :cond_11b
    iget-object v9, p0, Lcom/android/internal/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v9}, Landroid/location/Location;->removeBearing()V

    goto :goto_a8

    .line 1169
    :cond_121
    iget-object v9, p0, Lcom/android/internal/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v9}, Landroid/location/Location;->removeAccuracy()V

    goto :goto_be

    .line 1174
    :catch_127
    move-exception v9

    move-object v3, v9

    .line 1175
    .restart local v3       #e:Landroid/os/RemoteException;
    const-string v9, "GpsLocationProvider"

    const-string v10, "RemoteException calling reportLocation"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_130
    .catchall {:try_start_115 .. :try_end_130} :catchall_112

    goto :goto_c5
.end method

.method private reportStatus(I)V
    .registers 13
    .parameter "status"

    .prologue
    const/4 v10, 0x1

    const-string v7, "RemoteException in reportStatus"

    const-string v7, "GpsLocationProvider"

    .line 1200
    iget-object v7, p0, Lcom/android/internal/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v7

    .line 1201
    :try_start_8
    iget-boolean v6, p0, Lcom/android/internal/location/GpsLocationProvider;->mNavigating:Z

    .line 1202
    .local v6, wasNavigating:Z
    if-ne p1, v10, :cond_15

    move v8, v10

    :goto_d
    iput-boolean v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mNavigating:Z

    .line 1204
    iget-boolean v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mNavigating:Z

    if-ne v6, v8, :cond_17

    .line 1205
    monitor-exit v7

    .line 1254
    :goto_14
    return-void

    .line 1202
    :cond_15
    const/4 v8, 0x0

    goto :goto_d

    .line 1208
    :cond_17
    iget-boolean v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mNavigating:Z

    if-eqz v8, :cond_27

    .line 1209
    const-string v8, "GpsLocationProvider"

    const-string v9, "Acquiring wakelock"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    iget-object v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1213
    :cond_27
    iget-object v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1214
    .local v4, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2e
    if-ge v1, v4, :cond_5b

    .line 1215
    iget-object v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/location/GpsLocationProvider$Listener;
    :try_end_38
    .catchall {:try_start_8 .. :try_end_38} :catchall_ac

    .line 1217
    .local v3, listener:Lcom/android/internal/location/GpsLocationProvider$Listener;
    :try_start_38
    iget-boolean v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mNavigating:Z

    if-eqz v8, :cond_44

    .line 1218
    iget-object v8, v3, Lcom/android/internal/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    invoke-interface {v8}, Landroid/location/IGpsStatusListener;->onGpsStarted()V

    .line 1214
    :goto_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 1220
    :cond_44
    iget-object v8, v3, Lcom/android/internal/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    invoke-interface {v8}, Landroid/location/IGpsStatusListener;->onGpsStopped()V
    :try_end_49
    .catchall {:try_start_38 .. :try_end_49} :catchall_ac
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_49} :catch_4a

    goto :goto_41

    .line 1222
    :catch_4a
    move-exception v8

    move-object v0, v8

    .line 1223
    .local v0, e:Landroid/os/RemoteException;
    :try_start_4c
    const-string v8, "GpsLocationProvider"

    const-string v9, "RemoteException in reportStatus"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    iget-object v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_58
    .catchall {:try_start_4c .. :try_end_58} :catchall_ac

    .line 1226
    add-int/lit8 v4, v4, -0x1

    goto :goto_41

    .line 1232
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v3           #listener:Lcom/android/internal/location/GpsLocationProvider$Listener;
    :cond_5b
    :try_start_5b
    iget-object v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v8}, Landroid/util/SparseIntArray;->size()I

    move-result v8

    sub-int v1, v8, v10

    :goto_63
    if-ltz v1, :cond_86

    .line 1233
    iget-object v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    .line 1234
    .local v5, uid:I
    iget-boolean v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mNavigating:Z

    if-eqz v8, :cond_77

    .line 1235
    iget-object v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v8, v5}, Lcom/android/internal/app/IBatteryStats;->noteStartGps(I)V

    .line 1232
    :goto_74
    add-int/lit8 v1, v1, -0x1

    goto :goto_63

    .line 1237
    :cond_77
    iget-object v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v8, v5}, Lcom/android/internal/app/IBatteryStats;->noteStopGps(I)V
    :try_end_7c
    .catchall {:try_start_5b .. :try_end_7c} :catchall_ac
    .catch Landroid/os/RemoteException; {:try_start_5b .. :try_end_7c} :catch_7d

    goto :goto_74

    .line 1240
    .end local v5           #uid:I
    :catch_7d
    move-exception v8

    move-object v0, v8

    .line 1241
    .restart local v0       #e:Landroid/os/RemoteException;
    :try_start_7f
    const-string v8, "GpsLocationProvider"

    const-string v9, "RemoteException in reportStatus"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_86
    new-instance v2, Landroid/content/Intent;

    const-string v8, "android.location.GPS_ENABLED_CHANGE"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1246
    .local v2, intent:Landroid/content/Intent;
    const-string v8, "enabled"

    iget-boolean v9, p0, Lcom/android/internal/location/GpsLocationProvider;->mNavigating:Z

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1247
    iget-object v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1249
    iget-boolean v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mNavigating:Z

    if-nez v8, :cond_a9

    .line 1250
    const-string v8, "GpsLocationProvider"

    const-string v9, "Releasing wakelock"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    iget-object v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1253
    :cond_a9
    monitor-exit v7

    goto/16 :goto_14

    .end local v1           #i:I
    .end local v2           #intent:Landroid/content/Intent;
    .end local v4           #size:I
    .end local v6           #wasNavigating:Z
    :catchall_ac
    move-exception v8

    monitor-exit v7
    :try_end_ae
    .catchall {:try_start_7f .. :try_end_ae} :catchall_ac

    throw v8
.end method

.method private reportSvStatus()V
    .registers 15

    .prologue
    .line 1261
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mSvs:[I

    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mSnrs:[F

    iget-object v3, p0, Lcom/android/internal/location/GpsLocationProvider;->mSvElevations:[F

    iget-object v4, p0, Lcom/android/internal/location/GpsLocationProvider;->mSvAzimuths:[F

    iget-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mSvMasks:[I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/location/GpsLocationProvider;->native_read_sv_status([I[F[F[F[I)I

    move-result v1

    .line 1263
    .local v1, svCount:I
    iget-object v11, p0, Lcom/android/internal/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v11

    .line 1264
    :try_start_12
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 1265
    .local v13, size:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_19
    if-ge v10, v13, :cond_53

    .line 1266
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/location/GpsLocationProvider$Listener;
    :try_end_23
    .catchall {:try_start_12 .. :try_end_23} :catchall_90

    .line 1268
    .local v12, listener:Lcom/android/internal/location/GpsLocationProvider$Listener;
    :try_start_23
    iget-object v0, v12, Lcom/android/internal/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mSvs:[I

    iget-object v3, p0, Lcom/android/internal/location/GpsLocationProvider;->mSnrs:[F

    iget-object v4, p0, Lcom/android/internal/location/GpsLocationProvider;->mSvElevations:[F

    iget-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mSvAzimuths:[F

    iget-object v6, p0, Lcom/android/internal/location/GpsLocationProvider;->mSvMasks:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    iget-object v7, p0, Lcom/android/internal/location/GpsLocationProvider;->mSvMasks:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    iget-object v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mSvMasks:[I

    const/4 v9, 0x2

    aget v8, v8, v9

    invoke-interface/range {v0 .. v8}, Landroid/location/IGpsStatusListener;->onSvStatusChanged(I[I[F[F[FIII)V
    :try_end_3f
    .catchall {:try_start_23 .. :try_end_3f} :catchall_90
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_3f} :catch_42

    .line 1265
    :goto_3f
    add-int/lit8 v10, v10, 0x1

    goto :goto_19

    .line 1271
    :catch_42
    move-exception v0

    move-object v9, v0

    .line 1272
    .local v9, e:Landroid/os/RemoteException;
    :try_start_44
    const-string v0, "GpsLocationProvider"

    const-string v2, "RemoteException in reportSvInfo"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1275
    add-int/lit8 v13, v13, -0x1

    goto :goto_3f

    .line 1278
    .end local v9           #e:Landroid/os/RemoteException;
    .end local v12           #listener:Lcom/android/internal/location/GpsLocationProvider$Listener;
    :cond_53
    monitor-exit v11
    :try_end_54
    .catchall {:try_start_44 .. :try_end_54} :catchall_90

    .line 1295
    iget v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mStatus:I

    invoke-direct {p0, v0, v1}, Lcom/android/internal/location/GpsLocationProvider;->updateStatus(II)V

    .line 1297
    iget-boolean v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mNavigating:Z

    if-eqz v0, :cond_8f

    iget v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8f

    .end local v1           #svCount:I
    iget-wide v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mLastFixTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_8f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/location/GpsLocationProvider;->mLastFixTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2710

    cmp-long v0, v2, v4

    if-lez v0, :cond_8f

    .line 1300
    new-instance v11, Landroid/content/Intent;

    const-string v0, "android.location.GPS_FIX_CHANGE"

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1301
    .local v11, intent:Landroid/content/Intent;
    const-string v0, "enabled"

    const/4 v1, 0x0

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1302
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1303
    const/4 v0, 0x1

    iget v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mSvCount:I

    invoke-direct {p0, v0, v1}, Lcom/android/internal/location/GpsLocationProvider;->updateStatus(II)V

    .line 1305
    .end local v11           #intent:Landroid/content/Intent;
    :cond_8f
    return-void

    .line 1278
    .end local v10           #i:I
    .end local v13           #size:I
    .restart local v1       #svCount:I
    :catchall_90
    move-exception v0

    :try_start_91
    monitor-exit v11
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_90

    throw v0
.end method

.method private saveSettings()V
    .registers 13

    .prologue
    const-string v11, "Exception closing file"

    const-string v10, "GpsLocationProvider"

    .line 1946
    const/4 v3, 0x0

    .line 1947
    .local v3, writer:Ljava/io/FileWriter;
    const-string v2, ""

    .line 1949
    .local v2, s:Ljava/lang/String;
    :try_start_7
    new-instance v1, Ljava/io/File;

    const-string v5, "/data/gps_env.conf"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1950
    .local v1, f:Ljava/io/File;
    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_87
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_13} :catch_6f

    .line 1951
    .end local v3           #writer:Ljava/io/FileWriter;
    .local v4, writer:Ljava/io/FileWriter;
    :try_start_13
    const-string v5, "%s=%d\n%s=%d\n%s=%d\n%s=%d\n%s=%d\n"

    const/16 v6, 0xa

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "XTRA_ENABLED"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget v8, Lcom/android/internal/location/GpsLocationProvider;->mXtraEnabled:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "XTRA_DOWNLOAD_DATE"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    sget-wide v8, Lcom/android/internal/location/GpsLocationProvider;->mXtraDownloadDate:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string v8, "XTRA_AUTO_DOWNLOAD_ENABLED"

    aput-object v8, v6, v7

    const/4 v7, 0x5

    sget v8, Lcom/android/internal/location/GpsLocationProvider;->mXtraAutoDownloadEnabled:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x6

    const-string v8, "XTRA_AUTO_DOWNLOAD_FREQUENCY"

    aput-object v8, v6, v7

    const/4 v7, 0x7

    sget v8, Lcom/android/internal/location/GpsLocationProvider;->mXtraAutoDownloadFrequency:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0x8

    const-string v8, "XTRA_POSITION_MODE"

    aput-object v8, v6, v7

    const/16 v7, 0x9

    iget v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mPositionMode:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1958
    invoke-virtual {v4, v2}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_68
    .catchall {:try_start_13 .. :try_end_68} :catchall_a0
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_68} :catch_a3

    .line 1961
    if-eqz v4, :cond_6d

    .line 1963
    :try_start_6a
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_97

    :cond_6d
    :goto_6d
    move-object v3, v4

    .line 1967
    .end local v1           #f:Ljava/io/File;
    .end local v4           #writer:Ljava/io/FileWriter;
    .restart local v3       #writer:Ljava/io/FileWriter;
    :cond_6e
    :goto_6e
    return-void

    .line 1959
    :catch_6f
    move-exception v5

    move-object v0, v5

    .local v0, e:Ljava/io/IOException;
    :goto_71
    :try_start_71
    const-string v5, "GpsLocationProvider"

    const-string v6, "Unable to write"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_78
    .catchall {:try_start_71 .. :try_end_78} :catchall_87

    .line 1961
    if-eqz v3, :cond_6e

    .line 1963
    :try_start_7a
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_7d} :catch_7e

    goto :goto_6e

    .line 1964
    :catch_7e
    move-exception v0

    const-string v5, "GpsLocationProvider"

    const-string v5, "Exception closing file"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6e

    .line 1961
    .end local v0           #e:Ljava/io/IOException;
    :catchall_87
    move-exception v5

    :goto_88
    if-eqz v3, :cond_8d

    .line 1963
    :try_start_8a
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_8d} :catch_8e

    .line 1961
    :cond_8d
    :goto_8d
    throw v5

    .line 1964
    :catch_8e
    move-exception v0

    .restart local v0       #e:Ljava/io/IOException;
    const-string v6, "GpsLocationProvider"

    const-string v6, "Exception closing file"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8d

    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #writer:Ljava/io/FileWriter;
    .restart local v1       #f:Ljava/io/File;
    .restart local v4       #writer:Ljava/io/FileWriter;
    :catch_97
    move-exception v0

    .restart local v0       #e:Ljava/io/IOException;
    const-string v5, "GpsLocationProvider"

    const-string v5, "Exception closing file"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6d

    .line 1961
    .end local v0           #e:Ljava/io/IOException;
    :catchall_a0
    move-exception v5

    move-object v3, v4

    .end local v4           #writer:Ljava/io/FileWriter;
    .restart local v3       #writer:Ljava/io/FileWriter;
    goto :goto_88

    .line 1959
    .end local v3           #writer:Ljava/io/FileWriter;
    .restart local v4       #writer:Ljava/io/FileWriter;
    :catch_a3
    move-exception v5

    move-object v0, v5

    move-object v3, v4

    .end local v4           #writer:Ljava/io/FileWriter;
    .restart local v3       #writer:Ljava/io/FileWriter;
    goto :goto_71
.end method

.method private updateStatus(II)V
    .registers 5
    .parameter "status"
    .parameter "svCount"

    .prologue
    .line 757
    iget v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mStatus:I

    if-ne p1, v0, :cond_8

    iget v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mSvCount:I

    if-eq p2, v0, :cond_19

    .line 758
    :cond_8
    iput p1, p0, Lcom/android/internal/location/GpsLocationProvider;->mStatus:I

    .line 759
    iput p2, p0, Lcom/android/internal/location/GpsLocationProvider;->mSvCount:I

    .line 760
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    const-string v1, "satellites"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 761
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mStatusUpdateTime:J

    .line 763
    :cond_19
    return-void
.end method

.method private xtraAutoDownloadRequest()V
    .registers 3

    .prologue
    .line 1366
    sget v0, Lcom/android/internal/location/GpsLocationProvider;->mXtraEnabled:I

    if-nez v0, :cond_5

    .line 1372
    :cond_4
    :goto_4
    return-void

    .line 1367
    :cond_5
    sget v0, Lcom/android/internal/location/GpsLocationProvider;->mXtraAutoDownloadEnabled:I

    if-eqz v0, :cond_4

    .line 1368
    const-string v0, "GpsLocationProvider"

    const-string v1, "xtraAutoDownloadRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mNetworkThread:Lcom/android/internal/location/GpsLocationProvider$GpsNetworkThread;

    if-eqz v0, :cond_4

    .line 1370
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mNetworkThread:Lcom/android/internal/location/GpsLocationProvider$GpsNetworkThread;

    invoke-virtual {v0}, Lcom/android/internal/location/GpsLocationProvider$GpsNetworkThread;->xtraAutoDownloadRequest()V

    goto :goto_4
.end method

.method private xtraTimeInjectionRequest()V
    .registers 1

    .prologue
    .line 1375
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->forceTimeInjection()Z

    .line 1376
    return-void
.end method


# virtual methods
.method public addListener(I)V
    .registers 7
    .parameter "uid"

    .prologue
    const-string v1, "GpsLocationProvider"

    .line 815
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 816
    :try_start_5
    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_27

    .line 818
    const-string v2, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Duplicate add listener for uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    monitor-exit v1

    .line 830
    :goto_26
    return-void

    .line 821
    :cond_27
    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 822
    iget-boolean v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mNavigating:Z
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_38

    if-eqz v2, :cond_36

    .line 824
    :try_start_31
    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v2, p1}, Lcom/android/internal/app/IBatteryStats;->noteStartGps(I)V
    :try_end_36
    .catchall {:try_start_31 .. :try_end_36} :catchall_38
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_36} :catch_3b

    .line 829
    :cond_36
    :goto_36
    :try_start_36
    monitor-exit v1

    goto :goto_26

    :catchall_38
    move-exception v2

    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_36 .. :try_end_3a} :catchall_38

    throw v2

    .line 825
    :catch_3b
    move-exception v2

    move-object v0, v2

    .line 826
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3d
    const-string v2, "GpsLocationProvider"

    const-string v3, "RemoteException in addListener"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catchall {:try_start_3d .. :try_end_44} :catchall_38

    goto :goto_36
.end method

.method public broadcastXtraSettings()V
    .registers 5

    .prologue
    .line 1936
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/android/internal/location/GpsLocationProvider;->INTENT_XTRA_SETTING_CHANGED:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1937
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "xtra_enabled"

    sget v2, Lcom/android/internal/location/GpsLocationProvider;->mXtraEnabled:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1938
    const-string v1, "xtra_download_date"

    sget-wide v2, Lcom/android/internal/location/GpsLocationProvider;->mXtraDownloadDate:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1939
    const-string v1, "xtra_auto_download"

    sget v2, Lcom/android/internal/location/GpsLocationProvider;->mXtraAutoDownloadEnabled:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1940
    const-string v1, "xtra_auto_download_frequency"

    sget v2, Lcom/android/internal/location/GpsLocationProvider;->mXtraAutoDownloadFrequency:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1941
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1942
    return-void
.end method

.method public declared-synchronized disable()V
    .registers 4

    .prologue
    const-string v1, "GpsLocationProvider"

    .line 714
    monitor-enter p0

    :try_start_3
    const-string v1, "GpsLocationProvider"

    const-string v2, "disable"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    iget-boolean v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mEnabled:Z
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_3d

    if-nez v1, :cond_10

    .line 743
    :goto_e
    monitor-exit p0

    return-void

    .line 717
    :cond_10
    const/4 v1, 0x0

    :try_start_11
    iput-boolean v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mEnabled:Z

    .line 718
    invoke-virtual {p0}, Lcom/android/internal/location/GpsLocationProvider;->stopNavigating()V

    .line 719
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->native_disable()V

    .line 722
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mEventThread:Lcom/android/internal/location/GpsLocationProvider$GpsEventThread;
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_3d

    if-eqz v1, :cond_25

    .line 724
    :try_start_1d
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mEventThread:Lcom/android/internal/location/GpsLocationProvider$GpsEventThread;

    invoke-virtual {v1}, Lcom/android/internal/location/GpsLocationProvider$GpsEventThread;->join()V
    :try_end_22
    .catchall {:try_start_1d .. :try_end_22} :catchall_3d
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_22} :catch_40

    .line 728
    :goto_22
    const/4 v1, 0x0

    :try_start_23
    iput-object v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mEventThread:Lcom/android/internal/location/GpsLocationProvider$GpsEventThread;

    .line 731
    :cond_25
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mNetworkThread:Lcom/android/internal/location/GpsLocationProvider$GpsNetworkThread;

    if-eqz v1, :cond_31

    .line 732
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mNetworkThread:Lcom/android/internal/location/GpsLocationProvider$GpsNetworkThread;

    invoke-virtual {v1}, Lcom/android/internal/location/GpsLocationProvider$GpsNetworkThread;->setDone()V

    .line 733
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mNetworkThread:Lcom/android/internal/location/GpsLocationProvider$GpsNetworkThread;

    .line 738
    :cond_31
    iget-boolean v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mNavigating:Z

    if-eqz v1, :cond_39

    .line 739
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/internal/location/GpsLocationProvider;->reportStatus(I)V

    .line 742
    :cond_39
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->native_cleanup()V
    :try_end_3c
    .catchall {:try_start_23 .. :try_end_3c} :catchall_3d

    goto :goto_e

    .line 714
    :catchall_3d
    move-exception v1

    monitor-exit p0

    throw v1

    .line 725
    :catch_40
    move-exception v1

    move-object v0, v1

    .line 726
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_42
    const-string v1, "GpsLocationProvider"

    const-string v2, "InterruptedException when joining mEventThread"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catchall {:try_start_42 .. :try_end_49} :catchall_3d

    goto :goto_22
.end method

.method public declared-synchronized enable()V
    .registers 3

    .prologue
    const-string v0, "GpsLocationProvider"

    .line 685
    monitor-enter p0

    :try_start_3
    const-string v0, "GpsLocationProvider"

    const-string v1, "enable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    iget-boolean v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mEnabled:Z
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_3d

    if-eqz v0, :cond_10

    .line 706
    :cond_e
    :goto_e
    monitor-exit p0

    return-void

    .line 687
    :cond_10
    :try_start_10
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->native_init()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mEnabled:Z

    .line 689
    iget-boolean v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mEnabled:Z

    if-eqz v0, :cond_46

    .line 691
    new-instance v0, Lcom/android/internal/location/GpsLocationProvider$GpsEventThread;

    invoke-direct {v0, p0}, Lcom/android/internal/location/GpsLocationProvider$GpsEventThread;-><init>(Lcom/android/internal/location/GpsLocationProvider;)V

    iput-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mEventThread:Lcom/android/internal/location/GpsLocationProvider$GpsEventThread;

    .line 692
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mEventThread:Lcom/android/internal/location/GpsLocationProvider$GpsEventThread;

    invoke-virtual {v0}, Lcom/android/internal/location/GpsLocationProvider$GpsEventThread;->start()V

    .line 694
    invoke-virtual {p0}, Lcom/android/internal/location/GpsLocationProvider;->requiresNetwork()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 696
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mNetworkThread:Lcom/android/internal/location/GpsLocationProvider$GpsNetworkThread;

    if-nez v0, :cond_40

    .line 697
    new-instance v0, Lcom/android/internal/location/GpsLocationProvider$GpsNetworkThread;

    invoke-direct {v0, p0}, Lcom/android/internal/location/GpsLocationProvider$GpsNetworkThread;-><init>(Lcom/android/internal/location/GpsLocationProvider;)V

    iput-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mNetworkThread:Lcom/android/internal/location/GpsLocationProvider$GpsNetworkThread;

    .line 698
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mNetworkThread:Lcom/android/internal/location/GpsLocationProvider$GpsNetworkThread;

    invoke-virtual {v0}, Lcom/android/internal/location/GpsLocationProvider$GpsNetworkThread;->start()V
    :try_end_3c
    .catchall {:try_start_10 .. :try_end_3c} :catchall_3d

    goto :goto_e

    .line 685
    :catchall_3d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 700
    :cond_40
    :try_start_40
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mNetworkThread:Lcom/android/internal/location/GpsLocationProvider$GpsNetworkThread;

    invoke-virtual {v0}, Lcom/android/internal/location/GpsLocationProvider$GpsNetworkThread;->signal()V

    goto :goto_e

    .line 704
    :cond_46
    const-string v0, "GpsLocationProvider"

    const-string v1, "Failed to enable location provider"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catchall {:try_start_40 .. :try_end_4d} :catchall_3d

    goto :goto_e
.end method

.method public enableLocationTracking(Z)V
    .registers 4
    .parameter "enable"

    .prologue
    .line 770
    if-eqz p1, :cond_d

    .line 771
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mTTFF:I

    .line 772
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mLastFixTime:J

    .line 773
    invoke-virtual {p0}, Lcom/android/internal/location/GpsLocationProvider;->startNavigating()V

    .line 779
    :goto_c
    return-void

    .line 775
    :cond_d
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 776
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 777
    invoke-virtual {p0}, Lcom/android/internal/location/GpsLocationProvider;->stopNavigating()V

    goto :goto_c
.end method

.method public factoryTestStart()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 1913
    iget-boolean v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mFactoryTestStarted:Z

    if-eqz v1, :cond_7

    move v1, v3

    .line 1922
    :goto_6
    return v1

    .line 1914
    :cond_7
    iget-boolean v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mEnabled:Z

    if-nez v1, :cond_11

    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->native_init()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mEnabled:Z

    .line 1915
    :cond_11
    const-string v1, "GpsLocationProvider"

    const-string v2, "[FT]factoryTestStart()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1916
    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/location/GpsLocationProvider;->native_start(IZI)Z

    .line 1917
    iput-boolean v3, p0, Lcom/android/internal/location/GpsLocationProvider;->mFactoryTestStarted:Z

    .line 1918
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mFactoryTestStertTime:J

    .line 1920
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.gps.GPS_FT_BEGIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1921
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move v1, v3

    .line 1922
    goto :goto_6
.end method

.method public factoryTestStop()Z
    .registers 3

    .prologue
    .line 1925
    iget-boolean v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mEnabled:Z

    if-nez v0, :cond_a

    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->native_init()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mEnabled:Z

    .line 1926
    :cond_a
    const-string v0, "GpsLocationProvider"

    const-string v1, "[FT]factoryTestStop()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1927
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->native_stop()Z

    .line 1928
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mFactoryTestStarted:Z

    .line 1929
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mFactoryTestStertTime:J

    .line 1930
    const/4 v0, 0x1

    return v0
.end method

.method public getAccuracy()I
    .registers 2

    .prologue
    .line 676
    const/4 v0, 0x1

    return v0
.end method

.method public getGpsStatusProvider()Landroid/location/IGpsStatusProvider;
    .registers 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

    return-object v0
.end method

.method public getNetInitiatedListener()Landroid/location/INetInitiatedListener;
    .registers 2

    .prologue
    .line 1419
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    return-object v0
.end method

.method public getPositionMode()I
    .registers 2

    .prologue
    .line 1763
    iget v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mPositionMode:I

    return v0
.end method

.method public getPowerRequirement()I
    .registers 2

    .prologue
    .line 666
    const/4 v0, 0x3

    return v0
.end method

.method public getSlpMode()I
    .registers 2

    .prologue
    .line 1794
    iget v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mSlpMode:I

    return v0
.end method

.method public getStatus(Landroid/os/Bundle;)I
    .registers 4
    .parameter "extras"

    .prologue
    .line 750
    if-eqz p1, :cond_9

    .line 751
    const-string v0, "satellites"

    iget v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mSvCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 753
    :cond_9
    iget v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mStatus:I

    return v0
.end method

.method public getStatusUpdateTime()J
    .registers 3

    .prologue
    .line 766
    iget-wide v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mStatusUpdateTime:J

    return-wide v0
.end method

.method public getSuplAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1792
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mSuplHost:Ljava/lang/String;

    return-object v0
.end method

.method public getSuplPort()I
    .registers 2

    .prologue
    .line 1793
    iget v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mSuplPort:I

    return v0
.end method

.method public hasMonetaryCost()Z
    .registers 2

    .prologue
    .line 626
    const/4 v0, 0x0

    return v0
.end method

.method public injectTime(JJI)V
    .registers 6
    .parameter "time"
    .parameter "timeReference"
    .parameter "uncertainty"

    .prologue
    .line 1866
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/location/GpsLocationProvider;->native_inject_time(JJI)V

    .line 1867
    return-void
.end method

.method public injectXtraData([BI)V
    .registers 3
    .parameter "data"
    .parameter "length"

    .prologue
    .line 1872
    invoke-direct {p0, p1, p2}, Lcom/android/internal/location/GpsLocationProvider;->native_inject_xtra_data([BI)V

    .line 1873
    return-void
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 746
    iget-boolean v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mEnabled:Z

    return v0
.end method

.method public loadTlsSetting()V
    .registers 8

    .prologue
    const-string v6, "GpsLocationProvider"

    .line 1877
    const-string v4, "GpsLocationProvider"

    const-string v4, "[agps] loadTlsSetting()"

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1880
    :try_start_9
    new-instance v1, Ljava/io/File;

    const-string v4, "/data/ext_gps.conf"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1881
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_38

    .line 1882
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1883
    .local v3, stream:Ljava/io/FileInputStream;
    iget-object v4, p0, Lcom/android/internal/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    invoke-virtual {v4, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 1884
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 1885
    iget-object v4, p0, Lcom/android/internal/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v5, "TLS"

    invoke-virtual {v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_2a} :catch_39

    move-result-object v2

    .line 1887
    .local v2, strTls:Ljava/lang/String;
    :try_start_2b
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/internal/location/GpsLocationProvider;->mTls:I
    :try_end_31
    .catch Ljava/lang/NumberFormatException; {:try_start_2b .. :try_end_31} :catch_43
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_31} :catch_39

    .line 1889
    :goto_31
    :try_start_31
    const-string v4, "GpsLocationProvider"

    const-string v5, "Read TLS setting from file: /data/ext_gps.conf"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_38} :catch_39

    .line 1894
    .end local v1           #file:Ljava/io/File;
    .end local v2           #strTls:Ljava/lang/String;
    .end local v3           #stream:Ljava/io/FileInputStream;
    :cond_38
    :goto_38
    return-void

    .line 1891
    :catch_39
    move-exception v4

    move-object v0, v4

    .line 1892
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "GpsLocationProvider"

    const-string v4, "Could not open GPS configuration file /data/ext_gps.conf"

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    .line 1888
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #file:Ljava/io/File;
    .restart local v2       #strTls:Ljava/lang/String;
    .restart local v3       #stream:Ljava/io/FileInputStream;
    :catch_43
    move-exception v4

    goto :goto_31
.end method

.method public removeListener(I)V
    .registers 7
    .parameter "uid"

    .prologue
    const-string v1, "GpsLocationProvider"

    .line 833
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 834
    :try_start_5
    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-gez v2, :cond_27

    .line 836
    const-string v2, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unneeded remove listener for uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    monitor-exit v1

    .line 848
    :goto_26
    return-void

    .line 839
    :cond_27
    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 840
    iget-boolean v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mNavigating:Z
    :try_end_2e
    .catchall {:try_start_5 .. :try_end_2e} :catchall_37

    if-eqz v2, :cond_35

    .line 842
    :try_start_30
    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v2, p1}, Lcom/android/internal/app/IBatteryStats;->noteStopGps(I)V
    :try_end_35
    .catchall {:try_start_30 .. :try_end_35} :catchall_37
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_35} :catch_3a

    .line 847
    :cond_35
    :goto_35
    :try_start_35
    monitor-exit v1

    goto :goto_26

    :catchall_37
    move-exception v2

    monitor-exit v1
    :try_end_39
    .catchall {:try_start_35 .. :try_end_39} :catchall_37

    throw v2

    .line 843
    :catch_3a
    move-exception v2

    move-object v0, v2

    .line 844
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3c
    const-string v2, "GpsLocationProvider"

    const-string v3, "RemoteException in removeListener"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catchall {:try_start_3c .. :try_end_43} :catchall_37

    goto :goto_35
.end method

.method public reportNiNotification(IIIIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .registers 22
    .parameter "notificationId"
    .parameter "niType"
    .parameter "notifyFlags"
    .parameter "timeout"
    .parameter "defaultResponse"
    .parameter "requestorId"
    .parameter "text"
    .parameter "requestorIdEncoding"
    .parameter "textEncoding"
    .parameter "extras"

    .prologue
    .line 1437
    const-string v8, "GpsLocationProvider"

    const-string v9, "reportNiNotification: entered"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    const-string v8, "GpsLocationProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "notificationId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", niType: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", notifyFlags: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", timeout: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", defaultResponse: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v0, v9

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    const-string v8, "GpsLocationProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "requestorId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v0, v9

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", text: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v0, v9

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", requestorIdEncoding: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v0, v9

    move/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", textEncoding: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v0, v9

    move/from16 v1, p9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    new-instance v7, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;

    invoke-direct {v7}, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;-><init>()V

    .line 1451
    .local v7, notification:Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;
    iput p1, v7, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    .line 1452
    iput p2, v7, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->niType:I

    .line 1453
    and-int/lit8 v8, p3, 0x1

    if-eqz v8, :cond_102

    const/4 v8, 0x1

    :goto_9a
    iput-boolean v8, v7, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needNotify:Z

    .line 1454
    and-int/lit8 v8, p3, 0x2

    if-eqz v8, :cond_104

    const/4 v8, 0x1

    :goto_a1
    iput-boolean v8, v7, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needVerify:Z

    .line 1455
    and-int/lit8 v8, p3, 0x4

    if-eqz v8, :cond_106

    const/4 v8, 0x1

    :goto_a8
    iput-boolean v8, v7, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->privacyOverride:Z

    .line 1456
    iput p4, v7, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->timeout:I

    .line 1457
    move/from16 v0, p5

    move-object v1, v7

    iput v0, v1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->defaultResponse:I

    .line 1458
    move-object/from16 v0, p6

    move-object v1, v7

    iput-object v0, v1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorId:Ljava/lang/String;

    .line 1459
    move-object/from16 v0, p7

    move-object v1, v7

    iput-object v0, v1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->text:Ljava/lang/String;

    .line 1460
    move/from16 v0, p8

    move-object v1, v7

    iput v0, v1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorIdEncoding:I

    .line 1461
    move/from16 v0, p9

    move-object v1, v7

    iput v0, v1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->textEncoding:I

    .line 1465
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1467
    .local v2, bundle:Landroid/os/Bundle;
    if-nez p10, :cond_ce

    const-string p10, ""

    .line 1468
    :cond_ce
    new-instance v5, Ljava/util/Properties;

    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    .line 1470
    .local v5, extraProp:Ljava/util/Properties;
    :try_start_d3
    new-instance v8, Ljava/io/StringBufferInputStream;

    move-object v0, v8

    move-object/from16 v1, p10

    invoke-direct {v0, v1}, Ljava/io/StringBufferInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_de
    .catch Ljava/io/IOException; {:try_start_d3 .. :try_end_de} :catch_108

    .line 1477
    :goto_de
    invoke-virtual {v5}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .end local p1
    .end local p2
    .local v6, i$:Ljava/util/Iterator;
    :goto_e6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_126

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1479
    .local v4, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e6

    .line 1453
    .end local v2           #bundle:Landroid/os/Bundle;
    .end local v4           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v5           #extraProp:Ljava/util/Properties;
    .end local v6           #i$:Ljava/util/Iterator;
    .restart local p1
    .restart local p2
    :cond_102
    const/4 v8, 0x0

    goto :goto_9a

    .line 1454
    :cond_104
    const/4 v8, 0x0

    goto :goto_a1

    .line 1455
    :cond_106
    const/4 v8, 0x0

    goto :goto_a8

    .line 1472
    .restart local v2       #bundle:Landroid/os/Bundle;
    .restart local v5       #extraProp:Ljava/util/Properties;
    :catch_108
    move-exception v8

    move-object v3, v8

    .line 1474
    .local v3, e:Ljava/io/IOException;
    const-string v8, "GpsLocationProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "reportNiNotification cannot parse extras data: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v0, v9

    move-object/from16 v1, p10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_de

    .line 1482
    .end local v3           #e:Ljava/io/IOException;
    .end local p1
    .end local p2
    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_126
    iput-object v2, v7, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->extras:Landroid/os/Bundle;

    .line 1484
    iget-object v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-virtual {v8, v7}, Lcom/android/internal/location/GpsNetInitiatedHandler;->handleNiNotification(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)V

    .line 1485
    return-void
.end method

.method public requiresCell()Z
    .registers 2

    .prologue
    .line 617
    const/4 v0, 0x0

    return v0
.end method

.method public requiresNetwork()Z
    .registers 2

    .prologue
    .line 575
    const/4 v0, 0x1

    return v0
.end method

.method public requiresSatellite()Z
    .registers 2

    .prologue
    .line 608
    const/4 v0, 0x1

    return v0
.end method

.method public sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 10
    .parameter "command"
    .parameter "extras"

    .prologue
    const/4 v3, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v6, "GpsLocationProvider"

    .line 852
    const-string v2, "tls_enable"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 853
    invoke-virtual {p0, v4}, Lcom/android/internal/location/GpsLocationProvider;->setTls(I)Z

    move v2, v4

    .line 949
    :goto_11
    return v2

    .line 856
    :cond_12
    const-string v2, "tls_disable"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 857
    invoke-virtual {p0, v5}, Lcom/android/internal/location/GpsLocationProvider;->setTls(I)Z

    move v2, v4

    .line 858
    goto :goto_11

    .line 863
    :cond_1f
    const-string v2, "gps_ft_start"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 864
    invoke-virtual {p0}, Lcom/android/internal/location/GpsLocationProvider;->factoryTestStart()Z

    move-result v2

    goto :goto_11

    .line 866
    :cond_2c
    const-string v2, "gps_ft_stop"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 867
    invoke-virtual {p0}, Lcom/android/internal/location/GpsLocationProvider;->factoryTestStop()Z

    move-result v2

    goto :goto_11

    .line 872
    :cond_39
    const-string v2, "set_xtra_enable"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 873
    sget v2, Lcom/android/internal/location/GpsLocationProvider;->mXtraEnabled:I

    if-eq v2, v4, :cond_4a

    .line 874
    sput v4, Lcom/android/internal/location/GpsLocationProvider;->mXtraEnabled:I

    .line 875
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->saveSettings()V

    :cond_4a
    move v2, v4

    .line 877
    goto :goto_11

    .line 879
    :cond_4c
    const-string v2, "set_xtra_disable"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 880
    sget v2, Lcom/android/internal/location/GpsLocationProvider;->mXtraEnabled:I

    if-eqz v2, :cond_5d

    .line 881
    sput v5, Lcom/android/internal/location/GpsLocationProvider;->mXtraEnabled:I

    .line 882
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->saveSettings()V

    :cond_5d
    move v2, v4

    .line 884
    goto :goto_11

    .line 886
    :cond_5f
    const-string v2, "call_xtra_setting"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 887
    invoke-virtual {p0}, Lcom/android/internal/location/GpsLocationProvider;->broadcastXtraSettings()V

    move v2, v4

    .line 888
    goto :goto_11

    .line 890
    :cond_6c
    const-string v2, "set_xtra_auto_download_enable"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_82

    .line 891
    sget v2, Lcom/android/internal/location/GpsLocationProvider;->mXtraAutoDownloadEnabled:I

    if-eq v2, v4, :cond_80

    .line 892
    sput v4, Lcom/android/internal/location/GpsLocationProvider;->mXtraAutoDownloadEnabled:I

    .line 893
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->saveSettings()V

    .line 894
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->xtraAutoDownloadRequest()V

    :cond_80
    move v2, v4

    .line 896
    goto :goto_11

    .line 898
    :cond_82
    const-string v2, "set_xtra_auto_download_disable"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_99

    .line 899
    sget v2, Lcom/android/internal/location/GpsLocationProvider;->mXtraAutoDownloadEnabled:I

    if-eqz v2, :cond_96

    .line 900
    sput v5, Lcom/android/internal/location/GpsLocationProvider;->mXtraAutoDownloadEnabled:I

    .line 901
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->saveSettings()V

    .line 902
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->xtraAutoDownloadRequest()V

    :cond_96
    move v2, v4

    .line 904
    goto/16 :goto_11

    .line 906
    :cond_99
    const-string v2, "set_xtra_download_frequency_1_min"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b0

    .line 907
    sget v2, Lcom/android/internal/location/GpsLocationProvider;->mXtraAutoDownloadFrequency:I

    if-eqz v2, :cond_ad

    .line 908
    sput v5, Lcom/android/internal/location/GpsLocationProvider;->mXtraAutoDownloadFrequency:I

    .line 909
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->saveSettings()V

    .line 910
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->xtraAutoDownloadRequest()V

    :cond_ad
    move v2, v4

    .line 912
    goto/16 :goto_11

    .line 914
    :cond_b0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 915
    .local v0, command_prefix:Ljava/lang/String;
    const-string v2, "set_xtra_download_frequency_"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ed

    .line 917
    :try_start_c1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/internal/location/GpsLocationProvider;->mXtraAutoDownloadFrequency:I
    :try_end_d4
    .catch Ljava/lang/NumberFormatException; {:try_start_c1 .. :try_end_d4} :catch_e3

    .line 919
    :goto_d4
    sget v2, Lcom/android/internal/location/GpsLocationProvider;->mXtraAutoDownloadFrequency:I

    if-ge v2, v4, :cond_da

    sput v4, Lcom/android/internal/location/GpsLocationProvider;->mXtraAutoDownloadFrequency:I

    .line 920
    :cond_da
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->saveSettings()V

    .line 921
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->xtraAutoDownloadRequest()V

    move v2, v4

    .line 922
    goto/16 :goto_11

    .line 918
    :catch_e3
    move-exception v2

    move-object v1, v2

    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v2, "GpsLocationProvider"

    const-string v2, "unable to parse xtra_download_frequency"

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d4

    .line 924
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :cond_ed
    const-string v2, "request_xtra_download"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10b

    .line 925
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->native_supports_xtra()Z

    move-result v2

    if-eqz v2, :cond_108

    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mNetworkThread:Lcom/android/internal/location/GpsLocationProvider$GpsNetworkThread;

    if-eqz v2, :cond_108

    .line 926
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->forceTimeInjection()Z

    .line 927
    invoke-virtual {p0}, Lcom/android/internal/location/GpsLocationProvider;->xtraDownloadRequest()V

    move v2, v4

    .line 928
    goto/16 :goto_11

    :cond_108
    move v2, v4

    .line 930
    goto/16 :goto_11

    .line 934
    :cond_10b
    const-string v2, "delete_aiding_data"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_119

    .line 935
    invoke-direct {p0, p2}, Lcom/android/internal/location/GpsLocationProvider;->deleteAidingData(Landroid/os/Bundle;)Z

    move-result v2

    goto/16 :goto_11

    .line 937
    :cond_119
    const-string v2, "force_time_injection"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_127

    .line 938
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->forceTimeInjection()Z

    move-result v2

    goto/16 :goto_11

    .line 940
    :cond_127
    const-string v2, "force_xtra_injection"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_142

    .line 941
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->native_supports_xtra()Z

    move-result v2

    if-eqz v2, :cond_13f

    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mNetworkThread:Lcom/android/internal/location/GpsLocationProvider$GpsNetworkThread;

    if-eqz v2, :cond_13f

    .line 942
    invoke-virtual {p0}, Lcom/android/internal/location/GpsLocationProvider;->xtraDownloadRequest()V

    move v2, v4

    .line 943
    goto/16 :goto_11

    :cond_13f
    move v2, v5

    .line 945
    goto/16 :goto_11

    .line 948
    :cond_142
    const-string v2, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendExtraCommand: unknown command "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v5

    .line 949
    goto/16 :goto_11
.end method

.method public setMinTime(J)V
    .registers 7
    .parameter "minTime"

    .prologue
    .line 782
    const-string v1, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMinTime "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-ltz v1, :cond_29

    .line 785
    const-wide/16 v1, 0x3e8

    div-long v1, p1, v1

    long-to-int v0, v1

    .line 786
    .local v0, interval:I
    const/4 v1, 0x1

    if-ge v0, v1, :cond_27

    .line 787
    const/4 v0, 0x1

    .line 789
    :cond_27
    iput v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mFixInterval:I

    .line 791
    .end local v0           #interval:I
    :cond_29
    return-void
.end method

.method public setPositionMode(I)V
    .registers 2
    .parameter "positionMode"

    .prologue
    .line 1764
    iput p1, p0, Lcom/android/internal/location/GpsLocationProvider;->mPositionMode:I

    return-void
.end method

.method public setSlpMode(I)V
    .registers 3
    .parameter "slpMode"

    .prologue
    .line 1803
    iput p1, p0, Lcom/android/internal/location/GpsLocationProvider;->mSlpMode:I

    .line 1804
    iget v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mSlpMode:I

    if-nez v0, :cond_9

    .line 1805
    invoke-virtual {p0}, Lcom/android/internal/location/GpsLocationProvider;->setSuplAuto()V

    .line 1807
    :cond_9
    return-void
.end method

.method public setSuplAddress(Ljava/lang/String;)V
    .registers 5
    .parameter "addr"

    .prologue
    const/4 v2, 0x1

    .line 1797
    iput-object p1, p0, Lcom/android/internal/location/GpsLocationProvider;->mSuplHost:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mSetSuplServer:Z

    .line 1798
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mSuplHost:Ljava/lang/String;

    iget v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mSuplPort:I

    invoke-direct {p0, v2, v0, v1}, Lcom/android/internal/location/GpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 1799
    return-void
.end method

.method public setSuplAuto()V
    .registers 13

    .prologue
    const/4 v9, 0x1

    const-string v11, "supl.vodafone.com"

    const-string v10, "agpss.orange.fr"

    const-string v8, "agpss.orange.co.uk"

    const-string v7, "ORG"

    .line 1826
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v5

    .line 1827
    .local v5, oper:Ljava/lang/String;
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    .line 1828
    .local v0, country:Ljava/lang/String;
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getMccCode()Ljava/lang/String;

    move-result-object v1

    .line 1829
    .local v1, mcc:Ljava/lang/String;
    const/4 v2, 0x0

    .line 1830
    .local v2, mcc_i:I
    :try_start_16
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_19
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_19} :catch_104

    move-result v2

    .line 1831
    :goto_1a
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getMncCode()Ljava/lang/String;

    move-result-object v3

    .line 1832
    .local v3, mnc:Ljava/lang/String;
    const/4 v4, 0x0

    .line 1833
    .local v4, mnc_i:I
    :try_start_1f
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/lang/NumberFormatException; {:try_start_1f .. :try_end_22} :catch_107

    move-result v4

    .line 1835
    :goto_23
    const-string v6, "lge.glpals.com"

    iput-object v6, p0, Lcom/android/internal/location/GpsLocationProvider;->mSuplHost:Ljava/lang/String;

    .line 1836
    const/16 v6, 0x1c6b

    iput v6, p0, Lcom/android/internal/location/GpsLocationProvider;->mSuplPort:I

    .line 1838
    const-string v6, "ORG"

    invoke-virtual {v7, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_3f

    const-string v6, "FR"

    invoke-virtual {v6, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_3f

    const-string v6, "agpss.orange.fr"

    iput-object v10, p0, Lcom/android/internal/location/GpsLocationProvider;->mSuplHost:Ljava/lang/String;

    .line 1839
    :cond_3f
    const-string v6, "ORG"

    invoke-virtual {v7, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_53

    const-string v6, "GB"

    invoke-virtual {v6, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_53

    const-string v6, "agpss.orange.co.uk"

    iput-object v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mSuplHost:Ljava/lang/String;

    .line 1840
    :cond_53
    const-string v6, "VDF"

    invoke-virtual {v6, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_67

    const-string v6, "DE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_67

    const-string v6, "supl.vodafone.com"

    iput-object v11, p0, Lcom/android/internal/location/GpsLocationProvider;->mSuplHost:Ljava/lang/String;

    .line 1844
    :cond_67
    const-string v6, "SFR"

    invoke-virtual {v6, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_73

    const-string v6, "geoloc2.sfr.fr"

    iput-object v6, p0, Lcom/android/internal/location/GpsLocationProvider;->mSuplHost:Ljava/lang/String;

    .line 1847
    :cond_73
    const-string v6, "TSR"

    invoke-virtual {v6, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_7f

    const-string v6, "agps.supl.telstra.com"

    iput-object v6, p0, Lcom/android/internal/location/GpsLocationProvider;->mSuplHost:Ljava/lang/String;

    .line 1849
    :cond_7f
    const/16 v6, 0xd0

    if-ne v2, v6, :cond_89

    if-ne v4, v9, :cond_89

    const-string v6, "agpss.orange.fr"

    iput-object v10, p0, Lcom/android/internal/location/GpsLocationProvider;->mSuplHost:Ljava/lang/String;

    .line 1850
    :cond_89
    const/16 v6, 0xea

    if-ne v2, v6, :cond_95

    const/16 v6, 0x21

    if-ne v4, v6, :cond_95

    const-string v6, "agpss.orange.co.uk"

    iput-object v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mSuplHost:Ljava/lang/String;

    .line 1851
    :cond_95
    const/16 v6, 0x106

    if-ne v2, v6, :cond_a0

    const/4 v6, 0x2

    if-ne v4, v6, :cond_a0

    const-string v6, "supl.vodafone.com"

    iput-object v11, p0, Lcom/android/internal/location/GpsLocationProvider;->mSuplHost:Ljava/lang/String;

    .line 1854
    :cond_a0
    const/16 v6, 0x12e

    if-ne v2, v6, :cond_ac

    const/16 v6, 0xdc

    if-ne v4, v6, :cond_ac

    const-string v6, "supl.telusmobility.com"

    iput-object v6, p0, Lcom/android/internal/location/GpsLocationProvider;->mSuplHost:Ljava/lang/String;

    .line 1855
    :cond_ac
    const/16 v6, 0x1c2

    if-ne v2, v6, :cond_b8

    const/16 v6, 0x8

    if-ne v4, v6, :cond_b8

    const-string v6, "221.148.242.107"

    iput-object v6, p0, Lcom/android/internal/location/GpsLocationProvider;->mSuplHost:Ljava/lang/String;

    .line 1857
    :cond_b8
    iput-boolean v9, p0, Lcom/android/internal/location/GpsLocationProvider;->mSetSuplServer:Z

    .line 1858
    const-string v6, "GpsLocationProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Operator="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", Country="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", MCC="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", MNC="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", SUPL="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mSuplHost:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1861
    iget-object v6, p0, Lcom/android/internal/location/GpsLocationProvider;->mSuplHost:Ljava/lang/String;

    iget v7, p0, Lcom/android/internal/location/GpsLocationProvider;->mSuplPort:I

    invoke-direct {p0, v9, v6, v7}, Lcom/android/internal/location/GpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 1862
    return-void

    .line 1830
    .end local v3           #mnc:Ljava/lang/String;
    .end local v4           #mnc_i:I
    :catch_104
    move-exception v6

    goto/16 :goto_1a

    .line 1833
    .restart local v3       #mnc:Ljava/lang/String;
    .restart local v4       #mnc_i:I
    :catch_107
    move-exception v6

    goto/16 :goto_23
.end method

.method public setSuplPort(I)V
    .registers 2
    .parameter "port"

    .prologue
    .line 1801
    iput p1, p0, Lcom/android/internal/location/GpsLocationProvider;->mSuplPort:I

    return-void
.end method

.method public setTls(I)Z
    .registers 8
    .parameter "tls_set"

    .prologue
    const/4 v5, 0x7

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1897
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[agps]setTls("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1899
    if-ne p1, v4, :cond_2a

    .line 1900
    const/16 v0, 0x227

    invoke-direct {p0, v5, v3, v0}, Lcom/android/internal/location/GpsLocationProvider;->native_start(IZI)Z

    move v0, v4

    .line 1908
    :goto_29
    return v0

    .line 1904
    :cond_2a
    if-nez p1, :cond_33

    .line 1905
    const/16 v0, 0x228

    invoke-direct {p0, v5, v3, v0}, Lcom/android/internal/location/GpsLocationProvider;->native_start(IZI)Z

    move v0, v4

    .line 1906
    goto :goto_29

    :cond_33
    move v0, v3

    .line 1908
    goto :goto_29
.end method

.method public singleFixTest()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1785
    iget-boolean v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mEnabled:Z

    if-nez v0, :cond_b

    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->native_init()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mEnabled:Z

    .line 1786
    :cond_b
    const/4 v0, 0x0

    invoke-direct {p0, v1, v1, v0}, Lcom/android/internal/location/GpsLocationProvider;->native_start(IZI)Z

    .line 1787
    return-void
.end method

.method public startAirTest(II)Z
    .registers 6
    .parameter "testType"
    .parameter "testNum"

    .prologue
    const/4 v2, 0x1

    .line 1770
    packed-switch p1, :pswitch_data_12

    .line 1779
    :goto_4
    return v2

    .line 1773
    :pswitch_5
    const-string v0, "GpsLocationProvider"

    const-string v1, "startAirTest() - mGpsLocationProvider == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1774
    const/4 v0, 0x7

    invoke-direct {p0, v0, v2, p2}, Lcom/android/internal/location/GpsLocationProvider;->native_start(IZI)Z

    goto :goto_4

    .line 1770
    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch
.end method

.method public startNavigating()V
    .registers 9

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x0

    const-string v4, "GpsLocationProvider"

    .line 997
    iget-boolean v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mStarted:Z

    if-nez v1, :cond_38

    .line 998
    const-string v1, "GpsLocationProvider"

    const-string v1, "startNavigating"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    iput-boolean v3, p0, Lcom/android/internal/location/GpsLocationProvider;->mStarted:Z

    .line 1002
    iget-boolean v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mSetSuplServer:Z

    if-eqz v1, :cond_25

    .line 1003
    const-string v1, "GpsLocationProvider"

    const-string v1, "[agps] call - native_set_agps_server"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mSuplHost:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mSuplPort:I

    invoke-direct {p0, v3, v1, v2}, Lcom/android/internal/location/GpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 1005
    iput-boolean v7, p0, Lcom/android/internal/location/GpsLocationProvider;->mSetSuplServer:Z

    .line 1009
    :cond_25
    iget v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mPositionMode:I

    iget v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mFixInterval:I

    invoke-direct {p0, v1, v7, v2}, Lcom/android/internal/location/GpsLocationProvider;->native_start(IZI)Z

    move-result v1

    if-nez v1, :cond_39

    .line 1010
    iput-boolean v7, p0, Lcom/android/internal/location/GpsLocationProvider;->mStarted:Z

    .line 1011
    const-string v1, "GpsLocationProvider"

    const-string v1, "native_start failed in startNavigating()"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    :cond_38
    :goto_38
    return-void

    .line 1016
    :cond_39
    invoke-direct {p0, v3, v7}, Lcom/android/internal/location/GpsLocationProvider;->updateStatus(II)V

    .line 1017
    iput v7, p0, Lcom/android/internal/location/GpsLocationProvider;->mFixCount:I

    .line 1018
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mFixRequestTime:J

    .line 1021
    iget v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mFixInterval:I

    const/16 v2, 0x3c

    if-lt v1, v2, :cond_5a

    .line 1022
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v2, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/32 v5, 0xea60

    add-long/2addr v3, v5

    iget-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1027
    :cond_5a
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.location.GPS_FIX_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1028
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "enabled"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1029
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_38
.end method

.method public stopNavigating()V
    .registers 6

    .prologue
    const/4 v3, 0x0

    const-string v4, "GpsLocationProvider"

    .line 1036
    const-string v1, "GpsLocationProvider"

    const-string v1, "stopNavigating"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    iget-boolean v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mStarted:Z

    if-eqz v1, :cond_48

    .line 1038
    iput-boolean v3, p0, Lcom/android/internal/location/GpsLocationProvider;->mStarted:Z

    .line 1039
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->native_stop()Z

    .line 1040
    iput v3, p0, Lcom/android/internal/location/GpsLocationProvider;->mTTFF:I

    .line 1041
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mLastFixTime:J

    .line 1042
    iput v3, p0, Lcom/android/internal/location/GpsLocationProvider;->mLocationFlags:I

    .line 1045
    const/4 v1, 0x1

    invoke-direct {p0, v1, v3}, Lcom/android/internal/location/GpsLocationProvider;->updateStatus(II)V

    .line 1048
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.location.GPS_ENABLED_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1049
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "enabled"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1050
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1054
    iget-boolean v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mNavigating:Z

    if-nez v1, :cond_48

    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 1055
    const-string v1, "GpsLocationProvider"

    const-string v1, "Releasing wakelock"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1060
    .end local v0           #intent:Landroid/content/Intent;
    :cond_48
    return-void
.end method

.method public supportsAltitude()Z
    .registers 2

    .prologue
    .line 636
    const/4 v0, 0x1

    return v0
.end method

.method public supportsBearing()Z
    .registers 2

    .prologue
    .line 656
    const/4 v0, 0x1

    return v0
.end method

.method public supportsSpeed()Z
    .registers 2

    .prologue
    .line 646
    const/4 v0, 0x1

    return v0
.end method

.method public supportsXtra()Z
    .registers 2

    .prologue
    .line 1869
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->native_supports_xtra()Z

    move-result v0

    return v0
.end method

.method public updateLocation(Landroid/location/Location;)V
    .registers 8
    .parameter "location"

    .prologue
    .line 596
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 597
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/location/GpsLocationProvider;->native_inject_location(DDF)V

    .line 600
    :cond_16
    return-void
.end method

.method public updateNetworkState(I)V
    .registers 5
    .parameter "state"

    .prologue
    .line 579
    const/4 v0, 0x2

    if-ne p1, v0, :cond_36

    const/4 v0, 0x1

    :goto_4
    iput-boolean v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mNetworkAvailable:Z

    .line 582
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateNetworkState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mNetworkAvailable:Z

    if-eqz v2, :cond_38

    const-string v2, "available"

    :goto_19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    iget-boolean v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mNetworkAvailable:Z

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mNetworkThread:Lcom/android/internal/location/GpsLocationProvider$GpsNetworkThread;

    if-eqz v0, :cond_35

    iget-boolean v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mEnabled:Z

    if-eqz v0, :cond_35

    .line 587
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mNetworkThread:Lcom/android/internal/location/GpsLocationProvider$GpsNetworkThread;

    invoke-virtual {v0}, Lcom/android/internal/location/GpsLocationProvider$GpsNetworkThread;->signal()V

    .line 589
    :cond_35
    return-void

    .line 579
    :cond_36
    const/4 v0, 0x0

    goto :goto_4

    .line 582
    :cond_38
    const-string v2, "unavailable"

    goto :goto_19
.end method

.method public xtraDownloadRequest()V
    .registers 3

    .prologue
    .line 1355
    sget v0, Lcom/android/internal/location/GpsLocationProvider;->mXtraEnabled:I

    if-nez v0, :cond_5

    .line 1362
    :cond_4
    :goto_4
    return-void

    .line 1358
    :cond_5
    const-string v0, "GpsLocationProvider"

    const-string v1, "xtraDownloadRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mNetworkThread:Lcom/android/internal/location/GpsLocationProvider$GpsNetworkThread;

    if-eqz v0, :cond_4

    .line 1360
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mNetworkThread:Lcom/android/internal/location/GpsLocationProvider$GpsNetworkThread;

    invoke-virtual {v0}, Lcom/android/internal/location/GpsLocationProvider$GpsNetworkThread;->xtraDownloadRequest()V

    goto :goto_4
.end method
