.class Landroid/app/ApplicationContext;
.super Landroid/content/Context;
.source "ApplicationContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ApplicationContext$1;,
        Landroid/app/ApplicationContext$WallpaperCallback;,
        Landroid/app/ApplicationContext$SharedPreferencesImpl;,
        Landroid/app/ApplicationContext$ApplicationPackageManager;,
        Landroid/app/ApplicationContext$ApplicationContentResolver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_ICONS:Z = false

.field private static final EMPTY_FILE_LIST:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "ApplicationContext"

.field private static final WALLPAPER:Ljava/lang/String; = "/data/data/com.android.settings/files/wallpaper.dm"

.field private static sAlarmManager:Landroid/app/AlarmManager;

.field private static sBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

.field private static sConnectivityManager:Landroid/net/ConnectivityManager;

.field private static sFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

.field private static sInstanceCount:J

.field private static sIsBluetoothDeviceCached:Z

.field private static sLocationManager:Landroid/location/LocationManager;

.field private static sPowerManager:Landroid/os/PowerManager;

.field private static final sSharedPrefs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/io/File;",
            "Landroid/app/ApplicationContext$SharedPreferencesImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSync:Ljava/lang/Object;

.field private static sWallpaperService:Landroid/app/IWallpaperService;

.field private static sWifiManager:Landroid/net/wifi/WifiManager;


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mActivityToken:Landroid/os/IBinder;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCacheDir:Ljava/io/File;

.field private mClipboardManager:Landroid/text/ClipboardManager;

.field private mContentResolver:Landroid/app/ApplicationContext$ApplicationContentResolver;

.field private mDatabasesDir:Ljava/io/File;

.field private mFilesDir:Ljava/io/File;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field mMainThread:Landroid/app/ActivityThread;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mOuterContext:Landroid/content/Context;

.field mPackageInfo:Landroid/app/ActivityThread$PackageInfo;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPreferencesDir:Ljava/io/File;

.field private mReceiverRestrictedContext:Landroid/content/Context;

.field private mResources:Landroid/content/res/Resources;

.field private mRestricted:Z

.field private mSearchManager:Landroid/app/SearchManager;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private final mSync:Ljava/lang/Object;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTheme:Landroid/content/res/Resources$Theme;

.field private mThemeResource:I

.field private mVibrator:Landroid/os/Vibrator;

.field private mWallpaper:Landroid/graphics/drawable/Drawable;

.field private mWallpaperCallback:Landroid/app/IWallpaperServiceCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 188
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/ApplicationContext;->sSync:Ljava/lang/Object;

    .line 194
    sput-boolean v2, Landroid/app/ApplicationContext;->sIsBluetoothDeviceCached:Z

    .line 200
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/app/ApplicationContext;->sSharedPrefs:Ljava/util/HashMap;

    .line 238
    const-wide/16 v0, 0x0

    sput-wide v0, Landroid/app/ApplicationContext;->sInstanceCount:J

    .line 240
    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Landroid/app/ApplicationContext;->EMPTY_FILE_LIST:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1649
    invoke-direct {p0}, Landroid/content/Context;-><init>()V

    .line 208
    iput-object v1, p0, Landroid/app/ApplicationContext;->mActivityToken:Landroid/os/IBinder;

    .line 210
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/ApplicationContext;->mThemeResource:I

    .line 211
    iput-object v1, p0, Landroid/app/ApplicationContext;->mTheme:Landroid/content/res/Resources$Theme;

    .line 213
    iput-object v1, p0, Landroid/app/ApplicationContext;->mNotificationManager:Landroid/app/NotificationManager;

    .line 214
    iput-object v1, p0, Landroid/app/ApplicationContext;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 215
    iput-object v1, p0, Landroid/app/ApplicationContext;->mActivityManager:Landroid/app/ActivityManager;

    .line 216
    iput-object v1, p0, Landroid/app/ApplicationContext;->mReceiverRestrictedContext:Landroid/content/Context;

    .line 217
    iput-object v1, p0, Landroid/app/ApplicationContext;->mSearchManager:Landroid/app/SearchManager;

    .line 218
    iput-object v1, p0, Landroid/app/ApplicationContext;->mSensorManager:Landroid/hardware/SensorManager;

    .line 219
    iput-object v1, p0, Landroid/app/ApplicationContext;->mVibrator:Landroid/os/Vibrator;

    .line 220
    iput-object v1, p0, Landroid/app/ApplicationContext;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 221
    iput-object v1, p0, Landroid/app/ApplicationContext;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 222
    iput-object v1, p0, Landroid/app/ApplicationContext;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 223
    iput-object v1, p0, Landroid/app/ApplicationContext;->mClipboardManager:Landroid/text/ClipboardManager;

    .line 226
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/ApplicationContext;->mSync:Ljava/lang/Object;

    .line 236
    iput-object v1, p0, Landroid/app/ApplicationContext;->mWallpaperCallback:Landroid/app/IWallpaperServiceCallback;

    .line 1650
    sget-wide v0, Landroid/app/ApplicationContext;->sInstanceCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Landroid/app/ApplicationContext;->sInstanceCount:J

    .line 1651
    iput-object p0, p0, Landroid/app/ApplicationContext;->mOuterContext:Landroid/content/Context;

    .line 1652
    return-void
.end method

.method public constructor <init>(Landroid/app/ApplicationContext;)V
    .registers 6
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 1660
    invoke-direct {p0}, Landroid/content/Context;-><init>()V

    .line 208
    iput-object v1, p0, Landroid/app/ApplicationContext;->mActivityToken:Landroid/os/IBinder;

    .line 210
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/ApplicationContext;->mThemeResource:I

    .line 211
    iput-object v1, p0, Landroid/app/ApplicationContext;->mTheme:Landroid/content/res/Resources$Theme;

    .line 213
    iput-object v1, p0, Landroid/app/ApplicationContext;->mNotificationManager:Landroid/app/NotificationManager;

    .line 214
    iput-object v1, p0, Landroid/app/ApplicationContext;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 215
    iput-object v1, p0, Landroid/app/ApplicationContext;->mActivityManager:Landroid/app/ActivityManager;

    .line 216
    iput-object v1, p0, Landroid/app/ApplicationContext;->mReceiverRestrictedContext:Landroid/content/Context;

    .line 217
    iput-object v1, p0, Landroid/app/ApplicationContext;->mSearchManager:Landroid/app/SearchManager;

    .line 218
    iput-object v1, p0, Landroid/app/ApplicationContext;->mSensorManager:Landroid/hardware/SensorManager;

    .line 219
    iput-object v1, p0, Landroid/app/ApplicationContext;->mVibrator:Landroid/os/Vibrator;

    .line 220
    iput-object v1, p0, Landroid/app/ApplicationContext;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 221
    iput-object v1, p0, Landroid/app/ApplicationContext;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 222
    iput-object v1, p0, Landroid/app/ApplicationContext;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 223
    iput-object v1, p0, Landroid/app/ApplicationContext;->mClipboardManager:Landroid/text/ClipboardManager;

    .line 226
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/ApplicationContext;->mSync:Ljava/lang/Object;

    .line 236
    iput-object v1, p0, Landroid/app/ApplicationContext;->mWallpaperCallback:Landroid/app/IWallpaperServiceCallback;

    .line 1661
    sget-wide v0, Landroid/app/ApplicationContext;->sInstanceCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Landroid/app/ApplicationContext;->sInstanceCount:J

    .line 1662
    iget-object v0, p1, Landroid/app/ApplicationContext;->mPackageInfo:Landroid/app/ActivityThread$PackageInfo;

    iput-object v0, p0, Landroid/app/ApplicationContext;->mPackageInfo:Landroid/app/ActivityThread$PackageInfo;

    .line 1663
    iget-object v0, p1, Landroid/app/ApplicationContext;->mResources:Landroid/content/res/Resources;

    iput-object v0, p0, Landroid/app/ApplicationContext;->mResources:Landroid/content/res/Resources;

    .line 1664
    iget-object v0, p1, Landroid/app/ApplicationContext;->mMainThread:Landroid/app/ActivityThread;

    iput-object v0, p0, Landroid/app/ApplicationContext;->mMainThread:Landroid/app/ActivityThread;

    .line 1665
    iget-object v0, p1, Landroid/app/ApplicationContext;->mContentResolver:Landroid/app/ApplicationContext$ApplicationContentResolver;

    iput-object v0, p0, Landroid/app/ApplicationContext;->mContentResolver:Landroid/app/ApplicationContext$ApplicationContentResolver;

    .line 1666
    iput-object p0, p0, Landroid/app/ApplicationContext;->mOuterContext:Landroid/content/Context;

    .line 1667
    return-void
.end method

.method static synthetic access$100(Landroid/app/ApplicationContext;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;Landroid/content/Context;)Landroid/content/Intent;
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 180
    invoke-direct/range {p0 .. p5}, Landroid/app/ApplicationContext;->registerReceiverInternal(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1002(Landroid/app/ApplicationContext;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 180
    iput-object p1, p0, Landroid/app/ApplicationContext;->mWallpaper:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$500(Ljava/io/File;)Ljava/io/File;
    .registers 2
    .parameter "x0"

    .prologue
    .line 180
    invoke-static {p0}, Landroid/app/ApplicationContext;->makeBackupFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Ljava/lang/String;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 180
    invoke-static {p0, p1, p2}, Landroid/app/ApplicationContext;->setFilePermissionsFromMode(Ljava/lang/String;II)V

    return-void
.end method

.method static createSystemContext(Landroid/app/ActivityThread;)Landroid/app/ApplicationContext;
    .registers 3
    .parameter "mainThread"

    .prologue
    .line 1644
    new-instance v0, Landroid/app/ApplicationContext;

    invoke-direct {v0}, Landroid/app/ApplicationContext;-><init>()V

    .line 1645
    .local v0, context:Landroid/app/ApplicationContext;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/app/ApplicationContext;->init(Landroid/content/res/Resources;Landroid/app/ActivityThread;)V

    .line 1646
    return-object v0
.end method

.method private enforce(Ljava/lang/String;IZILjava/lang/String;)V
    .registers 10
    .parameter "permission"
    .parameter "resultOfCheck"
    .parameter "selfToo"
    .parameter "uid"
    .parameter "message"

    .prologue
    .line 1416
    if-eqz p2, :cond_70

    .line 1417
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p5, :cond_53

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p3, :cond_56

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Neither user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " nor current process has "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_3d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_53
    const-string v2, ""

    goto :goto_1e

    :cond_56
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not have "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3d

    .line 1425
    :cond_70
    return-void
.end method

.method private enforceForUri(IIZILandroid/net/Uri;Ljava/lang/String;)V
    .registers 11
    .parameter "modeFlags"
    .parameter "resultOfCheck"
    .parameter "selfToo"
    .parameter "uid"
    .parameter "uri"
    .parameter "message"

    .prologue
    .line 1548
    if-eqz p2, :cond_7e

    .line 1549
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p6, :cond_61

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p3, :cond_64

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Neither user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " nor current process has "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_3d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/app/ApplicationContext;->uriModeFlagToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " permission on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_61
    const-string v2, ""

    goto :goto_1e

    :cond_64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not have "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3d

    .line 1559
    :cond_7e
    return-void
.end method

.method private getActivityManager()Landroid/app/ActivityManager;
    .registers 5

    .prologue
    .line 1197
    iget-object v0, p0, Landroid/app/ApplicationContext;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 1198
    :try_start_3
    iget-object v1, p0, Landroid/app/ApplicationContext;->mActivityManager:Landroid/app/ActivityManager;

    if-nez v1, :cond_18

    .line 1199
    new-instance v1, Landroid/app/ActivityManager;

    invoke-virtual {p0}, Landroid/app/ApplicationContext;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Landroid/app/ApplicationContext;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v3}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/app/ActivityManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Landroid/app/ApplicationContext;->mActivityManager:Landroid/app/ActivityManager;

    .line 1202
    :cond_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1c

    .line 1203
    iget-object v0, p0, Landroid/app/ApplicationContext;->mActivityManager:Landroid/app/ActivityManager;

    return-object v0

    .line 1202
    :catchall_1c
    move-exception v1

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method private getAlarmManager()Landroid/app/AlarmManager;
    .registers 5

    .prologue
    .line 1207
    sget-object v2, Landroid/app/ApplicationContext;->sSync:Ljava/lang/Object;

    monitor-enter v2

    .line 1208
    :try_start_3
    sget-object v3, Landroid/app/ApplicationContext;->sAlarmManager:Landroid/app/AlarmManager;

    if-nez v3, :cond_18

    .line 1209
    const-string v3, "alarm"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1210
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v1

    .line 1211
    .local v1, service:Landroid/app/IAlarmManager;
    new-instance v3, Landroid/app/AlarmManager;

    invoke-direct {v3, v1}, Landroid/app/AlarmManager;-><init>(Landroid/app/IAlarmManager;)V

    sput-object v3, Landroid/app/ApplicationContext;->sAlarmManager:Landroid/app/AlarmManager;

    .line 1213
    .end local v0           #b:Landroid/os/IBinder;
    .end local v1           #service:Landroid/app/IAlarmManager;
    :cond_18
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1c

    .line 1214
    sget-object v2, Landroid/app/ApplicationContext;->sAlarmManager:Landroid/app/AlarmManager;

    return-object v2

    .line 1213
    :catchall_1c
    move-exception v3

    :try_start_1d
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v3
.end method

.method private getAudioManager()Landroid/media/AudioManager;
    .registers 2

    .prologue
    .line 1363
    iget-object v0, p0, Landroid/app/ApplicationContext;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_b

    .line 1364
    new-instance v0, Landroid/media/AudioManager;

    invoke-direct {v0, p0}, Landroid/media/AudioManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/ApplicationContext;->mAudioManager:Landroid/media/AudioManager;

    .line 1366
    :cond_b
    iget-object v0, p0, Landroid/app/ApplicationContext;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;
    .registers 5

    .prologue
    .line 1304
    sget-boolean v2, Landroid/app/ApplicationContext;->sIsBluetoothDeviceCached:Z

    if-eqz v2, :cond_7

    .line 1305
    sget-object v2, Landroid/app/ApplicationContext;->sBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 1317
    :goto_6
    return-object v2

    .line 1307
    :cond_7
    sget-object v2, Landroid/app/ApplicationContext;->sSync:Ljava/lang/Object;

    monitor-enter v2

    .line 1308
    :try_start_a
    const-string v3, "bluetooth"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1309
    .local v0, b:Landroid/os/IBinder;
    if-nez v0, :cond_1c

    .line 1310
    const/4 v3, 0x0

    sput-object v3, Landroid/app/ApplicationContext;->sBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 1315
    :goto_15
    const/4 v3, 0x1

    sput-boolean v3, Landroid/app/ApplicationContext;->sIsBluetoothDeviceCached:Z

    .line 1316
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_28

    .line 1317
    sget-object v2, Landroid/app/ApplicationContext;->sBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    goto :goto_6

    .line 1312
    :cond_1c
    :try_start_1c
    invoke-static {v0}, Landroid/bluetooth/IBluetoothDevice$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothDevice;

    move-result-object v1

    .line 1313
    .local v1, service:Landroid/bluetooth/IBluetoothDevice;
    new-instance v3, Landroid/bluetooth/BluetoothDevice;

    invoke-direct {v3, v1}, Landroid/bluetooth/BluetoothDevice;-><init>(Landroid/bluetooth/IBluetoothDevice;)V

    sput-object v3, Landroid/app/ApplicationContext;->sBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    goto :goto_15

    .line 1316
    .end local v0           #b:Landroid/os/IBinder;
    .end local v1           #service:Landroid/bluetooth/IBluetoothDevice;
    :catchall_28
    move-exception v3

    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_1c .. :try_end_2a} :catchall_28

    throw v3
