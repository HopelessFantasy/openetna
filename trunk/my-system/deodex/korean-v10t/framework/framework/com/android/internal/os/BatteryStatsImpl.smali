.class public final Lcom/android/internal/os/BatteryStatsImpl;
.super Landroid/os/BatteryStats;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BatteryStatsImpl$Uid;,
        Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;,
        Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;,
        Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;,
        Lcom/android/internal/os/BatteryStatsImpl$Timer;,
        Lcom/android/internal/os/BatteryStatsImpl$Counter;,
        Lcom/android/internal/os/BatteryStatsImpl$Unpluggable;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final MAGIC:I = -0x458a8b8b

.field private static final PROC_WAKELOCKS_FORMAT:[I = null

.field private static final TAG:Ljava/lang/String; = "BatteryStatsImpl"

.field private static final VERSION:I = 0x27

.field private static sKernelWakelockUpdateVersion:I


# instance fields
.field mAudioOn:Z

.field mAudioOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field private final mBackupFile:Ljava/io/File;

.field mBatteryLastRealtime:J

.field mBatteryLastUptime:J

.field mBatteryRealtime:J

.field mBatteryUptime:J

.field mBluetoothOn:Z

.field mBluetoothOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field private mBluetoothPingCount:I

.field private mBluetoothPingStart:I

.field mBtHeadset:Landroid/bluetooth/BluetoothHeadset;

.field mDischargeCurrentLevel:I

.field mDischargeStartLevel:I

.field private final mFile:Ljava/io/File;

.field final mFullTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field mInputEventCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

.field private final mKernelWakelockStats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;",
            ">;"
        }
    .end annotation
.end field

.field mLastRealtime:J

.field mLastUptime:J

.field mLastWriteTime:J

