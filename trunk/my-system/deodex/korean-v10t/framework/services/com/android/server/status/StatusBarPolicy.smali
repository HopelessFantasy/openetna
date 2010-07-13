.class public Lcom/android/server/status/StatusBarPolicy;
.super Ljava/lang/Object;
.source "StatusBarPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/status/StatusBarPolicy$StatusBarHandler;,
        Lcom/android/server/status/StatusBarPolicy$LowLevelRunnable;
    }
.end annotation


# static fields
.field private static final BATTERY_THRESHOLD_CLOSE_WARNING:I = 0x0

.field private static final BATTERY_THRESHOLD_EMPTY:I = 0x2

.field private static final BATTERY_THRESHOLD_WARNING:I = 0x1

.field private static final CUTOFF_WHEN_IDLE_LEVEL:I = 0x1

.field private static final CUTOFF_WHEN_IDLE_TIMER:I = 0x7530

.field private static final CUTOFF_WHEN_INCALL_TIMER:I = 0x1b58

.field private static final EVENT_BATTERY_CLOSE:I = 0x4

.field private static final EVENT_DATA_ACTIVITY:I = 0x3

.field private static final EVENT_DATA_CONN_STATE_CHANGED:I = 0x2

.field private static final SHOW_LOW_BATTERY_WARNING:Z = true

.field private static final TAG:Ljava/lang/String; = "StatusBarPolicy"