.end method

.method private getClipboardManager()Landroid/text/ClipboardManager;
    .registers 5

    .prologue
    .line 1274
    iget-object v0, p0, Landroid/app/ApplicationContext;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 1275
    :try_start_3
    iget-object v1, p0, Landroid/app/ApplicationContext;->mClipboardManager:Landroid/text/ClipboardManager;

    if-nez v1, :cond_18

    .line 1276
    new-instance v1, Landroid/text/ClipboardManager;

    invoke-virtual {p0}, Landroid/app/ApplicationContext;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Landroid/app/ApplicationContext;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v3}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/text/ClipboardManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Landroid/app/ApplicationContext;->mClipboardManager:Landroid/text/ClipboardManager;

    .line 1279
    :cond_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1c

    .line 1280
    iget-object v0, p0, Landroid/app/ApplicationContext;->mClipboardManager:Landroid/text/ClipboardManager;

    return-object v0

    .line 1279
    :catchall_1c
    move-exception v1

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method private getConnectivityManager()Landroid/net/ConnectivityManager;
    .registers 5

    .prologue
    .line 1230
    sget-object v2, Landroid/app/ApplicationContext;->sSync:Ljava/lang/Object;

    monitor-enter v2

    .line 1231
    :try_start_3
    sget-object v3, Landroid/app/ApplicationContext;->sConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v3, :cond_18

    .line 1232
    const-string v3, "connectivity"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1233
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v1

    .line 1234
    .local v1, service:Landroid/net/IConnectivityManager;
    new-instance v3, Landroid/net/ConnectivityManager;

    invoke-direct {v3, v1}, Landroid/net/ConnectivityManager;-><init>(Landroid/net/IConnectivityManager;)V

    sput-object v3, Landroid/app/ApplicationContext;->sConnectivityManager:Landroid/net/ConnectivityManager;

    .line 1236
    .end local v0           #b:Landroid/os/IBinder;
    .end local v1           #service:Landroid/net/IConnectivityManager;
    :cond_18
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1c

    .line 1237
    sget-object v2, Landroid/app/ApplicationContext;->sConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v2

    .line 1236
    :catchall_1c
    move-exception v3

    :try_start_1d
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v3
.end method