.field private mMobileDataRx:[J

.field private mMobileDataTx:[J

.field mOnBattery:Z

.field mOnBatteryInternal:Z

.field final mPartialTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field mPhoneDataConnectionType:I

.field final mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mPhoneOn:Z

.field mPhoneOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mPhoneSignalStrengthBin:I

.field final mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field private final mProcWakelockFileStats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcWakelocksData:[J

.field private final mProcWakelocksName:[Ljava/lang/String;

.field private mRadioDataStart:J

.field private mRadioDataUptime:J

.field mRealtime:J

.field mRealtimeStart:J

.field mScreenBrightnessBin:I

.field final mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mScreenOn:Z

.field mScreenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field final mSensorTimers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;>;"
        }
    .end annotation
.end field

.field mStartCount:I

.field private mTotalDataRx:[J

.field private mTotalDataTx:[J

.field mTrackBatteryPastRealtime:J

.field mTrackBatteryPastUptime:J

.field mTrackBatteryRealtimeStart:J

.field mTrackBatteryUptimeStart:J

.field private mUidCache:Ljava/util/HashMap;
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

.field final mUidStats:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid;",
            ">;"
        }
    .end annotation
.end field

.field final mUnpluggables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$Unpluggable;",
            ">;"
        }
    .end annotation
.end field

.field mUnpluggedBatteryRealtime:J

.field mUnpluggedBatteryUptime:J

.field mUptime:J

.field mUptimeStart:J

.field mVideoOn:Z

.field mVideoOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mWifiOn:Z

.field mWifiOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mWifiOnUid:I

.field mWifiRunning:Z

.field mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field final mWindowTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 180
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/os/BatteryStatsImpl;->sKernelWakelockUpdateVersion:I

    .line 182
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_14

    sput-object v0, Lcom/android/internal/os/BatteryStatsImpl;->PROC_WAKELOCKS_FORMAT:[I

    .line 3498
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$1;

    invoke-direct {v0}, Lcom/android/internal/os/BatteryStatsImpl$1;-><init>()V

    sput-object v0, Lcom/android/internal/os/BatteryStatsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    .line 182
    nop

    :array_14
    .array-data 0x4
        0x9t 0x10t 0x0t 0x0t
        0x9t 0x20t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x9t 0x20t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 6

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x5

    const/4 v3, 0x4

    const/4 v2, -0x1

    .line 204
    invoke-direct {p0}, Landroid/os/BatteryStats;-><init>()V

    .line 67
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFullTimers:Ljava/util/ArrayList;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWindowTimers:Ljava/util/ArrayList;

    .line 77
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mSensorTimers:Landroid/util/SparseArray;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    .line 101
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessBin:I

    .line 102
    new-array v0, v1, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 115
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthBin:I

    .line 116
    new-array v0, v1, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 119
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionType:I

    .line 120
    new-array v0, v1, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 125
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOnUid:I

    .line 156
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWriteTime:J

    .line 159
    new-array v0, v3, [J

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileDataTx:[J

    .line 160
    new-array v0, v3, [J

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileDataRx:[J

    .line 161
    new-array v0, v3, [J

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTotalDataTx:[J

    .line 162
    new-array v0, v3, [J

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTotalDataRx:[J

    .line 168
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothPingStart:I

    .line 173
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    .line 191
    new-array v0, v4, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mProcWakelocksName:[Ljava/lang/String;

    .line 192
    new-array v0, v4, [J

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mProcWakelocksData:[J

    .line 198
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mProcWakelockFileStats:Ljava/util/Map;

    .line 201
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidCache:Ljava/util/HashMap;

    .line 205
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBackupFile:Ljava/io/File;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFile:Ljava/io/File;

    .line 206
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 7
    .parameter "p"

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x5

    const/4 v3, 0x4

    const/4 v2, -0x1

    .line 2623
    invoke-direct {p0}, Landroid/os/BatteryStats;-><init>()V

    .line 67
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFullTimers:Ljava/util/ArrayList;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWindowTimers:Ljava/util/ArrayList;

    .line 77
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mSensorTimers:Landroid/util/SparseArray;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    .line 101
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessBin:I

    .line 102
    new-array v0, v1, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 115
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthBin:I

    .line 116
    new-array v0, v1, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 119
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionType:I

    .line 120
    new-array v0, v1, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 125
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOnUid:I

    .line 156
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWriteTime:J

    .line 159
    new-array v0, v3, [J

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileDataTx:[J

    .line 160
    new-array v0, v3, [J

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileDataRx:[J

    .line 161
    new-array v0, v3, [J

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTotalDataTx:[J

    .line 162
    new-array v0, v3, [J

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTotalDataRx:[J

    .line 168
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothPingStart:I

    .line 173
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    .line 191
    new-array v0, v4, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mProcWakelocksName:[Ljava/lang/String;

    .line 192
    new-array v0, v4, [J

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mProcWakelocksData:[J

    .line 198
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mProcWakelockFileStats:Ljava/util/Map;

    .line 201
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidCache:Ljava/util/HashMap;

    .line 2624
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBackupFile:Ljava/io/File;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFile:Ljava/io/File;

    .line 2625
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->readFromParcel(Landroid/os/Parcel;)V

    .line 2626
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 10
    .parameter "filename"

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x4

    const/4 v6, 0x5

    const/4 v4, -0x1

    const/4 v5, 0x0

    .line 2593
    invoke-direct {p0}, Landroid/os/BatteryStats;-><init>()V

    .line 67
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    .line 74
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    .line 75
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFullTimers:Ljava/util/ArrayList;

    .line 76
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWindowTimers:Ljava/util/ArrayList;

    .line 77
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mSensorTimers:Landroid/util/SparseArray;

    .line 82
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    .line 101
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessBin:I

    .line 102
    new-array v1, v6, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 115
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthBin:I

    .line 116
    new-array v1, v6, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 119
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionType:I

    .line 120
    new-array v1, v6, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 125
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOnUid:I

    .line 156
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWriteTime:J

    .line 159
    new-array v1, v3, [J

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileDataTx:[J

    .line 160
    new-array v1, v3, [J

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileDataRx:[J

    .line 161
    new-array v1, v3, [J

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTotalDataTx:[J

    .line 162
    new-array v1, v3, [J

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTotalDataRx:[J

    .line 168
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothPingStart:I

    .line 173
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    .line 191
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mProcWakelocksName:[Ljava/lang/String;

    .line 192
    const/4 v1, 0x3

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mProcWakelocksData:[J

    .line 198
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mProcWakelockFileStats:Ljava/util/Map;

    .line 201
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidCache:Ljava/util/HashMap;

    .line 2594
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFile:Ljava/io/File;

    .line 2595
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".bak"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBackupFile:Ljava/io/File;

    .line 2596
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mStartCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mStartCount:I

    .line 2597
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v1, v4, v5, v2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 2598
    const/4 v0, 0x0

    .local v0, i:I
    :goto_ac
    if-ge v0, v6, :cond_bf

    .line 2599
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/16 v3, -0x64

    sub-int/2addr v3, v0

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v2, v3, v5, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    aput-object v2, v1, v0

    .line 2598
    add-int/lit8 v0, v0, 0x1

    goto :goto_ac

    .line 2601
    :cond_bf
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$Counter;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Counter;-><init>(Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInputEventCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    .line 2602
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v2, -0x2

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v5, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 2603
    const/4 v0, 0x0

    :goto_d3
    if-ge v0, v6, :cond_e6

    .line 2604
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/16 v3, -0xc8

    sub-int/2addr v3, v0

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v2, v3, v5, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    aput-object v2, v1, v0

    .line 2603
    add-int/lit8 v0, v0, 0x1

    goto :goto_d3

    .line 2606
    :cond_e6
    const/4 v0, 0x0

    :goto_e7
    if-ge v0, v6, :cond_fa

    .line 2607
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/16 v3, -0x12c

    sub-int/2addr v3, v0

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v2, v3, v5, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    aput-object v2, v1, v0

    .line 2606
    add-int/lit8 v0, v0, 0x1

    goto :goto_e7

    .line 2609
    :cond_fa
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v2, -0x3

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v5, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 2610
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v2, -0x4

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v5, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 2611
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v2, -0x5

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v5, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 2612
    iput-boolean v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryInternal:Z

    iput-boolean v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    .line 2613
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackBatteryPastUptime:J

    .line 2614
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackBatteryPastRealtime:J

    .line 2615
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackBatteryUptimeStart:J

    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUptimeStart:J

    .line 2616
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackBatteryRealtimeStart:J

    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRealtimeStart:J

    .line 2617
    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUptimeStart:J

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryUptimeLocked(J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggedBatteryUptime:J

    .line 2618
    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRealtimeStart:J

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryRealtimeLocked(J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggedBatteryRealtime:J

    .line 2619
    iput v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStartLevel:I

    .line 2620
    iput v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    .line 2621
    return-void
.end method

.method private doDataPlug([JJ)V
    .registers 8
    .parameter "dataTransfer"
    .parameter "currentBytes"

    .prologue
    const/4 v3, 0x3

    .line 922
    const/4 v0, 0x1

    aget-wide v1, p1, v3

    aput-wide v1, p1, v0

    .line 923
    const-wide/16 v0, -0x1

    aput-wide v0, p1, v3

    .line 924
    return-void
.end method

.method private doDataUnplug([JJ)V
    .registers 5
    .parameter "dataTransfer"
    .parameter "currentBytes"

    .prologue
    .line 927
    const/4 v0, 0x3

    aput-wide p2, p1, v0

    .line 928
    return-void
.end method

.method private getCurrentBluetoothPingCount()I
    .registers 2

    .prologue
    .line 969
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBtHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_b

    .line 970
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBtHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->getBatteryUsageHint()I

    move-result v0

    .line 972
    :goto_a
    return v0

    :cond_b
    const/4 v0, -0x1

    goto :goto_a
.end method

.method private getCurrentRadioDataUptime()J
    .registers 8

    .prologue
    const-wide/16 v4, 0x0

    .line 936
    :try_start_2
    new-instance v0, Ljava/io/File;

    const-string v3, "/sys/devices/virtual/net/rmnet0/awake_time_ms"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 937
    .local v0, awakeTimeFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_11

    move-wide v3, v4

    .line 947
    .end local v0           #awakeTimeFile:Ljava/io/File;
    :goto_10
    return-wide v3

    .line 938
    .restart local v0       #awakeTimeFile:Ljava/io/File;
    :cond_11
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 939
    .local v1, br:Ljava/io/BufferedReader;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 940
    .local v2, line:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 941
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_25
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_25} :catch_2d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_25} :catch_2a

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    goto :goto_10

    .line 944
    .end local v0           #awakeTimeFile:Ljava/io/File;
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v2           #line:Ljava/lang/String;
    :catch_2a
    move-exception v3

    :goto_2b
    move-wide v3, v4

    .line 947
    goto :goto_10

    .line 942
    :catch_2d
    move-exception v3

    goto :goto_2b
.end method

.method private getTcpBytes(J[JI)J
    .registers 11
    .parameter "current"
    .parameter "dataBytes"
    .parameter "which"

    .prologue
    const/4 v0, 0x2

    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 2798
    if-ne p4, v4, :cond_8

    .line 2799
    aget-wide v0, p3, v4

    .line 2810
    :goto_7
    return-wide v0

    .line 2801
    :cond_8
    if-ne p4, v5, :cond_1a

    .line 2802
    aget-wide v0, p3, v5

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_15

    .line 2803
    aget-wide v0, p3, v4

    goto :goto_7

    .line 2805
    :cond_15
    aget-wide v0, p3, v5

    sub-long v0, p1, v0

    goto :goto_7

    .line 2807
    :cond_1a
    if-nez p4, :cond_25

    .line 2808
    aget-wide v0, p3, v0

    sub-long v0, p1, v0

    const/4 v2, 0x0

    aget-wide v2, p3, v2

    add-long/2addr v0, v2

    goto :goto_7

    .line 2810
    :cond_25
    aget-wide v0, p3, v0

    sub-long v0, p1, v0

    goto :goto_7
.end method

.method private final parseProcWakelocks([BI)Ljava/util/Map;
    .registers 24
    .parameter "wlBuffer"
    .parameter "len"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 834
    const/16 v20, 0x0

    .line 838
    .local v20, numUpdatedWlNames:I
    const/4 v15, 0x0

    .local v15, i:I
    :goto_3
    move v0, v15

    move/from16 v1, p2

    if-ge v0, v1, :cond_15

    aget-byte v3, p1, v15

    const/16 v4, 0xa

    if-eq v3, v4, :cond_15

    aget-byte v3, p1, v15

    if-eqz v3, :cond_15

    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 839
    :cond_15
    add-int/lit8 v5, v15, 0x1

    .local v5, endIndex:I
    move v4, v5

    .line 841
    .local v4, startIndex:I
    monitor-enter p0

    .line 842
    :try_start_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mProcWakelockFileStats:Ljava/util/Map;

    move-object/from16 v18, v0

    .line 844
    .local v18, m:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;>;"
    sget v3, Lcom/android/internal/os/BatteryStatsImpl;->sKernelWakelockUpdateVersion:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/android/internal/os/BatteryStatsImpl;->sKernelWakelockUpdateVersion:I

    .line 845
    :goto_25
    move v0, v5

    move/from16 v1, p2

    if-ge v0, v1, :cond_c0

    .line 846
    move v5, v4

    .line 847
    :goto_2b
    move v0, v5

    move/from16 v1, p2

    if-ge v0, v1, :cond_3d

    aget-byte v3, p1, v5

    const/16 v6, 0xa

    if-eq v3, v6, :cond_3d

    aget-byte v3, p1, v5

    if-eqz v3, :cond_3d

    .line 848
    add-int/lit8 v5, v5, 0x1

    goto :goto_2b

    .line 849
    :cond_3d
    add-int/lit8 v5, v5, 0x1

    .line 851
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mProcWakelocksName:[Ljava/lang/String;

    move-object v7, v0

    .line 852
    .local v7, nameStringArray:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mProcWakelocksData:[J

    move-object v8, v0

    .line 853
    .local v8, wlData:[J
    sget-object v6, Lcom/android/internal/os/BatteryStatsImpl;->PROC_WAKELOCKS_FORMAT:[I

    const/4 v9, 0x0

    move-object/from16 v3, p1

    invoke-static/range {v3 .. v9}, Landroid/os/Process;->parseProcLine([BII[I[Ljava/lang/String;[J[F)Z

    .line 856
    const/4 v3, 0x0

    aget-object v19, v7, v3

    .line 857
    .local v19, name:Ljava/lang/String;
    const/4 v3, 0x1

    aget-wide v9, v8, v3

    long-to-int v11, v9

    .line 859
    .local v11, count:I
    const/4 v3, 0x2

    aget-wide v9, v8, v3

    const-wide/16 v12, 0x1f4

    add-long/2addr v9, v12

    const-wide/16 v12, 0x3e8

    div-long v12, v9, v12

    .line 861
    .local v12, totalTime:J
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_81

    .line 862
    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_83

    .line 863
    new-instance v9, Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;

    sget v14, Lcom/android/internal/os/BatteryStatsImpl;->sKernelWakelockUpdateVersion:I

    move-object/from16 v10, p0

    invoke-direct/range {v9 .. v14}, Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;-><init>(Lcom/android/internal/os/BatteryStatsImpl;IJI)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object v2, v9

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    add-int/lit8 v20, v20, 0x1

    .line 879
    :cond_81
    :goto_81
    move v4, v5

    .line 880
    goto :goto_25

    .line 867
    :cond_83
    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;

    .line 868
    .local v17, kwlStats:Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;->mVersion:I

    move v3, v0

    sget v6, Lcom/android/internal/os/BatteryStatsImpl;->sKernelWakelockUpdateVersion:I

    if-ne v3, v6, :cond_ac

    .line 869
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;->mCount:I

    move v3, v0

    add-int/2addr v3, v11

    move v0, v3

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;->mCount:I

    .line 870
    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;->mTotalTime:J

    move-wide v9, v0

    add-long/2addr v9, v12

    move-wide v0, v9

    move-object/from16 v2, v17

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;->mTotalTime:J

    goto :goto_81

    .line 892
    .end local v7           #nameStringArray:[Ljava/lang/String;
    .end local v8           #wlData:[J
    .end local v11           #count:I
    .end local v12           #totalTime:J
    .end local v17           #kwlStats:Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;
    .end local v18           #m:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;>;"
    .end local v19           #name:Ljava/lang/String;
    .end local p1
    :catchall_a9
    move-exception v3

    monitor-exit p0
    :try_end_ab
    .catchall {:try_start_19 .. :try_end_ab} :catchall_a9

    throw v3

    .line 872
    .restart local v7       #nameStringArray:[Ljava/lang/String;
    .restart local v8       #wlData:[J
    .restart local v11       #count:I
    .restart local v12       #totalTime:J
    .restart local v17       #kwlStats:Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;
    .restart local v18       #m:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;>;"
    .restart local v19       #name:Ljava/lang/String;
    .restart local p1
    :cond_ac
    :try_start_ac
    move v0, v11

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;->mCount:I

    .line 873
    move-wide v0, v12

    move-object/from16 v2, v17

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;->mTotalTime:J

    .line 874
    sget v3, Lcom/android/internal/os/BatteryStatsImpl;->sKernelWakelockUpdateVersion:I

    move v0, v3

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;->mVersion:I

    .line 875
    add-int/lit8 v20, v20, 0x1

    goto :goto_81

    .line 882
    .end local v7           #nameStringArray:[Ljava/lang/String;
    .end local v8           #wlData:[J
    .end local v11           #count:I
    .end local v12           #totalTime:J
    .end local v17           #kwlStats:Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;
    .end local v19           #name:Ljava/lang/String;
    :cond_c0
    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->size()I

    move-result v3

    move v0, v3

    move/from16 v1, v20

    if-eq v0, v1, :cond_ea

    .line 884
    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 885
    .end local p1
    .local v16, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;>;"
    :cond_d1
    :goto_d1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ea

    .line 886
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;->mVersion:I

    move v3, v0

    sget v6, Lcom/android/internal/os/BatteryStatsImpl;->sKernelWakelockUpdateVersion:I

    if-eq v3, v6, :cond_d1

    .line 887
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->remove()V

    goto :goto_d1

    .line 891
    .end local v16           #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;>;"
    :cond_ea
    monitor-exit p0
    :try_end_eb
    .catchall {:try_start_ac .. :try_end_eb} :catchall_a9

    return-object v18
.end method

.method static readFully(Ljava/io/FileInputStream;)[B
    .registers 8
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 2953
    const/4 v4, 0x0

    .line 2954
    .local v4, pos:I
    invoke-virtual {p0}, Ljava/io/FileInputStream;->available()I

    move-result v1

    .line 2955
    .local v1, avail:I
    new-array v2, v1, [B

    .line 2957
    .local v2, data:[B
    :cond_8
    :goto_8
    array-length v5, v2

    sub-int/2addr v5, v4

    invoke-virtual {p0, v2, v4, v5}, Ljava/io/FileInputStream;->read([BII)I

    move-result v0

    .line 2960
    .local v0, amt:I
    if-gtz v0, :cond_11

    .line 2963
    return-object v2

    .line 2965
    :cond_11
    add-int/2addr v4, v0

    .line 2966
    invoke-virtual {p0}, Ljava/io/FileInputStream;->available()I

    move-result v1

    .line 2967
    array-length v5, v2

    sub-int/2addr v5, v4

    if-le v1, v5, :cond_8

    .line 2968
    add-int v5, v4, v1

    new-array v3, v5, [B

    .line 2969
    .local v3, newData:[B
    invoke-static {v2, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2970
    move-object v2, v3

    goto :goto_8
.end method

.method private final readKernelWakelockStats()Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 802
    const/16 v5, 0x1000

    new-array v0, v5, [B

    .line 806
    .local v0, buffer:[B
    :try_start_5
    new-instance v3, Ljava/io/FileInputStream;

    const-string v5, "/proc/wakelocks"

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 807
    .local v3, is:Ljava/io/FileInputStream;
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    .line 808
    .local v4, len:I
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 810
    if-lez v4, :cond_1d

    .line 812
    const/4 v2, 0x0

    .local v2, i:I
    :goto_16
    if-ge v2, v4, :cond_1d

    .line 813
    aget-byte v5, v0, v2
    :try_end_1a
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_1a} :catch_25
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_1a} :catch_29

    if-nez v5, :cond_22

    .line 814
    move v4, v2

    .line 825
    .end local v2           #i:I
    :cond_1d
    invoke-direct {p0, v0, v4}, Lcom/android/internal/os/BatteryStatsImpl;->parseProcWakelocks([BI)Ljava/util/Map;

    move-result-object v5

    .end local v3           #is:Ljava/io/FileInputStream;
    .end local v4           #len:I
    :goto_21
    return-object v5

    .line 812
    .restart local v2       #i:I
    .restart local v3       #is:Ljava/io/FileInputStream;
    .restart local v4       #len:I
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 819
    .end local v2           #i:I
    .end local v3           #is:Ljava/io/FileInputStream;
    .end local v4           #len:I
    :catch_25
    move-exception v5

    move-object v1, v5

    .local v1, e:Ljava/io/FileNotFoundException;
    move-object v5, v6

    .line 820
    goto :goto_21

    .line 821
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_29
    move-exception v5

    move-object v1, v5

    .local v1, e:Ljava/io/IOException;
    move-object v5, v6

    .line 822
    goto :goto_21
.end method

.method private readSummaryFromParcel(Landroid/os/Parcel;)V
    .registers 30
    .parameter "in"

    .prologue
    .line 3017
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 3018
    .local v23, version:I
    const/16 v25, 0x27

    move/from16 v0, v23

    move/from16 v1, v25

    if-eq v0, v1, :cond_3b

    .line 3019
    const-string v25, "BatteryStats"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "readFromParcel: version got "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", expected "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const/16 v27, 0x27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "; erasing old stats"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3152
    :cond_3a
    return-void

    .line 3024
    :cond_3b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mStartCount:I

    .line 3025
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v25

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl;->mBatteryUptime:J

    .line 3026
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v25

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl;->mBatteryLastUptime:J

    .line 3027
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v25

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl;->mBatteryRealtime:J

    .line 3028
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v25

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl;->mBatteryLastRealtime:J

    .line 3029
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v25

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl;->mUptime:J

    .line 3030
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v25

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl;->mLastUptime:J

    .line 3031
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v25

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl;->mRealtime:J

    .line 3032
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v25

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl;->mLastRealtime:J

    .line 3033
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStartLevel:I

    .line 3034
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    .line 3036
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mStartCount:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mStartCount:I

    .line 3038
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOn:Z

    .line 3039
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 3040
    const/4 v8, 0x0

    .local v8, i:I
    :goto_cd
    const/16 v25, 0x5

    move v0, v8

    move/from16 v1, v25

    if-ge v0, v1, :cond_e6

    .line 3041
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v25, v0

    aget-object v25, v25, v8

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 3040
    add-int/lit8 v8, v8, 0x1

    goto :goto_cd

    .line 3043
    :cond_e6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mInputEventCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 3044
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOn:Z

    .line 3045
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 3046
    const/4 v8, 0x0

    :goto_109
    const/16 v25, 0x5

    move v0, v8

    move/from16 v1, v25

    if-ge v0, v1, :cond_122

    .line 3047
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v25, v0

    aget-object v25, v25, v8

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 3046
    add-int/lit8 v8, v8, 0x1

    goto :goto_109

    .line 3049
    :cond_122
    const/4 v8, 0x0

    :goto_123
    const/16 v25, 0x5

    move v0, v8

    move/from16 v1, v25

    if-ge v0, v1, :cond_13c

    .line 3050
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v25, v0

    aget-object v25, v25, v8

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 3049
    add-int/lit8 v8, v8, 0x1

    goto :goto_123

    .line 3052
    :cond_13c
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOn:Z

    .line 3053
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 3054
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRunning:Z

    .line 3055
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 3056
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothOn:Z

    .line 3057
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 3059
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3060
    .local v3, NKW:I
    const/4 v9, 0x0

    .local v9, ikw:I
    :goto_180
    if-ge v9, v3, :cond_19d

    .line 3061
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v25

    if-eqz v25, :cond_19a

    .line 3062
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 3063
    .local v14, kwltName:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getKernelWakelockTimerLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 3060
    .end local v14           #kwltName:Ljava/lang/String;
    :cond_19a
    add-int/lit8 v9, v9, 0x1

    goto :goto_180

    .line 3067
    :cond_19d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 3068
    .local v6, NU:I
    const/4 v12, 0x0

    .local v12, iu:I
    :goto_1a2
    if-ge v12, v6, :cond_3a

    .line 3069
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 3070
    .local v22, uid:I
    new-instance v21, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;-><init>(Lcom/android/internal/os/BatteryStatsImpl;I)V

    .line 3071
    .local v21, u:Lcom/android/internal/os/BatteryStatsImpl$Uid;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3073
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiTurnedOn:Z

    .line 3074
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 3075
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    .line 3076
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 3077
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOn:Z

    .line 3078
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 3079
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOn:Z

    .line 3080
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 3081
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScanWifiLockOut:Z

    .line 3082
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScanWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 3083
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastEnabled:Z

    .line 3084
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 3086
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v25

    if-eqz v25, :cond_26b

    .line 3087
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-object/from16 v25, v0

    if-nez v25, :cond_251

    .line 3088
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->initUserActivityLocked()V

    .line 3090
    :cond_251
    const/4 v8, 0x0

    :goto_252
    const/16 v25, 0x7

    move v0, v8

    move/from16 v1, v25

    if-ge v0, v1, :cond_26b

    .line 3091
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-object/from16 v25, v0

    aget-object v25, v25, v8

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 3090
    add-int/lit8 v8, v8, 0x1

    goto :goto_252

    .line 3095
    :cond_26b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 3096
    .local v7, NW:I
    const/4 v13, 0x0

    .local v13, iw:I
    :goto_270
    if-ge v13, v7, :cond_2c4

    .line 3097
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 3098
    .local v24, wlName:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v25

    if-eqz v25, :cond_28f

    .line 3099
    const/16 v25, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getWakeTimerLocked(Ljava/lang/String;I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 3101
    :cond_28f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v25

    if-eqz v25, :cond_2a8

    .line 3102
    const/16 v25, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getWakeTimerLocked(Ljava/lang/String;I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 3104
    :cond_2a8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v25

    if-eqz v25, :cond_2c1

    .line 3105
    const/16 v25, 0x2

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getWakeTimerLocked(Ljava/lang/String;I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 3096
    :cond_2c1
    add-int/lit8 v13, v13, 0x1

    goto :goto_270

    .line 3109
    .end local v24           #wlName:Ljava/lang/String;
    :cond_2c4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 3110
    .local v4, NP:I
    const/4 v11, 0x0

    .local v11, is:I
    :goto_2c9
    if-ge v11, v4, :cond_2eb

    .line 3111
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 3112
    .local v19, seNumber:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v25

    if-eqz v25, :cond_2e8

    .line 3113
    const/16 v25, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getSensorTimerLocked(IZ)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 3110
    :cond_2e8
    add-int/lit8 v11, v11, 0x1

    goto :goto_2c9

    .line 3118
    .end local v19           #seNumber:I
    :cond_2eb
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 3119
    const/4 v10, 0x0

    .local v10, ip:I
    :goto_2f0
    if-ge v10, v4, :cond_346

    .line 3120
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 3121
    .local v17, procName:Ljava/lang/String;
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v15

    .line 3122
    .local v15, p:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v25

    move-wide/from16 v0, v25

    move-object v2, v15

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedUserTime:J

    move-wide/from16 v0, v25

    move-object v2, v15

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUserTime:J

    .line 3123
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v25

    move-wide/from16 v0, v25

    move-object v2, v15

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLastUserTime:J

    .line 3124
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v25

    move-wide/from16 v0, v25

    move-object v2, v15

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedSystemTime:J

    move-wide/from16 v0, v25

    move-object v2, v15

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSystemTime:J

    .line 3125
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v25

    move-wide/from16 v0, v25

    move-object v2, v15

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLastSystemTime:J

    .line 3126
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v25

    move/from16 v0, v25

    move-object v1, v15

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedStarts:I

    move/from16 v0, v25

    move-object v1, v15

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mStarts:I

    .line 3127
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v25

    move/from16 v0, v25

    move-object v1, v15

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLastStarts:I

    .line 3119
    add-int/lit8 v10, v10, 0x1

    goto :goto_2f0

    .line 3130
    .end local v15           #p:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    .end local v17           #procName:Ljava/lang/String;
    :cond_346
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 3131
    const/4 v10, 0x0

    :goto_34b
    if-ge v10, v4, :cond_3da

    .line 3132
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 3133
    .local v16, pkgName:Ljava/lang/String;
    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getPackageStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    move-result-object v15

    .line 3134
    .local v15, p:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v25

    move/from16 v0, v25

    move-object v1, v15

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mLoadedWakeups:I

    move/from16 v0, v25

    move-object v1, v15

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mWakeups:I

    .line 3135
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v25

    move/from16 v0, v25

    move-object v1, v15

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mLastWakeups:I

    .line 3136
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 3137
    .local v5, NS:I
    const/4 v11, 0x0

    :goto_375
    if-ge v11, v5, :cond_3d6

    .line 3138
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 3139
    .local v20, servName:Ljava/lang/String;
    move-object/from16 v0, v21

    move-object/from16 v1, v16

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getServiceStatsLocked(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    move-result-object v18

    .line 3140
    .local v18, s:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v25

    move-wide/from16 v0, v25

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLoadedStartTime:J

    move-wide/from16 v0, v25

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStartTime:J

    .line 3141
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v25

    move-wide/from16 v0, v25

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLastStartTime:J

    .line 3142
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLoadedStarts:I

    move/from16 v0, v25

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStarts:I

    .line 3143
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLastStarts:I

    .line 3144
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLoadedLaunches:I

    move/from16 v0, v25

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunches:I

    .line 3145
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLastLaunches:I

    .line 3137
    add-int/lit8 v11, v11, 0x1

    goto :goto_375

    .line 3131
    .end local v18           #s:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    .end local v20           #servName:Ljava/lang/String;
    :cond_3d6
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_34b

    .line 3149
    .end local v5           #NS:I
    .end local v15           #p:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    .end local v16           #pkgName:Ljava/lang/String;
    :cond_3da
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v25

    move-wide/from16 v0, v25

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mLoadedTcpBytesReceived:J

    .line 3150
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v25

    move-wide/from16 v0, v25

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mLoadedTcpBytesSent:J

    .line 3068
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1a2
.end method


# virtual methods
.method public computeBatteryRealtime(JI)J
    .registers 8
    .parameter "curTime"
    .parameter "which"

    .prologue
    .line 2754
    packed-switch p3, :pswitch_data_1e

    .line 2764
    const-wide/16 v0, 0x0

    :goto_5
    return-wide v0

    .line 2756
    :pswitch_6
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBatteryRealtime:J

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryRealtimeLocked(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_5

    .line 2758
    :pswitch_e
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBatteryLastRealtime:J

    goto :goto_5

    .line 2760
    :pswitch_11
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryRealtimeLocked(J)J

    move-result-wide v0

    goto :goto_5

    .line 2762
    :pswitch_16
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryRealtimeLocked(J)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggedBatteryRealtime:J

    sub-long/2addr v0, v2

    goto :goto_5

    .line 2754
    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_6
        :pswitch_e
        :pswitch_11
        :pswitch_16
    .end packed-switch
.end method

.method public computeBatteryUptime(JI)J
    .registers 8
    .parameter "curTime"
    .parameter "which"

    .prologue
    .line 2739
    packed-switch p3, :pswitch_data_1e

    .line 2749
    const-wide/16 v0, 0x0

    :goto_5
    return-wide v0

    .line 2741
    :pswitch_6
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBatteryUptime:J

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryUptime(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_5

    .line 2743
    :pswitch_e
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBatteryLastUptime:J

    goto :goto_5

    .line 2745
    :pswitch_11
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryUptime(J)J

    move-result-wide v0

    goto :goto_5

    .line 2747
    :pswitch_16
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryUptimeLocked(J)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggedBatteryUptime:J

    sub-long/2addr v0, v2

    goto :goto_5

    .line 2739
    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_6
        :pswitch_e
        :pswitch_11
        :pswitch_16
    .end packed-switch
.end method

.method public computeRealtime(JI)J
    .registers 8
    .parameter "curTime"
    .parameter "which"

    .prologue
    .line 2728
    packed-switch p3, :pswitch_data_1c

    .line 2734
    const-wide/16 v0, 0x0

    :goto_5
    return-wide v0

    .line 2729
    :pswitch_6
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRealtime:J

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRealtimeStart:J

    sub-long v2, p1, v2

    add-long/2addr v0, v2

    goto :goto_5

    .line 2730
    :pswitch_e
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastRealtime:J

    goto :goto_5

    .line 2731
    :pswitch_11
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRealtimeStart:J

    sub-long v0, p1, v0

    goto :goto_5

    .line 2732
    :pswitch_16
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackBatteryRealtimeStart:J

    sub-long v0, p1, v0

    goto :goto_5

    .line 2728
    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_6
        :pswitch_e
        :pswitch_11
        :pswitch_16
    .end packed-switch
.end method

.method public computeUptime(JI)J
    .registers 8
    .parameter "curTime"
    .parameter "which"

    .prologue
    .line 2717
    packed-switch p3, :pswitch_data_1c

    .line 2723
    const-wide/16 v0, 0x0

    :goto_5
    return-wide v0

    .line 2718
    :pswitch_6
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUptime:J

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUptimeStart:J

    sub-long v2, p1, v2

    add-long/2addr v0, v2

    goto :goto_5

    .line 2719
    :pswitch_e
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastUptime:J

    goto :goto_5

    .line 2720
    :pswitch_11
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUptimeStart:J

    sub-long v0, p1, v0

    goto :goto_5

    .line 2721
    :pswitch_16
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackBatteryUptimeStart:J

    sub-long v0, p1, v0

    goto :goto_5

    .line 2717
    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_6
        :pswitch_e
        :pswitch_11
        :pswitch_16
    .end packed-switch
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 3013
    const/4 v0, 0x0

    return v0
.end method

.method public doPlug(JJ)V
    .registers 15
    .parameter "batteryUptime"
    .parameter "batteryRealtime"

    .prologue
    const-wide/16 v8, 0x0

    const/4 v5, 0x1

    const-wide/16 v6, -0x1

    .line 1013
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    sub-int v1, v3, v5

    .local v1, iu:I
    :goto_d
    if-ltz v1, :cond_36

    .line 1014
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 1015
    .local v2, u:Lcom/android/internal/os/BatteryStatsImpl$Uid;
    iget-wide v3, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mStartedTcpBytesReceived:J

    cmp-long v3, v3, v8

    if-ltz v3, :cond_25

    .line 1016
    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->computeCurrentTcpBytesReceived()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurrentTcpBytesReceived:J

    .line 1017
    iput-wide v6, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mStartedTcpBytesReceived:J

    .line 1019
    :cond_25
    iget-wide v3, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mStartedTcpBytesSent:J

    cmp-long v3, v3, v8

    if-ltz v3, :cond_33

    .line 1020
    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->computeCurrentTcpBytesSent()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurrentTcpBytesSent:J

    .line 1021
    iput-wide v6, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mStartedTcpBytesSent:J

    .line 1013
    :cond_33
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 1024
    .end local v2           #u:Lcom/android/internal/os/BatteryStatsImpl$Uid;
    :cond_36
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int v0, v3, v5

    .local v0, i:I
    :goto_3e
    if-ltz v0, :cond_4e

    .line 1025
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatteryStatsImpl$Unpluggable;

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$Unpluggable;->plug(JJ)V

    .line 1024
    add-int/lit8 v0, v0, -0x1

    goto :goto_3e

    .line 1027
    :cond_4e
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileDataRx:[J

    invoke-static {}, Landroid/os/NetStat;->getMobileRxBytes()J

    move-result-wide v4

    invoke-direct {p0, v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->doDataPlug([JJ)V

    .line 1028
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileDataTx:[J

    invoke-static {}, Landroid/os/NetStat;->getMobileTxBytes()J

    move-result-wide v4

    invoke-direct {p0, v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->doDataPlug([JJ)V

    .line 1029
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTotalDataRx:[J

    invoke-static {}, Landroid/os/NetStat;->getTotalRxBytes()J

    move-result-wide v4

    invoke-direct {p0, v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->doDataPlug([JJ)V

    .line 1030
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTotalDataTx:[J

    invoke-static {}, Landroid/os/NetStat;->getTotalTxBytes()J

    move-result-wide v4

    invoke-direct {p0, v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->doDataPlug([JJ)V

    .line 1032
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getRadioDataUptime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRadioDataUptime:J

    .line 1033
    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRadioDataStart:J

    .line 1036
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getBluetoothPingCount()I

    move-result v3

    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothPingCount:I

    .line 1037
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothPingStart:I

    .line 1038
    return-void
.end method

.method public doUnplug(JJ)V
    .registers 11
    .parameter "batteryUptime"
    .parameter "batteryRealtime"

    .prologue
    const/4 v5, 0x1

    .line 989
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    sub-int v1, v3, v5

    .local v1, iu:I
    :goto_9
    if-ltz v1, :cond_2e

    .line 990
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 991
    .local v2, u:Lcom/android/internal/os/BatteryStatsImpl$Uid;
    iget v3, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUid:I

    invoke-static {v3}, Landroid/os/NetStat;->getUidRxBytes(I)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mStartedTcpBytesReceived:J

    .line 992
    iget v3, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUid:I

    invoke-static {v3}, Landroid/os/NetStat;->getUidTxBytes(I)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mStartedTcpBytesSent:J

    .line 993
    iget-wide v3, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurrentTcpBytesReceived:J

    iput-wide v3, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mTcpBytesReceivedAtLastUnplug:J

    .line 994
    iget-wide v3, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurrentTcpBytesSent:J

    iput-wide v3, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mTcpBytesSentAtLastUnplug:J

    .line 989
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 996
    .end local v2           #u:Lcom/android/internal/os/BatteryStatsImpl$Uid;
    :cond_2e
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int v0, v3, v5

    .local v0, i:I
    :goto_36
    if-ltz v0, :cond_46

    .line 997
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatteryStatsImpl$Unpluggable;

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$Unpluggable;->unplug(JJ)V

    .line 996
    add-int/lit8 v0, v0, -0x1

    goto :goto_36

    .line 1000
    :cond_46
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileDataRx:[J

    invoke-static {}, Landroid/os/NetStat;->getMobileRxBytes()J

    move-result-wide v4

    invoke-direct {p0, v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->doDataUnplug([JJ)V

    .line 1001
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileDataTx:[J

    invoke-static {}, Landroid/os/NetStat;->getMobileTxBytes()J

    move-result-wide v4

    invoke-direct {p0, v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->doDataUnplug([JJ)V

    .line 1002
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTotalDataRx:[J

    invoke-static {}, Landroid/os/NetStat;->getTotalRxBytes()J

    move-result-wide v4

    invoke-direct {p0, v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->doDataUnplug([JJ)V

    .line 1003
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTotalDataTx:[J

    invoke-static {}, Landroid/os/NetStat;->getTotalTxBytes()J

    move-result-wide v4

    invoke-direct {p0, v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->doDataUnplug([JJ)V

    .line 1005
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getCurrentRadioDataUptime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRadioDataStart:J

    .line 1006
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRadioDataUptime:J

    .line 1008
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getCurrentBluetoothPingCount()I

    move-result v3

    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothPingStart:I

    .line 1009
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothPingCount:I

    .line 1010
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;)V
    .registers 2
    .parameter "pw"

    .prologue
    .line 3537
    invoke-super {p0, p1}, Landroid/os/BatteryStats;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 3538
    return-void
.end method

.method public getAwakeTimeBattery()J
    .registers 4

    .prologue
    .line 2708
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryUptimeLocked()J

    move-result-wide v0

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryUptime(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAwakeTimePlugged()J
    .registers 5

    .prologue
    .line 2712
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getAwakeTimeBattery()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getBatteryRealtime(J)J
    .registers 5
    .parameter "curTime"

    .prologue
    .line 2794
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryRealtimeLocked(J)J

    move-result-wide v0

    return-wide v0
.end method

.method getBatteryRealtimeLocked(J)J
    .registers 7
    .parameter "curTime"

    .prologue
    .line 2785
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackBatteryPastRealtime:J

    .line 2786
    .local v0, time:J
    iget-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryInternal:Z

    if-eqz v2, :cond_b

    .line 2787
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackBatteryRealtimeStart:J

    sub-long v2, p1, v2

    add-long/2addr v0, v2

    .line 2789
    :cond_b
    return-wide v0
.end method

.method public getBatteryUptime(J)J
    .registers 5
    .parameter "curTime"

    .prologue
    .line 2781
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryUptimeLocked(J)J

    move-result-wide v0

    return-wide v0
.end method

.method getBatteryUptimeLocked()J
    .registers 5

    .prologue
    .line 2776
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryUptime(J)J

    move-result-wide v0

    return-wide v0
.end method

.method getBatteryUptimeLocked(J)J
    .registers 7
    .parameter "curTime"

    .prologue
    .line 2768
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackBatteryPastUptime:J

    .line 2769
    .local v0, time:J
    iget-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryInternal:Z

    if-eqz v2, :cond_b

    .line 2770
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackBatteryUptimeStart:J

    sub-long v2, p1, v2

    add-long/2addr v0, v2

    .line 2772
    :cond_b
    return-wide v0
.end method

.method public getBluetoothOnTime(JI)J
    .registers 6
    .parameter "batteryRealtime"
    .parameter "which"

    .prologue
    .line 1338
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getBluetoothPingCount()I
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 976
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothPingStart:I

    if-ne v0, v1, :cond_8

    .line 977
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothPingCount:I

    .line 981
    :goto_7
    return v0

    .line 978
    :cond_8
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBtHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_14

    .line 979
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getCurrentBluetoothPingCount()I

    move-result v0

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothPingStart:I

    sub-int/2addr v0, v1

    goto :goto_7

    :cond_14
    move v0, v1

    .line 981
    goto :goto_7
.end method

.method public getDischargeCurrentLevel()I
    .registers 2

    .prologue
    .line 2847
    monitor-enter p0

    .line 2848
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getDischargeCurrentLevelLocked()I

    move-result v0

    monitor-exit p0

    return v0

    .line 2849
    :catchall_7
    move-exception v0

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public getDischargeCurrentLevelLocked()I
    .registers 2

    .prologue
    .line 2853
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    return v0
.end method

.method public getDischargeStartLevel()I
    .registers 2

    .prologue
    .line 2836
    monitor-enter p0

    .line 2837
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getDischargeStartLevelLocked()I

    move-result v0

    monitor-exit p0

    return v0

    .line 2838
    :catchall_7
    move-exception v0

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public getDischargeStartLevelLocked()I
    .registers 2

    .prologue
    .line 2842
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStartLevel:I

    return v0
.end method

.method public getInputEventCount(I)I
    .registers 3
    .parameter "which"

    .prologue
    .line 1302
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInputEventCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->getCountLocked(I)I

    move-result v0

    return v0
.end method

.method public getIsOnBattery()Z
    .registers 2

    .prologue
    .line 1342
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    return v0
.end method

.method public getKernelWakelockStats()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    return-object v0
.end method

.method public getKernelWakelockTimerLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    .registers 6
    .parameter "name"

    .prologue
    .line 912
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    .line 913
    .local v0, kwlt:Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    if-nez v0, :cond_19

    .line 914
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    .end local v0           #kwlt:Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    iget-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryInternal:Z

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;-><init>(Ljava/util/ArrayList;ZZ)V

    .line 916
    .restart local v0       #kwlt:Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 918
    :cond_19
    return-object v0
.end method

.method public getMobileTcpBytesReceived(I)J
    .registers 5
    .parameter "which"

    .prologue
    .line 2821
    invoke-static {}, Landroid/os/NetStat;->getMobileRxBytes()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileDataRx:[J

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getTcpBytes(J[JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMobileTcpBytesSent(I)J
    .registers 5
    .parameter "which"

    .prologue
    .line 2816
    invoke-static {}, Landroid/os/NetStat;->getMobileTxBytes()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileDataTx:[J

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getTcpBytes(J[JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPackageStatsLocked(ILjava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    .registers 5
    .parameter "uid"
    .parameter "pkg"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    .line 2908
    .local v0, u:Lcom/android/internal/os/BatteryStatsImpl$Uid;
    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getPackageStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    move-result-object v1

    return-object v1
.end method

.method public getPhoneDataConnectionCount(II)I
    .registers 4
    .parameter "dataType"
    .parameter "which"

    .prologue
    .line 1326
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    move-result v0

    return v0
.end method

.method public getPhoneDataConnectionTime(IJI)J
    .registers 7
    .parameter "dataType"
    .parameter "batteryRealtime"
    .parameter "which"

    .prologue
    .line 1321
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPhoneOnTime(JI)J
    .registers 6
    .parameter "batteryRealtime"
    .parameter "which"

    .prologue
    .line 1306
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPhoneSignalStrengthCount(II)I
    .registers 4
    .parameter "dataType"
    .parameter "which"

    .prologue
    .line 1316
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    move-result v0

    return v0
.end method

.method public getPhoneSignalStrengthTime(IJI)J
    .registers 7
    .parameter "strengthBin"
    .parameter "batteryRealtime"
    .parameter "which"

    .prologue
    .line 1311
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getProcessStatsLocked(ILjava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    .registers 5
    .parameter "uid"
    .parameter "name"

    .prologue
    .line 2880
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    .line 2881
    .local v0, u:Lcom/android/internal/os/BatteryStatsImpl$Uid;
    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v1

    return-object v1
.end method

.method public getProcessStatsLocked(Ljava/lang/String;I)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    .registers 7
    .parameter "name"
    .parameter "pid"

    .prologue
    .line 2892
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 2893
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2898
    .local v1, uid:I
    :goto_14
    invoke-virtual {p0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    .line 2899
    .local v0, u:Lcom/android/internal/os/BatteryStatsImpl$Uid;
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v2

    return-object v2

    .line 2895
    .end local v0           #u:Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .end local v1           #uid:I
    :cond_1d
    invoke-static {p2}, Landroid/os/Process;->getUidForPid(I)I

    move-result v1

    .line 2896
    .restart local v1       #uid:I
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidCache:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14
.end method

.method public getRadioDataUptime()J
    .registers 5

    .prologue
    .line 961
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRadioDataStart:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    .line 962
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRadioDataUptime:J

    .line 964
    :goto_a
    return-wide v0

    :cond_b
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getCurrentRadioDataUptime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRadioDataStart:J

    sub-long/2addr v0, v2

    goto :goto_a
.end method

.method public getRadioDataUptimeMs()J
    .registers 5

    .prologue
    .line 954
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getRadioDataUptime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getScreenBrightnessTime(IJI)J
    .registers 7
    .parameter "brightnessBin"
    .parameter "batteryRealtime"
    .parameter "which"

    .prologue
    .line 1297
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getScreenOnTime(JI)J
    .registers 6
    .parameter "batteryRealtime"
    .parameter "which"

    .prologue
    .line 1292
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getServiceStatsLocked(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    .registers 6
    .parameter "uid"
    .parameter "pkg"
    .parameter "name"

    .prologue
    .line 2916
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    .line 2917
    .local v0, u:Lcom/android/internal/os/BatteryStatsImpl$Uid;
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getServiceStatsLocked(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    move-result-object v1

    return-object v1
.end method

.method public getStartCount()I
    .registers 2

    .prologue
    .line 2630
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mStartCount:I

    return v0
.end method

.method public getTotalTcpBytesReceived(I)J
    .registers 5
    .parameter "which"

    .prologue
    .line 2831
    invoke-static {}, Landroid/os/NetStat;->getTotalRxBytes()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTotalDataRx:[J

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getTcpBytes(J[JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalTcpBytesSent(I)J
    .registers 5
    .parameter "which"

    .prologue
    .line 2826
    invoke-static {}, Landroid/os/NetStat;->getTotalTxBytes()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTotalDataTx:[J

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getTcpBytes(J[JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUidStats()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<+",
            "Landroid/os/BatteryStats$Uid;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1346
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .registers 4
    .parameter "uid"

    .prologue
    .line 2860
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 2861
    .local v0, u:Lcom/android/internal/os/BatteryStatsImpl$Uid;
    if-nez v0, :cond_14

    .line 2862
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .end local v0           #u:Lcom/android/internal/os/BatteryStatsImpl$Uid;
    invoke-direct {v0, p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;-><init>(Lcom/android/internal/os/BatteryStatsImpl;I)V

    .line 2863
    .restart local v0       #u:Lcom/android/internal/os/BatteryStatsImpl$Uid;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2865
    :cond_14
    return-object v0
.end method

.method public getWifiOnTime(JI)J
    .registers 6
    .parameter "batteryRealtime"
    .parameter "which"

    .prologue
    .line 1330
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getWifiRunningTime(JI)J
    .registers 6
    .parameter "batteryRealtime"
    .parameter "which"

    .prologue
    .line 1334
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public isOnBattery()Z
    .registers 2

    .prologue
    .line 2634
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    return v0
.end method

.method public noteAirplaneModeLocked(Z)V
    .registers 5
    .parameter "isAirplaneMode"

    .prologue
    .line 1107
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthBin:I

    .line 1108
    .local v0, bin:I
    if-ltz v0, :cond_17

    .line 1109
    if-nez p1, :cond_18

    .line 1110
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->isRunningLocked()Z

    move-result v2

    if-nez v2, :cond_17

    .line 1111
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v2, v2, v0

    invoke-virtual {v2, p0}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 1121
    :cond_17
    return-void

    .line 1114
    :cond_18
    const/4 v1, 0x0

    .local v1, i:I
    :goto_19
    const/4 v2, 0x5

    if-ge v1, v2, :cond_17

    .line 1115
    :goto_1c
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->isRunningLocked()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 1116
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v2, v2, v1

    invoke-virtual {v2, p0}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    goto :goto_1c

    .line 1114
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_19
.end method

.method public noteAudioOffLocked(I)V
    .registers 3
    .parameter "uid"

    .prologue
    .line 1216
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOn:Z

    if-eqz v0, :cond_c

    .line 1217
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOn:Z

    .line 1218
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 1220
    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteAudioTurnedOffLocked()V

    .line 1221
    return-void
.end method

.method public noteAudioOnLocked(I)V
    .registers 3
    .parameter "uid"

    .prologue
    .line 1208
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOn:Z

    if-nez v0, :cond_c

    .line 1209
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOn:Z

    .line 1210
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 1212
    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteAudioTurnedOnLocked()V

    .line 1213
    return-void
.end method

.method public noteBluetoothOffLocked()V
    .registers 2

    .prologue
    .line 1261
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothOn:Z

    if-eqz v0, :cond_c

    .line 1262
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothOn:Z

    .line 1263
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 1265
    :cond_c
    return-void
.end method

.method public noteBluetoothOnLocked()V
    .registers 2

    .prologue
    .line 1254
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothOn:Z

    if-nez v0, :cond_c

    .line 1255
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothOn:Z

    .line 1256
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 1258
    :cond_c
    return-void
.end method

.method public noteFullWifiLockAcquiredLocked(I)V
    .registers 3
    .parameter "uid"

    .prologue
    .line 1268
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteFullWifiLockAcquiredLocked()V

    .line 1269
    return-void
.end method

.method public noteFullWifiLockReleasedLocked(I)V
    .registers 3
    .parameter "uid"

    .prologue
    .line 1272
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteFullWifiLockReleasedLocked()V

    .line 1273
    return-void
.end method

.method public noteInputEventLocked()V
    .registers 2

    .prologue
    .line 1085
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInputEventCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->stepLocked()V

    .line 1086
    return-void
.end method

.method public notePhoneDataConnectionStateLocked(IZ)V
    .registers 6
    .parameter "dataType"
    .parameter "hasData"

    .prologue
    .line 1152
    const/4 v0, 0x0

    .line 1153
    .local v0, bin:I
    if-eqz p2, :cond_7

    .line 1154
    packed-switch p1, :pswitch_data_28

    .line 1168
    :pswitch_6
    const/4 v0, 0x4

    .line 1173
    :cond_7
    :goto_7
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionType:I

    if-eq v1, v0, :cond_21

    .line 1174
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionType:I

    if-ltz v1, :cond_18

    .line 1175
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionType:I

    aget-object v1, v1, v2

    invoke-virtual {v1, p0}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 1177
    :cond_18
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionType:I

    .line 1178
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 1180
    :cond_21
    return-void

    .line 1156
    :pswitch_22
    const/4 v0, 0x2

    .line 1157
    goto :goto_7

    .line 1159
    :pswitch_24
    const/4 v0, 0x1

    .line 1160
    goto :goto_7

    .line 1165
    :pswitch_26
    const/4 v0, 0x3

    .line 1166
    goto :goto_7

    .line 1154
    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_24
        :pswitch_22
        :pswitch_26
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_26
    .end packed-switch
.end method

.method public notePhoneOffLocked()V
    .registers 2

    .prologue
    .line 1100
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOn:Z

    if-eqz v0, :cond_c

    .line 1101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOn:Z

    .line 1102
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 1104
    :cond_c
    return-void
.end method

.method public notePhoneOnLocked()V
    .registers 2

    .prologue
    .line 1093
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOn:Z

    if-nez v0, :cond_c

    .line 1094
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOn:Z

    .line 1095
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 1097
    :cond_c
    return-void
.end method

.method public notePhoneSignalStrengthLocked(Landroid/telephony/SignalStrength;)V
    .registers 7
    .parameter "signalStrength"

    .prologue
    .line 1127
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v3

    if-nez v3, :cond_3e

    .line 1128
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v2

    .line 1129
    .local v2, dBm:I
    const/16 v3, -0x4b

    if-lt v2, v3, :cond_2a

    const/4 v1, 0x0

    .line 1142
    .end local v2           #dBm:I
    .local v1, bin:I
    :goto_f
    iget v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthBin:I

    if-eq v3, v1, :cond_29

    .line 1143
    iget v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthBin:I

    if-ltz v3, :cond_20

    .line 1144
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthBin:I

    aget-object v3, v3, v4

    invoke-virtual {v3, p0}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 1146
    :cond_20
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthBin:I

    .line 1147
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v3, v3, v1

    invoke-virtual {v3, p0}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 1149
    :cond_29
    return-void

    .line 1130
    .end local v1           #bin:I
    .restart local v2       #dBm:I
    :cond_2a
    const/16 v3, -0x55

    if-lt v2, v3, :cond_30

    const/4 v1, 0x4

    .restart local v1       #bin:I
    goto :goto_f

    .line 1131
    .end local v1           #bin:I
    :cond_30
    const/16 v3, -0x5f

    if-lt v2, v3, :cond_36

    const/4 v1, 0x3

    .restart local v1       #bin:I
    goto :goto_f

    .line 1132
    .end local v1           #bin:I
    :cond_36
    const/16 v3, -0x64

    if-lt v2, v3, :cond_3c

    const/4 v1, 0x2

    .restart local v1       #bin:I
    goto :goto_f

    .line 1133
    .end local v1           #bin:I
    :cond_3c
    const/4 v1, 0x1

    .restart local v1       #bin:I
    goto :goto_f

    .line 1135
    .end local v1           #bin:I
    .end local v2           #dBm:I
    :cond_3e
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 1136
    .local v0, asu:I
    if-ltz v0, :cond_48

    const/16 v3, 0x63

    if-lt v0, v3, :cond_4a

    :cond_48
    const/4 v1, 0x0

    .restart local v1       #bin:I
    goto :goto_f

    .line 1137
    .end local v1           #bin:I
    :cond_4a
    const/16 v3, 0x10

    if-lt v0, v3, :cond_50

    const/4 v1, 0x4

    .restart local v1       #bin:I
    goto :goto_f

    .line 1138
    .end local v1           #bin:I
    :cond_50
    const/16 v3, 0x8

    if-lt v0, v3, :cond_56

    const/4 v1, 0x3

    .restart local v1       #bin:I
    goto :goto_f

    .line 1139
    .end local v1           #bin:I
    :cond_56
    const/4 v3, 0x4

    if-lt v0, v3, :cond_5b

    const/4 v1, 0x2

    .restart local v1       #bin:I
    goto :goto_f

    .line 1140
    .end local v1           #bin:I
    :cond_5b
    const/4 v1, 0x1

    .restart local v1       #bin:I
    goto :goto_f
.end method

.method public noteScanWifiLockAcquiredLocked(I)V
    .registers 3
    .parameter "uid"

    .prologue
    .line 1276
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteScanWifiLockAcquiredLocked()V

    .line 1277
    return-void
.end method

.method public noteScanWifiLockReleasedLocked(I)V
    .registers 3
    .parameter "uid"

    .prologue
    .line 1280
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteScanWifiLockReleasedLocked()V

    .line 1281
    return-void
.end method

.method public noteScreenBrightnessLocked(I)V
    .registers 5
    .parameter "brightness"

    .prologue
    .line 1070
    div-int/lit8 v0, p1, 0x33

    .line 1071
    .local v0, bin:I
    if-gez v0, :cond_24

    const/4 v0, 0x0

    .line 1073
    :cond_5
    :goto_5
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessBin:I

    if-eq v1, v0, :cond_23

    .line 1074
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOn:Z

    if-eqz v1, :cond_21

    .line 1075
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessBin:I

    if-ltz v1, :cond_1a

    .line 1076
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessBin:I

    aget-object v1, v1, v2

    invoke-virtual {v1, p0}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 1078
    :cond_1a
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 1080
    :cond_21
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessBin:I

    .line 1082
    :cond_23
    return-void

    .line 1072
    :cond_24
    const/4 v1, 0x5

    if-lt v0, v1, :cond_5

    const/4 v0, 0x4

    goto :goto_5
.end method

.method public noteScreenOffLocked()V
    .registers 3

    .prologue
    .line 1059
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOn:Z

    if-eqz v0, :cond_19

    .line 1060
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOn:Z

    .line 1061
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 1062
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessBin:I

    if-ltz v0, :cond_19

    .line 1063
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessBin:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 1066
    :cond_19
    return-void
.end method

.method public noteScreenOnLocked()V
    .registers 3

    .prologue
    .line 1049
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOn:Z

    if-nez v0, :cond_19

    .line 1050
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOn:Z

    .line 1051
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 1052
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessBin:I

    if-ltz v0, :cond_19

    .line 1053
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessBin:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 1056
    :cond_19
    return-void
.end method

.method public noteStartGps(I)V
    .registers 3
    .parameter "uid"

    .prologue
    .line 1041
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteStartGps()V

    .line 1042
    return-void
.end method

.method public noteStopGps(I)V
    .registers 3
    .parameter "uid"

    .prologue
    .line 1045
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteStopGps()V

    .line 1046
    return-void
.end method

.method public noteUserActivityLocked(II)V
    .registers 4
    .parameter "uid"
    .parameter "event"

    .prologue
    .line 1089
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteUserActivityLocked(I)V

    .line 1090
    return-void
.end method

.method public noteVideoOffLocked(I)V
    .registers 3
    .parameter "uid"

    .prologue
    .line 1232
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoOn:Z

    if-eqz v0, :cond_c

    .line 1233
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoOn:Z

    .line 1234
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 1236
    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteVideoTurnedOffLocked()V

    .line 1237
    return-void
.end method

.method public noteVideoOnLocked(I)V
    .registers 3
    .parameter "uid"

    .prologue
    .line 1224
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoOn:Z

    if-nez v0, :cond_c

    .line 1225
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoOn:Z

    .line 1226
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 1228
    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteVideoTurnedOnLocked()V

    .line 1229
    return-void
.end method

.method public noteWifiMulticastDisabledLocked(I)V
    .registers 3
    .parameter "uid"

    .prologue
    .line 1288
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiMulticastDisabledLocked()V

    .line 1289
    return-void
.end method

.method public noteWifiMulticastEnabledLocked(I)V
    .registers 3
    .parameter "uid"

    .prologue
    .line 1284
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiMulticastEnabledLocked()V

    .line 1285
    return-void
.end method

.method public noteWifiOffLocked(I)V
    .registers 3
    .parameter "uid"

    .prologue
    .line 1197
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOn:Z

    if-eqz v0, :cond_c

    .line 1198
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOn:Z

    .line 1199
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 1201
    :cond_c
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOnUid:I

    if-ltz v0, :cond_1c

    .line 1202
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOnUid:I

    invoke-virtual {p0, v0}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiTurnedOffLocked()V

    .line 1203
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOnUid:I

    .line 1205
    :cond_1c
    return-void
.end method

.method public noteWifiOnLocked(I)V
    .registers 3
    .parameter "uid"

    .prologue
    .line 1183
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOn:Z

    if-nez v0, :cond_c

    .line 1184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOn:Z

    .line 1185
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 1187
    :cond_c
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOnUid:I

    if-eq v0, p1, :cond_26

    .line 1188
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOnUid:I

    if-ltz v0, :cond_1d

    .line 1189
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOnUid:I

    invoke-virtual {p0, v0}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiTurnedOffLocked()V

    .line 1191
    :cond_1d
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOnUid:I

    .line 1192
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiTurnedOnLocked()V

    .line 1194
    :cond_26
    return-void
.end method

.method public noteWifiRunningLocked()V
    .registers 2

    .prologue
    .line 1240
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRunning:Z

    if-nez v0, :cond_c

    .line 1241
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRunning:Z

    .line 1242
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 1244
    :cond_c
    return-void
.end method

.method public noteWifiStoppedLocked()V
    .registers 2

    .prologue
    .line 1247
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRunning:Z

    if-eqz v0, :cond_c

    .line 1248
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRunning:Z

    .line 1249
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 1251
    :cond_c
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 2
    .parameter "in"

    .prologue
    .line 3325
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->readFromParcelLocked(Landroid/os/Parcel;)V

    .line 3326
    return-void
.end method

.method readFromParcelLocked(Landroid/os/Parcel;)V
    .registers 16
    .parameter "in"

    .prologue
    .line 3329
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 3330
    .local v4, magic:I
    const v9, -0x458a8b8b

    if-eq v4, v9, :cond_11

    .line 3331
    new-instance v9, Landroid/os/ParcelFormatException;

    const-string v10, "Bad magic number"

    invoke-direct {v9, v10}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 3334
    :cond_11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    iput v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mStartCount:I

    .line 3335
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBatteryUptime:J

    .line 3336
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBatteryLastUptime:J

    .line 3337
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBatteryRealtime:J

    .line 3338
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBatteryLastRealtime:J

    .line 3339
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOn:Z

    .line 3340
    new-instance v9, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v10, -0x1

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v9, v10, v11, v12, p1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Parcel;)V

    iput-object v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 3341
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3e
    const/4 v9, 0x5

    if-ge v1, v9, :cond_53

    .line 3342
    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v10, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/16 v11, -0x64

    sub-int/2addr v11, v1

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v10, v11, v12, v13, p1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Parcel;)V

    aput-object v10, v9, v1

    .line 3341
    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    .line 3344
    :cond_53
    new-instance v9, Lcom/android/internal/os/BatteryStatsImpl$Counter;

    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v9, v10, p1}, Lcom/android/internal/os/BatteryStatsImpl$Counter;-><init>(Ljava/util/ArrayList;Landroid/os/Parcel;)V

    iput-object v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInputEventCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    .line 3345
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOn:Z

    .line 3346
    new-instance v9, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v10, -0x2

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v9, v10, v11, v12, p1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Parcel;)V

    iput-object v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 3347
    const/4 v1, 0x0

    :goto_6b
    const/4 v9, 0x5

    if-ge v1, v9, :cond_80

    .line 3348
    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v10, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/16 v11, -0xc8

    sub-int/2addr v11, v1

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v10, v11, v12, v13, p1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Parcel;)V

    aput-object v10, v9, v1

    .line 3347
    add-int/lit8 v1, v1, 0x1

    goto :goto_6b

    .line 3350
    :cond_80
    const/4 v1, 0x0

    :goto_81
    const/4 v9, 0x5

    if-ge v1, v9, :cond_96

    .line 3351
    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v10, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/16 v11, -0x12c

    sub-int/2addr v11, v1

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v10, v11, v12, v13, p1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Parcel;)V

    aput-object v10, v9, v1

    .line 3350
    add-int/lit8 v1, v1, 0x1

    goto :goto_81

    .line 3353
    :cond_96
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOn:Z

    .line 3354
    new-instance v9, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v10, -0x2

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v9, v10, v11, v12, p1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Parcel;)V

    iput-object v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 3355
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRunning:Z

    .line 3356
    new-instance v9, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v10, -0x2

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v9, v10, v11, v12, p1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Parcel;)V

    iput-object v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 3357
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothOn:Z

    .line 3358
    new-instance v9, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v10, -0x2

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v9, v10, v11, v12, p1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Parcel;)V

    iput-object v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 3359
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUptime:J

    .line 3360
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUptimeStart:J

    .line 3361
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastUptime:J

    .line 3362
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRealtime:J

    .line 3363
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRealtimeStart:J

    .line 3364
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastRealtime:J

    .line 3365
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_1a3

    const/4 v9, 0x1

    :goto_eb
    iput-boolean v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    .line 3366
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryInternal:Z

    .line 3367
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackBatteryPastUptime:J

    .line 3368
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackBatteryUptimeStart:J

    .line 3369
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackBatteryPastRealtime:J

    .line 3370
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackBatteryRealtimeStart:J

    .line 3371
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggedBatteryUptime:J

    .line 3372
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggedBatteryRealtime:J

    .line 3373
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    iput v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStartLevel:I

    .line 3374
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    iput v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    .line 3375
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWriteTime:J

    .line 3377
    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileDataRx:[J

    const/4 v10, 0x1

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    aput-wide v11, v9, v10

    .line 3378
    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileDataRx:[J

    const/4 v10, 0x3

    const-wide/16 v11, -0x1

    aput-wide v11, v9, v10

    .line 3379
    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileDataTx:[J

    const/4 v10, 0x1

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    aput-wide v11, v9, v10

    .line 3380
    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileDataTx:[J

    const/4 v10, 0x3

    const-wide/16 v11, -0x1

    aput-wide v11, v9, v10

    .line 3381
    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTotalDataRx:[J

    const/4 v10, 0x1

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    aput-wide v11, v9, v10

    .line 3382
    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTotalDataRx:[J

    const/4 v10, 0x3

    const-wide/16 v11, -0x1

    aput-wide v11, v9, v10

    .line 3383
    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTotalDataTx:[J

    const/4 v10, 0x1

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    aput-wide v11, v9, v10

    .line 3384
    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTotalDataTx:[J

    const/4 v10, 0x3

    const-wide/16 v11, -0x1

    aput-wide v11, v9, v10

    .line 3386
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRadioDataUptime:J

    .line 3387
    const-wide/16 v9, -0x1

    iput-wide v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRadioDataStart:J

    .line 3389
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    iput v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothPingCount:I

    .line 3390
    const/4 v9, -0x1

    iput v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothPingStart:I

    .line 3392
    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V

    .line 3393
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3394
    .local v0, NKW:I
    const/4 v2, 0x0

    .local v2, ikw:I
    :goto_183
    if-ge v2, v0, :cond_1a6

    .line 3395
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_1a0

    .line 3396
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 3397
    .local v8, wakelockName:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 3398
    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    iget-boolean v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    invoke-direct {v3, v9, v10, p1}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;-><init>(Ljava/util/ArrayList;ZLandroid/os/Parcel;)V

    .line 3399
    .local v3, kwlt:Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v9, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3394
    .end local v3           #kwlt:Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    .end local v8           #wakelockName:Ljava/lang/String;
    :cond_1a0
    add-int/lit8 v2, v2, 0x1

    goto :goto_183

    .line 3365
    .end local v0           #NKW:I
    .end local v2           #ikw:I
    :cond_1a3
    const/4 v9, 0x0

    goto/16 :goto_eb

    .line 3403
    .restart local v0       #NKW:I
    .restart local v2       #ikw:I
    :cond_1a6
    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 3404
    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFullTimers:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 3405
    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWindowTimers:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 3407
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 3408
    .local v5, numUids:I
    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->clear()V

    .line 3409
    const/4 v1, 0x0

    :goto_1bf
    if-ge v1, v5, :cond_1d7

    .line 3410
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 3411
    .local v7, uid:I
    new-instance v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    invoke-direct {v6, p0, v7}, Lcom/android/internal/os/BatteryStatsImpl$Uid;-><init>(Lcom/android/internal/os/BatteryStatsImpl;I)V

    .line 3412
    .local v6, u:Lcom/android/internal/os/BatteryStatsImpl$Uid;
    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-virtual {v6, v9, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->readFromParcelLocked(Ljava/util/ArrayList;Landroid/os/Parcel;)V

    .line 3413
    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v9, v7, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 3409
    add-int/lit8 v1, v1, 0x1

    goto :goto_1bf

    .line 3415
    .end local v6           #u:Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .end local v7           #uid:I
    :cond_1d7
    return-void
.end method

.method public readLocked()V
    .registers 9

    .prologue
    const-string v7, "BatteryStats"

    .line 2976
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFile:Ljava/io/File;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBackupFile:Ljava/io/File;

    if-nez v5, :cond_12

    .line 2977
    :cond_a
    const-string v5, "BatteryStats"

    const-string v5, "readLocked: no file associated with this instance"

    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3010
    :cond_11
    :goto_11
    return-void

    .line 2981
    :cond_12
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    .line 2983
    const/4 v3, 0x0

    .line 2984
    .local v3, stream:Ljava/io/FileInputStream;
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBackupFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_63

    .line 2986
    :try_start_20
    new-instance v4, Ljava/io/FileInputStream;

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBackupFile:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_27} :catch_5a

    .line 2993
    .end local v3           #stream:Ljava/io/FileInputStream;
    .local v4, stream:Ljava/io/FileInputStream;
    :goto_27
    if-nez v4, :cond_61

    .line 2994
    :try_start_29
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 2997
    new-instance v3, Ljava/io/FileInputStream;

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFile:Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_38} :catch_5d

    .line 3000
    .end local v4           #stream:Ljava/io/FileInputStream;
    .restart local v3       #stream:Ljava/io/FileInputStream;
    :goto_38
    :try_start_38
    invoke-static {v3}, Lcom/android/internal/os/BatteryStatsImpl;->readFully(Ljava/io/FileInputStream;)[B

    move-result-object v2

    .line 3001
    .local v2, raw:[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3002
    .local v1, in:Landroid/os/Parcel;
    const/4 v5, 0x0

    array-length v6, v2

    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 3003
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 3004
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 3006
    invoke-direct {p0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->readSummaryFromParcel(Landroid/os/Parcel;)V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_4f} :catch_50

    goto :goto_11

    .line 3007
    .end local v1           #in:Landroid/os/Parcel;
    .end local v2           #raw:[B
    :catch_50
    move-exception v5

    move-object v0, v5

    .line 3008
    .local v0, e:Ljava/io/IOException;
    :goto_52
    const-string v5, "BatteryStats"

    const-string v5, "Error reading battery statistics"

    invoke-static {v7, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11

    .line 2987
    .end local v0           #e:Ljava/io/IOException;
    :catch_5a
    move-exception v5

    move-object v4, v3

    .end local v3           #stream:Ljava/io/FileInputStream;
    .restart local v4       #stream:Ljava/io/FileInputStream;
    goto :goto_27

    .line 3007
    :catch_5d
    move-exception v5

    move-object v0, v5

    move-object v3, v4

    .end local v4           #stream:Ljava/io/FileInputStream;
    .restart local v3       #stream:Ljava/io/FileInputStream;
    goto :goto_52

    .end local v3           #stream:Ljava/io/FileInputStream;
    .restart local v4       #stream:Ljava/io/FileInputStream;
    :cond_61
    move-object v3, v4

    .end local v4           #stream:Ljava/io/FileInputStream;
    .restart local v3       #stream:Ljava/io/FileInputStream;
    goto :goto_38

    :cond_63
    move-object v4, v3

    .end local v3           #stream:Ljava/io/FileInputStream;
    .restart local v4       #stream:Ljava/io/FileInputStream;
    goto :goto_27
.end method

.method public recordCurrentLevel(I)V
    .registers 2
    .parameter "level"

    .prologue
    .line 2669
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    .line 2670
    return-void
.end method

.method public removeUidStatsLocked(I)V
    .registers 3
    .parameter "uid"

    .prologue
    .line 2872
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 2873
    return-void
.end method

.method public setBtHeadset(Landroid/bluetooth/BluetoothHeadset;)V
    .registers 2
    .parameter "headset"

    .prologue
    .line 985
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBtHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 986
    return-void
.end method

.method public setOnBattery(ZI)V
    .registers 13
    .parameter "onBattery"
    .parameter "level"

    .prologue
    const-wide/16 v8, 0x3e8

    .line 2638
    monitor-enter p0

    .line 2639
    :try_start_3
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->updateKernelWakelocksLocked()V

    .line 2640
    iget-boolean v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    if-eq v6, p1, :cond_48

    .line 2641
    iput-boolean p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryInternal:Z

    iput-boolean p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    .line 2643
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    mul-long v4, v6, v8

    .line 2644
    .local v4, uptime:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2645
    .local v0, mSecRealtime:J
    mul-long v2, v0, v8

    .line 2646
    .local v2, realtime:J
    if-eqz p1, :cond_4a

    .line 2647
    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackBatteryUptimeStart:J

    .line 2648
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackBatteryRealtimeStart:J

    .line 2649
    invoke-virtual {p0, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryUptimeLocked(J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggedBatteryUptime:J

    .line 2650
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryRealtimeLocked(J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggedBatteryRealtime:J

    .line 2651
    iput p2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStartLevel:I

    iput p2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    .line 2652
    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggedBatteryUptime:J

    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggedBatteryRealtime:J

    invoke-virtual {p0, v6, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl;->doUnplug(JJ)V

    .line 2659
    :goto_37
    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWriteTime:J

    const-wide/32 v8, 0xea60

    add-long/2addr v6, v8

    cmp-long v6, v6, v0

    if-gez v6, :cond_48

    .line 2660
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFile:Ljava/io/File;

    if-eqz v6, :cond_48

    .line 2661
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->writeLocked()V

    .line 2665
    .end local v0           #mSecRealtime:J
    .end local v2           #realtime:J
    .end local v4           #uptime:J
    :cond_48
    monitor-exit p0

    .line 2666
    return-void

    .line 2654
    .restart local v0       #mSecRealtime:J
    .restart local v2       #realtime:J
    .restart local v4       #uptime:J
    :cond_4a
    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackBatteryPastUptime:J

    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackBatteryUptimeStart:J

    sub-long v8, v4, v8

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackBatteryPastUptime:J

    .line 2655
    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackBatteryPastRealtime:J

    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackBatteryRealtimeStart:J

    sub-long v8, v2, v8

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackBatteryPastRealtime:J

    .line 2656
    iput p2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    .line 2657
    invoke-virtual {p0, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryUptimeLocked(J)J

    move-result-wide v6

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryRealtimeLocked(J)J

    move-result-wide v8

    invoke-virtual {p0, v6, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl;->doPlug(JJ)V

    goto :goto_37

    .line 2665
    .end local v0           #mSecRealtime:J
    .end local v2           #realtime:J
    .end local v4           #uptime:J
    :catchall_6a
    move-exception v6

    monitor-exit p0
    :try_end_6c
    .catchall {:try_start_3 .. :try_end_6c} :catchall_6a

    throw v6
.end method

.method public updateKernelWakelocksLocked()V
    .registers 12

    .prologue
    .line 2673
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl;->readKernelWakelockStats()Ljava/util/Map;

    move-result-object v5

    .line 2675
    .local v5, m:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;>;"
    if-nez v5, :cond_e

    .line 2677
    const-string v8, "BatteryStatsImpl"

    const-string v9, "Couldn\'t get kernel wake lock stats"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2705
    :cond_d
    return-void

    .line 2681
    :cond_e
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_57

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2682
    .local v0, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2683
    .local v6, name:Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;

    .line 2685
    .local v4, kws:Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;
    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    .line 2686
    .local v3, kwlt:Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    if-nez v3, :cond_47

    .line 2687
    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    .end local v3           #kwlt:Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    iget-boolean v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryInternal:Z

    const/4 v10, 0x1

    invoke-direct {v3, v8, v9, v10}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;-><init>(Ljava/util/ArrayList;ZZ)V

    .line 2689
    .restart local v3       #kwlt:Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v8, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2691
    :cond_47
    iget v8, v4, Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;->mCount:I

    invoke-virtual {v3, v8}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->updateCurrentReportedCount(I)V

    .line 2692
    iget-wide v8, v4, Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;->mTotalTime:J

    invoke-virtual {v3, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->updateCurrentReportedTotalTime(J)V

    .line 2693
    sget v8, Lcom/android/internal/os/BatteryStatsImpl;->sKernelWakelockUpdateVersion:I

    invoke-virtual {v3, v8}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->setUpdateVersion(I)V

    goto :goto_16

    .line 2696
    .end local v0           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;>;"
    .end local v3           #kwlt:Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    .end local v4           #kws:Lcom/android/internal/os/BatteryStatsImpl$KernelWakelockStats;
    .end local v6           #name:Ljava/lang/String;
    :cond_57
    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v8

    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    if-eq v8, v9, :cond_d

    .line 2698
    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6d
    :goto_6d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2699
    .local v1, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    .line 2700
    .local v7, st:Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    invoke-virtual {v7}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->getUpdateVersion()I

    move-result v8

    sget v9, Lcom/android/internal/os/BatteryStatsImpl;->sKernelWakelockUpdateVersion:I

    if-eq v8, v9, :cond_6d

    .line 2701
    invoke-virtual {v7}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->setStale()V

    goto :goto_6d
.end method

.method public writeLocked()V
    .registers 7

    .prologue
    const-string v5, "BatteryStats"

    .line 2921
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFile:Ljava/io/File;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBackupFile:Ljava/io/File;

    if-nez v3, :cond_12

    .line 2922
    :cond_a
    const-string v3, "BatteryStats"

    const-string v3, "writeLocked: no file associated with this instance"

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2950
    :goto_11
    return-void

    .line 2928
    :cond_12
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 2929
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBackupFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 2930
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBackupFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 2932
    :cond_27
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFile:Ljava/io/File;

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBackupFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 2936
    :cond_2e
    :try_start_2e
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2937
    .local v2, stream:Ljava/io/FileOutputStream;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2938
    .local v1, out:Landroid/os/Parcel;
    invoke-virtual {p0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->writeSummaryToParcel(Landroid/os/Parcel;)V

    .line 2939
    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 2940
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2942
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 2943
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 2944
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBackupFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 2946
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWriteTime:J
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_57} :catch_58

    goto :goto_11

    .line 2947
    .end local v1           #out:Landroid/os/Parcel;
    .end local v2           #stream:Ljava/io/FileOutputStream;
    :catch_58
    move-exception v3

    move-object v0, v3

    .line 2948
    .local v0, e:Ljava/io/IOException;
    const-string v3, "BatteryStats"

    const-string v3, "Error writing battery statistics"

    invoke-static {v5, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11
.end method

.method public writeSummaryToParcel(Landroid/os/Parcel;)V
    .registers 41
    .parameter "out"

    .prologue
    .line 3161
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v35

    const-wide/16 v37, 0x3e8

    mul-long v10, v35, v37

    .line 3162
    .local v10, NOW_SYS:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v35

    const-wide/16 v37, 0x3e8

    mul-long v8, v35, v37

    .line 3163
    .local v8, NOWREAL_SYS:J
    move-object/from16 v0, p0

    move-wide v1, v10

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryUptimeLocked(J)J

    move-result-wide v4

    .line 3164
    .local v4, NOW:J
    move-object/from16 v0, p0

    move-wide v1, v8

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryRealtimeLocked(J)J

    move-result-wide v6

    .line 3166
    .local v6, NOWREAL:J
    const/16 v35, 0x27

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3168
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mStartCount:I

    move/from16 v35, v0

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3169
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-wide v1, v10

    move/from16 v3, v35

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryUptime(JI)J

    move-result-wide v35

    move-object/from16 v0, p1

    move-wide/from16 v1, v35

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3170
    const/16 v35, 0x2

    move-object/from16 v0, p0

    move-wide v1, v10

    move/from16 v3, v35

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryUptime(JI)J

    move-result-wide v35

    move-object/from16 v0, p1

    move-wide/from16 v1, v35

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3171
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-wide v1, v8

    move/from16 v3, v35

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryRealtime(JI)J

    move-result-wide v35

    move-object/from16 v0, p1

    move-wide/from16 v1, v35

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3172
    const/16 v35, 0x2

    move-object/from16 v0, p0

    move-wide v1, v8

    move/from16 v3, v35

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryRealtime(JI)J

    move-result-wide v35

    move-object/from16 v0, p1

    move-wide/from16 v1, v35

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3173
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-wide v1, v10

    move/from16 v3, v35

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->computeUptime(JI)J

    move-result-wide v35

    move-object/from16 v0, p1

    move-wide/from16 v1, v35

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3174
    const/16 v35, 0x2

    move-object/from16 v0, p0

    move-wide v1, v10

    move/from16 v3, v35

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->computeUptime(JI)J

    move-result-wide v35

    move-object/from16 v0, p1

    move-wide/from16 v1, v35

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3175
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-wide v1, v8

    move/from16 v3, v35

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->computeRealtime(JI)J

    move-result-wide v35

    move-object/from16 v0, p1

    move-wide/from16 v1, v35

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3176
    const/16 v35, 0x2

    move-object/from16 v0, p0

    move-wide v1, v8

    move/from16 v3, v35

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->computeRealtime(JI)J

    move-result-wide v35

    move-object/from16 v0, p1

    move-wide/from16 v1, v35

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3177
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStartLevel:I

    move/from16 v35, v0

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3178
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    move/from16 v35, v0

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    move-wide v2, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 3182
    const/16 v22, 0x0

    .local v22, i:I
    :goto_ee
    const/16 v35, 0x5

    move/from16 v0, v22

    move/from16 v1, v35

    if-ge v0, v1, :cond_109

    .line 3183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v35, v0

    aget-object v35, v35, v22

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    move-wide v2, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 3182
    add-int/lit8 v22, v22, 0x1

    goto :goto_ee

    .line 3185
    :cond_109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mInputEventCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 3186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    move-wide v2, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 3187
    const/16 v22, 0x0

    :goto_126
    const/16 v35, 0x5

    move/from16 v0, v22

    move/from16 v1, v35

    if-ge v0, v1, :cond_141

    .line 3188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v35, v0

    aget-object v35, v35, v22

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    move-wide v2, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 3187
    add-int/lit8 v22, v22, 0x1

    goto :goto_126

    .line 3190
    :cond_141
    const/16 v22, 0x0

    :goto_143
    const/16 v35, 0x5

    move/from16 v0, v22

    move/from16 v1, v35

    if-ge v0, v1, :cond_15e

    .line 3191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v35, v0

    aget-object v35, v35, v22

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    move-wide v2, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 3190
    add-int/lit8 v22, v22, 0x1

    goto :goto_143

    .line 3193
    :cond_15e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    move-wide v2, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 3194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    move-wide v2, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 3195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    move-wide v2, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 3197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/util/HashMap;->size()I

    move-result v35

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .end local v8           #NOWREAL_SYS:J
    .local v23, i$:Ljava/util/Iterator;
    :goto_1a7
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_1e8

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Map$Entry;

    .line 3199
    .local v18, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/internal/os/BatteryStatsImpl$Timer;

    .line 3200
    .local v26, kwlt:Lcom/android/internal/os/BatteryStatsImpl$Timer;
    if-eqz v26, :cond_1de

    .line 3201
    const/16 v35, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3202
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3203
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    move-object v0, v8

    move-object/from16 v1, p1

    move-wide v2, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    goto :goto_1a7

    .line 3205
    :cond_1de
    const/16 v35, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1a7

    .line 3209
    .end local v18           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;>;"
    .end local v26           #kwlt:Lcom/android/internal/os/BatteryStatsImpl$Timer;
    :cond_1e8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/util/SparseArray;->size()I

    move-result v15

    .line 3210
    .local v15, NU:I
    move-object/from16 v0, p1

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3211
    const/16 v25, 0x0

    .end local v23           #i$:Ljava/util/Iterator;
    .local v25, iu:I
    :goto_1fa
    move/from16 v0, v25

    move v1, v15

    if-ge v0, v1, :cond_5a3

    .line 3212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v35

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 3215
    .local v33, u:Lcom/android/internal/os/BatteryStatsImpl$Uid;
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    move-wide v2, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 3216
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    move-wide v2, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 3217
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    move-wide v2, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 3218
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    move-wide v2, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 3219
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScanWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    move-wide v2, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 3220
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    move-wide v2, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 3222
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-object/from16 v35, v0

    if-nez v35, :cond_326

    .line 3223
    const/16 v35, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3231
    :cond_289
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Ljava/util/HashMap;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/util/HashMap;->size()I

    move-result v16

    .line 3232
    .local v16, NW:I
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3233
    if-lez v16, :cond_36a

    .line 3235
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Ljava/util/HashMap;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .restart local v23       #i$:Ljava/util/Iterator;
    :goto_2aa
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_36a

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/Map$Entry;

    .line 3236
    .local v21, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3237
    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    .line 3238
    .local v34, wl:Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerFull:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v35, v0

    if-eqz v35, :cond_34b

    .line 3239
    const/16 v35, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3240
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerFull:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    move-wide v2, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 3244
    :goto_2e7
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerPartial:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v35, v0

    if-eqz v35, :cond_355

    .line 3245
    const/16 v35, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3246
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerPartial:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    move-wide v2, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 3250
    :goto_306
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerWindow:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v35, v0

    if-eqz v35, :cond_35f

    .line 3251
    const/16 v35, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3252
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerWindow:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    move-wide v2, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    goto :goto_2aa

    .line 3225
    .end local v16           #NW:I
    .end local v21           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;>;"
    .end local v23           #i$:Ljava/util/Iterator;
    .end local v34           #wl:Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    :cond_326
    const/16 v35, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3226
    const/16 v22, 0x0

    :goto_331
    const/16 v35, 0x7

    move/from16 v0, v22

    move/from16 v1, v35

    if-ge v0, v1, :cond_289

    .line 3227
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-object/from16 v35, v0

    aget-object v35, v35, v22

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 3226
    add-int/lit8 v22, v22, 0x1

    goto :goto_331

    .line 3242
    .restart local v16       #NW:I
    .restart local v21       #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;>;"
    .restart local v23       #i$:Ljava/util/Iterator;
    .restart local v34       #wl:Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    :cond_34b
    const/16 v35, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2e7

    .line 3248
    :cond_355
    const/16 v35, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_306

    .line 3254
    :cond_35f
    const/16 v35, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_2aa

    .line 3259
    .end local v21           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;>;"
    .end local v23           #i$:Ljava/util/Iterator;
    .end local v34           #wl:Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    :cond_36a
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Ljava/util/HashMap;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/util/HashMap;->size()I

    move-result v14

    .line 3260
    .local v14, NSE:I
    move-object/from16 v0, p1

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3261
    if-lez v14, :cond_3d7

    .line 3263
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Ljava/util/HashMap;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .restart local v23       #i$:Ljava/util/Iterator;
    :goto_38a
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_3d7

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map$Entry;

    .line 3264
    .local v17, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v35

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3265
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;

    .line 3266
    .local v28, se:Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->mTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v35, v0

    if-eqz v35, :cond_3cd

    .line 3267
    const/16 v35, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3268
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->mTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    move-wide v2, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    goto :goto_38a

    .line 3270
    :cond_3cd
    const/16 v35, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_38a

    .line 3275
    .end local v17           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;>;"
    .end local v23           #i$:Ljava/util/Iterator;
    .end local v28           #se:Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    :cond_3d7
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Ljava/util/HashMap;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/util/HashMap;->size()I

    move-result v12

    .line 3276
    .local v12, NP:I
    move-object/from16 v0, p1

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3277
    if-lez v12, :cond_47d

    .line 3279
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Ljava/util/HashMap;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .restart local v23       #i$:Ljava/util/Iterator;
    :goto_3f7
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_47d

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Map$Entry;

    .line 3280
    .local v20, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3281
    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    .line 3282
    .local v27, ps:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUserTime:J

    move-wide/from16 v35, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v35

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3283
    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUserTime:J

    move-wide/from16 v35, v0

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedUserTime:J

    move-wide/from16 v37, v0

    sub-long v35, v35, v37

    move-object/from16 v0, p1

    move-wide/from16 v1, v35

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3284
    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSystemTime:J

    move-wide/from16 v35, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v35

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3285
    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSystemTime:J

    move-wide/from16 v35, v0

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedSystemTime:J

    move-wide/from16 v37, v0

    sub-long v35, v35, v37

    move-object/from16 v0, p1

    move-wide/from16 v1, v35

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3286
    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mStarts:I

    move/from16 v35, v0

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3287
    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mStarts:I

    move/from16 v35, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedStarts:I

    move/from16 v36, v0

    sub-int v35, v35, v36

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_3f7

    .line 3291
    .end local v20           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;>;"
    .end local v23           #i$:Ljava/util/Iterator;
    .end local v27           #ps:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    :cond_47d
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Ljava/util/HashMap;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/util/HashMap;->size()I

    move-result v12

    .line 3292
    move-object/from16 v0, p1

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3293
    if-lez v12, :cond_57d

    .line 3295
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Ljava/util/HashMap;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_49d
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_57d

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/Map$Entry;

    .line 3296
    .local v19, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3297
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    .line 3298
    .local v27, ps:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mWakeups:I

    move/from16 v35, v0

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3299
    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mWakeups:I

    move/from16 v35, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mLoadedWakeups:I

    move/from16 v36, v0

    sub-int v35, v35, v36

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3300
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Ljava/util/HashMap;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/util/HashMap;->size()I

    move-result v13

    .line 3301
    .local v13, NS:I
    move-object/from16 v0, p1

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3302
    if-lez v13, :cond_49d

    .line 3304
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Ljava/util/HashMap;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, i$:Ljava/util/Iterator;
    :goto_4fd
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_49d

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/util/Map$Entry;

    .line 3305
    .local v29, sent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;>;"
    invoke-interface/range {v29 .. v29}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3306
    invoke-interface/range {v29 .. v29}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    .line 3307
    .local v30, ss:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    move-object/from16 v0, v30

    move-wide v1, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getStartTimeToNowLocked(J)J

    move-result-wide v31

    .line 3308
    .local v31, time:J
    move-object/from16 v0, p1

    move-wide/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3309
    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLoadedStartTime:J

    move-wide/from16 v35, v0

    sub-long v35, v31, v35

    move-object/from16 v0, p1

    move-wide/from16 v1, v35

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3310
    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStarts:I

    move/from16 v35, v0

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3311
    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStarts:I

    move/from16 v35, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLoadedStarts:I

    move/from16 v36, v0

    sub-int v35, v35, v36

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3312
    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunches:I

    move/from16 v35, v0

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3313
    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunches:I

    move/from16 v35, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLoadedLaunches:I

    move/from16 v36, v0

    sub-int v35, v35, v36

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4fd

    .line 3319
    .end local v13           #NS:I
    .end local v19           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;>;"
    .end local v24           #i$:Ljava/util/Iterator;
    .end local v27           #ps:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    .end local v29           #sent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;>;"
    .end local v30           #ss:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    .end local v31           #time:J
    :cond_57d
    const/16 v35, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getTcpBytesReceived(I)J

    move-result-wide v35

    move-object/from16 v0, p1

    move-wide/from16 v1, v35

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3320
    const/16 v35, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getTcpBytesSent(I)J

    move-result-wide v35

    move-object/from16 v0, p1

    move-wide/from16 v1, v35

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3211
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_1fa

    .line 3322
    .end local v12           #NP:I
    .end local v14           #NSE:I
    .end local v16           #NW:I
    .end local v33           #u:Lcom/android/internal/os/BatteryStatsImpl$Uid;
    :cond_5a3
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 3418
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->writeToParcelLocked(Landroid/os/Parcel;I)V

    .line 3419
    return-void
.end method

.method writeToParcelLocked(Landroid/os/Parcel;I)V
    .registers 25
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 3423
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    const-wide/16 v20, 0x3e8

    mul-long v15, v18, v20

    .line 3424
    .local v15, uSecUptime:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    const-wide/16 v20, 0x3e8

    mul-long v13, v18, v20

    .line 3425
    .local v13, uSecRealtime:J
    move-object/from16 v0, p0

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryUptimeLocked(J)J

    move-result-wide v6

    .line 3426
    .local v6, batteryUptime:J
    move-object/from16 v0, p0

    move-wide v1, v13

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryRealtimeLocked(J)J

    move-result-wide v4

    .line 3428
    .local v4, batteryRealtime:J
    const v18, -0x458a8b8b

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3429
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mStartCount:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3430
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mBatteryUptime:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3431
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mBatteryLastUptime:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3432
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mBatteryRealtime:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3433
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mBatteryLastRealtime:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-wide v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 3435
    const/4 v9, 0x0

    .local v9, i:I
    :goto_78
    const/16 v18, 0x5

    move v0, v9

    move/from16 v1, v18

    if-ge v0, v1, :cond_92

    .line 3436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v18, v0

    aget-object v18, v18, v9

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-wide v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 3435
    add-int/lit8 v9, v9, 0x1

    goto :goto_78

    .line 3438
    :cond_92
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mInputEventCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->writeToParcel(Landroid/os/Parcel;)V

    .line 3439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-wide v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 3440
    const/4 v9, 0x0

    :goto_ae
    const/16 v18, 0x5

    move v0, v9

    move/from16 v1, v18

    if-ge v0, v1, :cond_c8

    .line 3441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v18, v0

    aget-object v18, v18, v9

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-wide v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 3440
    add-int/lit8 v9, v9, 0x1

    goto :goto_ae

    .line 3443
    :cond_c8
    const/4 v9, 0x0

    :goto_c9
    const/16 v18, 0x5

    move v0, v9

    move/from16 v1, v18

    if-ge v0, v1, :cond_e3

    .line 3444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v18, v0

    aget-object v18, v18, v9

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-wide v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 3443
    add-int/lit8 v9, v9, 0x1

    goto :goto_c9

    .line 3446
    :cond_e3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-wide v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 3447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-wide v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 3448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-wide v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 3449
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUptime:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3450
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUptimeStart:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3451
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastUptime:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3452
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mRealtime:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3453
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mRealtimeStart:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3454
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastRealtime:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3455
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    move/from16 v18, v0

    if-eqz v18, :cond_27a

    const/16 v18, 0x1

    :goto_165
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3456
    move-object/from16 v0, p1

    move-wide v1, v6

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3457
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackBatteryUptimeStart:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3458
    move-object/from16 v0, p1

    move-wide v1, v4

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3459
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackBatteryRealtimeStart:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3460
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggedBatteryUptime:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3461
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggedBatteryRealtime:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3462
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStartLevel:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3463
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3464
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWriteTime:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3466
    const/16 v18, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getMobileTcpBytesReceived(I)J

    move-result-wide v18

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3467
    const/16 v18, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getMobileTcpBytesSent(I)J

    move-result-wide v18

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3468
    const/16 v18, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getTotalTcpBytesReceived(I)J

    move-result-wide v18

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3469
    const/16 v18, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getTotalTcpBytesSent(I)J

    move-result-wide v18

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3472
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->getRadioDataUptime()J

    move-result-wide v18

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3474
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->getBluetoothPingCount()I

    move-result v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->size()I

    move-result v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .end local p2
    .local v10, i$:Ljava/util/Iterator;
    :goto_24c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_288

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 3478
    .local v8, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    .line 3479
    .local v11, kwlt:Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    if-eqz v11, :cond_27e

    .line 3480
    const/16 v18, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3481
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual/range {p1 .. p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3482
    move-object/from16 v0, p1

    move-object v1, v11

    move-wide v2, v4

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeTimerToParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$Timer;J)V

    goto :goto_24c

    .line 3455
    .end local v8           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;>;"
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #kwlt:Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    .restart local p2
    :cond_27a
    const/16 v18, 0x0

    goto/16 :goto_165

    .line 3484
    .end local p2
    .restart local v8       #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;>;"
    .restart local v10       #i$:Ljava/util/Iterator;
    .restart local v11       #kwlt:Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    :cond_27e
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_24c

    .line 3488
    .end local v8           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;>;"
    .end local v11           #kwlt:Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    :cond_288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/util/SparseArray;->size()I

    move-result v12

    .line 3489
    .local v12, size:I
    move-object/from16 v0, p1

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3490
    const/4 v9, 0x0

    :goto_299
    if-ge v9, v12, :cond_2c9

    .line 3491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 3494
    .local v17, uid:Lcom/android/internal/os/BatteryStatsImpl$Uid;
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-wide v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->writeToParcelLocked(Landroid/os/Parcel;J)V

    .line 3490
    add-int/lit8 v9, v9, 0x1

    goto :goto_299

    .line 3496
    .end local v17           #uid:Lcom/android/internal/os/BatteryStatsImpl$Uid;
    :cond_2c9
    return-void
.end method