.field private static final sDataNetType_1xrtt:[I = null

.field private static final sDataNetType_3g:[I = null

.field private static final sDataNetType_e:[I = null

.field private static final sDataNetType_evdo:[I = null

.field private static final sDataNetType_g:[I = null

.field private static final sDataNetType_h:[I = null

.field private static sInstance:Lcom/android/server/status/StatusBarPolicy; = null

.field private static final sRoamingIndicatorImages_cdma:[I = null

.field private static final sSignalImages:[I = null

.field private static final sSignalImages_cdma:[I = null

.field private static final sSignalImages_evdo:[I = null

.field private static final sSignalImages_r:[I = null

.field private static final sWifiSignalImages:[I = null

.field private static final sWifiTemporarilyNotConnectedImage:I = 0x108028d


# instance fields
.field private alertcount:I

.field private mAlarmClockIcon:Landroid/os/IBinder;

.field private mAlarmClockIconData:Lcom/android/server/status/IconData;

.field private mAlarmIconRes:I

.field private mBatteryData:Lcom/android/server/status/IconData;

.field private mBatteryFirst:Z

.field private mBatteryIcon:Landroid/os/IBinder;

.field private mBatteryIconRes:I

.field private mBatteryLevel:I

.field private mBatteryLevelTextView:Landroid/widget/TextView;

.field private mBatteryPlugged:I

.field private mBatteryShowLowOnEndCall:Z

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBatteryThreshold:I

.field private mBatteryThresholds:[I

.field private mBatteryView:Landroid/view/View;

.field private mBatteryViewSequence:I

.field private mBluetoothA2dpState:I

.field private mBluetoothData:Lcom/android/server/status/IconData;

.field private mBluetoothEnabled:Z

.field private mBluetoothHeadsetState:I

.field private mBluetoothIcon:Landroid/os/IBinder;

.field private mBluetoothIconRes:I

.field private mBluetoothServiceConnectedHash:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCalendar:Ljava/util/Calendar;

.field private mCdmaRoamingIndicatorIcon:Landroid/os/IBinder;

.field private mCdmaRoamingIndicatorIconData:Lcom/android/server/status/IconData;

.field private mClockData:Lcom/android/server/status/IconData;

.field private mClockIcon:Landroid/os/IBinder;

.field private final mContext:Landroid/content/Context;

.field mDataActivity:I

.field private mDataConnectionIconRes:I

.field private mDataData:Lcom/android/server/status/IconData;

.field private mDataIcon:Landroid/os/IBinder;

.field private mDataIconList:[I

.field private mDataIconVisible:Z

.field mDataNetType:I

.field mDataState:I

.field private mGpsEnIconRes:I

.field private mGpsEnabledIconData:Lcom/android/server/status/IconData;

.field private mGpsFixIconData:Lcom/android/server/status/IconData;

.field private mGpsFixIconRes:I

.field private mGpsIcon:Landroid/os/IBinder;

.field private final mHandler:Landroid/os/Handler;

.field private mHeadsetIcon:Landroid/os/IBinder;

.field private mHeadsetIconData:Lcom/android/server/status/IconData;

.field private mHeadsetState:Ljava/lang/String;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsWifiConnected:Z

.field private mLastWifiSignalLevel:I

.field private mLowBatteryDialog:Landroid/app/AlertDialog;

.field private mLowBatteryListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mLowLevelRunnable:Lcom/android/server/status/StatusBarPolicy$LowLevelRunnable;

.field private mPhone:Landroid/telephony/TelephonyManager;

.field private mPhoneData:Lcom/android/server/status/IconData;

.field private mPhoneEvdoData:Lcom/android/server/status/IconData;

.field private mPhoneEvdoIcon:Landroid/os/IBinder;

.field private mPhoneIcon:Landroid/os/IBinder;

.field private mPhoneSignalIconRes:I

.field mPhoneState:I

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mSentLowBatteryBroadcast:Z

.field private final mService:Lcom/android/server/status/StatusBarService;

.field mServiceState:Landroid/telephony/ServiceState;

.field mSignalStrength:Landroid/telephony/SignalStrength;

.field mSimState:Lcom/android/internal/telephony/IccCard$State;

.field private mSyncActiveIcon:Landroid/os/IBinder;

.field private mSyncActiveIconRes:I

.field private mSyncFailingIcon:Landroid/os/IBinder;

.field private mSyncFailingIconRes:I

.field private mTTYModeEnableIconData:Lcom/android/server/status/IconData;

.field private mTTYModeIcon:Landroid/os/IBinder;

.field private mTheme:Ljava/lang/String;

.field private mVolumeData:Lcom/android/server/status/IconData;

.field private mVolumeIcon:Landroid/os/IBinder;

.field private mVolumeIconRes:I

.field private mVolumeVisible:Z

.field private mWifiData:Lcom/android/server/status/IconData;

.field private mWifiIcon:Landroid/os/IBinder;

.field private mWifiIconRes:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x5

    .line 156
    new-array v0, v1, [I

    fill-array-data v0, :array_5a

    sput-object v0, Lcom/android/server/status/StatusBarPolicy;->sSignalImages:[I

    .line 163
    new-array v0, v1, [I

    fill-array-data v0, :array_68

    sput-object v0, Lcom/android/server/status/StatusBarPolicy;->sSignalImages_r:[I

    .line 171
    new-array v0, v1, [I

    fill-array-data v0, :array_76

    sput-object v0, Lcom/android/server/status/StatusBarPolicy;->sSignalImages_cdma:[I

    .line 178
    const/16 v0, 0x54

    new-array v0, v0, [I

    fill-array-data v0, :array_84

    sput-object v0, Lcom/android/server/status/StatusBarPolicy;->sRoamingIndicatorImages_cdma:[I

    .line 278
    new-array v0, v1, [I

    fill-array-data v0, :array_130

    sput-object v0, Lcom/android/server/status/StatusBarPolicy;->sSignalImages_evdo:[I

    .line 289
    new-array v0, v2, [I

    fill-array-data v0, :array_13e

    sput-object v0, Lcom/android/server/status/StatusBarPolicy;->sDataNetType_g:[I

    .line 295
    new-array v0, v2, [I

    fill-array-data v0, :array_14a

    sput-object v0, Lcom/android/server/status/StatusBarPolicy;->sDataNetType_3g:[I

    .line 301
    new-array v0, v2, [I

    fill-array-data v0, :array_156

    sput-object v0, Lcom/android/server/status/StatusBarPolicy;->sDataNetType_e:[I

    .line 309
    new-array v0, v2, [I

    fill-array-data v0, :array_162

    sput-object v0, Lcom/android/server/status/StatusBarPolicy;->sDataNetType_h:[I

    .line 372
    new-array v0, v1, [I

    fill-array-data v0, :array_16e

    sput-object v0, Lcom/android/server/status/StatusBarPolicy;->sDataNetType_evdo:[I

    .line 379
    new-array v0, v1, [I

    fill-array-data v0, :array_17c

    sput-object v0, Lcom/android/server/status/StatusBarPolicy;->sDataNetType_1xrtt:[I

    .line 422
    new-array v0, v2, [I

    fill-array-data v0, :array_18a

    sput-object v0, Lcom/android/server/status/StatusBarPolicy;->sWifiSignalImages:[I

    return-void

    .line 156
    nop

    :array_5a
    .array-data 0x4
        0x6et 0x2t 0x8t 0x1t
        0x70t 0x2t 0x8t 0x1t
        0x72t 0x2t 0x8t 0x1t
        0x74t 0x2t 0x8t 0x1t
        0x76t 0x2t 0x8t 0x1t
    .end array-data

    .line 163
    :array_68
    .array-data 0x4
        0x59t 0x2t 0x8t 0x1t
        0x5bt 0x2t 0x8t 0x1t
        0x5dt 0x2t 0x8t 0x1t
        0x5ft 0x2t 0x8t 0x1t
        0x61t 0x2t 0x8t 0x1t
    .end array-data

    .line 171
    :array_76
    .array-data 0x4
        0x78t 0x2t 0x8t 0x1t
        0x79t 0x2t 0x8t 0x1t
        0x7at 0x2t 0x8t 0x1t
        0x7bt 0x2t 0x8t 0x1t
        0x7ct 0x2t 0x8t 0x1t
    .end array-data

    .line 178
    :array_84
    .array-data 0x4
        0x6at 0x2t 0x8t 0x1t
        0x6at 0x2t 0x8t 0x1t
        0x6at 0x2t 0x8t 0x1t
        0x6at 0x2t 0x8t 0x1t
        0x6at 0x2t 0x8t 0x1t
        0x6at 0x2t 0x8t 0x1t
        0x6at 0x2t 0x8t 0x1t
        0x6at 0x2t 0x8t 0x1t
        0x6at 0x2t 0x8t 0x1t
        0x6at 0x2t 0x8t 0x1t
        0x6at 0x2t 0x8t 0x1t
        0x6at 0x2t 0x8t 0x1t
        0x6at 0x2t 0x8t 0x1t
        0x6at 0x2t 0x8t 0x1t
        0x6at 0x2t 0x8t 0x1t
        0x6at 0x2t 0x8t 0x1t
        0x6at 0x2t 0x8t 0x1t
        0x6at 0x2t 0x8t 0x1t
        0x6at 0x2t 0x8t 0x1t
        0x6at 0x2t 0x8t 0x1t
        0x6at 0x2t 0x8t 0x1t
        0x6at 0x2t 0x8t 0x1t
        0x6at 0x2t 0x8t 0x1t
        0x6at 0x2t 0x8t 0x1t
        0x6at 0x2t 0x8t 0x1t
        0x6at 0x2t 0x8t 0x1t
        0x6at 0x2t 0x8t 0x1t
        0x6at 0x2t 0x8t 0x1t
        0x6at 0x2t 0x8t 0x1t
        0x6at 0x2t 0x8t 0x1t
        0x6at 0x2t 0x8t 0x1t
        0x6at 0x2t 0x8t 0x1t
        0x6at 0x2t 0x8t 0x1t
        0x6at 0x2t 0x8t 0x1t
        0x6at 0x2t 0x8t 0x1t
        0x6at 0x2t 0x8t 0x1t
        0x6at 0x2t 0x8t 0x1t
        0x6at 0x2t 0x8t 0x1t
        0x6at 0x2t 0x8t 0x1t
        0x6at 0x2t 0x8t 0x1t
        0x6at 0x2t 0x8t 0x1t
        0x6at 0x2t 0x8t 0x1t
        0x6at 0x2t 0x8t 0x1t
        0x6at 0x2t 0x8t 0x1t
        0x6at 0x2t 0x8t 0x1t
        0x6at 0x2t 0x8t 0x1t
        0x6at 0x2t 0x8t 0x1t
        0x6at 0x2t 0x8t 0x1t
        0x6at 0x2t 0x8t 0x1t
        0x6at 0x2t 0x8t 0x1t
        0x6at 0x2t 0x8t 0x1t
        0x6at 0x2t 0x8t 0x1t
        0x6at 0x2t 0x8t 0x1t
        0x6at 0x2t 0x8t 0x1t
        0x6at 0x2t 0x8t 0x1t
        0x6at 0x2t 0x8t 0x1t
        0x6at 0x2t 0x8t 0x1t
        0x6at 0x2t 0x8t 0x1t
        0x6at 0x2t 0x8t 0x1t
        0x6at 0x2t 0x8t 0x1t
        0x6at 0x2t 0x8t 0x1t
        0x6at 0x2t 0x8t 0x1t
        0x6at 0x2t 0x8t 0x1t
        0x6at 0x2t 0x8t 0x1t
        0x6at 0x2t 0x8t 0x1t
        0x6at 0x2t 0x8t 0x1t
        0x6at 0x2t 0x8t 0x1t
        0x6at 0x2t 0x8t 0x1t
        0x6at 0x2t 0x8t 0x1t
        0x6at 0x2t 0x8t 0x1t
        0x6at 0x2t 0x8t 0x1t
        0x6at 0x2t 0x8t 0x1t
        0x6at 0x2t 0x8t 0x1t
        0x6at 0x2t 0x8t 0x1t
        0x6at 0x2t 0x8t 0x1t
        0x6at 0x2t 0x8t 0x1t
        0x6at 0x2t 0x8t 0x1t
        0x6at 0x2t 0x8t 0x1t
        0x6at 0x2t 0x8t 0x1t
        0x6at 0x2t 0x8t 0x1t
        0x6at 0x2t 0x8t 0x1t
        0x6at 0x2t 0x8t 0x1t
        0x6at 0x2t 0x8t 0x1t
        0x6at 0x2t 0x8t 0x1t
    .end array-data

    .line 278
    :array_130
    .array-data 0x4
        0x7dt 0x2t 0x8t 0x1t
        0x7et 0x2t 0x8t 0x1t
        0x7ft 0x2t 0x8t 0x1t
        0x80t 0x2t 0x8t 0x1t
        0x81t 0x2t 0x8t 0x1t
    .end array-data

    .line 289
    :array_13e
    .array-data 0x4
        0x3bt 0x2t 0x8t 0x1t
        0x42t 0x2t 0x8t 0x1t
        0x4ct 0x2t 0x8t 0x1t
        0x47t 0x2t 0x8t 0x1t
    .end array-data

    .line 295
    :array_14a
    .array-data 0x4
        0x38t 0x2t 0x8t 0x1t
        0x3ft 0x2t 0x8t 0x1t
        0x49t 0x2t 0x8t 0x1t
        0x44t 0x2t 0x8t 0x1t
    .end array-data

    .line 301
    :array_156
    .array-data 0x4
        0x39t 0x2t 0x8t 0x1t
        0x40t 0x2t 0x8t 0x1t
        0x4at 0x2t 0x8t 0x1t
        0x45t 0x2t 0x8t 0x1t
    .end array-data

    .line 309
    :array_162
    .array-data 0x4
        0x60t 0x0t 0x3t 0x2t
        0x61t 0x0t 0x3t 0x2t
        0x63t 0x0t 0x3t 0x2t
        0x62t 0x0t 0x3t 0x2t
    .end array-data

    .line 372
    :array_16e
    .array-data 0x4
        0x3at 0x2t 0x8t 0x1t
        0x41t 0x2t 0x8t 0x1t
        0x4bt 0x2t 0x8t 0x1t
        0x46t 0x2t 0x8t 0x1t
        0x3dt 0x2t 0x8t 0x1t
    .end array-data

    .line 379
    :array_17c
    .array-data 0x4
        0x37t 0x2t 0x8t 0x1t
        0x3et 0x2t 0x8t 0x1t
        0x48t 0x2t 0x8t 0x1t
        0x43t 0x2t 0x8t 0x1t
        0x3ct 0x2t 0x8t 0x1t
    .end array-data

    .line 422
    :array_18a
    .array-data 0x4
        0x8et 0x2t 0x8t 0x1t
        0x8ft 0x2t 0x8t 0x1t
        0x90t 0x2t 0x8t 0x1t
        0x91t 0x2t 0x8t 0x1t
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/server/status/StatusBarService;)V
    .registers 12
    .parameter "context"
    .parameter "service"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const-string v4, "phone"

    const-string v8, "gps"

    const-string v7, "bluetooth"

    .line 553
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v2, Lcom/android/server/status/StatusBarPolicy$StatusBarHandler;

    invoke-direct {v2, p0, v6}, Lcom/android/server/status/StatusBarPolicy$StatusBarHandler;-><init>(Lcom/android/server/status/StatusBarPolicy;Lcom/android/server/status/StatusBarPolicy$1;)V

    iput-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mHandler:Landroid/os/Handler;

    .line 113
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryFirst:Z

    .line 116
    iput v5, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryThreshold:I

    .line 120
    iput v5, p0, Lcom/android/server/status/StatusBarPolicy;->alertcount:I

    .line 126
    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_2aa

    iput-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryThresholds:[I

    .line 137
    iput-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mLowBatteryDialog:Landroid/app/AlertDialog;

    .line 143
    iput-boolean v5, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryShowLowOnEndCall:Z

    .line 144
    iput-boolean v5, p0, Lcom/android/server/status/StatusBarPolicy;->mSentLowBatteryBroadcast:Z

    .line 287
    sget-object v2, Lcom/android/server/status/StatusBarPolicy;->sDataNetType_g:[I

    iput-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mDataIconList:[I

    .line 389
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    .line 393
    iput v5, p0, Lcom/android/server/status/StatusBarPolicy;->mPhoneState:I

    .line 394
    iput v5, p0, Lcom/android/server/status/StatusBarPolicy;->mDataState:I

    .line 395
    iput v5, p0, Lcom/android/server/status/StatusBarPolicy;->mDataActivity:I

    .line 396
    iput v5, p0, Lcom/android/server/status/StatusBarPolicy;->mDataNetType:I

    .line 418
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mBluetoothServiceConnectedHash:Ljava/util/HashSet;

    .line 431
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/status/StatusBarPolicy;->mLastWifiSignalLevel:I

    .line 432
    iput-boolean v5, p0, Lcom/android/server/status/StatusBarPolicy;->mIsWifiConnected:Z

    .line 467
    new-instance v2, Lcom/android/server/status/StatusBarPolicy$LowLevelRunnable;

    invoke-direct {v2, p0}, Lcom/android/server/status/StatusBarPolicy$LowLevelRunnable;-><init>(Lcom/android/server/status/StatusBarPolicy;)V

    iput-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mLowLevelRunnable:Lcom/android/server/status/StatusBarPolicy$LowLevelRunnable;

    .line 479
    new-instance v2, Lcom/android/server/status/StatusBarPolicy$1;

    invoke-direct {v2, p0}, Lcom/android/server/status/StatusBarPolicy$1;-><init>(Lcom/android/server/status/StatusBarPolicy;)V

    iput-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1266
    new-instance v2, Lcom/android/server/status/StatusBarPolicy$3;

    invoke-direct {v2, p0}, Lcom/android/server/status/StatusBarPolicy$3;-><init>(Lcom/android/server/status/StatusBarPolicy;)V

    iput-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mLowBatteryListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 1288
    new-instance v2, Lcom/android/server/status/StatusBarPolicy$4;

    invoke-direct {v2, p0}, Lcom/android/server/status/StatusBarPolicy$4;-><init>(Lcom/android/server/status/StatusBarPolicy;)V

    iput-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 554
    iput-object p1, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    .line 555
    iput-object p2, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    .line 556
    new-instance v2, Landroid/telephony/SignalStrength;

    invoke-direct {v2}, Landroid/telephony/SignalStrength;-><init>()V

    iput-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 557
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 561
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "select_theme"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mTheme:Ljava/lang/String;

    .line 562
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mTheme:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/server/status/StatusBarPolicy;->selectThemeIcons(Ljava/lang/String;)V

    .line 566
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mCalendar:Ljava/util/Calendar;

    .line 567
    const-string v2, "clock"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/android/server/status/IconData;->makeText(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/android/server/status/IconData;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mClockData:Lcom/android/server/status/IconData;

    .line 568
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mClockData:Lcom/android/server/status/IconData;

    invoke-virtual {p2, v2, v6}, Lcom/android/server/status/StatusBarService;->addIcon(Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mClockIcon:Landroid/os/IBinder;

    .line 569
    invoke-direct {p0}, Lcom/android/server/status/StatusBarPolicy;->updateClock()V

    .line 572
    const-string v2, "battery"

    const v3, 0x1080235

    invoke-static {v2, v6, v3, v5, v5}, Lcom/android/server/status/IconData;->makeIcon(Ljava/lang/String;Ljava/lang/String;III)Lcom/android/server/status/IconData;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryData:Lcom/android/server/status/IconData;

    .line 574
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryData:Lcom/android/server/status/IconData;

    invoke-virtual {p2, v2, v6}, Lcom/android/server/status/StatusBarService;->addIcon(Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryIcon:Landroid/os/IBinder;

    .line 577
    const-string v2, "phone"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    .line 578
    const-string v2, "phone_signal"

    const v3, 0x1080283

    invoke-static {v2, v6, v3, v5, v5}, Lcom/android/server/status/IconData;->makeIcon(Ljava/lang/String;Ljava/lang/String;III)Lcom/android/server/status/IconData;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mPhoneData:Lcom/android/server/status/IconData;

    .line 580
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mPhoneData:Lcom/android/server/status/IconData;

    invoke-virtual {p2, v2, v6}, Lcom/android/server/status/StatusBarService;->addIcon(Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mPhoneIcon:Landroid/os/IBinder;

    .line 588
    const-string v2, "phone_evdo_signal"

    const v3, 0x108027d

    invoke-static {v2, v6, v3, v5, v5}, Lcom/android/server/status/IconData;->makeIcon(Ljava/lang/String;Ljava/lang/String;III)Lcom/android/server/status/IconData;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mPhoneEvdoData:Lcom/android/server/status/IconData;

    .line 590
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mPhoneEvdoData:Lcom/android/server/status/IconData;

    invoke-virtual {p2, v2, v6}, Lcom/android/server/status/StatusBarService;->addIcon(Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mPhoneEvdoIcon:Landroid/os/IBinder;

    .line 591
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mPhoneEvdoIcon:Landroid/os/IBinder;

    invoke-virtual {p2, v2, v5}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 594
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v4, 0x1e1

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 603
    const-string v2, "data_connection"

    const v3, 0x108023b

    invoke-static {v2, v6, v3, v5, v5}, Lcom/android/server/status/IconData;->makeIcon(Ljava/lang/String;Ljava/lang/String;III)Lcom/android/server/status/IconData;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mDataData:Lcom/android/server/status/IconData;

    .line 605
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mDataData:Lcom/android/server/status/IconData;

    invoke-virtual {p2, v2, v6}, Lcom/android/server/status/StatusBarService;->addIcon(Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mDataIcon:Landroid/os/IBinder;

    .line 606
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mDataIcon:Landroid/os/IBinder;

    invoke-virtual {p2, v2, v5}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 609
    const-string v2, "wifi"

    sget-object v3, Lcom/android/server/status/StatusBarPolicy;->sWifiSignalImages:[I

    aget v3, v3, v5

    invoke-static {v2, v6, v3, v5, v5}, Lcom/android/server/status/IconData;->makeIcon(Ljava/lang/String;Ljava/lang/String;III)Lcom/android/server/status/IconData;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mWifiData:Lcom/android/server/status/IconData;

    .line 610
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mWifiData:Lcom/android/server/status/IconData;

    invoke-virtual {p2, v2, v6}, Lcom/android/server/status/StatusBarService;->addIcon(Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mWifiIcon:Landroid/os/IBinder;

    .line 611
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mWifiIcon:Landroid/os/IBinder;

    invoke-virtual {p2, v2, v5}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 615
    const-string v2, "tty"

    const v3, 0x1080284

    invoke-static {v2, v6, v3, v5, v5}, Lcom/android/server/status/IconData;->makeIcon(Ljava/lang/String;Ljava/lang/String;III)Lcom/android/server/status/IconData;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mTTYModeEnableIconData:Lcom/android/server/status/IconData;

    .line 617
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mTTYModeEnableIconData:Lcom/android/server/status/IconData;

    invoke-virtual {p2, v2, v6}, Lcom/android/server/status/StatusBarService;->addIcon(Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mTTYModeIcon:Landroid/os/IBinder;

    .line 618
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mTTYModeIcon:Landroid/os/IBinder;

    invoke-virtual {p2, v2, v5}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 621
    const-string v2, "cdma_eri"

    const v3, 0x108026a

    invoke-static {v2, v6, v3, v5, v5}, Lcom/android/server/status/IconData;->makeIcon(Ljava/lang/String;Ljava/lang/String;III)Lcom/android/server/status/IconData;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mCdmaRoamingIndicatorIconData:Lcom/android/server/status/IconData;

    .line 623
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mCdmaRoamingIndicatorIconData:Lcom/android/server/status/IconData;

    invoke-virtual {p2, v2, v6}, Lcom/android/server/status/StatusBarService;->addIcon(Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mCdmaRoamingIndicatorIcon:Landroid/os/IBinder;

    .line 624
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mCdmaRoamingIndicatorIcon:Landroid/os/IBinder;

    invoke-virtual {p2, v2, v5}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 627
    const-string v2, "bluetooth"

    const v2, 0x1080080

    invoke-static {v7, v6, v2, v5, v5}, Lcom/android/server/status/IconData;->makeIcon(Ljava/lang/String;Ljava/lang/String;III)Lcom/android/server/status/IconData;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mBluetoothData:Lcom/android/server/status/IconData;

    .line 629
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mBluetoothData:Lcom/android/server/status/IconData;

    invoke-virtual {p2, v2, v6}, Lcom/android/server/status/StatusBarService;->addIcon(Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mBluetoothIcon:Landroid/os/IBinder;

    .line 630
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v3, "bluetooth"

    invoke-virtual {v2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 632
    .local v0, bluetooth:Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_2a6

    .line 633
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->isEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/status/StatusBarPolicy;->mBluetoothEnabled:Z

    .line 637
    :goto_181
    iput v5, p0, Lcom/android/server/status/StatusBarPolicy;->mBluetoothA2dpState:I

    .line 638
    iput v5, p0, Lcom/android/server/status/StatusBarPolicy;->mBluetoothHeadsetState:I

    .line 639
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mBluetoothIcon:Landroid/os/IBinder;

    iget-boolean v4, p0, Lcom/android/server/status/StatusBarPolicy;->mBluetoothEnabled:Z

    invoke-virtual {v2, v3, v4}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 642
    const-string v2, "gps"

    const v2, 0x1080255

    invoke-static {v8, v6, v2, v5, v5}, Lcom/android/server/status/IconData;->makeIcon(Ljava/lang/String;Ljava/lang/String;III)Lcom/android/server/status/IconData;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mGpsEnabledIconData:Lcom/android/server/status/IconData;

    .line 644
    const-string v2, "gps"

    const v2, 0x1080256

    invoke-static {v8, v6, v2, v5, v5}, Lcom/android/server/status/IconData;->makeIcon(Ljava/lang/String;Ljava/lang/String;III)Lcom/android/server/status/IconData;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mGpsFixIconData:Lcom/android/server/status/IconData;

    .line 646
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mGpsEnabledIconData:Lcom/android/server/status/IconData;

    invoke-virtual {p2, v2, v6}, Lcom/android/server/status/StatusBarService;->addIcon(Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mGpsIcon:Landroid/os/IBinder;

    .line 647
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mGpsIcon:Landroid/os/IBinder;

    invoke-virtual {p2, v2, v5}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 650
    const-string v2, "alarm_clock"

    const v3, 0x1080220

    invoke-static {v2, v6, v3, v5, v5}, Lcom/android/server/status/IconData;->makeIcon(Ljava/lang/String;Ljava/lang/String;III)Lcom/android/server/status/IconData;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mAlarmClockIconData:Lcom/android/server/status/IconData;

    .line 653
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mAlarmClockIconData:Lcom/android/server/status/IconData;

    invoke-virtual {p2, v2, v6}, Lcom/android/server/status/StatusBarService;->addIcon(Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mAlarmClockIcon:Landroid/os/IBinder;

    .line 654
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mAlarmClockIcon:Landroid/os/IBinder;

    invoke-virtual {p2, v2, v5}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 657
    const-string v2, "sync_active"

    const v3, 0x1080223

    invoke-static {v2, v6, v3, v5, v5}, Lcom/android/server/status/IconData;->makeIcon(Ljava/lang/String;Ljava/lang/String;III)Lcom/android/server/status/IconData;

    move-result-object v2

    invoke-virtual {p2, v2, v6}, Lcom/android/server/status/StatusBarService;->addIcon(Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mSyncActiveIcon:Landroid/os/IBinder;

    .line 659
    const-string v2, "sync_failing"

    const v3, 0x1080224

    invoke-static {v2, v6, v3, v5, v5}, Lcom/android/server/status/IconData;->makeIcon(Ljava/lang/String;Ljava/lang/String;III)Lcom/android/server/status/IconData;

    move-result-object v2

    invoke-virtual {p2, v2, v6}, Lcom/android/server/status/StatusBarService;->addIcon(Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mSyncFailingIcon:Landroid/os/IBinder;

    .line 661
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mSyncActiveIcon:Landroid/os/IBinder;

    invoke-virtual {p2, v2, v5}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 662
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mSyncFailingIcon:Landroid/os/IBinder;

    invoke-virtual {p2, v2, v5}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 665
    const-string v2, "volume"

    const v3, 0x1080268

    invoke-static {v2, v6, v3, v5, v5}, Lcom/android/server/status/IconData;->makeIcon(Ljava/lang/String;Ljava/lang/String;III)Lcom/android/server/status/IconData;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mVolumeData:Lcom/android/server/status/IconData;

    .line 667
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mVolumeData:Lcom/android/server/status/IconData;

    invoke-virtual {p2, v2, v6}, Lcom/android/server/status/StatusBarService;->addIcon(Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mVolumeIcon:Landroid/os/IBinder;

    .line 668
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mVolumeIcon:Landroid/os/IBinder;

    invoke-virtual {p2, v2, v5}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 669
    invoke-direct {p0}, Lcom/android/server/status/StatusBarPolicy;->updateVolume()V

    .line 674
    const-string v2, "wired_headset"

    const v3, 0x2030069

    invoke-static {v2, v6, v3, v5, v5}, Lcom/android/server/status/IconData;->makeIcon(Ljava/lang/String;Ljava/lang/String;III)Lcom/android/server/status/IconData;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mHeadsetIconData:Lcom/android/server/status/IconData;

    .line 676
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mHeadsetIconData:Lcom/android/server/status/IconData;

    invoke-virtual {p2, v2, v6}, Lcom/android/server/status/StatusBarService;->addIcon(Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mHeadsetIcon:Landroid/os/IBinder;

    .line 677
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mHeadsetIcon:Landroid/os/IBinder;

    invoke-virtual {p2, v2, v5}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 681
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 684
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.TIME_TICK"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 685
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 686
    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 687
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 688
    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 689
    const-string v2, "android.intent.action.ALARM_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 690
    const-string v2, "android.intent.action.SYNC_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 691
    const-string v2, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 692
    const-string v2, "android.media.VIBRATE_SETTING_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 693
    const-string v2, "android.bluetooth.intent.action.BLUETOOTH_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 694
    const-string v2, "android.bluetooth.intent.action.HEADSET_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 695
    const-string v2, "android.bluetooth.a2dp.intent.action.SINK_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 696
    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 697
    const-string v2, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 698
    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 699
    const-string v2, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 700
    const-string v2, "android.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 701
    const-string v2, "android.location.GPS_FIX_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 702
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 705
    const-string v2, "android.intent.action.THEME_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 707
    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 710
    const-string v2, "com.android.internal.telephony.cdma.intent.action.TTY_ENABLED_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 714
    const-string v2, "broadcom.android.bluetooth.intent.action.BT_SERVICE_CONNECTION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 717
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v1, v6, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 718
    return-void

    .line 635
    .end local v1           #filter:Landroid/content/IntentFilter;
    :cond_2a6
    iput-boolean v5, p0, Lcom/android/server/status/StatusBarPolicy;->mBluetoothEnabled:Z

    goto/16 :goto_181

    .line 126
    :array_2aa
    .array-data 0x4
        0x14t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method static synthetic access$100(Lcom/android/server/status/StatusBarPolicy;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/server/status/StatusBarPolicy;->updateClock()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/status/StatusBarPolicy;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarPolicy;->updateSimState(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1102(Lcom/android/server/status/StatusBarPolicy;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/server/status/StatusBarPolicy;->mTheme:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/server/status/StatusBarPolicy;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/server/status/StatusBarPolicy;->updateStatusbarIcons()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/status/StatusBarPolicy;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarPolicy;->updateHeadset(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/status/StatusBarPolicy;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarPolicy;->updateTTY(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/status/StatusBarPolicy;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/status/StatusBarPolicy;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mLowBatteryDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/server/status/StatusBarPolicy;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/server/status/StatusBarPolicy;->mLowBatteryDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1802(Lcom/android/server/status/StatusBarPolicy;Landroid/widget/TextView;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryLevelTextView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/server/status/StatusBarPolicy;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/server/status/StatusBarPolicy;->updateSignalStrength()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/status/StatusBarPolicy;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/server/status/StatusBarPolicy;->updateCdmaRoamingIcon()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/server/status/StatusBarPolicy;Ljava/util/Calendar;)Ljava/util/Calendar;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/server/status/StatusBarPolicy;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/server/status/StatusBarPolicy;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/server/status/StatusBarPolicy;->updateDataIcon()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/status/StatusBarPolicy;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarPolicy;->updateCallState(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/status/StatusBarPolicy;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/server/status/StatusBarPolicy;->updateDataNetType()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/status/StatusBarPolicy;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 85
    iget v0, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryViewSequence:I

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/status/StatusBarPolicy;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/server/status/StatusBarPolicy;->closeLastBatteryView()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/status/StatusBarPolicy;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarPolicy;->updateAlarm(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/status/StatusBarPolicy;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarPolicy;->updateSyncState(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/status/StatusBarPolicy;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarPolicy;->updateBattery(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/status/StatusBarPolicy;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarPolicy;->updateBluetooth(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/status/StatusBarPolicy;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarPolicy;->updateWifi(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/status/StatusBarPolicy;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarPolicy;->updateGps(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/status/StatusBarPolicy;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/server/status/StatusBarPolicy;->updateVolume()V

    return-void
.end method

.method private closeLastBatteryView()V
    .registers 3

    .prologue
    .line 1281
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryView:Landroid/view/View;

    if-eqz v0, :cond_10

    .line 1283
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/WindowManagerImpl;->removeView(Landroid/view/View;)V

    .line 1284
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryView:Landroid/view/View;

    .line 1286
    :cond_10
    return-void
.end method

.method private hasService()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1355
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_12

    .line 1356
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_14

    .line 1364
    const/4 v0, 0x1

    .line 1367
    :goto_f
    return v0

    :pswitch_10
    move v0, v1

    .line 1362
    goto :goto_f

    :cond_12
    move v0, v1

    .line 1367
    goto :goto_f

    .line 1356
    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_10
        :pswitch_10
        :pswitch_10
    .end packed-switch
.end method

.method public static installIcons(Landroid/content/Context;Lcom/android/server/status/StatusBarService;)V
    .registers 3
    .parameter "context"
    .parameter "service"

    .prologue
    .line 758
    new-instance v0, Lcom/android/server/status/StatusBarPolicy;

    invoke-direct {v0, p0, p1}, Lcom/android/server/status/StatusBarPolicy;-><init>(Landroid/content/Context;Lcom/android/server/status/StatusBarService;)V

    sput-object v0, Lcom/android/server/status/StatusBarPolicy;->sInstance:Lcom/android/server/status/StatusBarPolicy;

    .line 759
    return-void
.end method

.method private isCdma()Z
    .registers 3

    .prologue
    .line 1351
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private pickNextBatteryLevel(I)V
    .registers 5
    .parameter "level"

    .prologue
    .line 828
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryThresholds:[I

    array-length v0, v2

    .line 829
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4
    if-ge v1, v0, :cond_e

    .line 830
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryThresholds:[I

    aget v2, v2, v1

    if-lt p1, v2, :cond_18

    .line 831
    iput v1, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryThreshold:I

    .line 835
    :cond_e
    iget v2, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryThreshold:I

    if-lt v2, v0, :cond_17

    .line 836
    const/4 v2, 0x1

    sub-int v2, v0, v2

    iput v2, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryThreshold:I

    .line 838
    :cond_17
    return-void

    .line 829
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_4
.end method

.method private scheduleCloseBatteryView()V
    .registers 5

    .prologue
    .line 1275
    iget-object v1, p0, Lcom/android/server/status/StatusBarPolicy;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1276
    .local v0, m:Landroid/os/Message;
    iget v1, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryViewSequence:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryViewSequence:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1277
    iget-object v1, p0, Lcom/android/server/status/StatusBarPolicy;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1278
    return-void
.end method

.method private setBatteryLevel(Landroid/view/View;IIII)V
    .registers 10
    .parameter "parent"
    .parameter "id"
    .parameter "height"
    .parameter "background"
    .parameter "level"

    .prologue
    .line 1032
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1033
    .local v2, v:Landroid/widget/ImageView;
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1034
    .local v1, lp:Landroid/widget/LinearLayout$LayoutParams;
    int-to-float v3, p3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1035
    if-eqz p4, :cond_1b

    .line 1036
    invoke-virtual {v2, p4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1037
    invoke-virtual {v2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1038
    .local v0, bkg:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, p5}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 1040
    .end local v0           #bkg:Landroid/graphics/drawable/Drawable;
    :cond_1b
    return-void
.end method

.method private showBatteryView()V
    .registers 19

    .prologue
    .line 985
    invoke-direct/range {p0 .. p0}, Lcom/android/server/status/StatusBarPolicy;->closeLastBatteryView()V

    .line 986
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarPolicy;->mLowBatteryDialog:Landroid/app/AlertDialog;

    move-object v3, v0

    if-eqz v3, :cond_12

    .line 987
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarPolicy;->mLowBatteryDialog:Landroid/app/AlertDialog;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 990
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/status/StatusBarPolicy;->mBatteryLevel:I

    move/from16 v16, v0

    .line 992
    .local v16, level:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    move-object v3, v0

    const v4, 0x109001d

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 993
    .local v9, v:Landroid/view/View;
    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/status/StatusBarPolicy;->mBatteryView:Landroid/view/View;

    .line 994
    const/4 v7, -0x3

    .line 995
    .local v7, pixelFormat:I
    invoke-virtual {v9}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 996
    .local v15, bg:Landroid/graphics/drawable/Drawable;
    if-eqz v15, :cond_35

    .line 997
    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v7

    .line 1000
    :cond_35
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    const/16 v5, 0x7d5

    const/16 v6, 0x1e

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 1011
    .local v2, lp:Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    move-object v3, v0

    sget-object v4, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v3, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v14

    .line 1013
    .local v14, a:Landroid/content/res/TypedArray;
    const/4 v3, 0x2

    const/high16 v4, 0x3f00

    invoke-virtual {v14, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 1014
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    .line 1016
    const-string v3, "Battery"

    invoke-virtual {v2, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1018
    const v3, 0x1020168

    invoke-virtual {v9, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 1019
    .local v17, levelTextView:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    move-object v3, v0

    const v4, 0x10401b1

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .end local v7           #pixelFormat:I
    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1022
    const v10, 0x102016c

    const/16 v3, 0x64

    sub-int v11, v3, v16

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v13}, Lcom/android/server/status/StatusBarPolicy;->setBatteryLevel(Landroid/view/View;IIII)V

    .line 1023
    const v10, 0x102016d

    const v12, 0x10800a1

    move-object/from16 v8, p0

    move/from16 v11, v16

    move/from16 v13, v16

    invoke-direct/range {v8 .. v13}, Lcom/android/server/status/StatusBarPolicy;->setBatteryLevel(Landroid/view/View;IIII)V

    .line 1026
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v3

    invoke-virtual {v3, v9, v2}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1028
    invoke-direct/range {p0 .. p0}, Lcom/android/server/status/StatusBarPolicy;->scheduleCloseBatteryView()V

    .line 1029
    return-void
.end method

.method private showLowBatteryWarning()V
    .registers 14

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 1043
    invoke-direct {p0}, Lcom/android/server/status/StatusBarPolicy;->closeLastBatteryView()V

    .line 1045
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryThresholds:[I

    iget v7, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryThreshold:I

    if-le v7, v10, :cond_2c

    iget v7, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryThreshold:I

    sub-int/2addr v7, v10

    :goto_f
    aget v3, v6, v7

    .line 1046
    .local v3, level:I
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    const v7, 0x10401b5

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1049
    .local v4, levelText:Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryLevelTextView:Landroid/widget/TextView;

    if-eqz v6, :cond_2e

    .line 1050
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryLevelTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1091
    :goto_2b
    return-void

    .end local v3           #level:I
    .end local v4           #levelText:Ljava/lang/CharSequence;
    :cond_2c
    move v7, v11

    .line 1045
    goto :goto_f

    .line 1054
    .restart local v3       #level:I
    .restart local v4       #levelText:Ljava/lang/CharSequence;
    :cond_2e
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    const v7, 0x109001c

    invoke-static {v6, v7, v12}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 1055
    .local v5, v:Landroid/view/View;
    const v6, 0x1020168

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryLevelTextView:Landroid/widget/TextView;

    .line 1057
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryLevelTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1059
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1060
    .local v0, b:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1061
    const v6, 0x10401b3

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1062
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1063
    const v6, 0x1080027

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1064
    const v6, 0x104000a

    invoke-virtual {v0, v6, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1066
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.POWER_USAGE_SUMMARY"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1067
    .local v2, intent:Landroid/content/Intent;
    const/high16 v6, 0x5880

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1071
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_89

    .line 1073
    const v6, 0x10401b6

    new-instance v7, Lcom/android/server/status/StatusBarPolicy$2;

    invoke-direct {v7, p0, v2}, Lcom/android/server/status/StatusBarPolicy$2;-><init>(Lcom/android/server/status/StatusBarPolicy;Landroid/content/Intent;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1085
    :cond_89
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1086
    .local v1, d:Landroid/app/AlertDialog;
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mLowBatteryListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1087
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d3

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    .line 1088
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1089
    iput-object v1, p0, Lcom/android/server/status/StatusBarPolicy;->mLowBatteryDialog:Landroid/app/AlertDialog;

    goto :goto_2b
.end method

.method private showLowBatteryWarning_LGE(IZ)V
    .registers 16
    .parameter "level_real"
    .parameter "force_shutdown"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 1168
    invoke-direct {p0}, Lcom/android/server/status/StatusBarPolicy;->closeLastBatteryView()V

    .line 1171
    move v3, p1

    .line 1174
    .local v3, level:I
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryThresholds:[I

    const/4 v7, 0x2

    aget v6, v6, v7

    if-ge p1, v6, :cond_47

    .line 1176
    move v3, p1

    .line 1181
    :goto_f
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    const v7, 0x10401b5

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1184
    .local v4, levelText:Ljava/lang/CharSequence;
    const-string v6, "StatusBarPolicy"

    const-string v7, "showLowBatteryWarning_LGE"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    iget v6, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryPlugged:I

    invoke-direct {p0, p1, v6, p2}, Lcom/android/server/status/StatusBarPolicy;->startCutOffTimer(IIZ)V

    .line 1198
    if-nez p2, :cond_46

    .line 1205
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1206
    .local v2, intent:Landroid/content/Intent;
    const-string v6, "BATTERY_ALERT"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1207
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1210
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryLevelTextView:Landroid/widget/TextView;

    if-eqz v6, :cond_55

    .line 1211
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryLevelTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1235
    .end local v2           #intent:Landroid/content/Intent;
    :cond_46
    :goto_46
    return-void

    .line 1179
    .end local v4           #levelText:Ljava/lang/CharSequence;
    :cond_47
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryThresholds:[I

    iget v7, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryThreshold:I

    if-le v7, v10, :cond_53

    iget v7, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryThreshold:I

    sub-int/2addr v7, v10

    :goto_50
    aget v3, v6, v7

    goto :goto_f

    :cond_53
    move v7, v11

    goto :goto_50

    .line 1215
    .restart local v2       #intent:Landroid/content/Intent;
    .restart local v4       #levelText:Ljava/lang/CharSequence;
    :cond_55
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    const v7, 0x109001c

    invoke-static {v6, v7, v12}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 1216
    .local v5, v:Landroid/view/View;
    const v6, 0x1020168

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryLevelTextView:Landroid/widget/TextView;

    .line 1218
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryLevelTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1220
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1221
    .local v0, b:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1222
    const v6, 0x10401b3

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1223
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1224
    const v6, 0x1080027

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1225
    const v6, 0x104000a

    invoke-virtual {v0, v6, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1227
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1228
    .local v1, d:Landroid/app/AlertDialog;
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mLowBatteryListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1229
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d3

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    .line 1230
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1232
    iput-object v1, p0, Lcom/android/server/status/StatusBarPolicy;->mLowBatteryDialog:Landroid/app/AlertDialog;

    goto :goto_46
.end method

.method private startCutOffTimer(IIZ)V
    .registers 9
    .parameter "level_real"
    .parameter "real_plugged"
    .parameter "force_shutdown"

    .prologue
    const/4 v3, 0x1

    const-string v4, "StatusBarPolicy"

    .line 1151
    const/16 v0, 0x7530

    .line 1152
    .local v0, timervalue:I
    if-ne p3, v3, :cond_9

    .line 1153
    const/16 v0, 0x1b58

    .line 1154
    :cond_9
    const-string v1, "StatusBarPolicy"

    const-string v1, "startCutOffTimer"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    if-nez p2, :cond_41

    if-ge p1, v3, :cond_41

    iget-object v1, p0, Lcom/android/server/status/StatusBarPolicy;->mLowLevelRunnable:Lcom/android/server/status/StatusBarPolicy$LowLevelRunnable;

    invoke-static {v1}, Lcom/android/server/status/StatusBarPolicy$LowLevelRunnable;->access$1500(Lcom/android/server/status/StatusBarPolicy$LowLevelRunnable;)Z

    move-result v1

    if-nez v1, :cond_41

    .line 1158
    const-string v1, "StatusBarPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start Timer sec"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    iget-object v1, p0, Lcom/android/server/status/StatusBarPolicy;->mLowLevelRunnable:Lcom/android/server/status/StatusBarPolicy$LowLevelRunnable;

    invoke-virtual {v1, v3}, Lcom/android/server/status/StatusBarPolicy$LowLevelRunnable;->setDoingTimer(Z)V

    .line 1160
    iget-object v1, p0, Lcom/android/server/status/StatusBarPolicy;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mLowLevelRunnable:Lcom/android/server/status/StatusBarPolicy$LowLevelRunnable;

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1163
    :cond_41
    return-void
.end method

.method private final updateAlarm(Landroid/content/Intent;)V
    .registers 5
    .parameter "intent"

    .prologue
    .line 815
    const-string v1, "alarmSet"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 816
    .local v0, alarmSet:Z
    iget-object v1, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mAlarmClockIcon:Landroid/os/IBinder;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 817
    return-void
.end method

.method private final updateBattery(Landroid/content/Intent;)V
    .registers 16
    .parameter "intent"

    .prologue
    const/high16 v12, 0x2000

    const/4 v10, 0x0

    const/4 v9, 0x1

    const-string v13, "android.intent.action.BATTERY_LOW"

    const-string v11, "StatusBarPolicy"

    .line 841
    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryData:Lcom/android/server/status/IconData;

    const-string v6, "icon-small"

    invoke-virtual {p1, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, v5, Lcom/android/server/status/IconData;->iconId:I

    .line 842
    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryData:Lcom/android/server/status/IconData;

    const-string v6, "level"

    invoke-virtual {p1, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, v5, Lcom/android/server/status/IconData;->iconLevel:I

    .line 843
    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryIcon:Landroid/os/IBinder;

    iget-object v7, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryData:Lcom/android/server/status/IconData;

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/status/StatusBarService;->updateIcon(Landroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)V

    .line 845
    const-string v5, "plugged"

    invoke-virtual {p1, v5, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 846
    .local v4, plugged:I
    const-string v5, "level"

    const/4 v6, -0x1

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 856
    .local v1, level:I
    iget v2, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryPlugged:I

    .line 857
    .local v2, oldPlugged:I
    iget v3, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryThreshold:I

    .line 858
    .local v3, oldThreshold:I
    invoke-direct {p0, v1}, Lcom/android/server/status/StatusBarPolicy;->pickNextBatteryLevel(I)V

    .line 860
    iput v4, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryPlugged:I

    .line 861
    iput v1, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryLevel:I

    .line 863
    iget-boolean v5, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryFirst:Z

    if-eqz v5, :cond_44

    .line 864
    iput-boolean v10, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryFirst:Z

    .line 886
    :cond_44
    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mLowLevelRunnable:Lcom/android/server/status/StatusBarPolicy$LowLevelRunnable;

    invoke-virtual {v5, v1}, Lcom/android/server/status/StatusBarPolicy$LowLevelRunnable;->setLevel(I)V

    .line 887
    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mLowLevelRunnable:Lcom/android/server/status/StatusBarPolicy$LowLevelRunnable;

    invoke-virtual {v5, v4}, Lcom/android/server/status/StatusBarPolicy$LowLevelRunnable;->setPlugged(I)V

    .line 889
    if-eq v4, v9, :cond_52

    if-lez v1, :cond_6d

    :cond_52
    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mLowLevelRunnable:Lcom/android/server/status/StatusBarPolicy$LowLevelRunnable;

    invoke-static {v5}, Lcom/android/server/status/StatusBarPolicy$LowLevelRunnable;->access$1500(Lcom/android/server/status/StatusBarPolicy$LowLevelRunnable;)Z

    move-result v5

    if-ne v5, v9, :cond_6d

    .line 891
    const-string v5, "StatusBarPolicy"

    const-string v5, "Cancle Timer to kill Proc"

    invoke-static {v11, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mLowLevelRunnable:Lcom/android/server/status/StatusBarPolicy$LowLevelRunnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 893
    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mLowLevelRunnable:Lcom/android/server/status/StatusBarPolicy$LowLevelRunnable;

    invoke-virtual {v5, v10}, Lcom/android/server/status/StatusBarPolicy$LowLevelRunnable;->setDoingTimer(Z)V

    .line 897
    :cond_6d
    if-nez v4, :cond_a1

    if-eqz v2, :cond_77

    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryThresholds:[I

    aget v5, v5, v9

    if-lt v1, v5, :cond_7f

    :cond_77
    iget v5, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryThreshold:I

    if-le v5, v3, :cond_a1

    iget v5, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryThreshold:I

    if-le v5, v9, :cond_a1

    .line 902
    :cond_7f
    iput-boolean v9, p0, Lcom/android/server/status/StatusBarPolicy;->mSentLowBatteryBroadcast:Z

    .line 903
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.BATTERY_LOW"

    invoke-direct {v0, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 904
    .local v0, batIntent:Landroid/content/Intent;
    invoke-virtual {v0, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 905
    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 914
    iget v5, p0, Lcom/android/server/status/StatusBarPolicy;->mPhoneState:I

    if-nez v5, :cond_9e

    .line 917
    invoke-direct {p0, v1, v10}, Lcom/android/server/status/StatusBarPolicy;->showLowBatteryWarning_LGE(IZ)V

    .line 923
    :goto_97
    iget v5, p0, Lcom/android/server/status/StatusBarPolicy;->alertcount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/server/status/StatusBarPolicy;->alertcount:I

    .line 982
    .end local v0           #batIntent:Landroid/content/Intent;
    :cond_9d
    :goto_9d
    return-void

    .line 920
    .restart local v0       #batIntent:Landroid/content/Intent;
    :cond_9e
    iput-boolean v9, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryShowLowOnEndCall:Z

    goto :goto_97

    .line 927
    .end local v0           #batIntent:Landroid/content/Intent;
    :cond_a1
    if-nez v4, :cond_127

    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryThresholds:[I

    const/4 v6, 0x2

    aget v5, v5, v6

    if-ge v1, v5, :cond_127

    .line 931
    const-string v5, "StatusBarPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Show LowBattery 3% under alertcount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/status/StatusBarPolicy;->alertcount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    if-ge v1, v9, :cond_c8

    .line 934
    iput v10, p0, Lcom/android/server/status/StatusBarPolicy;->alertcount:I

    .line 936
    :cond_c8
    iget v5, p0, Lcom/android/server/status/StatusBarPolicy;->alertcount:I

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_da

    .line 937
    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.BATTERY_LOW"

    invoke-direct {v6, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 939
    :cond_da
    iget v5, p0, Lcom/android/server/status/StatusBarPolicy;->alertcount:I

    rem-int/lit8 v5, v5, 0x6

    if-nez v5, :cond_119

    .line 947
    const-string v5, "StatusBarPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mPhoneState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/status/StatusBarPolicy;->mPhoneState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mLowBatteryDialog="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mLowBatteryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mBatteryShowLowOnEndCall="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryShowLowOnEndCall:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    iget v5, p0, Lcom/android/server/status/StatusBarPolicy;->mPhoneState:I

    if-nez v5, :cond_121

    .line 953
    invoke-direct {p0, v1, v10}, Lcom/android/server/status/StatusBarPolicy;->showLowBatteryWarning_LGE(IZ)V

    .line 964
    :cond_119
    :goto_119
    iget v5, p0, Lcom/android/server/status/StatusBarPolicy;->alertcount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/server/status/StatusBarPolicy;->alertcount:I

    goto/16 :goto_9d

    .line 957
    :cond_121
    iput-boolean v9, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryShowLowOnEndCall:Z

    .line 959
    invoke-direct {p0, v1, v9}, Lcom/android/server/status/StatusBarPolicy;->showLowBatteryWarning_LGE(IZ)V

    goto :goto_119

    .line 968
    :cond_127
    iget v5, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryThreshold:I

    if-ge v5, v9, :cond_9d

    .line 969
    iget-boolean v5, p0, Lcom/android/server/status/StatusBarPolicy;->mSentLowBatteryBroadcast:Z

    if-ne v5, v9, :cond_140

    .line 970
    iput-boolean v10, p0, Lcom/android/server/status/StatusBarPolicy;->mSentLowBatteryBroadcast:Z

    .line 971
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.BATTERY_OKAY"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 972
    .restart local v0       #batIntent:Landroid/content/Intent;
    invoke-virtual {v0, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 973
    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 976
    .end local v0           #batIntent:Landroid/content/Intent;
    :cond_140
    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mLowBatteryDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_9d

    .line 977
    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mLowBatteryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    .line 978
    iput-boolean v10, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryShowLowOnEndCall:Z

    goto/16 :goto_9d
.end method

.method private final updateBatteryIcon()V
    .registers 1

    .prologue
    .line 811
    return-void
.end method

.method private final updateBluetooth(Landroid/content/Intent;)V
    .registers 15
    .parameter "intent"

    .prologue
    const/4 v8, -0x1

    const/4 v9, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string v12, "StatusBarPolicy"

    .line 1645
    const/4 v1, 0x0

    .line 1647
    .local v1, bluetoothServiceConnected:Z
    const v4, 0x1080080

    .line 1649
    .local v4, iconId:I
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1650
    .local v0, action:Ljava/lang/String;
    const-string v7, "android.bluetooth.intent.action.BLUETOOTH_STATE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a5

    .line 1651
    const-string v7, "android.bluetooth.intent.BLUETOOTH_STATE"

    const/16 v8, -0x3e8

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 1653
    .local v6, state:I
    if-ne v6, v9, :cond_a2

    move v7, v11

    :goto_21
    iput-boolean v7, p0, Lcom/android/server/status/StatusBarPolicy;->mBluetoothEnabled:Z

    .line 1687
    .end local v6           #state:I
    :goto_23
    iget v7, p0, Lcom/android/server/status/StatusBarPolicy;->mBluetoothHeadsetState:I

    if-eq v7, v9, :cond_30

    iget v7, p0, Lcom/android/server/status/StatusBarPolicy;->mBluetoothA2dpState:I

    if-eq v7, v9, :cond_30

    iget v7, p0, Lcom/android/server/status/StatusBarPolicy;->mBluetoothA2dpState:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_8a

    .line 1691
    :cond_30
    const-string v7, "StatusBarPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BluetoothHeadset Connected =  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/status/StatusBarPolicy;->mBluetoothHeadsetState:I

    if-ne v8, v9, :cond_144

    move v8, v11

    :goto_42
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1692
    const-string v7, "StatusBarPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bluetooth A2DP Connected =  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/status/StatusBarPolicy;->mBluetoothA2dpState:I

    if-eq v8, v9, :cond_63

    iget v8, p0, Lcom/android/server/status/StatusBarPolicy;->mBluetoothA2dpState:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_147

    :cond_63
    move v8, v11

    :goto_64
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1693
    const-string v7, "StatusBarPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bluetooth Service Connected =  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    const v4, 0x1080236

    .line 1698
    :cond_8a
    iget-object v7, p0, Lcom/android/server/status/StatusBarPolicy;->mBluetoothData:Lcom/android/server/status/IconData;

    iput v4, v7, Lcom/android/server/status/IconData;->iconId:I

    .line 1699
    iget-object v7, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v8, p0, Lcom/android/server/status/StatusBarPolicy;->mBluetoothIcon:Landroid/os/IBinder;

    iget-object v9, p0, Lcom/android/server/status/StatusBarPolicy;->mBluetoothData:Lcom/android/server/status/IconData;

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/server/status/StatusBarService;->updateIcon(Landroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)V

    .line 1700
    iget-object v7, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v8, p0, Lcom/android/server/status/StatusBarPolicy;->mBluetoothIcon:Landroid/os/IBinder;

    iget-boolean v9, p0, Lcom/android/server/status/StatusBarPolicy;->mBluetoothEnabled:Z

    invoke-virtual {v7, v8, v9}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 1701
    :cond_a1
    return-void

    .restart local v6       #state:I
    :cond_a2
    move v7, v10

    .line 1653
    goto/16 :goto_21

    .line 1654
    .end local v6           #state:I
    :cond_a5
    const-string v7, "android.bluetooth.intent.action.HEADSET_STATE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b7

    .line 1655
    const-string v7, "android.bluetooth.intent.HEADSET_STATE"

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/server/status/StatusBarPolicy;->mBluetoothHeadsetState:I

    goto/16 :goto_23

    .line 1657
    :cond_b7
    const-string v7, "android.bluetooth.a2dp.intent.action.SINK_STATE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c9

    .line 1658
    const-string v7, "android.bluetooth.a2dp.intent.SINK_STATE"

    invoke-virtual {p1, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/server/status/StatusBarPolicy;->mBluetoothA2dpState:I

    goto/16 :goto_23

    .line 1661
    :cond_c9
    const-string v7, "broadcom.android.bluetooth.intent.action.BT_SERVICE_CONNECTION"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a1

    .line 1662
    const-string v7, "broadcom.android.bluetooth.intent.BLUETOOTH_SERVICE_CONNECTED"

    invoke-virtual {p1, v7, v10}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v7

    if-ne v11, v7, :cond_12c

    move v2, v11

    .line 1665
    .local v2, connected:Z
    :goto_da
    const/4 v5, -0x1

    .line 1667
    .local v5, serviceId:B
    :try_start_db
    const-string v7, "broadcom.android.bluetooth.intent.BLUETOOTH_SERVICE_ID"

    const/4 v8, -0x1

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B
    :try_end_e1
    .catch Ljava/lang/Throwable; {:try_start_db .. :try_end_e1} :catch_12e

    move-result v5

    .line 1672
    :goto_e2
    if-ltz v5, :cond_110

    .line 1673
    if-eqz v2, :cond_138

    .line 1674
    const-string v7, "StatusBarPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Service Connected:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1675
    iget-object v7, p0, Lcom/android/server/status/StatusBarPolicy;->mBluetoothServiceConnectedHash:Ljava/util/HashSet;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1679
    :goto_107
    iget-object v7, p0, Lcom/android/server/status/StatusBarPolicy;->mBluetoothServiceConnectedHash:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v7

    if-lez v7, :cond_142

    move v1, v11

    .line 1681
    :cond_110
    :goto_110
    const-string v7, "StatusBarPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bluetooth Services Connected:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/status/StatusBarPolicy;->mBluetoothServiceConnectedHash:Ljava/util/HashSet;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_23

    .end local v2           #connected:Z
    .end local v5           #serviceId:B
    :cond_12c
    move v2, v10

    .line 1662
    goto :goto_da

    .line 1668
    .restart local v2       #connected:Z
    .restart local v5       #serviceId:B
    :catch_12e
    move-exception v7

    move-object v3, v7

    .line 1669
    .local v3, e:Ljava/lang/Throwable;
    const-string v7, "StatusBarPolicy"

    const-string v7, "Unable to get service id"

    invoke-static {v12, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e2

    .line 1677
    .end local v3           #e:Ljava/lang/Throwable;
    :cond_138
    iget-object v7, p0, Lcom/android/server/status/StatusBarPolicy;->mBluetoothServiceConnectedHash:Ljava/util/HashSet;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_107

    :cond_142
    move v1, v10

    .line 1679
    goto :goto_110

    .end local v2           #connected:Z
    .end local v5           #serviceId:B
    :cond_144
    move v8, v10

    .line 1691
    goto/16 :goto_42

    :cond_147
    move v8, v10

    .line 1692
    goto/16 :goto_64
.end method

.method private final updateCallState(I)V
    .registers 4
    .parameter "state"

    .prologue
    const/4 v1, 0x0

    .line 1239
    iput p1, p0, Lcom/android/server/status/StatusBarPolicy;->mPhoneState:I

    .line 1245
    iget v0, p0, Lcom/android/server/status/StatusBarPolicy;->mPhoneState:I

    if-nez v0, :cond_17

    .line 1246
    iget-boolean v0, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryShowLowOnEndCall:Z

    if-eqz v0, :cond_16

    .line 1247
    iget v0, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryPlugged:I

    if-nez v0, :cond_14

    .line 1252
    iget v0, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryLevel:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/status/StatusBarPolicy;->showLowBatteryWarning_LGE(IZ)V

    .line 1256
    :cond_14
    iput-boolean v1, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryShowLowOnEndCall:Z

    .line 1264
    :cond_16
    :goto_16
    return-void

    .line 1259
    :cond_17
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mLowBatteryDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_16

    .line 1260
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mLowBatteryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1261
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryShowLowOnEndCall:Z

    goto :goto_16
.end method

.method private final updateCdmaRoamingIcon()V
    .registers 10

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v4, "StatusBarPolicy"

    .line 1820
    invoke-direct {p0}, Lcom/android/server/status/StatusBarPolicy;->hasService()Z

    move-result v3

    if-nez v3, :cond_14

    .line 1821
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mCdmaRoamingIndicatorIcon:Landroid/os/IBinder;

    invoke-virtual {v3, v4, v5}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 1865
    :goto_13
    return-void

    .line 1825
    :cond_14
    invoke-direct {p0}, Lcom/android/server/status/StatusBarPolicy;->isCdma()Z

    move-result v3

    if-nez v3, :cond_22

    .line 1826
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mCdmaRoamingIndicatorIcon:Landroid/os/IBinder;

    invoke-virtual {v3, v4, v5}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    goto :goto_13

    .line 1830
    :cond_22
    sget-object v1, Lcom/android/server/status/StatusBarPolicy;->sRoamingIndicatorImages_cdma:[I

    .line 1831
    .local v1, iconList:[I
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCdmaEriIconIndex()I

    move-result v0

    .line 1832
    .local v0, iconIndex:I
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCdmaEriIconMode()I

    move-result v2

    .line 1834
    .local v2, iconMode:I
    if-ne v0, v8, :cond_3a

    .line 1835
    const-string v3, "StatusBarPolicy"

    const-string v3, "getCdmaEriIconIndex returned null, skipping ERI icon update"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 1839
    :cond_3a
    if-ne v2, v8, :cond_44

    .line 1840
    const-string v3, "StatusBarPolicy"

    const-string v3, "getCdmeEriIconMode returned null, skipping ERI icon update"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 1844
    :cond_44
    if-ne v0, v6, :cond_55

    .line 1845
    const-string v3, "StatusBarPolicy"

    const-string v3, "Cdma ROAMING_INDICATOR_OFF, removing ERI icon"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1846
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mCdmaRoamingIndicatorIcon:Landroid/os/IBinder;

    invoke-virtual {v3, v4, v5}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    goto :goto_13

    .line 1850
    :cond_55
    packed-switch v2, :pswitch_data_92

    .line 1864
    :goto_58
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mPhoneIcon:Landroid/os/IBinder;

    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mPhoneData:Lcom/android/server/status/IconData;

    invoke-virtual {v3, v4, v5, v7}, Lcom/android/server/status/StatusBarService;->updateIcon(Landroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)V

    goto :goto_13

    .line 1852
    :pswitch_62
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mCdmaRoamingIndicatorIconData:Lcom/android/server/status/IconData;

    aget v4, v1, v0

    iput v4, v3, Lcom/android/server/status/IconData;->iconId:I

    .line 1853
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mCdmaRoamingIndicatorIcon:Landroid/os/IBinder;

    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mCdmaRoamingIndicatorIconData:Lcom/android/server/status/IconData;

    invoke-virtual {v3, v4, v5, v7}, Lcom/android/server/status/StatusBarService;->updateIcon(Landroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)V

    .line 1854
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mCdmaRoamingIndicatorIcon:Landroid/os/IBinder;

    invoke-virtual {v3, v4, v6}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    goto :goto_58

    .line 1857
    :pswitch_79
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mCdmaRoamingIndicatorIconData:Lcom/android/server/status/IconData;

    const v4, 0x108026b

    iput v4, v3, Lcom/android/server/status/IconData;->iconId:I

    .line 1859
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mCdmaRoamingIndicatorIcon:Landroid/os/IBinder;

    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mCdmaRoamingIndicatorIconData:Lcom/android/server/status/IconData;

    invoke-virtual {v3, v4, v5, v7}, Lcom/android/server/status/StatusBarService;->updateIcon(Landroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)V

    .line 1860
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mCdmaRoamingIndicatorIcon:Landroid/os/IBinder;

    invoke-virtual {v3, v4, v6}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    goto :goto_58

    .line 1850
    nop

    :pswitch_data_92
    .packed-switch 0x0
        :pswitch_62
        :pswitch_79
    .end packed-switch
.end method

.method private final updateClock()V
    .registers 5

    .prologue
    .line 762
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 763
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mClockData:Lcom/android/server/status/IconData;

    iget-object v1, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/status/IconData;->text:Ljava/lang/CharSequence;

    .line 765
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v1, p0, Lcom/android/server/status/StatusBarPolicy;->mClockIcon:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mClockData:Lcom/android/server/status/IconData;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/status/StatusBarService;->updateIcon(Landroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)V

    .line 766
    return-void
.end method

.method private final updateDataIcon()V
    .registers 12

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 1554
    const/4 v3, 0x1

    .line 1556
    .local v3, visible:Z
    invoke-direct {p0}, Lcom/android/server/status/StatusBarPolicy;->isCdma()Z

    move-result v4

    if-nez v4, :cond_7a

    .line 1558
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v5, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-eq v4, v5, :cond_18

    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v5, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    if-ne v4, v5, :cond_69

    .line 1559
    :cond_18
    invoke-direct {p0}, Lcom/android/server/status/StatusBarPolicy;->hasService()Z

    move-result v4

    if-eqz v4, :cond_67

    iget v4, p0, Lcom/android/server/status/StatusBarPolicy;->mDataState:I

    if-ne v4, v6, :cond_67

    .line 1560
    iget v4, p0, Lcom/android/server/status/StatusBarPolicy;->mDataActivity:I

    packed-switch v4, :pswitch_data_ba

    .line 1571
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mDataIconList:[I

    aget v0, v4, v8

    .line 1574
    .local v0, iconId:I
    :goto_2b
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mDataData:Lcom/android/server/status/IconData;

    iput v0, v4, Lcom/android/server/status/IconData;->iconId:I

    .line 1575
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mDataIcon:Landroid/os/IBinder;

    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mDataData:Lcom/android/server/status/IconData;

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/status/StatusBarService;->updateIcon(Landroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)V

    .line 1610
    .end local v0           #iconId:I
    :goto_38
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1612
    .local v1, ident:J
    :try_start_3c
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v5

    invoke-interface {v4, v5, v3}, Lcom/android/internal/app/IBatteryStats;->notePhoneDataConnectionState(IZ)V
    :try_end_47
    .catchall {:try_start_3c .. :try_end_47} :catchall_b2
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_47} :catch_b7

    .line 1615
    :goto_47
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1618
    iget-boolean v4, p0, Lcom/android/server/status/StatusBarPolicy;->mDataIconVisible:Z

    if-eq v4, v3, :cond_57

    .line 1619
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mDataIcon:Landroid/os/IBinder;

    invoke-virtual {v4, v5, v3}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 1620
    iput-boolean v3, p0, Lcom/android/server/status/StatusBarPolicy;->mDataIconVisible:Z

    .line 1622
    :cond_57
    return-void

    .line 1562
    .end local v1           #ident:J
    :pswitch_58
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mDataIconList:[I

    aget v0, v4, v9

    .line 1563
    .restart local v0       #iconId:I
    goto :goto_2b

    .line 1565
    .end local v0           #iconId:I
    :pswitch_5d
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mDataIconList:[I

    aget v0, v4, v6

    .line 1566
    .restart local v0       #iconId:I
    goto :goto_2b

    .line 1568
    .end local v0           #iconId:I
    :pswitch_62
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mDataIconList:[I

    aget v0, v4, v10

    .line 1569
    .restart local v0       #iconId:I
    goto :goto_2b

    .line 1577
    .end local v0           #iconId:I
    :cond_67
    const/4 v3, 0x0

    goto :goto_38

    .line 1580
    :cond_69
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mDataData:Lcom/android/server/status/IconData;

    const v5, 0x1080257

    iput v5, v4, Lcom/android/server/status/IconData;->iconId:I

    .line 1581
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mDataIcon:Landroid/os/IBinder;

    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mDataData:Lcom/android/server/status/IconData;

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/status/StatusBarService;->updateIcon(Landroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)V

    goto :goto_38

    .line 1585
    :cond_7a
    invoke-direct {p0}, Lcom/android/server/status/StatusBarPolicy;->hasService()Z

    move-result v4

    if-eqz v4, :cond_b0

    iget v4, p0, Lcom/android/server/status/StatusBarPolicy;->mDataState:I

    if-ne v4, v6, :cond_b0

    .line 1586
    iget v4, p0, Lcom/android/server/status/StatusBarPolicy;->mDataActivity:I

    packed-switch v4, :pswitch_data_c4

    .line 1600
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mDataIconList:[I

    aget v0, v4, v8

    .line 1603
    .restart local v0       #iconId:I
    :goto_8d
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mDataData:Lcom/android/server/status/IconData;

    iput v0, v4, Lcom/android/server/status/IconData;->iconId:I

    .line 1604
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mDataIcon:Landroid/os/IBinder;

    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mDataData:Lcom/android/server/status/IconData;

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/status/StatusBarService;->updateIcon(Landroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)V

    goto :goto_38

    .line 1588
    .end local v0           #iconId:I
    :pswitch_9b
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mDataIconList:[I

    aget v0, v4, v9

    .line 1589
    .restart local v0       #iconId:I
    goto :goto_8d

    .line 1591
    .end local v0           #iconId:I
    :pswitch_a0
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mDataIconList:[I

    aget v0, v4, v6

    .line 1592
    .restart local v0       #iconId:I
    goto :goto_8d

    .line 1594
    .end local v0           #iconId:I
    :pswitch_a5
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mDataIconList:[I

    aget v0, v4, v10

    .line 1595
    .restart local v0       #iconId:I
    goto :goto_8d

    .line 1597
    .end local v0           #iconId:I
    :pswitch_aa
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mDataIconList:[I

    const/4 v5, 0x4

    aget v0, v4, v5

    .line 1598
    .restart local v0       #iconId:I
    goto :goto_8d

    .line 1606
    .end local v0           #iconId:I
    :cond_b0
    const/4 v3, 0x0

    goto :goto_38

    .line 1615
    .restart local v1       #ident:J
    :catchall_b2
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 1613
    :catch_b7
    move-exception v4

    goto :goto_47

    .line 1560
    nop

    :pswitch_data_ba
    .packed-switch 0x1
        :pswitch_58
        :pswitch_5d
        :pswitch_62
    .end packed-switch

    .line 1586
    :pswitch_data_c4
    .packed-switch 0x1
        :pswitch_9b
        :pswitch_a0
        :pswitch_a5
        :pswitch_aa
    .end packed-switch
.end method

.method private final updateDataNetType()V
    .registers 3

    .prologue
    .line 1519
    iget-object v1, p0, Lcom/android/server/status/StatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 1521
    .local v0, net:I
    packed-switch v0, :pswitch_data_2c

    .line 1547
    :pswitch_9
    sget-object v1, Lcom/android/server/status/StatusBarPolicy;->sDataNetType_g:[I

    iput-object v1, p0, Lcom/android/server/status/StatusBarPolicy;->mDataIconList:[I

    .line 1550
    :goto_d
    return-void

    .line 1523
    :pswitch_e
    sget-object v1, Lcom/android/server/status/StatusBarPolicy;->sDataNetType_e:[I

    iput-object v1, p0, Lcom/android/server/status/StatusBarPolicy;->mDataIconList:[I

    goto :goto_d

    .line 1526
    :pswitch_13
    sget-object v1, Lcom/android/server/status/StatusBarPolicy;->sDataNetType_3g:[I

    iput-object v1, p0, Lcom/android/server/status/StatusBarPolicy;->mDataIconList:[I

    goto :goto_d

    .line 1531
    :pswitch_18
    sget-object v1, Lcom/android/server/status/StatusBarPolicy;->sDataNetType_h:[I

    iput-object v1, p0, Lcom/android/server/status/StatusBarPolicy;->mDataIconList:[I

    goto :goto_d

    .line 1537
    :pswitch_1d
    sget-object v1, Lcom/android/server/status/StatusBarPolicy;->sDataNetType_1xrtt:[I

    iput-object v1, p0, Lcom/android/server/status/StatusBarPolicy;->mDataIconList:[I

    goto :goto_d

    .line 1540
    :pswitch_22
    sget-object v1, Lcom/android/server/status/StatusBarPolicy;->sDataNetType_1xrtt:[I

    iput-object v1, p0, Lcom/android/server/status/StatusBarPolicy;->mDataIconList:[I

    goto :goto_d

    .line 1544
    :pswitch_27
    sget-object v1, Lcom/android/server/status/StatusBarPolicy;->sDataNetType_evdo:[I

    iput-object v1, p0, Lcom/android/server/status/StatusBarPolicy;->mDataIconList:[I

    goto :goto_d

    .line 1521
    :pswitch_data_2c
    .packed-switch 0x2
        :pswitch_e
        :pswitch_13
        :pswitch_1d
        :pswitch_27
        :pswitch_27
        :pswitch_22
        :pswitch_9
        :pswitch_18
    .end packed-switch
.end method

.method private final updateGps(Landroid/content/Intent;)V
    .registers 9
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1766
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1767
    .local v0, action:Ljava/lang/String;
    const-string v2, "enabled"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1769
    .local v1, enabled:Z
    const-string v2, "android.location.GPS_FIX_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    if-eqz v1, :cond_28

    .line 1771
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mGpsIcon:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mGpsFixIconData:Lcom/android/server/status/IconData;

    invoke-virtual {v2, v3, v4, v6}, Lcom/android/server/status/StatusBarService;->updateIcon(Landroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)V

    .line 1772
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mGpsIcon:Landroid/os/IBinder;

    invoke-virtual {v2, v3, v5}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 1781
    :goto_27
    return-void

    .line 1773
    :cond_28
    const-string v2, "android.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    if-nez v1, :cond_3a

    .line 1775
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mGpsIcon:Landroid/os/IBinder;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    goto :goto_27

    .line 1778
    :cond_3a
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mGpsIcon:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mGpsEnabledIconData:Lcom/android/server/status/IconData;

    invoke-virtual {v2, v3, v4, v6}, Lcom/android/server/status/StatusBarService;->updateIcon(Landroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)V

    .line 1779
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mGpsIcon:Landroid/os/IBinder;

    invoke-virtual {v2, v3, v5}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    goto :goto_27
.end method

.method private final updateHeadset(Landroid/content/Intent;)V
    .registers 9
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 1786
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1787
    .local v0, action:Ljava/lang/String;
    const-string v2, "state"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1789
    .local v1, headsetState:I
    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    if-ne v1, v6, :cond_28

    .line 1791
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mHeadsetIcon:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mHeadsetIconData:Lcom/android/server/status/IconData;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/status/StatusBarService;->updateIcon(Landroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)V

    .line 1792
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mHeadsetIcon:Landroid/os/IBinder;

    invoke-virtual {v2, v3, v6}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 1797
    :goto_27
    return-void

    .line 1795
    :cond_28
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mHeadsetIcon:Landroid/os/IBinder;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    goto :goto_27
.end method

.method private final updateSignalStrength()V
    .registers 21

    .prologue
    .line 1372
    const/4 v9, -0x1

    .line 1373
    .local v9, iconLevel:I
    const/4 v6, -0x1

    .line 1377
    .local v6, evdoIconLevel:I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/status/StatusBarPolicy;->hasService()Z

    move-result v16

    if-nez v16, :cond_7b

    .line 1379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "airplane_mode_on"

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_6b

    .line 1381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarPolicy;->mPhoneData:Lcom/android/server/status/IconData;

    move-object/from16 v16, v0

    const v17, 0x1080282

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/server/status/IconData;->iconId:I

    .line 1385
    :goto_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarPolicy;->mPhoneIcon:Landroid/os/IBinder;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v16 .. v18}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 1386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarPolicy;->mPhoneIcon:Landroid/os/IBinder;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarPolicy;->mPhoneData:Lcom/android/server/status/IconData;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v16 .. v19}, Lcom/android/server/status/StatusBarService;->updateIcon(Landroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)V

    .line 1387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarPolicy;->mPhoneEvdoIcon:Landroid/os/IBinder;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 1516
    :goto_6a
    return-void

    .line 1383
    :cond_6b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarPolicy;->mPhoneData:Lcom/android/server/status/IconData;

    move-object/from16 v16, v0

    const v17, 0x1080283

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/server/status/IconData;->iconId:I

    goto :goto_31

    .line 1391
    :cond_7b
    invoke-direct/range {p0 .. p0}, Lcom/android/server/status/StatusBarPolicy;->isCdma()Z

    move-result v16

    if-nez v16, :cond_1bf

    .line 1392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v2

    .line 1401
    .local v2, asu:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/status/StatusBarPolicy;->mDataNetType:I

    .line 1402
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/status/StatusBarPolicy;->mDataNetType:I

    move/from16 v16, v0

    sparse-switch v16, :sswitch_data_2c6

    .line 1415
    const/16 v16, 0x5

    move v0, v2

    move/from16 v1, v16

    if-lt v0, v1, :cond_b2

    const/16 v16, 0x63

    move v0, v2

    move/from16 v1, v16

    if-ne v0, v1, :cond_19a

    :cond_b2
    const/4 v9, 0x0

    .line 1440
    :goto_b3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v16

    if-eqz v16, :cond_1bb

    .line 1441
    sget-object v10, Lcom/android/server/status/StatusBarPolicy;->sSignalImages_r:[I

    .line 1482
    .end local v2           #asu:I
    .local v10, iconList:[I
    :goto_c1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarPolicy;->mServiceState:Landroid/telephony/ServiceState;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v16

    const/16 v17, 0x7

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_e5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarPolicy;->mServiceState:Landroid/telephony/ServiceState;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v16

    const/16 v17, 0x8

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_2b2

    .line 1485
    :cond_e5
    sget-object v7, Lcom/android/server/status/StatusBarPolicy;->sSignalImages_evdo:[I

    .line 1487
    .local v7, evdoIconList:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/SignalStrength;->getEvdoEcio()I

    move-result v5

    .line 1488
    .local v5, evdoEcio:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v8

    .line 1489
    .local v8, evdoSnr:I
    const/4 v13, 0x0

    .line 1490
    .local v13, levelEvdoEcio:I
    const/4 v14, 0x0

    .line 1493
    .local v14, levelEvdoSnr:I
    const/16 v16, -0x32

    move v0, v5

    move/from16 v1, v16

    if-lt v0, v1, :cond_26d

    const/4 v13, 0x0

    .line 1499
    :goto_105
    const/16 v16, 0x7

    move v0, v8

    move/from16 v1, v16

    if-le v0, v1, :cond_28e

    const/4 v14, 0x4

    .line 1505
    :goto_10d
    if-ge v13, v14, :cond_2af

    move v6, v13

    .line 1507
    :goto_110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarPolicy;->mPhoneEvdoData:Lcom/android/server/status/IconData;

    move-object/from16 v16, v0

    aget v17, v7, v6

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/server/status/IconData;->iconId:I

    .line 1508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarPolicy;->mPhoneEvdoIcon:Landroid/os/IBinder;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarPolicy;->mPhoneEvdoData:Lcom/android/server/status/IconData;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v16 .. v19}, Lcom/android/server/status/StatusBarService;->updateIcon(Landroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)V

    .line 1509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarPolicy;->mPhoneEvdoIcon:Landroid/os/IBinder;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v16 .. v18}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 1514
    .end local v5           #evdoEcio:I
    .end local v7           #evdoIconList:[I
    .end local v8           #evdoSnr:I
    .end local v13           #levelEvdoEcio:I
    .end local v14           #levelEvdoSnr:I
    :goto_146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarPolicy;->mPhoneData:Lcom/android/server/status/IconData;

    move-object/from16 v16, v0

    aget v17, v10, v9

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/server/status/IconData;->iconId:I

    .line 1515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarPolicy;->mPhoneIcon:Landroid/os/IBinder;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarPolicy;->mPhoneData:Lcom/android/server/status/IconData;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v16 .. v19}, Lcom/android/server/status/StatusBarService;->updateIcon(Landroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)V

    goto/16 :goto_6a

    .line 1405
    .end local v10           #iconList:[I
    .restart local v2       #asu:I
    :sswitch_16d
    if-lez v2, :cond_176

    const/16 v16, 0x63

    move v0, v2

    move/from16 v1, v16

    if-ne v0, v1, :cond_179

    :cond_176
    const/4 v9, 0x0

    goto/16 :goto_b3

    .line 1406
    :cond_179
    const/16 v16, 0xc

    move v0, v2

    move/from16 v1, v16

    if-lt v0, v1, :cond_183

    const/4 v9, 0x4

    goto/16 :goto_b3

    .line 1407
    :cond_183
    const/16 v16, 0x8

    move v0, v2

    move/from16 v1, v16

    if-lt v0, v1, :cond_18d

    const/4 v9, 0x3

    goto/16 :goto_b3

    .line 1408
    :cond_18d
    const/16 v16, 0x4

    move v0, v2

    move/from16 v1, v16

    if-lt v0, v1, :cond_197

    const/4 v9, 0x2

    goto/16 :goto_b3

    .line 1409
    :cond_197
    const/4 v9, 0x1

    .line 1410
    goto/16 :goto_b3

    .line 1416
    :cond_19a
    const/16 v16, 0xc

    move v0, v2

    move/from16 v1, v16

    if-lt v0, v1, :cond_1a4

    const/4 v9, 0x4

    goto/16 :goto_b3

    .line 1417
    :cond_1a4
    const/16 v16, 0x8

    move v0, v2

    move/from16 v1, v16

    if-lt v0, v1, :cond_1ae

    const/4 v9, 0x3

    goto/16 :goto_b3

    .line 1418
    :cond_1ae
    const/16 v16, 0x6

    move v0, v2

    move/from16 v1, v16

    if-lt v0, v1, :cond_1b8

    const/4 v9, 0x2

    goto/16 :goto_b3

    .line 1419
    :cond_1b8
    const/4 v9, 0x1

    goto/16 :goto_b3

    .line 1443
    :cond_1bb
    sget-object v10, Lcom/android/server/status/StatusBarPolicy;->sSignalImages:[I

    .restart local v10       #iconList:[I
    goto/16 :goto_c1

    .line 1448
    .end local v2           #asu:I
    .end local v10           #iconList:[I
    :cond_1bf
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "preferred_network_mode"

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    .line 1452
    .local v15, settingsNetworkMode:I
    const/16 v16, 0x6

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_216

    .line 1453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarPolicy;->mPhoneIcon:Landroid/os/IBinder;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 1458
    :goto_1e9
    sget-object v10, Lcom/android/server/status/StatusBarPolicy;->sSignalImages_cdma:[I

    .line 1460
    .restart local v10       #iconList:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v3

    .line 1461
    .local v3, cdmaDbm:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v4

    .line 1462
    .local v4, cdmaEcio:I
    const/4 v11, 0x0

    .line 1463
    .local v11, levelDbm:I
    const/4 v12, 0x0

    .line 1465
    .local v12, levelEcio:I
    const/16 v16, -0x1

    move v0, v3

    move/from16 v1, v16

    if-ne v0, v1, :cond_228

    const/4 v11, 0x0

    .line 1473
    :goto_209
    const/16 v16, -0x5a

    move v0, v4

    move/from16 v1, v16

    if-lt v0, v1, :cond_24e

    const/4 v12, 0x4

    .line 1479
    :goto_211
    if-ge v11, v12, :cond_26b

    move v9, v11

    :goto_214
    goto/16 :goto_c1

    .line 1455
    .end local v3           #cdmaDbm:I
    .end local v4           #cdmaEcio:I
    .end local v10           #iconList:[I
    .end local v11           #levelDbm:I
    .end local v12           #levelEcio:I
    :cond_216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarPolicy;->mPhoneIcon:Landroid/os/IBinder;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v16 .. v18}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    goto :goto_1e9

    .line 1466
    .restart local v3       #cdmaDbm:I
    .restart local v4       #cdmaEcio:I
    .restart local v10       #iconList:[I
    .restart local v11       #levelDbm:I
    .restart local v12       #levelEcio:I
    :cond_228
    const/16 v16, -0x4b

    move v0, v3

    move/from16 v1, v16

    if-lt v0, v1, :cond_231

    const/4 v11, 0x4

    goto :goto_209

    .line 1467
    :cond_231
    const/16 v16, -0x55

    move v0, v3

    move/from16 v1, v16

    if-lt v0, v1, :cond_23a

    const/4 v11, 0x3

    goto :goto_209

    .line 1468
    :cond_23a
    const/16 v16, -0x5f

    move v0, v3

    move/from16 v1, v16

    if-lt v0, v1, :cond_243

    const/4 v11, 0x2

    goto :goto_209

    .line 1469
    :cond_243
    const/16 v16, -0x64

    move v0, v3

    move/from16 v1, v16

    if-lt v0, v1, :cond_24c

    const/4 v11, 0x1

    goto :goto_209

    .line 1470
    :cond_24c
    const/4 v11, 0x0

    goto :goto_209

    .line 1474
    :cond_24e
    const/16 v16, -0x6e

    move v0, v4

    move/from16 v1, v16

    if-lt v0, v1, :cond_257

    const/4 v12, 0x3

    goto :goto_211

    .line 1475
    :cond_257
    const/16 v16, -0x82

    move v0, v4

    move/from16 v1, v16

    if-lt v0, v1, :cond_260

    const/4 v12, 0x2

    goto :goto_211

    .line 1476
    :cond_260
    const/16 v16, -0x96

    move v0, v4

    move/from16 v1, v16

    if-lt v0, v1, :cond_269

    const/4 v12, 0x1

    goto :goto_211

    .line 1477
    :cond_269
    const/4 v12, 0x0

    goto :goto_211

    :cond_26b
    move v9, v12

    .line 1479
    goto :goto_214

    .line 1494
    .end local v3           #cdmaDbm:I
    .end local v4           #cdmaEcio:I
    .end local v11           #levelDbm:I
    .end local v12           #levelEcio:I
    .end local v15           #settingsNetworkMode:I
    .restart local v5       #evdoEcio:I
    .restart local v7       #evdoIconList:[I
    .restart local v8       #evdoSnr:I
    .restart local v13       #levelEvdoEcio:I
    .restart local v14       #levelEvdoSnr:I
    :cond_26d
    const/16 v16, -0x28a

    move v0, v5

    move/from16 v1, v16

    if-lt v0, v1, :cond_277

    const/4 v13, 0x1

    goto/16 :goto_105

    .line 1495
    :cond_277
    const/16 v16, -0x2ee

    move v0, v5

    move/from16 v1, v16

    if-lt v0, v1, :cond_281

    const/4 v13, 0x2

    goto/16 :goto_105

    .line 1496
    :cond_281
    const/16 v16, -0x384

    move v0, v5

    move/from16 v1, v16

    if-lt v0, v1, :cond_28b

    const/4 v13, 0x3

    goto/16 :goto_105

    .line 1497
    :cond_28b
    const/4 v13, 0x4

    goto/16 :goto_105

    .line 1500
    :cond_28e
    const/16 v16, 0x5

    move v0, v8

    move/from16 v1, v16

    if-le v0, v1, :cond_298

    const/4 v14, 0x3

    goto/16 :goto_10d

    .line 1501
    :cond_298
    const/16 v16, 0x3

    move v0, v8

    move/from16 v1, v16

    if-le v0, v1, :cond_2a2

    const/4 v14, 0x2

    goto/16 :goto_10d

    .line 1502
    :cond_2a2
    const/16 v16, 0x1

    move v0, v8

    move/from16 v1, v16

    if-le v0, v1, :cond_2ac

    const/4 v14, 0x1

    goto/16 :goto_10d

    .line 1503
    :cond_2ac
    const/4 v14, 0x0

    goto/16 :goto_10d

    :cond_2af
    move v6, v14

    .line 1505
    goto/16 :goto_110

    .line 1511
    .end local v5           #evdoEcio:I
    .end local v7           #evdoIconList:[I
    .end local v8           #evdoSnr:I
    .end local v13           #levelEvdoEcio:I
    .end local v14           #levelEvdoSnr:I
    :cond_2b2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarPolicy;->mPhoneEvdoIcon:Landroid/os/IBinder;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    goto/16 :goto_146

    .line 1402
    nop

    :sswitch_data_2c6
    .sparse-switch
        0x3 -> :sswitch_16d
        0x9 -> :sswitch_16d
    .end sparse-switch
.end method

.method private final updateSimState(Landroid/content/Intent;)V
    .registers 5
    .parameter "intent"

    .prologue
    .line 1323
    const-string v2, "ss"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1324
    .local v1, stateExtra:Ljava/lang/String;
    const-string v2, "ABSENT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1325
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    .line 1347
    :goto_12
    invoke-direct {p0}, Lcom/android/server/status/StatusBarPolicy;->updateDataIcon()V

    .line 1348
    return-void

    .line 1327
    :cond_16
    const-string v2, "CARD_IO_ERROR"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1328
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_12

    .line 1330
    :cond_23
    const-string v2, "READY"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 1331
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_12

    .line 1333
    :cond_30
    const-string v2, "LOCKED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 1334
    const-string v2, "reason"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1335
    .local v0, lockedReason:Ljava/lang/String;
    const-string v2, "PIN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 1336
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_12

    .line 1338
    :cond_4b
    const-string v2, "PUK"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 1339
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_12

    .line 1342
    :cond_58
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_12

    .line 1345
    .end local v0           #lockedReason:Ljava/lang/String;
    :cond_5d
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_12
.end method

.method private final updateStatusbarIcons()V
    .registers 5

    .prologue
    .line 773
    iget-object v1, p0, Lcom/android/server/status/StatusBarPolicy;->mTheme:Ljava/lang/String;

    const-string v2, "lge"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 774
    const/4 v0, -0x1

    .line 778
    .local v0, color:I
    :goto_b
    iget-object v1, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mClockIcon:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mClockData:Lcom/android/server/status/IconData;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/status/StatusBarService;->updateIconTextColor(Landroid/os/IBinder;Lcom/android/server/status/IconData;I)V

    .line 779
    invoke-direct {p0}, Lcom/android/server/status/StatusBarPolicy;->updateSignalStrength()V

    .line 780
    invoke-direct {p0}, Lcom/android/server/status/StatusBarPolicy;->updateBatteryIcon()V

    .line 781
    invoke-direct {p0}, Lcom/android/server/status/StatusBarPolicy;->updateDataNetType()V

    .line 782
    invoke-direct {p0}, Lcom/android/server/status/StatusBarPolicy;->updateDataIcon()V

    .line 783
    return-void

    .line 776
    .end local v0           #color:I
    :cond_21
    const/high16 v0, -0x100

    .restart local v0       #color:I
    goto :goto_b
.end method

.method private final updateSyncState(Landroid/content/Intent;)V
    .registers 6
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 820
    const-string v2, "active"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 821
    .local v0, isActive:Z
    const-string v2, "failing"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 822
    .local v1, isFailing:Z
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mSyncActiveIcon:Landroid/os/IBinder;

    invoke-virtual {v2, v3, v0}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 825
    return-void
.end method

.method private final updateTTY(Landroid/content/Intent;)V
    .registers 8
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    const-string v4, "StatusBarPolicy"

    .line 1802
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1803
    .local v0, action:Ljava/lang/String;
    const-string v2, "ttyEnabled"

    invoke-virtual {p1, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1805
    .local v1, enabled:Z
    const-string v2, "StatusBarPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateTTY: enabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1807
    if-eqz v1, :cond_41

    .line 1809
    const-string v2, "StatusBarPolicy"

    const-string v2, "updateTTY: set TTY on"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1810
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mTTYModeIcon:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mTTYModeEnableIconData:Lcom/android/server/status/IconData;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/status/StatusBarService;->updateIcon(Landroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)V

    .line 1811
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mTTYModeIcon:Landroid/os/IBinder;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 1817
    :goto_40
    return-void

    .line 1814
    :cond_41
    const-string v2, "StatusBarPolicy"

    const-string v2, "updateTTY: set TTY off"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1815
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mTTYModeIcon:Landroid/os/IBinder;

    invoke-virtual {v2, v3, v5}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    goto :goto_40
.end method

.method private final updateVolume()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1625
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1626
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    .line 1627
    .local v2, ringerMode:I
    if-eqz v2, :cond_14

    if-ne v2, v7, :cond_3d

    :cond_14
    move v3, v7

    .line 1629
    .local v3, visible:Z
    :goto_15
    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->shouldVibrate(I)Z

    move-result v4

    if-eqz v4, :cond_3f

    const v4, 0x1080269

    move v1, v4

    .line 1633
    .local v1, iconId:I
    :goto_1f
    if-eqz v3, :cond_2f

    .line 1634
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mVolumeData:Lcom/android/server/status/IconData;

    iput v1, v4, Lcom/android/server/status/IconData;->iconId:I

    .line 1635
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mVolumeIcon:Landroid/os/IBinder;

    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mVolumeData:Lcom/android/server/status/IconData;

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/status/StatusBarService;->updateIcon(Landroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)V

    .line 1637
    :cond_2f
    iget-boolean v4, p0, Lcom/android/server/status/StatusBarPolicy;->mVolumeVisible:Z

    if-eq v3, v4, :cond_3c

    .line 1638
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mVolumeIcon:Landroid/os/IBinder;

    invoke-virtual {v4, v5, v3}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 1639
    iput-boolean v3, p0, Lcom/android/server/status/StatusBarPolicy;->mVolumeVisible:Z

    .line 1641
    :cond_3c
    return-void

    .end local v1           #iconId:I
    .end local v3           #visible:Z
    :cond_3d
    move v3, v6

    .line 1627
    goto :goto_15

    .line 1629
    .restart local v3       #visible:Z
    :cond_3f
    const v4, 0x1080268

    move v1, v4

    goto :goto_1f
.end method

.method private final updateWifi(Landroid/content/Intent;)V
    .registers 13
    .parameter "intent"

    .prologue
    const/4 v10, 0x0

    const/4 v7, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1704
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1705
    .local v0, action:Ljava/lang/String;
    const-string v6, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_27

    .line 1707
    const-string v6, "wifi_state"

    const/4 v7, 0x4

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_25

    move v1, v9

    .line 1710
    .local v1, enabled:Z
    :goto_1b
    if-nez v1, :cond_24

    .line 1712
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v7, p0, Lcom/android/server/status/StatusBarPolicy;->mWifiIcon:Landroid/os/IBinder;

    invoke-virtual {v6, v7, v8}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 1763
    .end local v1           #enabled:Z
    :cond_24
    :goto_24
    return-void

    :cond_25
    move v1, v8

    .line 1707
    goto :goto_1b

    .line 1715
    :cond_27
    const-string v6, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3f

    .line 1716
    const-string v6, "connected"

    invoke-virtual {p1, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1718
    .restart local v1       #enabled:Z
    if-nez v1, :cond_24

    .line 1719
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v7, p0, Lcom/android/server/status/StatusBarPolicy;->mWifiIcon:Landroid/os/IBinder;

    invoke-virtual {v6, v7, v8}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    goto :goto_24

    .line 1721
    .end local v1           #enabled:Z
    :cond_3f
    const-string v6, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8d

    .line 1723
    const-string v6, "networkInfo"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 1727
    .local v3, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v3, :cond_7d

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_7d

    .line 1728
    iput-boolean v9, p0, Lcom/android/server/status/StatusBarPolicy;->mIsWifiConnected:Z

    .line 1729
    iget v6, p0, Lcom/android/server/status/StatusBarPolicy;->mLastWifiSignalLevel:I

    if-ne v6, v7, :cond_76

    .line 1730
    sget-object v6, Lcom/android/server/status/StatusBarPolicy;->sWifiSignalImages:[I

    aget v2, v6, v8

    .line 1736
    .local v2, iconId:I
    :goto_61
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v7, p0, Lcom/android/server/status/StatusBarPolicy;->mWifiIcon:Landroid/os/IBinder;

    invoke-virtual {v6, v7, v9}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 1747
    :goto_68
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mWifiData:Lcom/android/server/status/IconData;

    iput v2, v6, Lcom/android/server/status/IconData;->iconId:I

    .line 1748
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v7, p0, Lcom/android/server/status/StatusBarPolicy;->mWifiIcon:Landroid/os/IBinder;

    iget-object v8, p0, Lcom/android/server/status/StatusBarPolicy;->mWifiData:Lcom/android/server/status/IconData;

    invoke-virtual {v6, v7, v8, v10}, Lcom/android/server/status/StatusBarService;->updateIcon(Landroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)V

    goto :goto_24

    .line 1732
    .end local v2           #iconId:I
    :cond_76
    sget-object v6, Lcom/android/server/status/StatusBarPolicy;->sWifiSignalImages:[I

    iget v7, p0, Lcom/android/server/status/StatusBarPolicy;->mLastWifiSignalLevel:I

    aget v2, v6, v7

    .restart local v2       #iconId:I
    goto :goto_61

    .line 1739
    .end local v2           #iconId:I
    :cond_7d
    iput v7, p0, Lcom/android/server/status/StatusBarPolicy;->mLastWifiSignalLevel:I

    .line 1740
    iput-boolean v8, p0, Lcom/android/server/status/StatusBarPolicy;->mIsWifiConnected:Z

    .line 1741
    sget-object v6, Lcom/android/server/status/StatusBarPolicy;->sWifiSignalImages:[I

    aget v2, v6, v8

    .line 1744
    .restart local v2       #iconId:I
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v7, p0, Lcom/android/server/status/StatusBarPolicy;->mWifiIcon:Landroid/os/IBinder;

    invoke-virtual {v6, v7, v8}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    goto :goto_68

    .line 1749
    .end local v2           #iconId:I
    .end local v3           #networkInfo:Landroid/net/NetworkInfo;
    :cond_8d
    const-string v6, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24

    .line 1750
    const-string v6, "newRssi"

    const/16 v7, -0xc8

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1751
    .local v4, newRssi:I
    sget-object v6, Lcom/android/server/status/StatusBarPolicy;->sWifiSignalImages:[I

    array-length v6, v6

    invoke-static {v4, v6}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v5

    .line 1753
    .local v5, newSignalLevel:I
    iget v6, p0, Lcom/android/server/status/StatusBarPolicy;->mLastWifiSignalLevel:I

    if-eq v5, v6, :cond_24

    .line 1754
    iput v5, p0, Lcom/android/server/status/StatusBarPolicy;->mLastWifiSignalLevel:I

    .line 1755
    iget-boolean v6, p0, Lcom/android/server/status/StatusBarPolicy;->mIsWifiConnected:Z

    if-eqz v6, :cond_c1

    .line 1756
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mWifiData:Lcom/android/server/status/IconData;

    sget-object v7, Lcom/android/server/status/StatusBarPolicy;->sWifiSignalImages:[I

    aget v7, v7, v5

    iput v7, v6, Lcom/android/server/status/IconData;->iconId:I

    .line 1760
    :goto_b6
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v7, p0, Lcom/android/server/status/StatusBarPolicy;->mWifiIcon:Landroid/os/IBinder;

    iget-object v8, p0, Lcom/android/server/status/StatusBarPolicy;->mWifiData:Lcom/android/server/status/IconData;

    invoke-virtual {v6, v7, v8, v10}, Lcom/android/server/status/StatusBarService;->updateIcon(Landroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)V

    goto/16 :goto_24

    .line 1758
    :cond_c1
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mWifiData:Lcom/android/server/status/IconData;

    const v7, 0x108028d

    iput v7, v6, Lcom/android/server/status/IconData;->iconId:I

    goto :goto_b6
.end method


# virtual methods
.method public selectThemeIcons(Ljava/lang/String;)V
    .registers 4
    .parameter "theme"

    .prologue
    .line 742
    const v0, 0x1080268

    iput v0, p0, Lcom/android/server/status/StatusBarPolicy;->mVolumeIconRes:I

    .line 743
    const v0, 0x1080235

    iput v0, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryIconRes:I

    .line 744
    const v0, 0x1080283

    iput v0, p0, Lcom/android/server/status/StatusBarPolicy;->mPhoneSignalIconRes:I

    .line 745
    const v0, 0x108023b

    iput v0, p0, Lcom/android/server/status/StatusBarPolicy;->mDataConnectionIconRes:I

    .line 746
    sget-object v0, Lcom/android/server/status/StatusBarPolicy;->sWifiSignalImages:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lcom/android/server/status/StatusBarPolicy;->mWifiIconRes:I

    .line 747
    const v0, 0x1080080

    iput v0, p0, Lcom/android/server/status/StatusBarPolicy;->mBluetoothIconRes:I

    .line 748
    const v0, 0x1080220

    iput v0, p0, Lcom/android/server/status/StatusBarPolicy;->mAlarmIconRes:I

    .line 749
    const v0, 0x1080223

    iput v0, p0, Lcom/android/server/status/StatusBarPolicy;->mSyncActiveIconRes:I

    .line 750
    const v0, 0x1080224

    iput v0, p0, Lcom/android/server/status/StatusBarPolicy;->mSyncFailingIconRes:I

    .line 751
    const v0, 0x1080255

    iput v0, p0, Lcom/android/server/status/StatusBarPolicy;->mGpsEnIconRes:I

    .line 752
    const v0, 0x1080256

    iput v0, p0, Lcom/android/server/status/StatusBarPolicy;->mGpsFixIconRes:I

    .line 754
    return-void
.end method