.method private getCurrentWallpaperLocked()Landroid/graphics/drawable/Drawable;
    .registers 14

    .prologue
    const/4 v11, 0x0

    const-string v9, "/data/data/com.android.settings/files/wallpaper.dm"

    const-string v12, "ApplicationContext"

    .line 650
    const/4 v1, 0x0

    .line 652
    .local v1, bm:Landroid/graphics/Bitmap;
    const-string v8, "/data/data/com.android.settings/files/wallpaper.dm"

    invoke-static {v9}, Landroid/lge/lgdrm/DrmManager;->isDRM(Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_aa

    .line 653
    const-string v8, "ApplicationContext"

    const-string v8, "DRM wallpaper"

    invoke-static {v12, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    :try_start_15
    invoke-direct {p0}, Landroid/app/ApplicationContext;->getWallpaperService()Landroid/app/IWallpaperService;

    move-result-object v8

    iget-object v9, p0, Landroid/app/ApplicationContext;->mWallpaperCallback:Landroid/app/IWallpaperServiceCallback;

    invoke-interface {v8, v9}, Landroid/app/IWallpaperService;->getDrmWallpaper(Landroid/app/IWallpaperServiceCallback;)[B

    move-result-object v0

    .line 684
    .local v0, DecInfo:[B
    if-nez v0, :cond_23

    move-object v8, v11

    .line 753
    .end local v0           #DecInfo:[B
    :goto_22
    return-object v8

    .line 689
    .restart local v0       #DecInfo:[B
    :cond_23
    const-string v8, "/data/data/com.android.settings/files/wallpaper.dm"

    invoke-static {v8, v0}, Landroid/lge/lgdrm/DrmContentSession;->openDrmStream(Ljava/lang/String;[B)Landroid/lge/lgdrm/DrmStream;

    move-result-object v4

    .line 690
    .local v4, inDrm:Landroid/lge/lgdrm/DrmStream;
    if-nez v4, :cond_34

    .line 692
    const-string v8, "ApplicationContext"

    const-string v9, "Fail to get DrmStream()"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v11

    .line 693
    goto :goto_22

    .line 696
    :cond_34
    invoke-virtual {v4}, Landroid/lge/lgdrm/DrmStream;->available()I

    move-result v6

    .line 697
    .local v6, rawContentLen:I
    const-string v8, "ApplicationContext"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "drm file size is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    const/4 v7, 0x1

    .line 700
    .local v7, s:I
    :goto_51
    mul-int v8, v7, v7

    div-int v8, v6, v8

    const v9, 0x4b000

    if-le v8, v9, :cond_5d

    .line 702
    add-int/lit8 v7, v7, 0x1

    goto :goto_51

    .line 705
    :cond_5d
    const-string v8, "ApplicationContext"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "drm reduction value is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    mul-int v10, v7, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 707
    .local v5, options:Landroid/graphics/BitmapFactory$Options;
    iput v7, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 709
    const/4 v8, 0x0

    invoke-static {v4, v8, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_82
    .catch Ljava/lang/SecurityException; {:try_start_15 .. :try_end_82} :catch_8b
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_82} :catch_92
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_82} :catch_99

    move-result-object v1

    .line 728
    if-eqz v1, :cond_a0

    .line 730
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v8, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_22

    .line 712
    .end local v0           #DecInfo:[B
    .end local v4           #inDrm:Landroid/lge/lgdrm/DrmStream;
    .end local v5           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v6           #rawContentLen:I
    .end local v7           #s:I
    :catch_8b
    move-exception v8

    move-object v2, v8

    .line 714
    .local v2, e:Ljava/lang/SecurityException;
    invoke-virtual {v2}, Ljava/lang/SecurityException;->printStackTrace()V

    move-object v8, v11

    .line 715
    goto :goto_22

    .line 717
    .end local v2           #e:Ljava/lang/SecurityException;
    :catch_92
    move-exception v8

    move-object v2, v8

    .line 719
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v8, v11

    .line 720
    goto :goto_22

    .line 722
    .end local v2           #e:Ljava/io/IOException;
    :catch_99
    move-exception v8

    move-object v2, v8

    .line 724
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    move-object v8, v11

    .line 725
    goto :goto_22

    .line 734
    .end local v2           #e:Landroid/os/RemoteException;
    .restart local v0       #DecInfo:[B
    .restart local v4       #inDrm:Landroid/lge/lgdrm/DrmStream;
    .restart local v5       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v6       #rawContentLen:I
    .restart local v7       #s:I
    :cond_a0
    const-string v8, "ApplicationContext"

    const-string v8, "DRM decoding is failed"

    invoke-static {v12, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v11

    .line 735
    goto/16 :goto_22

    .line 741
    .end local v0           #DecInfo:[B
    .end local v4           #inDrm:Landroid/lge/lgdrm/DrmStream;
    .end local v5           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v6           #rawContentLen:I
    .end local v7           #s:I
    :cond_aa
    :try_start_aa
    invoke-direct {p0}, Landroid/app/ApplicationContext;->getWallpaperService()Landroid/app/IWallpaperService;

    move-result-object v8

    iget-object v9, p0, Landroid/app/ApplicationContext;->mWallpaperCallback:Landroid/app/IWallpaperServiceCallback;

    invoke-interface {v8, v9}, Landroid/app/IWallpaperService;->getWallpaper(Landroid/app/IWallpaperServiceCallback;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 742
    .local v3, fd:Landroid/os/ParcelFileDescriptor;
    if-eqz v3, :cond_d0

    .line 743
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-static {v8}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 744
    if-eqz v1, :cond_d0

    .line 747
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 748
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/app/ApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-direct {v8, v9, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_cd
    .catch Landroid/os/RemoteException; {:try_start_aa .. :try_end_cd} :catch_cf

    goto/16 :goto_22

    .line 751
    .end local v3           #fd:Landroid/os/ParcelFileDescriptor;
    :catch_cf
    move-exception v8

    :cond_d0
    move-object v8, v11

    .line 753
    goto/16 :goto_22
.end method

.method private getDataDirFile()Ljava/io/File;
    .registers 3

    .prologue
    .line 1625
    iget-object v0, p0, Landroid/app/ApplicationContext;->mPackageInfo:Landroid/app/ActivityThread$PackageInfo;

    if-eqz v0, :cond_b

    .line 1626
    iget-object v0, p0, Landroid/app/ApplicationContext;->mPackageInfo:Landroid/app/ActivityThread$PackageInfo;

    invoke-virtual {v0}, Landroid/app/ActivityThread$PackageInfo;->getDataDirFile()Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 1628
    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported in system context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getDatabasesDir()Ljava/io/File;
    .registers 5

    .prologue
    const-string v0, "databases"

    .line 544
    iget-object v0, p0, Landroid/app/ApplicationContext;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 545
    :try_start_5
    iget-object v1, p0, Landroid/app/ApplicationContext;->mDatabasesDir:Ljava/io/File;

    if-nez v1, :cond_16

    .line 546
    new-instance v1, Ljava/io/File;

    invoke-direct {p0}, Landroid/app/ApplicationContext;->getDataDirFile()Ljava/io/File;

    move-result-object v2

    const-string v3, "databases"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/app/ApplicationContext;->mDatabasesDir:Ljava/io/File;

    .line 548
    :cond_16
    iget-object v1, p0, Landroid/app/ApplicationContext;->mDatabasesDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "databases"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 549
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/app/ApplicationContext;->mDatabasesDir:Ljava/io/File;

    .line 551
    :cond_2d
    iget-object v1, p0, Landroid/app/ApplicationContext;->mDatabasesDir:Ljava/io/File;

    monitor-exit v0

    return-object v1

    .line 552
    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_5 .. :try_end_33} :catchall_31

    throw v1
.end method

.method private getFmReceiver()Lcom/broadcom/bt/service/fm/FmReceiver;
    .registers 5

    .prologue
    .line 1321
    sget-object v2, Landroid/app/ApplicationContext;->sSync:Ljava/lang/Object;

    monitor-enter v2

    .line 1322
    :try_start_3
    const-string v3, "fm_receiver"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1323
    .local v0, b:Landroid/os/IBinder;
    if-nez v0, :cond_12

    .line 1324
    const/4 v3, 0x0

    sput-object v3, Landroid/app/ApplicationContext;->sFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    .line 1329
    :goto_e
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_1e

    .line 1330
    sget-object v2, Landroid/app/ApplicationContext;->sFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    return-object v2

    .line 1326
    :cond_12
    :try_start_12
    invoke-static {v0}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/fm/IFmReceiverService;

    move-result-object v1

    .line 1327
    .local v1, service:Lcom/broadcom/bt/service/fm/IFmReceiverService;
    new-instance v3, Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-direct {v3, v1}, Lcom/broadcom/bt/service/fm/FmReceiver;-><init>(Lcom/broadcom/bt/service/fm/IFmReceiverService;)V

    sput-object v3, Landroid/app/ApplicationContext;->sFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    goto :goto_e

    .line 1329
    .end local v0           #b:Landroid/os/IBinder;
    .end local v1           #service:Lcom/broadcom/bt/service/fm/IFmReceiverService;
    :catchall_1e
    move-exception v3

    monitor-exit v2
    :try_end_20
    .catchall {:try_start_12 .. :try_end_20} :catchall_1e

    throw v3
.end method

.method public static getInstanceCount()J
    .registers 2

    .prologue
    .line 249
    sget-wide v0, Landroid/app/ApplicationContext;->sInstanceCount:J

    return-wide v0
.end method

.method private getLocationManager()Landroid/location/LocationManager;
    .registers 5

    .prologue
    .line 1284
    sget-object v2, Landroid/app/ApplicationContext;->sSync:Ljava/lang/Object;

    monitor-enter v2

    .line 1285
    :try_start_3
    sget-object v3, Landroid/app/ApplicationContext;->sLocationManager:Landroid/location/LocationManager;

    if-nez v3, :cond_18

    .line 1286
    const-string v3, "location"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1287
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/location/ILocationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationManager;

    move-result-object v1

    .line 1288
    .local v1, service:Landroid/location/ILocationManager;
    new-instance v3, Landroid/location/LocationManager;

    invoke-direct {v3, v1}, Landroid/location/LocationManager;-><init>(Landroid/location/ILocationManager;)V

    sput-object v3, Landroid/app/ApplicationContext;->sLocationManager:Landroid/location/LocationManager;

    .line 1290
    .end local v0           #b:Landroid/os/IBinder;
    .end local v1           #service:Landroid/location/ILocationManager;
    :cond_18
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1c

    .line 1291
    sget-object v2, Landroid/app/ApplicationContext;->sLocationManager:Landroid/location/LocationManager;

    return-object v2

    .line 1290
    :catchall_1c
    move-exception v3

    :try_start_1d
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v3
.end method

.method private getNotificationManager()Landroid/app/NotificationManager;
    .registers 6

    .prologue
    .line 1254
    iget-object v0, p0, Landroid/app/ApplicationContext;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 1255
    :try_start_3
    iget-object v1, p0, Landroid/app/ApplicationContext;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v1, :cond_20

    .line 1256
    new-instance v1, Landroid/app/NotificationManager;

    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/app/ApplicationContext;->getOuterContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x103000b

    invoke-direct {v2, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iget-object v3, p0, Landroid/app/ApplicationContext;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v3}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/app/NotificationManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Landroid/app/ApplicationContext;->mNotificationManager:Landroid/app/NotificationManager;

    .line 1260
    :cond_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_24

    .line 1261
    iget-object v0, p0, Landroid/app/ApplicationContext;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0

    .line 1260
    :catchall_24
    move-exception v1

    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v1
.end method

.method private getPowerManager()Landroid/os/PowerManager;
    .registers 6

    .prologue
    .line 1218
    sget-object v2, Landroid/app/ApplicationContext;->sSync:Ljava/lang/Object;

    monitor-enter v2

    .line 1219
    :try_start_3
    sget-object v3, Landroid/app/ApplicationContext;->sPowerManager:Landroid/os/PowerManager;

    if-nez v3, :cond_1e

    .line 1220
    const-string v3, "power"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1221
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 1222
    .local v1, service:Landroid/os/IPowerManager;
    new-instance v3, Landroid/os/PowerManager;

    iget-object v4, p0, Landroid/app/ApplicationContext;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v4}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Landroid/os/PowerManager;-><init>(Landroid/os/IPowerManager;Landroid/os/Handler;)V

    sput-object v3, Landroid/app/ApplicationContext;->sPowerManager:Landroid/os/PowerManager;

    .line 1224
    .end local v0           #b:Landroid/os/IBinder;
    .end local v1           #service:Landroid/os/IPowerManager;
    :cond_1e
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_22

    .line 1225
    sget-object v2, Landroid/app/ApplicationContext;->sPowerManager:Landroid/os/PowerManager;

    return-object v2

    .line 1224
    :catchall_22
    move-exception v3

    :try_start_23
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v3
.end method

.method private getPreferencesDir()Ljava/io/File;
    .registers 5

    .prologue
    .line 410
    iget-object v0, p0, Landroid/app/ApplicationContext;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 411
    :try_start_3
    iget-object v1, p0, Landroid/app/ApplicationContext;->mPreferencesDir:Ljava/io/File;

    if-nez v1, :cond_14

    .line 412
    new-instance v1, Ljava/io/File;

    invoke-direct {p0}, Landroid/app/ApplicationContext;->getDataDirFile()Ljava/io/File;

    move-result-object v2

    const-string v3, "shared_prefs"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/app/ApplicationContext;->mPreferencesDir:Ljava/io/File;

    .line 414
    :cond_14
    iget-object v1, p0, Landroid/app/ApplicationContext;->mPreferencesDir:Ljava/io/File;

    monitor-exit v0

    return-object v1

    .line 415
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method private getSearchManager()Landroid/app/SearchManager;
    .registers 5

    .prologue
    .line 1295
    iget-object v0, p0, Landroid/app/ApplicationContext;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 1296
    :try_start_3
    iget-object v1, p0, Landroid/app/ApplicationContext;->mSearchManager:Landroid/app/SearchManager;

    if-nez v1, :cond_18

    .line 1297
    new-instance v1, Landroid/app/SearchManager;

    invoke-virtual {p0}, Landroid/app/ApplicationContext;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Landroid/app/ApplicationContext;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v3}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/app/SearchManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Landroid/app/ApplicationContext;->mSearchManager:Landroid/app/SearchManager;

    .line 1299
    :cond_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1c

    .line 1300
    iget-object v0, p0, Landroid/app/ApplicationContext;->mSearchManager:Landroid/app/SearchManager;

    return-object v0

    .line 1299
    :catchall_1c
    move-exception v1

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method private getSensorManager()Landroid/hardware/SensorManager;
    .registers 4

    .prologue
    .line 1334
    iget-object v0, p0, Landroid/app/ApplicationContext;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 1335
    :try_start_3
    iget-object v1, p0, Landroid/app/ApplicationContext;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v1, :cond_18

    .line 1336
    new-instance v1, Landroid/hardware/SensorManager;

    iget-object v2, p0, Landroid/app/ApplicationContext;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/hardware/SensorManager;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/app/ApplicationContext;->mSensorManager:Landroid/hardware/SensorManager;

    .line 1338
    :cond_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1c

    .line 1339
    iget-object v0, p0, Landroid/app/ApplicationContext;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0

    .line 1338
    :catchall_1c
    move-exception v1

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method private getTelephonyManager()Landroid/telephony/TelephonyManager;
    .registers 4

    .prologue
    .line 1265
    iget-object v0, p0, Landroid/app/ApplicationContext;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 1266
    :try_start_3
    iget-object v1, p0, Landroid/app/ApplicationContext;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_12

    .line 1267
    new-instance v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/app/ApplicationContext;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/app/ApplicationContext;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 1269
    :cond_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_16

    .line 1270
    iget-object v0, p0, Landroid/app/ApplicationContext;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0

    .line 1269
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v1
.end method

.method private getVibrator()Landroid/os/Vibrator;
    .registers 3

    .prologue
    .line 1343
    iget-object v0, p0, Landroid/app/ApplicationContext;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 1344
    :try_start_3
    iget-object v1, p0, Landroid/app/ApplicationContext;->mVibrator:Landroid/os/Vibrator;

    if-nez v1, :cond_e

    .line 1345
    new-instance v1, Landroid/os/Vibrator;

    invoke-direct {v1}, Landroid/os/Vibrator;-><init>()V

    iput-object v1, p0, Landroid/app/ApplicationContext;->mVibrator:Landroid/os/Vibrator;

    .line 1347
    :cond_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    .line 1348
    iget-object v0, p0, Landroid/app/ApplicationContext;->mVibrator:Landroid/os/Vibrator;

    return-object v0

    .line 1347
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private getWallpaperService()Landroid/app/IWallpaperService;
    .registers 4

    .prologue
    .line 1352
    sget-object v1, Landroid/app/ApplicationContext;->sSync:Ljava/lang/Object;

    monitor-enter v1

    .line 1353
    :try_start_3
    sget-object v2, Landroid/app/ApplicationContext;->sWallpaperService:Landroid/app/IWallpaperService;

    if-nez v2, :cond_13

    .line 1354
    const-string v2, "wallpaper"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1355
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/IWallpaperService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperService;

    move-result-object v2

    sput-object v2, Landroid/app/ApplicationContext;->sWallpaperService:Landroid/app/IWallpaperService;

    .line 1357
    .end local v0           #b:Landroid/os/IBinder;
    :cond_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_17

    .line 1358
    sget-object v1, Landroid/app/ApplicationContext;->sWallpaperService:Landroid/app/IWallpaperService;

    return-object v1

    .line 1357
    :catchall_17
    move-exception v2

    :try_start_18
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v2
.end method

.method private getWifiManager()Landroid/net/wifi/WifiManager;
    .registers 6

    .prologue
    .line 1242
    sget-object v2, Landroid/app/ApplicationContext;->sSync:Ljava/lang/Object;

    monitor-enter v2

    .line 1243
    :try_start_3
    sget-object v3, Landroid/app/ApplicationContext;->sWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v3, :cond_1e

    .line 1244
    const-string v3, "wifi"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1245
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v1

    .line 1246
    .local v1, service:Landroid/net/wifi/IWifiManager;
    new-instance v3, Landroid/net/wifi/WifiManager;

    iget-object v4, p0, Landroid/app/ApplicationContext;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v4}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Landroid/net/wifi/WifiManager;-><init>(Landroid/net/wifi/IWifiManager;Landroid/os/Handler;)V

    sput-object v3, Landroid/app/ApplicationContext;->sWifiManager:Landroid/net/wifi/WifiManager;

    .line 1248
    .end local v0           #b:Landroid/os/IBinder;
    .end local v1           #service:Landroid/net/wifi/IWifiManager;
    :cond_1e
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_22

    .line 1249
    sget-object v2, Landroid/app/ApplicationContext;->sWifiManager:Landroid/net/wifi/WifiManager;

    return-object v2

    .line 1248
    :catchall_22
    move-exception v3

    :try_start_23
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v3
.end method

.method private static makeBackupFile(Ljava/io/File;)Ljava/io/File;
    .registers 4
    .parameter "prefsFile"

    .prologue
    .line 348
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".bak"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 6
    .parameter "base"
    .parameter "name"

    .prologue
    .line 1753
    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_e

    .line 1754
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    .line 1756
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " contains a path separator"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private registerReceiverInternal(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;Landroid/content/Context;)Landroid/content/Intent;
    .registers 15
    .parameter "receiver"
    .parameter "filter"
    .parameter "broadcastPermission"
    .parameter "scheduler"
    .parameter "context"

    .prologue
    const/4 v8, 0x0

    .line 1003
    const/4 v7, 0x0

    .line 1004
    .local v7, rd:Landroid/content/IIntentReceiver;
    if-eqz p1, :cond_22

    .line 1005
    iget-object v0, p0, Landroid/app/ApplicationContext;->mPackageInfo:Landroid/app/ActivityThread$PackageInfo;

    if-eqz v0, :cond_31

    if-eqz p5, :cond_31

    .line 1006
    if-nez p4, :cond_12

    .line 1007
    iget-object v0, p0, Landroid/app/ApplicationContext;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object p4

    .line 1009
    :cond_12
    iget-object v0, p0, Landroid/app/ApplicationContext;->mPackageInfo:Landroid/app/ActivityThread$PackageInfo;

    iget-object v1, p0, Landroid/app/ApplicationContext;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v4

    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p5

    move-object v3, p4

    invoke-virtual/range {v0 .. v5}, Landroid/app/ActivityThread$PackageInfo;->getReceiverDispatcher(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)Landroid/content/IIntentReceiver;

    move-result-object v7

    .line 1021
    :cond_22
    :goto_22
    :try_start_22
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ApplicationContext;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    invoke-interface {v0, v1, v7, p2, p3}, Landroid/app/IActivityManager;->registerReceiver(Landroid/app/IApplicationThread;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_2f} :catch_48

    move-result-object v0

    .line 1025
    :goto_30
    return-object v0

    .line 1013
    :cond_31
    if-nez p4, :cond_39

    .line 1014
    iget-object v0, p0, Landroid/app/ApplicationContext;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object p4

    .line 1016
    :cond_39
    new-instance v0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p5

    move-object v3, p4

    move-object v4, v8

    invoke-direct/range {v0 .. v5}, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;-><init>(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)V

    invoke-virtual {v0}, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;->getIIntentReceiver()Landroid/content/IIntentReceiver;

    move-result-object v7

    goto :goto_22

    .line 1024
    :catch_48
    move-exception v0

    move-object v6, v0

    .local v6, e:Landroid/os/RemoteException;
    move-object v0, v8

    .line 1025
    goto :goto_30
.end method

.method private static setFilePermissionsFromMode(Ljava/lang/String;II)V
    .registers 6
    .parameter "name"
    .parameter "mode"
    .parameter "extraPermissions"

    .prologue
    const/4 v2, -0x1

    .line 1736
    or-int/lit16 v0, p2, 0x1b0

    .line 1739
    .local v0, perms:I
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_9

    .line 1740
    or-int/lit8 v0, v0, 0x4

    .line 1742
    :cond_9
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_f

    .line 1743
    or-int/lit8 v0, v0, 0x2

    .line 1749
    :cond_f
    invoke-static {p0, v0, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 1750
    return-void
.end method

.method private setWallpaper(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    .registers 6
    .parameter "data"
    .parameter "fos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 832
    const v2, 0x8000

    new-array v1, v2, [B

    .line 834
    .local v1, buffer:[B
    :goto_5
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .local v0, amt:I
    if-lez v0, :cond_10

    .line 835
    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2, v0}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_5

    .line 837
    :cond_10
    return-void
.end method

.method private uriModeFlagToString(I)Ljava/lang/String;
    .registers 5
    .parameter "uriModeFlags"

    .prologue
    .line 1532
    packed-switch p1, :pswitch_data_26

    .line 1541
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown permission mode flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1535
    :pswitch_1c
    const-string v0, "read and write"

    .line 1539
    :goto_1e
    return-object v0

    .line 1537
    :pswitch_1f
    const-string v0, "read"

    goto :goto_1e

    .line 1539
    :pswitch_22
    const-string v0, "write"

    goto :goto_1e

    .line 1532
    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_22
        :pswitch_1c
    .end packed-switch
.end method


# virtual methods
.method public bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .registers 14
    .parameter "service"
    .parameter "conn"
    .parameter "flags"

    .prologue
    const/4 v9, 0x0

    .line 1080
    iget-object v0, p0, Landroid/app/ApplicationContext;->mPackageInfo:Landroid/app/ActivityThread$PackageInfo;

    if-eqz v0, :cond_50

    .line 1081
    iget-object v0, p0, Landroid/app/ApplicationContext;->mPackageInfo:Landroid/app/ActivityThread$PackageInfo;

    invoke-virtual {p0}, Landroid/app/ApplicationContext;->getOuterContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ApplicationContext;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, p2, v1, v2, p3}, Landroid/app/ActivityThread$PackageInfo;->getServiceDispatcher(Landroid/content/ServiceConnection;Landroid/content/Context;Landroid/os/Handler;I)Landroid/app/IServiceConnection;

    move-result-object v5

    .line 1087
    .local v5, sd:Landroid/app/IServiceConnection;
    :try_start_15
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ApplicationContext;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/ApplicationContext;->getActivityToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/ApplicationContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    move-object v3, p1

    move v6, p3

    invoke-interface/range {v0 .. v6}, Landroid/app/IActivityManager;->bindService(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;I)I

    move-result v8

    .line 1091
    .local v8, res:I
    if-gez v8, :cond_58

    .line 1092
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not allowed to bind to service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_4c} :catch_4c

    .line 1096
    .end local v8           #res:I
    :catch_4c
    move-exception v0

    move-object v7, v0

    .local v7, e:Landroid/os/RemoteException;
    move v0, v9

    .line 1097
    .end local v7           #e:Landroid/os/RemoteException;
    :goto_4f
    return v0

    .line 1084
    .end local v5           #sd:Landroid/app/IServiceConnection;
    :cond_50
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported in system context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1095
    .restart local v5       #sd:Landroid/app/IServiceConnection;
    .restart local v8       #res:I
    :cond_58
    if-eqz v8, :cond_5c

    const/4 v0, 0x1

    goto :goto_4f

    :cond_5c
    move v0, v9

    goto :goto_4f
.end method

.method public checkCallingOrSelfPermission(Ljava/lang/String;)I
    .registers 4
    .parameter "permission"

    .prologue
    .line 1405
    if-nez p1, :cond_a

    .line 1406
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "permission is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1409
    :cond_a
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/ApplicationContext;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I
    .registers 5
    .parameter "uri"
    .parameter "modeFlags"

    .prologue
    .line 1501
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/app/ApplicationContext;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v0

    return v0
.end method

.method public checkCallingPermission(Ljava/lang/String;)I
    .registers 5
    .parameter "permission"

    .prologue
    .line 1388
    if-nez p1, :cond_a

    .line 1389
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "permission is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1392
    :cond_a
    invoke-static {}, Landroid/os/Process;->supportsProcesses()Z

    move-result v1

    if-nez v1, :cond_12

    .line 1393
    const/4 v1, 0x0

    .line 1400
    :goto_11
    return v1

    .line 1395
    :cond_12
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1396
    .local v0, pid:I
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_25

    .line 1397
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/ApplicationContext;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    goto :goto_11

    .line 1400
    :cond_25
    const/4 v1, -0x1

    goto :goto_11
.end method

.method public checkCallingUriPermission(Landroid/net/Uri;I)I
    .registers 5
    .parameter "uri"
    .parameter "modeFlags"

    .prologue
    .line 1488
    invoke-static {}, Landroid/os/Process;->supportsProcesses()Z

    move-result v1

    if-nez v1, :cond_8

    .line 1489
    const/4 v1, 0x0

    .line 1496
    :goto_7
    return v1

    .line 1491
    :cond_8
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1492
    .local v0, pid:I
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_1b

    .line 1493
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/app/ApplicationContext;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v1

    goto :goto_7

    .line 1496
    :cond_1b
    const/4 v1, -0x1

    goto :goto_7
.end method

.method public checkPermission(Ljava/lang/String;II)I
    .registers 7
    .parameter "permission"
    .parameter "pid"
    .parameter "uid"

    .prologue
    .line 1371
    if-nez p1, :cond_a

    .line 1372
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "permission is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1375
    :cond_a
    invoke-static {}, Landroid/os/Process;->supportsProcesses()Z

    move-result v1

    if-nez v1, :cond_12

    .line 1376
    const/4 v1, 0x0

    .line 1382
    :goto_11
    return v1

    .line 1379
    :cond_12
    :try_start_12
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroid/app/IActivityManager;->checkPermission(Ljava/lang/String;II)I
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_19} :catch_1b

    move-result v1

    goto :goto_11

    .line 1381
    :catch_1b
    move-exception v1

    move-object v0, v1

    .line 1382
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_11
.end method

.method public checkUriPermission(Landroid/net/Uri;III)I
    .registers 7
    .parameter "uri"
    .parameter "pid"
    .parameter "uid"
    .parameter "modeFlags"

    .prologue
    .line 1475
    invoke-static {}, Landroid/os/Process;->supportsProcesses()Z

    move-result v1

    if-nez v1, :cond_8

    .line 1476
    const/4 v1, 0x0

    .line 1482
    :goto_7
    return v1

    .line 1479
    :cond_8
    :try_start_8
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/app/IActivityManager;->checkUriPermission(Landroid/net/Uri;III)I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_11

    move-result v1

    goto :goto_7

    .line 1481
    :catch_11
    move-exception v1

    move-object v0, v1

    .line 1482
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_7
.end method

.method public checkUriPermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;III)I
    .registers 9
    .parameter "uri"
    .parameter "readPermission"
    .parameter "writePermission"
    .parameter "pid"
    .parameter "uid"
    .parameter "modeFlags"

    .prologue
    const/4 v1, 0x0

    .line 1513
    and-int/lit8 v0, p6, 0x1

    if-eqz v0, :cond_f

    .line 1514
    if-eqz p2, :cond_d

    invoke-virtual {p0, p2, p4, p5}, Landroid/app/ApplicationContext;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_f

    :cond_d
    move v0, v1

    .line 1527
    :goto_e
    return v0

    .line 1520
    :cond_f
    and-int/lit8 v0, p6, 0x2

    if-eqz v0, :cond_1d

    .line 1521
    if-eqz p3, :cond_1b

    invoke-virtual {p0, p3, p4, p5}, Landroid/app/ApplicationContext;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_1d

    :cond_1b
    move v0, v1

    .line 1524
    goto :goto_e

    .line 1527
    :cond_1d
    if-eqz p1, :cond_24

    invoke-virtual {p0, p1, p4, p5, p6}, Landroid/app/ApplicationContext;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v0

    goto :goto_e

    :cond_24
    const/4 v0, -0x1

    goto :goto_e
.end method

.method public clearWallpaper()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 867
    :try_start_0
    invoke-direct {p0}, Landroid/app/ApplicationContext;->getWallpaperService()Landroid/app/IWallpaperService;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IWallpaperService;->setWallpaper()Landroid/os/ParcelFileDescriptor;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_2b

    move-result-object v0

    .line 868
    .local v0, fd:Landroid/os/ParcelFileDescriptor;
    if-eqz v0, :cond_23

    .line 869
    const/4 v1, 0x0

    .line 871
    .local v1, fos:Ljava/io/FileOutputStream;
    :try_start_b
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v2, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_24

    .line 872
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_10
    invoke-virtual {p0}, Landroid/app/ApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080138

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Landroid/app/ApplicationContext;->setWallpaper(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    :try_end_1e
    .catchall {:try_start_10 .. :try_end_1e} :catchall_2d

    .line 876
    if-eqz v2, :cond_23

    .line 877
    :try_start_20
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V

    .line 883
    .end local v0           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v2           #fos:Ljava/io/FileOutputStream;
    :cond_23
    :goto_23
    return-void

    .line 876
    .restart local v0       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :catchall_24
    move-exception v3

    :goto_25
    if-eqz v1, :cond_2a

    .line 877
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V

    :cond_2a
    throw v3
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_2b} :catch_2b

    .line 881
    .end local v0           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v1           #fos:Ljava/io/FileOutputStream;
    :catch_2b
    move-exception v3

    goto :goto_23

    .line 876
    .restart local v0       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catchall_2d
    move-exception v3

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_25
.end method

.method public createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    .registers 8
    .parameter "packageName"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 1599
    const-string v2, "system"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string v2, "android"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1600
    :cond_10
    new-instance v2, Landroid/app/ApplicationContext;

    iget-object v3, p0, Landroid/app/ApplicationContext;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v3}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ApplicationContext;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/ApplicationContext;-><init>(Landroid/app/ApplicationContext;)V

    .line 1610
    :goto_1b
    return-object v2

    .line 1603
    :cond_1c
    iget-object v2, p0, Landroid/app/ApplicationContext;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v2, p1, p2}, Landroid/app/ActivityThread;->getPackageInfo(Ljava/lang/String;I)Landroid/app/ActivityThread$PackageInfo;

    move-result-object v1

    .line 1605
    .local v1, pi:Landroid/app/ActivityThread$PackageInfo;
    if-eqz v1, :cond_41

    .line 1606
    new-instance v0, Landroid/app/ApplicationContext;

    invoke-direct {v0}, Landroid/app/ApplicationContext;-><init>()V

    .line 1607
    .local v0, c:Landroid/app/ApplicationContext;
    and-int/lit8 v2, p2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3f

    const/4 v2, 0x1

    :goto_2f
    iput-boolean v2, v0, Landroid/app/ApplicationContext;->mRestricted:Z

    .line 1608
    const/4 v2, 0x0

    iget-object v3, p0, Landroid/app/ApplicationContext;->mMainThread:Landroid/app/ActivityThread;

    iget-object v4, p0, Landroid/app/ApplicationContext;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ApplicationContext;->init(Landroid/app/ActivityThread$PackageInfo;Landroid/os/IBinder;Landroid/app/ActivityThread;Landroid/content/res/Resources;)V

    .line 1609
    iget-object v2, v0, Landroid/app/ApplicationContext;->mResources:Landroid/content/res/Resources;

    if-eqz v2, :cond_41

    move-object v2, v0

    .line 1610
    goto :goto_1b

    .line 1607
    :cond_3f
    const/4 v2, 0x0

    goto :goto_2f

    .line 1615
    .end local v0           #c:Landroid/app/ApplicationContext;
    :cond_41
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Application package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public databaseList()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 538
    invoke-direct {p0}, Landroid/app/ApplicationContext;->getDatabasesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 539
    .local v0, list:[Ljava/lang/String;
    if-eqz v0, :cond_c

    move-object v1, v0

    :goto_b
    return-object v1

    :cond_c
    sget-object v1, Landroid/app/ApplicationContext;->EMPTY_FILE_LIST:[Ljava/lang/String;

    goto :goto_b
.end method

.method public deleteDatabase(Ljava/lang/String;)Z
    .registers 4
    .parameter "name"

    .prologue
    .line 524
    :try_start_0
    invoke-direct {p0}, Landroid/app/ApplicationContext;->getDatabasesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Landroid/app/ApplicationContext;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 525
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_d

    move-result v1

    .line 528
    .end local v0           #f:Ljava/io/File;
    :goto_c
    return v1

    .line 526
    :catch_d
    move-exception v1

    .line 528
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public deleteFile(Ljava/lang/String;)Z
    .registers 4
    .parameter "name"

    .prologue
    .line 450
    invoke-virtual {p0}, Landroid/app/ApplicationContext;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Landroid/app/ApplicationContext;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 451
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    return v1
.end method

.method public enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "permission"
    .parameter "message"

    .prologue
    .line 1446
    invoke-virtual {p0, p1}, Landroid/app/ApplicationContext;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/app/ApplicationContext;->enforce(Ljava/lang/String;IZILjava/lang/String;)V

    .line 1451
    return-void
.end method

.method public enforceCallingOrSelfUriPermission(Landroid/net/Uri;ILjava/lang/String;)V
    .registers 11
    .parameter "uri"
    .parameter "modeFlags"
    .parameter "message"

    .prologue
    .line 1577
    invoke-virtual {p0, p1, p2}, Landroid/app/ApplicationContext;->checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v0, p0

    move v1, p2

    move-object v5, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/app/ApplicationContext;->enforceForUri(IIZILandroid/net/Uri;Ljava/lang/String;)V

    .line 1581
    return-void
.end method

.method public enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "permission"
    .parameter "message"

    .prologue
    .line 1437
    invoke-virtual {p0, p1}, Landroid/app/ApplicationContext;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/app/ApplicationContext;->enforce(Ljava/lang/String;IZILjava/lang/String;)V

    .line 1442
    return-void
.end method

.method public enforceCallingUriPermission(Landroid/net/Uri;ILjava/lang/String;)V
    .registers 11
    .parameter "uri"
    .parameter "modeFlags"
    .parameter "message"

    .prologue
    .line 1570
    invoke-virtual {p0, p1, p2}, Landroid/app/ApplicationContext;->checkCallingUriPermission(Landroid/net/Uri;I)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v0, p0

    move v1, p2

    move-object v5, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/app/ApplicationContext;->enforceForUri(IIZILandroid/net/Uri;Ljava/lang/String;)V

    .line 1573
    return-void
.end method

.method public enforcePermission(Ljava/lang/String;IILjava/lang/String;)V
    .registers 11
    .parameter "permission"
    .parameter "pid"
    .parameter "uid"
    .parameter "message"

    .prologue
    .line 1429
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/ApplicationContext;->checkPermission(Ljava/lang/String;II)I

    move-result v2

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/app/ApplicationContext;->enforce(Ljava/lang/String;IZILjava/lang/String;)V

    .line 1434
    return-void
.end method

.method public enforceUriPermission(Landroid/net/Uri;IIILjava/lang/String;)V
    .registers 13
    .parameter "uri"
    .parameter "pid"
    .parameter "uid"
    .parameter "modeFlags"
    .parameter "message"

    .prologue
    .line 1563
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/ApplicationContext;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v2

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p4

    move v4, p3

    move-object v5, p1

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/app/ApplicationContext;->enforceForUri(IIZILandroid/net/Uri;Ljava/lang/String;)V

    .line 1566
    return-void
.end method

.method public enforceUriPermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    .registers 15
    .parameter "uri"
    .parameter "readPermission"
    .parameter "writePermission"
    .parameter "pid"
    .parameter "uid"
    .parameter "modeFlags"
    .parameter "message"

    .prologue
    .line 1586
    invoke-virtual/range {p0 .. p6}, Landroid/app/ApplicationContext;->checkUriPermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;III)I

    move-result v2

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p6

    move v4, p5

    move-object v5, p1

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Landroid/app/ApplicationContext;->enforceForUri(IIZILandroid/net/Uri;Ljava/lang/String;)V

    .line 1594
    return-void
.end method

.method public fileList()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 502
    invoke-virtual {p0}, Landroid/app/ApplicationContext;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 503
    .local v0, list:[Ljava/lang/String;
    if-eqz v0, :cond_c

    move-object v1, v0

    :goto_b
    return-object v1

    :cond_c
    sget-object v1, Landroid/app/ApplicationContext;->EMPTY_FILE_LIST:[Ljava/lang/String;

    goto :goto_b
.end method

.method protected finalize()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 244
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 245
    sget-wide v0, Landroid/app/ApplicationContext;->sInstanceCount:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    sput-wide v0, Landroid/app/ApplicationContext;->sInstanceCount:J

    .line 246
    return-void
.end method

.method final getActivityToken()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 1731
    iget-object v0, p0, Landroid/app/ApplicationContext;->mActivityToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 289
    iget-object v0, p0, Landroid/app/ApplicationContext;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .registers 3

    .prologue
    .line 325
    iget-object v0, p0, Landroid/app/ApplicationContext;->mPackageInfo:Landroid/app/ActivityThread$PackageInfo;

    if-eqz v0, :cond_b

    .line 326
    iget-object v0, p0, Landroid/app/ApplicationContext;->mPackageInfo:Landroid/app/ActivityThread$PackageInfo;

    invoke-virtual {v0}, Landroid/app/ActivityThread$PackageInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0

    .line 328
    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported in system context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .registers 2

    .prologue
    .line 254
    iget-object v0, p0, Landroid/app/ApplicationContext;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public getCacheDir()Ljava/io/File;
    .registers 6

    .prologue
    .line 476
    iget-object v0, p0, Landroid/app/ApplicationContext;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 477
    :try_start_3
    iget-object v1, p0, Landroid/app/ApplicationContext;->mCacheDir:Ljava/io/File;

    if-nez v1, :cond_14

    .line 478
    new-instance v1, Ljava/io/File;

    invoke-direct {p0}, Landroid/app/ApplicationContext;->getDataDirFile()Ljava/io/File;

    move-result-object v2

    const-string v3, "cache"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/app/ApplicationContext;->mCacheDir:Ljava/io/File;

    .line 480
    :cond_14
    iget-object v1, p0, Landroid/app/ApplicationContext;->mCacheDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3c

    .line 481
    iget-object v1, p0, Landroid/app/ApplicationContext;->mCacheDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_2f

    .line 482
    const-string v1, "ApplicationContext"

    const-string v2, "Unable to create cache directory"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    const/4 v1, 0x0

    monitor-exit v0

    move-object v0, v1

    .line 491
    :goto_2e
    return-object v0

    .line 485
    :cond_2f
    iget-object v1, p0, Landroid/app/ApplicationContext;->mCacheDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1f9

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-static {v1, v2, v3, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 490
    :cond_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_40

    .line 491
    iget-object v0, p0, Landroid/app/ApplicationContext;->mCacheDir:Ljava/io/File;

    goto :goto_2e

    .line 490
    :catchall_40
    move-exception v1

    :try_start_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw v1
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .registers 2

    .prologue
    .line 311
    iget-object v0, p0, Landroid/app/ApplicationContext;->mPackageInfo:Landroid/app/ActivityThread$PackageInfo;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/app/ApplicationContext;->mPackageInfo:Landroid/app/ActivityThread$PackageInfo;

    invoke-virtual {v0}, Landroid/app/ActivityThread$PackageInfo;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_a
.end method

.method public getContentResolver()Landroid/content/ContentResolver;
    .registers 2

    .prologue
    .line 279
    iget-object v0, p0, Landroid/app/ApplicationContext;->mContentResolver:Landroid/app/ApplicationContext$ApplicationContentResolver;

    return-object v0
.end method

.method public getDatabasePath(Ljava/lang/String;)Ljava/io/File;
    .registers 3
    .parameter "name"

    .prologue
    .line 533
    invoke-direct {p0}, Landroid/app/ApplicationContext;->getDatabasesDir()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/app/ApplicationContext;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getDir(Ljava/lang/String;I)Ljava/io/File;
    .registers 6
    .parameter "name"
    .parameter "mode"

    .prologue
    .line 1633
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "app_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1634
    invoke-direct {p0}, Landroid/app/ApplicationContext;->getDataDirFile()Ljava/io/File;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Landroid/app/ApplicationContext;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1635
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2d

    .line 1636
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 1637
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1f9

    invoke-static {v1, p2, v2}, Landroid/app/ApplicationContext;->setFilePermissionsFromMode(Ljava/lang/String;II)V

    .line 1640
    :cond_2d
    return-object v0
.end method

.method public getFileStreamPath(Ljava/lang/String;)Ljava/io/File;
    .registers 3
    .parameter "name"

    .prologue
    .line 497
    invoke-virtual {p0}, Landroid/app/ApplicationContext;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/app/ApplicationContext;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getFilesDir()Ljava/io/File;
    .registers 6

    .prologue
    .line 456
    iget-object v0, p0, Landroid/app/ApplicationContext;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 457
    :try_start_3
    iget-object v1, p0, Landroid/app/ApplicationContext;->mFilesDir:Ljava/io/File;

    if-nez v1, :cond_14

    .line 458
    new-instance v1, Ljava/io/File;

    invoke-direct {p0}, Landroid/app/ApplicationContext;->getDataDirFile()Ljava/io/File;

    move-result-object v2

    const-string v3, "files"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/app/ApplicationContext;->mFilesDir:Ljava/io/File;

    .line 460
    :cond_14
    iget-object v1, p0, Landroid/app/ApplicationContext;->mFilesDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3c

    .line 461
    iget-object v1, p0, Landroid/app/ApplicationContext;->mFilesDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_2f

    .line 462
    const-string v1, "ApplicationContext"

    const-string v2, "Unable to create files directory"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    const/4 v1, 0x0

    monitor-exit v0

    move-object v0, v1

    .line 470
    :goto_2e
    return-object v0

    .line 465
    :cond_2f
    iget-object v1, p0, Landroid/app/ApplicationContext;->mFilesDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1f9

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-static {v1, v2, v3, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 470
    :cond_3c
    iget-object v1, p0, Landroid/app/ApplicationContext;->mFilesDir:Ljava/io/File;

    monitor-exit v0

    move-object v0, v1

    goto :goto_2e

    .line 471
    :catchall_41
    move-exception v1

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_41

    throw v1
.end method

.method public getMainLooper()Landroid/os/Looper;
    .registers 2

    .prologue
    .line 284
    iget-object v0, p0, Landroid/app/ApplicationContext;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method final getOuterContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 1727
    iget-object v0, p0, Landroid/app/ApplicationContext;->mOuterContext:Landroid/content/Context;

    return-object v0
.end method

.method public getPackageCodePath()Ljava/lang/String;
    .registers 3

    .prologue
    .line 341
    iget-object v0, p0, Landroid/app/ApplicationContext;->mPackageInfo:Landroid/app/ActivityThread$PackageInfo;

    if-eqz v0, :cond_b

    .line 342
    iget-object v0, p0, Landroid/app/ApplicationContext;->mPackageInfo:Landroid/app/ActivityThread$PackageInfo;

    invoke-virtual {v0}, Landroid/app/ActivityThread$PackageInfo;->getAppDir()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 344
    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported in system context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPackageManager()Landroid/content/pm/PackageManager;
    .registers 3

    .prologue
    .line 264
    iget-object v1, p0, Landroid/app/ApplicationContext;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz v1, :cond_7

    .line 265
    iget-object v1, p0, Landroid/app/ApplicationContext;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 274
    :goto_6
    return-object v1

    .line 268
    :cond_7
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 269
    .local v0, pm:Landroid/content/pm/IPackageManager;
    if-eqz v0, :cond_15

    .line 271
    new-instance v1, Landroid/app/ApplicationContext$ApplicationPackageManager;

    invoke-direct {v1, p0, v0}, Landroid/app/ApplicationContext$ApplicationPackageManager;-><init>(Landroid/app/ApplicationContext;Landroid/content/pm/IPackageManager;)V

    iput-object v1, p0, Landroid/app/ApplicationContext;->mPackageManager:Landroid/content/pm/PackageManager;

    goto :goto_6

    .line 274
    :cond_15
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 317
    iget-object v0, p0, Landroid/app/ApplicationContext;->mPackageInfo:Landroid/app/ActivityThread$PackageInfo;

    if-eqz v0, :cond_b

    .line 318
    iget-object v0, p0, Landroid/app/ApplicationContext;->mPackageInfo:Landroid/app/ActivityThread$PackageInfo;

    invoke-virtual {v0}, Landroid/app/ActivityThread$PackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 320
    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported in system context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPackageResourcePath()Ljava/lang/String;
    .registers 3

    .prologue
    .line 333
    iget-object v0, p0, Landroid/app/ApplicationContext;->mPackageInfo:Landroid/app/ActivityThread$PackageInfo;

    if-eqz v0, :cond_b

    .line 334
    iget-object v0, p0, Landroid/app/ApplicationContext;->mPackageInfo:Landroid/app/ActivityThread$PackageInfo;

    invoke-virtual {v0}, Landroid/app/ActivityThread$PackageInfo;->getResDir()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 336
    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported in system context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final getReceiverRestrictedContext()Landroid/content/Context;
    .registers 3

    .prologue
    .line 1712
    iget-object v0, p0, Landroid/app/ApplicationContext;->mReceiverRestrictedContext:Landroid/content/Context;

    if-eqz v0, :cond_7

    .line 1713
    iget-object v0, p0, Landroid/app/ApplicationContext;->mReceiverRestrictedContext:Landroid/content/Context;

    .line 1715
    :goto_6
    return-object v0

    :cond_7
    new-instance v0, Landroid/app/ReceiverRestrictedContext;

    invoke-virtual {p0}, Landroid/app/ApplicationContext;->getOuterContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ReceiverRestrictedContext;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/ApplicationContext;->mReceiverRestrictedContext:Landroid/content/Context;

    goto :goto_6
.end method

.method public getResources()Landroid/content/res/Resources;
    .registers 2

    .prologue
    .line 259
    iget-object v0, p0, Landroid/app/ApplicationContext;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .registers 16
    .parameter "name"
    .parameter "mode"

    .prologue
    const-string v12, "getSharedPreferences"

    const-string v11, "ApplicationContext"

    .line 358
    invoke-virtual {p0, p1}, Landroid/app/ApplicationContext;->getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 359
    .local v3, f:Ljava/io/File;
    sget-object v9, Landroid/app/ApplicationContext;->sSharedPrefs:Ljava/util/HashMap;

    monitor-enter v9

    .line 360
    :try_start_b
    sget-object v10, Landroid/app/ApplicationContext;->sSharedPrefs:Ljava/util/HashMap;

    invoke-virtual {v10, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ApplicationContext$SharedPreferencesImpl;

    .line 361
    .local v5, sp:Landroid/app/ApplicationContext$SharedPreferencesImpl;
    if-eqz v5, :cond_1e

    invoke-virtual {v5}, Landroid/app/ApplicationContext$SharedPreferencesImpl;->hasFileChanged()Z

    move-result v10

    if-nez v10, :cond_1e

    .line 363
    monitor-exit v9

    move-object v6, v5

    .line 405
    .end local v5           #sp:Landroid/app/ApplicationContext$SharedPreferencesImpl;
    .local v6, sp:Landroid/app/ApplicationContext$SharedPreferencesImpl;
    :goto_1d
    return-object v6

    .line 365
    .end local v6           #sp:Landroid/app/ApplicationContext$SharedPreferencesImpl;
    .restart local v5       #sp:Landroid/app/ApplicationContext$SharedPreferencesImpl;
    :cond_1e
    monitor-exit v9
    :try_end_1f
    .catchall {:try_start_b .. :try_end_1f} :catchall_7f

    .line 367
    const/4 v7, 0x0

    .line 368
    .local v7, str:Ljava/io/FileInputStream;
    invoke-static {v3}, Landroid/app/ApplicationContext;->makeBackupFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 369
    .local v1, backup:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_30

    .line 370
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 371
    invoke-virtual {v1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 375
    :cond_30
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_5a

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v9

    if-nez v9, :cond_5a

    .line 376
    const-string v9, "ApplicationContext"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Attempt to read preferences file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " without permission"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_5a
    const/4 v4, 0x0

    .line 380
    .local v4, map:Ljava/util/Map;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_74

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v9

    if-eqz v9, :cond_74

    .line 382
    :try_start_67
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_6c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_67 .. :try_end_6c} :catch_82
    .catch Ljava/io/FileNotFoundException; {:try_start_67 .. :try_end_6c} :catch_8c
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6c} :catch_96

    .line 383
    .end local v7           #str:Ljava/io/FileInputStream;
    .local v8, str:Ljava/io/FileInputStream;
    :try_start_6c
    invoke-static {v8}, Lcom/android/internal/util/XmlUtils;->readMapXml(Ljava/io/InputStream;)Ljava/util/HashMap;

    move-result-object v4

    .line 384
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_73
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6c .. :try_end_73} :catch_c6
    .catch Ljava/io/FileNotFoundException; {:try_start_6c .. :try_end_73} :catch_c2
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_73} :catch_be

    move-object v7, v8

    .line 394
    .end local v8           #str:Ljava/io/FileInputStream;
    .restart local v7       #str:Ljava/io/FileInputStream;
    :cond_74
    :goto_74
    sget-object v10, Landroid/app/ApplicationContext;->sSharedPrefs:Ljava/util/HashMap;

    monitor-enter v10

    .line 395
    if-eqz v5, :cond_a0

    .line 397
    :try_start_79
    invoke-virtual {v5, v4}, Landroid/app/ApplicationContext$SharedPreferencesImpl;->replace(Ljava/util/Map;)V

    .line 405
    :cond_7c
    :goto_7c
    monitor-exit v10
    :try_end_7d
    .catchall {:try_start_79 .. :try_end_7d} :catchall_b8

    move-object v6, v5

    .end local v5           #sp:Landroid/app/ApplicationContext$SharedPreferencesImpl;
    .restart local v6       #sp:Landroid/app/ApplicationContext$SharedPreferencesImpl;
    goto :goto_1d

    .line 365
    .end local v1           #backup:Ljava/io/File;
    .end local v4           #map:Ljava/util/Map;
    .end local v6           #sp:Landroid/app/ApplicationContext$SharedPreferencesImpl;
    .end local v7           #str:Ljava/io/FileInputStream;
    :catchall_7f
    move-exception v10

    :try_start_80
    monitor-exit v9
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_7f

    throw v10

    .line 385
    .restart local v1       #backup:Ljava/io/File;
    .restart local v4       #map:Ljava/util/Map;
    .restart local v5       #sp:Landroid/app/ApplicationContext$SharedPreferencesImpl;
    .restart local v7       #str:Ljava/io/FileInputStream;
    :catch_82
    move-exception v9

    move-object v2, v9

    .line 386
    .local v2, e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_84
    const-string v9, "ApplicationContext"

    const-string v9, "getSharedPreferences"

    invoke-static {v11, v12, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_74

    .line 387
    .end local v2           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_8c
    move-exception v9

    move-object v2, v9

    .line 388
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_8e
    const-string v9, "ApplicationContext"

    const-string v9, "getSharedPreferences"

    invoke-static {v11, v12, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_74

    .line 389
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_96
    move-exception v9

    move-object v2, v9

    .line 390
    .local v2, e:Ljava/io/IOException;
    :goto_98
    const-string v9, "ApplicationContext"

    const-string v9, "getSharedPreferences"

    invoke-static {v11, v12, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_74

    .line 399
    .end local v2           #e:Ljava/io/IOException;
    :cond_a0
    :try_start_a0
    sget-object v9, Landroid/app/ApplicationContext;->sSharedPrefs:Ljava/util/HashMap;

    invoke-virtual {v9, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Landroid/app/ApplicationContext$SharedPreferencesImpl;

    move-object v5, v0

    .line 400
    if-nez v5, :cond_7c

    .line 401
    new-instance v6, Landroid/app/ApplicationContext$SharedPreferencesImpl;

    invoke-direct {v6, v3, p2, v4}, Landroid/app/ApplicationContext$SharedPreferencesImpl;-><init>(Ljava/io/File;ILjava/util/Map;)V
    :try_end_b1
    .catchall {:try_start_a0 .. :try_end_b1} :catchall_b8

    .line 402
    .end local v5           #sp:Landroid/app/ApplicationContext$SharedPreferencesImpl;
    .restart local v6       #sp:Landroid/app/ApplicationContext$SharedPreferencesImpl;
    :try_start_b1
    sget-object v9, Landroid/app/ApplicationContext;->sSharedPrefs:Ljava/util/HashMap;

    invoke-virtual {v9, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b6
    .catchall {:try_start_b1 .. :try_end_b6} :catchall_bb

    move-object v5, v6

    .end local v6           #sp:Landroid/app/ApplicationContext$SharedPreferencesImpl;
    .restart local v5       #sp:Landroid/app/ApplicationContext$SharedPreferencesImpl;
    goto :goto_7c

    .line 406
    :catchall_b8
    move-exception v9

    :goto_b9
    :try_start_b9
    monitor-exit v10
    :try_end_ba
    .catchall {:try_start_b9 .. :try_end_ba} :catchall_b8

    throw v9

    .end local v5           #sp:Landroid/app/ApplicationContext$SharedPreferencesImpl;
    .restart local v6       #sp:Landroid/app/ApplicationContext$SharedPreferencesImpl;
    :catchall_bb
    move-exception v9

    move-object v5, v6

    .end local v6           #sp:Landroid/app/ApplicationContext$SharedPreferencesImpl;
    .restart local v5       #sp:Landroid/app/ApplicationContext$SharedPreferencesImpl;
    goto :goto_b9

    .line 389
    .end local v7           #str:Ljava/io/FileInputStream;
    .restart local v8       #str:Ljava/io/FileInputStream;
    :catch_be
    move-exception v9

    move-object v2, v9

    move-object v7, v8

    .end local v8           #str:Ljava/io/FileInputStream;
    .restart local v7       #str:Ljava/io/FileInputStream;
    goto :goto_98

    .line 387
    .end local v7           #str:Ljava/io/FileInputStream;
    .restart local v8       #str:Ljava/io/FileInputStream;
    :catch_c2
    move-exception v9

    move-object v2, v9

    move-object v7, v8

    .end local v8           #str:Ljava/io/FileInputStream;
    .restart local v7       #str:Ljava/io/FileInputStream;
    goto :goto_8e

    .line 385
    .end local v7           #str:Ljava/io/FileInputStream;
    .restart local v8       #str:Ljava/io/FileInputStream;
    :catch_c6
    move-exception v9

    move-object v2, v9

    move-object v7, v8

    .end local v8           #str:Ljava/io/FileInputStream;
    .restart local v7       #str:Ljava/io/FileInputStream;
    goto :goto_84
.end method

.method public getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;
    .registers 5
    .parameter "name"

    .prologue
    .line 352
    invoke-direct {p0}, Landroid/app/ApplicationContext;->getPreferencesDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/app/ApplicationContext;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .registers 7
    .parameter "name"

    .prologue
    .line 1129
    const-string v2, "window"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1130
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v2

    .line 1193
    :goto_c
    return-object v2

    .line 1131
    :cond_d
    const-string v2, "layout_inflater"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 1132
    iget-object v2, p0, Landroid/app/ApplicationContext;->mSync:Ljava/lang/Object;

    monitor-enter v2

    .line 1133
    :try_start_18
    iget-object v0, p0, Landroid/app/ApplicationContext;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 1134
    .local v0, inflater:Landroid/view/LayoutInflater;
    if-eqz v0, :cond_1f

    .line 1135
    monitor-exit v2

    move-object v2, v0

    goto :goto_c

    .line 1137
    :cond_1f
    invoke-virtual {p0}, Landroid/app/ApplicationContext;->getOuterContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/policy/PolicyManager;->makeNewLayoutInflater(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ApplicationContext;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 1139
    monitor-exit v2

    move-object v2, v0

    goto :goto_c

    .line 1140
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :catchall_2c
    move-exception v3

    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_18 .. :try_end_2e} :catchall_2c

    throw v3

    .line 1141
    :cond_2f
    const-string v2, "activity"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 1142
    invoke-direct {p0}, Landroid/app/ApplicationContext;->getActivityManager()Landroid/app/ActivityManager;

    move-result-object v2

    goto :goto_c

    .line 1143
    :cond_3c
    const-string v2, "alarm"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 1144
    invoke-direct {p0}, Landroid/app/ApplicationContext;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v2

    goto :goto_c

    .line 1145
    :cond_49
    const-string v2, "power"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 1146
    invoke-direct {p0}, Landroid/app/ApplicationContext;->getPowerManager()Landroid/os/PowerManager;

    move-result-object v2

    goto :goto_c

    .line 1147
    :cond_56
    const-string v2, "connectivity"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 1148
    invoke-direct {p0}, Landroid/app/ApplicationContext;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v2

    goto :goto_c

    .line 1149
    :cond_63
    const-string v2, "wifi"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_70

    .line 1150
    invoke-direct {p0}, Landroid/app/ApplicationContext;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v2

    goto :goto_c

    .line 1151
    :cond_70
    const-string v2, "notification"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 1152
    invoke-direct {p0}, Landroid/app/ApplicationContext;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v2

    goto :goto_c

    .line 1153
    :cond_7d
    const-string v2, "keyguard"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 1154
    new-instance v2, Landroid/app/KeyguardManager;

    invoke-direct {v2}, Landroid/app/KeyguardManager;-><init>()V

    goto :goto_c

    .line 1155
    :cond_8b
    const-string v2, "accessibility"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_99

    .line 1156
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    goto/16 :goto_c

    .line 1157
    :cond_99
    const-string v2, "location"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a7

    .line 1158
    invoke-direct {p0}, Landroid/app/ApplicationContext;->getLocationManager()Landroid/location/LocationManager;

    move-result-object v2

    goto/16 :goto_c

    .line 1159
    :cond_a7
    const-string v2, "search"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b5

    .line 1160
    invoke-direct {p0}, Landroid/app/ApplicationContext;->getSearchManager()Landroid/app/SearchManager;

    move-result-object v2

    goto/16 :goto_c

    .line 1161
    :cond_b5
    const-string v2, "sensor"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c3

    .line 1162
    invoke-direct {p0}, Landroid/app/ApplicationContext;->getSensorManager()Landroid/hardware/SensorManager;

    move-result-object v2

    goto/16 :goto_c

    .line 1163
    :cond_c3
    const-string v2, "bluetooth"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d1

    .line 1164
    invoke-direct {p0}, Landroid/app/ApplicationContext;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    goto/16 :goto_c

    .line 1166
    :cond_d1
    const-string v2, "fm_receiver"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_df

    .line 1167
    invoke-direct {p0}, Landroid/app/ApplicationContext;->getFmReceiver()Lcom/broadcom/bt/service/fm/FmReceiver;

    move-result-object v2

    goto/16 :goto_c

    .line 1169
    :cond_df
    const-string v2, "vibrator"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ed

    .line 1170
    invoke-direct {p0}, Landroid/app/ApplicationContext;->getVibrator()Landroid/os/Vibrator;

    move-result-object v2

    goto/16 :goto_c

    .line 1171
    :cond_ed
    const-string v2, "statusbar"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_110

    .line 1172
    iget-object v2, p0, Landroid/app/ApplicationContext;->mSync:Ljava/lang/Object;

    monitor-enter v2

    .line 1173
    :try_start_f8
    iget-object v3, p0, Landroid/app/ApplicationContext;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v3, :cond_107

    .line 1174
    new-instance v3, Landroid/app/StatusBarManager;

    invoke-virtual {p0}, Landroid/app/ApplicationContext;->getOuterContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/StatusBarManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Landroid/app/ApplicationContext;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 1176
    :cond_107
    iget-object v3, p0, Landroid/app/ApplicationContext;->mStatusBarManager:Landroid/app/StatusBarManager;

    monitor-exit v2

    move-object v2, v3

    goto/16 :goto_c

    .line 1177
    :catchall_10d
    move-exception v3

    monitor-exit v2
    :try_end_10f
    .catchall {:try_start_f8 .. :try_end_10f} :catchall_10d

    throw v3

    .line 1178
    :cond_110
    const-string v2, "audio"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11e

    .line 1179
    invoke-direct {p0}, Landroid/app/ApplicationContext;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v2

    goto/16 :goto_c

    .line 1180
    :cond_11e
    const-string v2, "phone"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12c

    .line 1181
    invoke-direct {p0}, Landroid/app/ApplicationContext;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    goto/16 :goto_c

    .line 1182
    :cond_12c
    const-string v2, "clipboard"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13a

    .line 1183
    invoke-direct {p0}, Landroid/app/ApplicationContext;->getClipboardManager()Landroid/text/ClipboardManager;

    move-result-object v2

    goto/16 :goto_c

    .line 1184
    :cond_13a
    const-string v2, "input_method"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_148

    .line 1185
    invoke-static {p0}, Landroid/view/inputmethod/InputMethodManager;->getInstance(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    goto/16 :goto_c

    .line 1187
    :cond_148
    invoke-static {p1}, Lcom/broadcom/bt/service/framework/BluetoothProxyManager;->getSystemProxy(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1188
    .local v1, svc:Ljava/lang/Object;
    if-eqz v1, :cond_151

    move-object v2, v1

    .line 1189
    goto/16 :goto_c

    .line 1193
    :cond_151
    const/4 v2, 0x0

    goto/16 :goto_c
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .registers 4

    .prologue
    .line 299
    iget-object v0, p0, Landroid/app/ApplicationContext;->mTheme:Landroid/content/res/Resources$Theme;

    if-nez v0, :cond_1d

    .line 300
    iget v0, p0, Landroid/app/ApplicationContext;->mThemeResource:I

    if-nez v0, :cond_d

    .line 301
    const v0, 0x1030005

    iput v0, p0, Landroid/app/ApplicationContext;->mThemeResource:I

    .line 303
    :cond_d
    iget-object v0, p0, Landroid/app/ApplicationContext;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ApplicationContext;->mTheme:Landroid/content/res/Resources$Theme;

    .line 304
    iget-object v0, p0, Landroid/app/ApplicationContext;->mTheme:Landroid/content/res/Resources$Theme;

    iget v1, p0, Landroid/app/ApplicationContext;->mThemeResource:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 306
    :cond_1d
    iget-object v0, p0, Landroid/app/ApplicationContext;->mTheme:Landroid/content/res/Resources$Theme;

    return-object v0
.end method

.method public getWallpaper()Landroid/graphics/drawable/Drawable;
    .registers 5

    .prologue
    .line 557
    invoke-virtual {p0}, Landroid/app/ApplicationContext;->peekWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 560
    .local v0, dr:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_8

    move-object v2, v0

    .line 568
    :goto_7
    return-object v2

    .line 563
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Landroid/app/ApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080138

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/app/ApplicationContext;->setWallpaper(Ljava/io/InputStream;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_16} :catch_1b

    .line 568
    :goto_16
    invoke-virtual {p0}, Landroid/app/ApplicationContext;->peekWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_7

    .line 565
    :catch_1b
    move-exception v2

    move-object v1, v2

    .line 566
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "ApplicationContext"

    const-string v3, "Setting wallpaper failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16
.end method

.method public getWallpaperDesiredMinimumHeight()I
    .registers 3

    .prologue
    .line 772
    :try_start_0
    invoke-direct {p0}, Landroid/app/ApplicationContext;->getWallpaperService()Landroid/app/IWallpaperService;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IWallpaperService;->getHeightHint()I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    .line 775
    :goto_8
    return v1

    .line 773
    :catch_9
    move-exception v1

    move-object v0, v1

    .line 775
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public getWallpaperDesiredMinimumWidth()I
    .registers 3

    .prologue
    .line 762
    :try_start_0
    invoke-direct {p0}, Landroid/app/ApplicationContext;->getWallpaperService()Landroid/app/IWallpaperService;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IWallpaperService;->getWidthHint()I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    .line 765
    :goto_8
    return v1

    .line 763
    :catch_9
    move-exception v1

    move-object v0, v1

    .line 765
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
    .registers 6
    .parameter "toPackage"
    .parameter "uri"
    .parameter "modeFlags"

    .prologue
    .line 1456
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ApplicationContext;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/app/IActivityManager;->grantUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 1461
    :goto_d
    return-void

    .line 1459
    :catch_e
    move-exception v0

    goto :goto_d
.end method

.method final init(Landroid/app/ActivityThread$PackageInfo;Landroid/os/IBinder;Landroid/app/ActivityThread;)V
    .registers 5
    .parameter "packageInfo"
    .parameter "activityToken"
    .parameter "mainThread"

    .prologue
    .line 1671
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/ApplicationContext;->init(Landroid/app/ActivityThread$PackageInfo;Landroid/os/IBinder;Landroid/app/ActivityThread;Landroid/content/res/Resources;)V

    .line 1672
    return-void
.end method

.method final init(Landroid/app/ActivityThread$PackageInfo;Landroid/os/IBinder;Landroid/app/ActivityThread;Landroid/content/res/Resources;)V
    .registers 7
    .parameter "packageInfo"
    .parameter "activityToken"
    .parameter "mainThread"
    .parameter "container"

    .prologue
    .line 1677
    iput-object p1, p0, Landroid/app/ApplicationContext;->mPackageInfo:Landroid/app/ActivityThread$PackageInfo;

    .line 1678
    iget-object v0, p0, Landroid/app/ApplicationContext;->mPackageInfo:Landroid/app/ActivityThread$PackageInfo;

    invoke-virtual {v0, p3}, Landroid/app/ActivityThread$PackageInfo;->getResources(Landroid/app/ActivityThread;)Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ApplicationContext;->mResources:Landroid/content/res/Resources;

    .line 1680
    if-eqz p4, :cond_32

    invoke-virtual {p4}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    iget-object v1, p0, Landroid/app/ApplicationContext;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_32

    .line 1686
    iget-object v0, p0, Landroid/app/ApplicationContext;->mPackageInfo:Landroid/app/ActivityThread$PackageInfo;

    invoke-virtual {v0}, Landroid/app/ActivityThread$PackageInfo;->getResDir()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/CompatibilityInfo;->copy()Landroid/content/res/CompatibilityInfo;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/app/ActivityThread;->getTopLevelResources(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ApplicationContext;->mResources:Landroid/content/res/Resources;

    .line 1689
    :cond_32
    iput-object p3, p0, Landroid/app/ApplicationContext;->mMainThread:Landroid/app/ActivityThread;

    .line 1690
    new-instance v0, Landroid/app/ApplicationContext$ApplicationContentResolver;

    invoke-direct {v0, p0, p3}, Landroid/app/ApplicationContext$ApplicationContentResolver;-><init>(Landroid/content/Context;Landroid/app/ActivityThread;)V

    iput-object v0, p0, Landroid/app/ApplicationContext;->mContentResolver:Landroid/app/ApplicationContext$ApplicationContentResolver;

    .line 1692
    invoke-virtual {p0, p2}, Landroid/app/ApplicationContext;->setActivityToken(Landroid/os/IBinder;)V

    .line 1693
    return-void
.end method

.method final init(Landroid/content/res/Resources;Landroid/app/ActivityThread;)V
    .registers 4
    .parameter "resources"
    .parameter "mainThread"

    .prologue
    .line 1696
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ApplicationContext;->mPackageInfo:Landroid/app/ActivityThread$PackageInfo;

    .line 1697
    iput-object p1, p0, Landroid/app/ApplicationContext;->mResources:Landroid/content/res/Resources;

    .line 1698
    iput-object p2, p0, Landroid/app/ApplicationContext;->mMainThread:Landroid/app/ActivityThread;

    .line 1699
    new-instance v0, Landroid/app/ApplicationContext$ApplicationContentResolver;

    invoke-direct {v0, p0, p2}, Landroid/app/ApplicationContext$ApplicationContentResolver;-><init>(Landroid/content/Context;Landroid/app/ActivityThread;)V

    iput-object v0, p0, Landroid/app/ApplicationContext;->mContentResolver:Landroid/app/ApplicationContext$ApplicationContentResolver;

    .line 1700
    return-void
.end method

.method public isRestricted()Z
    .registers 2

    .prologue
    .line 1621
    iget-boolean v0, p0, Landroid/app/ApplicationContext;->mRestricted:Z

    return v0
.end method

.method public openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    .registers 4
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 421
    invoke-virtual {p0}, Landroid/app/ApplicationContext;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Landroid/app/ApplicationContext;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 422
    .local v0, f:Ljava/io/File;
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v1
.end method

.method public openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    .registers 11
    .parameter "name"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 428
    const v4, 0x8000

    and-int/2addr v4, p2

    if-eqz v4, :cond_20

    const/4 v4, 0x1

    move v0, v4

    .line 429
    .local v0, append:Z
    :goto_a
    invoke-virtual {p0}, Landroid/app/ApplicationContext;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-direct {p0, v4, p1}, Landroid/app/ApplicationContext;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 431
    .local v1, f:Ljava/io/File;
    :try_start_12
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 432
    .local v2, fos:Ljava/io/FileOutputStream;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, p2, v5}, Landroid/app/ApplicationContext;->setFilePermissionsFromMode(Ljava/lang/String;II)V
    :try_end_1f
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_1f} :catch_22

    .line 445
    :goto_1f
    return-object v2

    .end local v0           #append:Z
    .end local v1           #f:Ljava/io/File;
    .end local v2           #fos:Ljava/io/FileOutputStream;
    :cond_20
    move v0, v6

    .line 428
    goto :goto_a

    .line 434
    .restart local v0       #append:Z
    .restart local v1       #f:Ljava/io/File;
    :catch_22
    move-exception v4

    .line 437
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 438
    .local v3, parent:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 439
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1f9

    invoke-static {v4, v5, v7, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 443
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 444
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p2, v6}, Landroid/app/ApplicationContext;->setFilePermissionsFromMode(Ljava/lang/String;II)V

    goto :goto_1f
.end method

.method public openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 10
    .parameter "name"
    .parameter "mode"
    .parameter "factory"

    .prologue
    const/4 v5, -0x1

    .line 508
    invoke-direct {p0}, Landroid/app/ApplicationContext;->getDatabasesDir()Ljava/io/File;

    move-result-object v1

    .line 509
    .local v1, dir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_1a

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 510
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1f9

    invoke-static {v3, v4, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 515
    :cond_1a
    invoke-direct {p0, v1, p1}, Landroid/app/ApplicationContext;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 516
    .local v2, f:Ljava/io/File;
    invoke-static {v2, p3}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 517
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, p2, v4}, Landroid/app/ApplicationContext;->setFilePermissionsFromMode(Ljava/lang/String;II)V

    .line 518
    return-object v0
.end method

.method public declared-synchronized peekDefaultWallpaper()Landroid/graphics/drawable/Drawable;
    .registers 5

    .prologue
    .line 593
    monitor-enter p0

    :try_start_1
    new-instance v2, Landroid/app/ApplicationContext$WallpaperCallback;

    invoke-direct {v2, p0}, Landroid/app/ApplicationContext$WallpaperCallback;-><init>(Landroid/app/ApplicationContext;)V

    iput-object v2, p0, Landroid/app/ApplicationContext;->mWallpaperCallback:Landroid/app/IWallpaperServiceCallback;

    .line 594
    invoke-direct {p0}, Landroid/app/ApplicationContext;->getWallpaperService()Landroid/app/IWallpaperService;

    move-result-object v2

    iget-object v3, p0, Landroid/app/ApplicationContext;->mWallpaperCallback:Landroid/app/IWallpaperServiceCallback;

    invoke-interface {v2, v3}, Landroid/app/IWallpaperService;->getDefaultWallpaper(Landroid/app/IWallpaperServiceCallback;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 595
    .local v1, fd:Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_25

    .line 596
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 597
    .local v0, bm:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_25

    .line 598
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_2a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_23} :catch_2d

    .line 605
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v1           #fd:Landroid/os/ParcelFileDescriptor;
    :goto_23
    monitor-exit p0

    return-object v2

    .line 602
    .restart local v1       #fd:Landroid/os/ParcelFileDescriptor;
    :cond_25
    :try_start_25
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_2a
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_28} :catch_2d

    .line 605
    .end local v1           #fd:Landroid/os/ParcelFileDescriptor;
    :goto_28
    const/4 v2, 0x0

    goto :goto_23

    .line 593
    :catchall_2a
    move-exception v2

    monitor-exit p0

    throw v2

    .line 603
    :catch_2d
    move-exception v2

    goto :goto_28
.end method

.method public declared-synchronized peekWallpaper()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 574
    monitor-enter p0

    :try_start_1
    const-string v0, "/data/data/com.android.settings/files/wallpaper.dm"

    invoke-static {v0}, Landroid/lge/lgdrm/DrmManager;->isDRM(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1d

    .line 575
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ApplicationContext;->mWallpaper:Landroid/graphics/drawable/Drawable;

    .line 584
    :cond_c
    new-instance v0, Landroid/app/ApplicationContext$WallpaperCallback;

    invoke-direct {v0, p0}, Landroid/app/ApplicationContext$WallpaperCallback;-><init>(Landroid/app/ApplicationContext;)V

    iput-object v0, p0, Landroid/app/ApplicationContext;->mWallpaperCallback:Landroid/app/IWallpaperServiceCallback;

    .line 585
    invoke-direct {p0}, Landroid/app/ApplicationContext;->getCurrentWallpaperLocked()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ApplicationContext;->mWallpaper:Landroid/graphics/drawable/Drawable;

    .line 586
    iget-object v0, p0, Landroid/app/ApplicationContext;->mWallpaper:Landroid/graphics/drawable/Drawable;
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_24

    :goto_1b
    monitor-exit p0

    return-object v0

    .line 578
    :cond_1d
    :try_start_1d
    iget-object v0, p0, Landroid/app/ApplicationContext;->mWallpaper:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 579
    iget-object v0, p0, Landroid/app/ApplicationContext;->mWallpaper:Landroid/graphics/drawable/Drawable;
    :try_end_23
    .catchall {:try_start_1d .. :try_end_23} :catchall_24

    goto :goto_1b

    .line 574
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final performFinalCleanup(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "who"
    .parameter "what"

    .prologue
    .line 1708
    iget-object v0, p0, Landroid/app/ApplicationContext;->mPackageInfo:Landroid/app/ActivityThread$PackageInfo;

    invoke-virtual {p0}, Landroid/app/ApplicationContext;->getOuterContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/app/ActivityThread$PackageInfo;->removeContextRegistrations(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1709
    return-void
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .registers 4
    .parameter "receiver"
    .parameter "filter"

    .prologue
    const/4 v0, 0x0

    .line 990
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/app/ApplicationContext;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    .registers 11
    .parameter "receiver"
    .parameter "filter"
    .parameter "broadcastPermission"
    .parameter "scheduler"

    .prologue
    .line 996
    invoke-virtual {p0}, Landroid/app/ApplicationContext;->getOuterContext()Landroid/content/Context;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/app/ApplicationContext;->registerReceiverInternal(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public removeStickyBroadcast(Landroid/content/Intent;)V
    .registers 6
    .parameter "intent"

    .prologue
    .line 976
    invoke-virtual {p0}, Landroid/app/ApplicationContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v1

    .line 977
    .local v1, resolvedType:Ljava/lang/String;
    if-eqz v1, :cond_17

    .line 978
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 979
    .end local p1
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-object p1, v0

    .line 982
    .end local v0           #intent:Landroid/content/Intent;
    .restart local p1
    :cond_17
    :try_start_17
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p0, Landroid/app/ApplicationContext;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v3}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Landroid/app/IActivityManager;->unbroadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_24} :catch_25

    .line 986
    :goto_24
    return-void

    .line 984
    :catch_25
    move-exception v2

    goto :goto_24
.end method

.method public revokeUriPermission(Landroid/net/Uri;I)V
    .registers 5
    .parameter "uri"
    .parameter "modeFlags"

    .prologue
    .line 1466
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ApplicationContext;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/app/IActivityManager;->revokeUriPermission(Landroid/app/IApplicationThread;Landroid/net/Uri;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 1471
    :goto_d
    return-void

    .line 1469
    :catch_e
    move-exception v0

    goto :goto_d
.end method

.method final scheduleFinalCleanup(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "who"
    .parameter "what"

    .prologue
    .line 1703
    iget-object v0, p0, Landroid/app/ApplicationContext;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0, p0, p1, p2}, Landroid/app/ActivityThread;->scheduleContextCleanup(Landroid/app/ApplicationContext;Ljava/lang/String;Ljava/lang/String;)V

    .line 1704
    return-void
.end method

.method public sendBroadcast(Landroid/content/Intent;)V
    .registers 13
    .parameter "intent"

    .prologue
    .line 899
    invoke-virtual {p0}, Landroid/app/ApplicationContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .line 901
    .local v3, resolvedType:Ljava/lang/String;
    :try_start_8
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ApplicationContext;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, p1

    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZ)I
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_1d} :catch_1e

    .line 906
    :goto_1d
    return-void

    .line 904
    :catch_1e
    move-exception v0

    goto :goto_1d
.end method

.method public sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    .registers 14
    .parameter "intent"
    .parameter "receiverPermission"

    .prologue
    .line 910
    invoke-virtual {p0}, Landroid/app/ApplicationContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .line 912
    .local v3, resolvedType:Ljava/lang/String;
    :try_start_8
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ApplicationContext;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, p1

    move-object v8, p2

    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZ)I
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_1d} :catch_1e

    .line 917
    :goto_1d
    return-void

    .line 915
    :catch_1e
    move-exception v0

    goto :goto_1d
.end method

.method public sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    .registers 14
    .parameter "intent"
    .parameter "receiverPermission"

    .prologue
    .line 922
    invoke-virtual {p0}, Landroid/app/ApplicationContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .line 924
    .local v3, resolvedType:Ljava/lang/String;
    :try_start_8
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ApplicationContext;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v2, p1

    move-object v8, p2

    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZ)I
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_1d} :catch_1e

    .line 929
    :goto_1d
    return-void

    .line 927
    :catch_1e
    move-exception v0

    goto :goto_1d
.end method

.method public sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 19
    .parameter "intent"
    .parameter "receiverPermission"
    .parameter "resultReceiver"
    .parameter "scheduler"
    .parameter "initialCode"
    .parameter "initialData"
    .parameter "initialExtras"

    .prologue
    .line 936
    const/4 v4, 0x0

    .line 937
    .local v4, rd:Landroid/content/IIntentReceiver;
    if-eqz p3, :cond_22

    .line 938
    iget-object v0, p0, Landroid/app/ApplicationContext;->mPackageInfo:Landroid/app/ActivityThread$PackageInfo;

    if-eqz v0, :cond_42

    .line 939
    if-nez p4, :cond_f

    .line 940
    iget-object v0, p0, Landroid/app/ApplicationContext;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object p4

    .line 942
    :cond_f
    iget-object v0, p0, Landroid/app/ApplicationContext;->mPackageInfo:Landroid/app/ActivityThread$PackageInfo;

    invoke-virtual {p0}, Landroid/app/ApplicationContext;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Landroid/app/ApplicationContext;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v4

    .end local v4           #rd:Landroid/content/IIntentReceiver;
    const/4 v5, 0x0

    move-object v1, p3

    move-object v3, p4

    invoke-virtual/range {v0 .. v5}, Landroid/app/ActivityThread$PackageInfo;->getReceiverDispatcher(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)Landroid/content/IIntentReceiver;

    move-result-object v4

    .line 953
    .restart local v4       #rd:Landroid/content/IIntentReceiver;
    :cond_22
    :goto_22
    invoke-virtual {p0}, Landroid/app/ApplicationContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .line 955
    .local v3, resolvedType:Ljava/lang/String;
    :try_start_2a
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ApplicationContext;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v2, p1

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object v8, p2

    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZ)I
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_41} :catch_5c

    .line 961
    :goto_41
    return-void

    .line 946
    .end local v3           #resolvedType:Ljava/lang/String;
    :cond_42
    if-nez p4, :cond_4a

    .line 947
    iget-object v0, p0, Landroid/app/ApplicationContext;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object p4

    .line 949
    :cond_4a
    new-instance v0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;

    invoke-virtual {p0}, Landroid/app/ApplicationContext;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;-><init>(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)V

    .end local v4           #rd:Landroid/content/IIntentReceiver;
    invoke-virtual {v0}, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;->getIIntentReceiver()Landroid/content/IIntentReceiver;

    move-result-object v4

    .restart local v4       #rd:Landroid/content/IIntentReceiver;
    goto :goto_22

    .line 959
    .restart local v3       #resolvedType:Ljava/lang/String;
    :catch_5c
    move-exception v0

    goto :goto_41
.end method

.method public sendStickyBroadcast(Landroid/content/Intent;)V
    .registers 13
    .parameter "intent"

    .prologue
    .line 965
    invoke-virtual {p0}, Landroid/app/ApplicationContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .line 967
    .local v3, resolvedType:Ljava/lang/String;
    :try_start_8
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ApplicationContext;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v2, p1

    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZ)I
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_1d} :catch_1e

    .line 972
    :goto_1d
    return-void

    .line 970
    :catch_1e
    move-exception v0

    goto :goto_1d
.end method

.method final setActivityToken(Landroid/os/IBinder;)V
    .registers 2
    .parameter "token"

    .prologue
    .line 1719
    iput-object p1, p0, Landroid/app/ApplicationContext;->mActivityToken:Landroid/os/IBinder;

    .line 1720
    return-void
.end method

.method public setDefaultWallpaper(Landroid/graphics/Bitmap;)V
    .registers 7
    .parameter "bitmap"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 611
    :try_start_0
    invoke-direct {p0}, Landroid/app/ApplicationContext;->getWallpaperService()Landroid/app/IWallpaperService;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IWallpaperService;->setDefaultWallpaper()Landroid/os/ParcelFileDescriptor;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_1e

    move-result-object v0

    .line 612
    .local v0, fd:Landroid/os/ParcelFileDescriptor;
    if-nez v0, :cond_b

    .line 626
    .end local v0           #fd:Landroid/os/ParcelFileDescriptor;
    :cond_a
    :goto_a
    return-void

    .line 615
    .restart local v0       #fd:Landroid/os/ParcelFileDescriptor;
    :cond_b
    const/4 v1, 0x0

    .line 617
    .local v1, fos:Ljava/io/FileOutputStream;
    :try_start_c
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v2, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_20

    .line 618
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_11
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x5a

    invoke-virtual {p1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_27

    .line 620
    if-eqz v2, :cond_a

    .line 621
    :try_start_1a
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V

    goto :goto_a

    .line 624
    .end local v0           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v2           #fos:Ljava/io/FileOutputStream;
    :catch_1e
    move-exception v3

    goto :goto_a

    .line 620
    .restart local v0       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :catchall_20
    move-exception v3

    :goto_21
    if-eqz v1, :cond_26

    .line 621
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V

    :cond_26
    throw v3
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_27} :catch_1e

    .line 620
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catchall_27
    move-exception v3

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_21
.end method

.method public setDefaultWallpaper(Ljava/io/InputStream;)V
    .registers 6
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 631
    :try_start_0
    invoke-direct {p0}, Landroid/app/ApplicationContext;->getWallpaperService()Landroid/app/IWallpaperService;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IWallpaperService;->setDefaultWallpaper()Landroid/os/ParcelFileDescriptor;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_1a

    move-result-object v0

    .line 632
    .local v0, fd:Landroid/os/ParcelFileDescriptor;
    if-nez v0, :cond_b

    .line 646
    .end local v0           #fd:Landroid/os/ParcelFileDescriptor;
    :cond_a
    :goto_a
    return-void

    .line 635
    .restart local v0       #fd:Landroid/os/ParcelFileDescriptor;
    :cond_b
    const/4 v1, 0x0

    .line 637
    .local v1, fos:Ljava/io/FileOutputStream;
    :try_start_c
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v2, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_1c

    .line 638
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_11
    invoke-direct {p0, p1, v2}, Landroid/app/ApplicationContext;->setWallpaper(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_23

    .line 640
    if-eqz v2, :cond_a

    .line 641
    :try_start_16
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V

    goto :goto_a

    .line 644
    .end local v0           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v2           #fos:Ljava/io/FileOutputStream;
    :catch_1a
    move-exception v3

    goto :goto_a

    .line 640
    .restart local v0       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :catchall_1c
    move-exception v3

    :goto_1d
    if-eqz v1, :cond_22

    .line 641
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V

    :cond_22
    throw v3
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_23} :catch_1a

    .line 640
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catchall_23
    move-exception v3

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_1d
.end method

.method final setOuterContext(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 1723
    iput-object p1, p0, Landroid/app/ApplicationContext;->mOuterContext:Landroid/content/Context;

    .line 1724
    return-void
.end method

.method public setTheme(I)V
    .registers 2
    .parameter "resid"

    .prologue
    .line 294
    iput p1, p0, Landroid/app/ApplicationContext;->mThemeResource:I

    .line 295
    return-void
.end method

.method public setWallpaper(Landroid/graphics/Bitmap;)V
    .registers 7
    .parameter "bitmap"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 782
    :try_start_0
    invoke-direct {p0}, Landroid/app/ApplicationContext;->getWallpaperService()Landroid/app/IWallpaperService;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IWallpaperService;->setWallpaper()Landroid/os/ParcelFileDescriptor;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_20

    move-result-object v0

    .line 783
    .local v0, fd:Landroid/os/ParcelFileDescriptor;
    if-nez v0, :cond_b

    .line 801
    .end local v0           #fd:Landroid/os/ParcelFileDescriptor;
    :cond_a
    :goto_a
    return-void

    .line 786
    .restart local v0       #fd:Landroid/os/ParcelFileDescriptor;
    :cond_b
    const/4 v1, 0x0

    .line 788
    .local v1, fos:Ljava/io/FileOutputStream;
    :try_start_c
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v2, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_22

    .line 790
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .local v2, fos:Ljava/io/FileOutputStream;
    if-eqz v2, :cond_13

    .line 793
    :cond_13
    :try_start_13
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x5a

    invoke-virtual {p1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_29

    .line 795
    if-eqz v2, :cond_a

    .line 796
    :try_start_1c
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V

    goto :goto_a

    .line 799
    .end local v0           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v2           #fos:Ljava/io/FileOutputStream;
    :catch_20
    move-exception v3

    goto :goto_a

    .line 795
    .restart local v0       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :catchall_22
    move-exception v3

    :goto_23
    if-eqz v1, :cond_28

    .line 796
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V

    :cond_28
    throw v3
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_29} :catch_20

    .line 795
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catchall_29
    move-exception v3

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_23
.end method

.method public setWallpaper(Ljava/io/InputStream;)V
    .registers 6
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 806
    :try_start_0
    invoke-direct {p0}, Landroid/app/ApplicationContext;->getWallpaperService()Landroid/app/IWallpaperService;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IWallpaperService;->setWallpaper()Landroid/os/ParcelFileDescriptor;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_1c

    move-result-object v0

    .line 807
    .local v0, fd:Landroid/os/ParcelFileDescriptor;
    if-nez v0, :cond_b

    .line 825
    .end local v0           #fd:Landroid/os/ParcelFileDescriptor;
    :cond_a
    :goto_a
    return-void

    .line 810
    .restart local v0       #fd:Landroid/os/ParcelFileDescriptor;
    :cond_b
    const/4 v1, 0x0

    .line 812
    .local v1, fos:Ljava/io/FileOutputStream;
    :try_start_c
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v2, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_1e

    .line 814
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .local v2, fos:Ljava/io/FileOutputStream;
    if-eqz v2, :cond_13

    .line 817
    :cond_13
    :try_start_13
    invoke-direct {p0, p1, v2}, Landroid/app/ApplicationContext;->setWallpaper(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_25

    .line 819
    if-eqz v2, :cond_a

    .line 820
    :try_start_18
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V

    goto :goto_a

    .line 823
    .end local v0           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v2           #fos:Ljava/io/FileOutputStream;
    :catch_1c
    move-exception v3

    goto :goto_a

    .line 819
    .restart local v0       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :catchall_1e
    move-exception v3

    :goto_1f
    if-eqz v1, :cond_24

    .line 820
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V

    :cond_24
    throw v3
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_25} :catch_1c

    .line 819
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catchall_25
    move-exception v3

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_1f
.end method

.method public setWallpaper(Ljava/lang/String;)V
    .registers 7
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 842
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 843
    .local v2, sourceFile:Ljava/io/File;
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 845
    .local v1, is:Ljava/io/InputStream;
    if-eqz v1, :cond_12

    .line 848
    :try_start_c
    invoke-virtual {p0, v1}, Landroid/app/ApplicationContext;->setWallpaper(Ljava/io/InputStream;)V

    .line 850
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_12} :catch_13

    .line 859
    :cond_12
    :goto_12
    return-void

    .line 851
    :catch_13
    move-exception v3

    move-object v0, v3

    .line 852
    .local v0, e:Ljava/io/IOException;
    const-string v3, "ViewImage"

    const-string v4, "Could not close stream"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12
.end method

.method public startActivity(Landroid/content/Intent;)V
    .registers 9
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 887
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x1000

    and-int/2addr v0, v1

    if-nez v0, :cond_12

    .line 888
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Calling startActivity() from outside of an Activity  context requires the FLAG_ACTIVITY_NEW_TASK flag. Is this really what you want?"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 893
    :cond_12
    iget-object v0, p0, Landroid/app/ApplicationContext;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/ApplicationContext;->getOuterContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ApplicationContext;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    const/4 v6, -0x1

    move-object v4, v3

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;I)Landroid/app/Instrumentation$ActivityResult;

    .line 895
    return-void
.end method

.method public startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 11
    .parameter "className"
    .parameter "profileFile"
    .parameter "arguments"

    .prologue
    const/4 v6, 0x0

    .line 1119
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;)Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_d} :catch_f

    move-result v0

    .line 1124
    :goto_e
    return v0

    .line 1121
    :catch_f
    move-exception v0

    move v0, v6

    .line 1124
    goto :goto_e
.end method

.method public startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    .registers 7
    .parameter "service"

    .prologue
    .line 1046
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p0, Landroid/app/ApplicationContext;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v3}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/ApplicationContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, p1, v4}, Landroid/app/IActivityManager;->startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 1049
    .local v0, cn:Landroid/content/ComponentName;
    if-eqz v0, :cond_4f

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 1050
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not allowed to start service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " without permission "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_4b} :catch_4b

    .line 1055
    .end local v0           #cn:Landroid/content/ComponentName;
    :catch_4b
    move-exception v2

    move-object v1, v2

    .line 1056
    .local v1, e:Landroid/os/RemoteException;
    const/4 v2, 0x0

    .end local v1           #e:Landroid/os/RemoteException;
    :goto_4e
    return-object v2

    .restart local v0       #cn:Landroid/content/ComponentName;
    :cond_4f
    move-object v2, v0

    .line 1054
    goto :goto_4e
.end method

.method public stopService(Landroid/content/Intent;)Z
    .registers 8
    .parameter "service"

    .prologue
    const/4 v5, 0x0

    .line 1063
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p0, Landroid/app/ApplicationContext;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v3}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/ApplicationContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, p1, v4}, Landroid/app/IActivityManager;->stopService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;)I

    move-result v1

    .line 1066
    .local v1, res:I
    if-gez v1, :cond_36

    .line 1067
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not allowed to stop service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_32} :catch_32

    .line 1071
    .end local v1           #res:I
    :catch_32
    move-exception v2

    move-object v0, v2

    .local v0, e:Landroid/os/RemoteException;
    move v2, v5

    .line 1072
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_35
    return v2

    .line 1070
    .restart local v1       #res:I
    :cond_36
    if-eqz v1, :cond_3a

    const/4 v2, 0x1

    goto :goto_35

    :cond_3a
    move v2, v5

    goto :goto_35
.end method

.method public unbindService(Landroid/content/ServiceConnection;)V
    .registers 5
    .parameter "conn"

    .prologue
    .line 1103
    iget-object v1, p0, Landroid/app/ApplicationContext;->mPackageInfo:Landroid/app/ActivityThread$PackageInfo;

    if-eqz v1, :cond_16

    .line 1104
    iget-object v1, p0, Landroid/app/ApplicationContext;->mPackageInfo:Landroid/app/ActivityThread$PackageInfo;

    invoke-virtual {p0}, Landroid/app/ApplicationContext;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/app/ActivityThread$PackageInfo;->forgetServiceDispatcher(Landroid/content/Context;Landroid/content/ServiceConnection;)Landroid/app/IServiceConnection;

    move-result-object v0

    .line 1107
    .local v0, sd:Landroid/app/IServiceConnection;
    :try_start_e
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->unbindService(Landroid/app/IServiceConnection;)Z
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_15} :catch_1e

    .line 1113
    :goto_15
    return-void

    .line 1111
    .end local v0           #sd:Landroid/app/IServiceConnection;
    :cond_16
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Not supported in system context"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1108
    .restart local v0       #sd:Landroid/app/IServiceConnection;
    :catch_1e
    move-exception v1

    goto :goto_15
.end method

.method public unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .registers 5
    .parameter "receiver"

    .prologue
    .line 1031
    iget-object v1, p0, Landroid/app/ApplicationContext;->mPackageInfo:Landroid/app/ActivityThread$PackageInfo;

    if-eqz v1, :cond_16

    .line 1032
    iget-object v1, p0, Landroid/app/ApplicationContext;->mPackageInfo:Landroid/app/ActivityThread$PackageInfo;

    invoke-virtual {p0}, Landroid/app/ApplicationContext;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/app/ActivityThread$PackageInfo;->forgetReceiverDispatcher(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Landroid/content/IIntentReceiver;

    move-result-object v0

    .line 1035
    .local v0, rd:Landroid/content/IIntentReceiver;
    :try_start_e
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->unregisterReceiver(Landroid/content/IIntentReceiver;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_15} :catch_1e

    .line 1041
    :goto_15
    return-void

    .line 1039
    .end local v0           #rd:Landroid/content/IIntentReceiver;
    :cond_16
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Not supported in system context"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1036
    .restart local v0       #rd:Landroid/content/IIntentReceiver;
    :catch_1e
    move-exception v1

    goto :goto_15
.end method
