.class Lcom/android/server/PowerManagerService;
.super Landroid/os/IPowerManager$Stub;
.source "PowerManagerService.java"

# interfaces
.implements Landroid/os/LocalPowerManager;
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/PowerManagerService$LockList;,
        Lcom/android/server/PowerManagerService$GservicesChangedReceiver;,
        Lcom/android/server/PowerManagerService$LightAnimator;,
        Lcom/android/server/PowerManagerService$BrightnessState;,
        Lcom/android/server/PowerManagerService$TimeoutTask;,
        Lcom/android/server/PowerManagerService$PokeLock;,
        Lcom/android/server/PowerManagerService$WakeLock;,
        Lcom/android/server/PowerManagerService$SettingsObserver;,
        Lcom/android/server/PowerManagerService$BatteryReceiver;,
        Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;
    }
.end annotation


# static fields
.field private static final ALL_BRIGHT:I = 0xf

.field static final ANIMATE_BUTTON_LIGHTS:Z = false

.field static final ANIMATE_KEYBOARD_LIGHTS:Z = false

.field static final ANIMATE_SCREEN_LIGHTS:Z = true

.field static final ANIM_STEPS:I = 0xf

.field private static final BATTERY_LOW_BIT:I = 0x10

.field private static final BUTTON_BRIGHT_BIT:I = 0x4

.field static final INITIAL_BUTTON_BRIGHTNESS:I = 0x0

.field static final INITIAL_KEYBOARD_BRIGHTNESS:I = 0x0

.field static final INITIAL_SCREEN_BRIGHTNESS:I = 0xff

.field private static final KEYBOARD_BRIGHT_BIT:I = 0x8

.field private static final LIGHTS_MASK:I = 0x10e

.field private static final LIGHTS_VIRTUAL_MASK:I = 0x100

.field private static final LOCK_MASK:I = 0x1f

.field private static final LOG_PARTIAL_WL:Z = false

.field static final LOG_POWER_PARTIAL_WAKE_STATE:I = 0xaa9

.field static final LOG_POWER_SCREEN_BROADCAST_DONE:I = 0xaa6

.field static final LOG_POWER_SCREEN_BROADCAST_SEND:I = 0xaa5

.field static final LOG_POWER_SCREEN_BROADCAST_STOP:I = 0xaa7

.field static final LOG_POWER_SCREEN_STATE:I = 0xaa8

.field static final LOG_POWER_SLEEP_REQUESTED:I = 0xaa4

.field private static final LOG_TOUCH_DOWNS:Z = true

.field private static final LONG_DIM_TIME:I = 0x1b58

.field private static final LONG_KEYLIGHT_DELAY:I = 0xbb8

.field private static final MEDIUM_KEYLIGHT_DELAY:I = 0x3a98

.field static final PARTIAL_NAME:Ljava/lang/String; = "PowerManagerService"

.field private static final SCREEN_BRIGHT:I = 0x3

.field private static final SCREEN_BRIGHT_BIT:I = 0x2

.field private static final SCREEN_BUTTON_BRIGHT:I = 0x7

.field private static final SCREEN_DIM:I = 0x1

.field private static final SCREEN_GO_REAL_SLEEP_VIRTUAL_BIT:I = 0x200

.field private static final SCREEN_GO_USERACT_VIRTUAL_BIT:I = 0x400

.field private static final SCREEN_OFF:I = 0x0

.field private static final SCREEN_OFF_BIT:I = 0x0

.field private static final SCREEN_OFF_VIRTUAL_BIT:I = 0x100

.field private static final SCREEN_ON_BIT:I = 0x1

.field private static final SHORT_KEYLIGHT_DELAY_DEFAULT:I = 0x1770

.field private static final TAG:Ljava/lang/String; = "PowerManagerService"

.field private static VirtualCount:I = 0x0

.field private static final mSpew:Z = true


# instance fields
.field private ALCMODE_state:Z

.field private final MY_UID:I

.field private SlideUpOnce:Z

.field private mActivityService:Landroid/app/IActivityManager;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBatteryService:Lcom/android/server/BatteryService;

.field private mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBroadcastQueue:[I

.field private mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

.field private mBroadcastWhy:[I

.field private final mButtonBrightness:Lcom/android/server/PowerManagerService$BrightnessState;

.field private mContext:Landroid/content/Context;

.field private mDimDelay:I

.field private mDimScreen:Z

.field private mDoneBooting:Z

.field private mForceReenableScreenTask:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHardware:Lcom/android/server/HardwareService;

.field private volatile mInitComplete:Z

.field private mIsPowered:Z

.field private final mKeyboardBrightness:Lcom/android/server/PowerManagerService$BrightnessState;

.field private mKeyboardVisible:Z

.field private mKeylightDelay:I

.field private mLastEventTime:J

.field private mLastTouchDown:J

.field private mLightAnimator:Lcom/android/server/PowerManagerService$LightAnimator;

.field private final mLocks:Lcom/android/server/PowerManagerService$LockList;

.field private mNextTimeout:J

.field private mNotificationTask:Ljava/lang/Runnable;

.field private mOffBecauseOfUser:Z

.field private mPartialCount:I

.field private volatile mPokeAwakeOnSet:Z

.field private mPokeLocks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/PowerManagerService$PokeLock;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mPokey:I

.field private volatile mPolicy:Landroid/view/WindowManagerPolicy;

.field private mPowerState:I

.field private mPreventScreenOn:Z

.field private mPreventScreenOnPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

.field private final mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;

.field private mScreenBrightnessOverride:I

.field private mScreenOffBroadcastDone:Landroid/content/BroadcastReceiver;

.field private mScreenOffDelay:I

.field private mScreenOffIntent:Landroid/content/Intent;

.field mScreenOffStart:J

.field private mScreenOffTime:J

.field private mScreenOnBroadcastDone:Landroid/content/BroadcastReceiver;

.field private mScreenOnIntent:Landroid/content/Intent;

.field mScreenOnStart:J

.field private mScreenOnStartTime:J

.field private mScreenOnTime:J

.field private mSettings:Landroid/content/ContentQueryMap;

.field private mShortKeylightDelay:I

.field private mStayOnConditions:I

.field private mStayOnWhilePluggedInPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

.field private mStayOnWhilePluggedInScreenDimLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

.field private mStillNeedSleepNotification:Z

.field private mTimeoutTask:Lcom/android/server/PowerManagerService$TimeoutTask;

.field private mTotalDelaySetting:I

.field private mTotalTouchDownTime:J

.field private mTouchCycles:I

.field private mUserActivityAllowed:Z

.field private mUserState:I

.field private mVirtualSleepState:I

.field private mWakeLockState:I

.field private preventALC:Z

.field private proximityNear:Z

.field private final use_ALCMODE_set:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 241
    const/4 v0, 0x0

    sput v0, Lcom/android/server/PowerManagerService;->VirtualCount:I

    return-void
.end method

.method constructor <init>()V
    .registers 8

    .prologue
    const/4 v3, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 400
    invoke-direct {p0}, Landroid/os/IPowerManager$Stub;-><init>()V

    .line 78
    iput-boolean v5, p0, Lcom/android/server/PowerManagerService;->use_ALCMODE_set:Z

    .line 108
    const/16 v2, 0x1770

    iput v2, p0, Lcom/android/server/PowerManagerService;->mShortKeylightDelay:I

    .line 179
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mDoneBooting:Z

    .line 180
    iput v4, p0, Lcom/android/server/PowerManagerService;->mStayOnConditions:I

    .line 181
    new-array v2, v3, [I

    fill-array-data v2, :array_b4

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    .line 182
    new-array v2, v3, [I

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mBroadcastWhy:[I

    .line 183
    iput v4, p0, Lcom/android/server/PowerManagerService;->mPartialCount:I

    .line 187
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mKeyboardVisible:Z

    .line 188
    iput-boolean v5, p0, Lcom/android/server/PowerManagerService;->mUserActivityAllowed:Z

    .line 194
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/PowerManagerService;->mLastEventTime:J

    .line 197
    new-instance v2, Lcom/android/server/PowerManagerService$LockList;

    invoke-direct {v2, p0, v6}, Lcom/android/server/PowerManagerService$LockList;-><init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    .line 208
    new-instance v2, Lcom/android/server/PowerManagerService$TimeoutTask;

    invoke-direct {v2, p0, v6}, Lcom/android/server/PowerManagerService$TimeoutTask;-><init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mTimeoutTask:Lcom/android/server/PowerManagerService$TimeoutTask;

    .line 209
    new-instance v2, Lcom/android/server/PowerManagerService$LightAnimator;

    invoke-direct {v2, p0, v6}, Lcom/android/server/PowerManagerService$LightAnimator;-><init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mLightAnimator:Lcom/android/server/PowerManagerService$LightAnimator;

    .line 210
    new-instance v2, Lcom/android/server/PowerManagerService$BrightnessState;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lcom/android/server/PowerManagerService$BrightnessState;-><init>(Lcom/android/server/PowerManagerService;I)V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;

    .line 212
    new-instance v2, Lcom/android/server/PowerManagerService$BrightnessState;

    const/16 v3, 0x8

    invoke-direct {v2, p0, v3}, Lcom/android/server/PowerManagerService$BrightnessState;-><init>(Lcom/android/server/PowerManagerService;I)V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mKeyboardBrightness:Lcom/android/server/PowerManagerService$BrightnessState;

    .line 214
    new-instance v2, Lcom/android/server/PowerManagerService$BrightnessState;

    const/4 v3, 0x4

    invoke-direct {v2, p0, v3}, Lcom/android/server/PowerManagerService$BrightnessState;-><init>(Lcom/android/server/PowerManagerService;I)V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mButtonBrightness:Lcom/android/server/PowerManagerService$BrightnessState;

    .line 217
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mIsPowered:Z

    .line 221
    iput-boolean v5, p0, Lcom/android/server/PowerManagerService;->mDimScreen:Z

    .line 223
    iput v4, p0, Lcom/android/server/PowerManagerService;->mPokey:I

    .line 224
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mPokeAwakeOnSet:Z

    .line 225
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mInitComplete:Z

    .line 226
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mPokeLocks:Ljava/util/HashMap;

    .line 230
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessOverride:I

    .line 240
    iput v4, p0, Lcom/android/server/PowerManagerService;->mVirtualSleepState:I

    .line 244
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->proximityNear:Z

    .line 246
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->SlideUpOnce:Z

    .line 1046
    new-instance v2, Lcom/android/server/PowerManagerService$2;

    invoke-direct {v2, p0}, Lcom/android/server/PowerManagerService$2;-><init>(Lcom/android/server/PowerManagerService;)V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mNotificationTask:Ljava/lang/Runnable;

    .line 1118
    new-instance v2, Lcom/android/server/PowerManagerService$3;

    invoke-direct {v2, p0}, Lcom/android/server/PowerManagerService$3;-><init>(Lcom/android/server/PowerManagerService;)V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mScreenOnBroadcastDone:Landroid/content/BroadcastReceiver;

    .line 1129
    new-instance v2, Lcom/android/server/PowerManagerService$4;

    invoke-direct {v2, p0}, Lcom/android/server/PowerManagerService$4;-><init>(Lcom/android/server/PowerManagerService;)V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mScreenOffBroadcastDone:Landroid/content/BroadcastReceiver;

    .line 1285
    new-instance v2, Lcom/android/server/PowerManagerService$5;

    invoke-direct {v2, p0}, Lcom/android/server/PowerManagerService$5;-><init>(Lcom/android/server/PowerManagerService;)V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mForceReenableScreenTask:Ljava/lang/Runnable;

    .line 1837
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->preventALC:Z

    .line 1858
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->ALCMODE_state:Z

    .line 402
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 403
    .local v0, token:J
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    iput v2, p0, Lcom/android/server/PowerManagerService;->MY_UID:I

    .line 404
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 407
    const-wide/32 v2, 0x240c8400

    invoke-static {v2, v3}, Landroid/os/Power;->setLastUserActivityTimeout(J)I

    .line 410
    iput v4, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    iput v4, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    .line 413
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 414
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/PowerManagerService;->mScreenOnStartTime:J

    .line 415
    return-void

    .line 181
    nop

    :array_b4
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method static synthetic access$1000(Lcom/android/server/PowerManagerService;)Landroid/content/ContentQueryMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mSettings:Landroid/content/ContentQueryMap;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/server/PowerManagerService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput p1, p0, Lcom/android/server/PowerManagerService;->mStayOnConditions:I

    return p1
.end method

.method static synthetic access$1202(Lcom/android/server/PowerManagerService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput p1, p0, Lcom/android/server/PowerManagerService;->mTotalDelaySetting:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/server/PowerManagerService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->setScreenOffTimeoutsLocked()V

    return-void
.end method

.method static synthetic access$1702(Lcom/android/server/PowerManagerService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput p1, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    return p1
.end method

.method static synthetic access$1800(Lcom/android/server/PowerManagerService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 75
    iget v0, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/PowerManagerService;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->setPowerState(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/PowerManagerService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 75
    iget v0, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/PowerManagerService;JI)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/PowerManagerService;->setTimeoutLocked(JI)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/PowerManagerService;)[I
    .registers 2
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/PowerManagerService;)[I
    .registers 2
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mBroadcastWhy:[I

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;
    .registers 2
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/PowerManagerService;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/PowerManagerService;)Landroid/content/Intent;
    .registers 2
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenOnIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/PowerManagerService;)Landroid/content/BroadcastReceiver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenOnBroadcastDone:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/PowerManagerService;)Landroid/content/Intent;
    .registers 2
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenOffIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/PowerManagerService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 75
    iget v0, p0, Lcom/android/server/PowerManagerService;->MY_UID:I

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/PowerManagerService;)Landroid/content/BroadcastReceiver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenOffBroadcastDone:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/PowerManagerService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->forceReenableScreen()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/PowerManagerService;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/android/server/PowerManagerService;->setLightBrightness(II)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/PowerManagerService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mOffBecauseOfUser:Z

    return v0
.end method

.method static synthetic access$3400(Lcom/android/server/PowerManagerService;Z)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->screenOffFinishedAnimatingLocked(Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$BrightnessState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$BrightnessState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mKeyboardBrightness:Lcom/android/server/PowerManagerService$BrightnessState;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$BrightnessState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mButtonBrightness:Lcom/android/server/PowerManagerService$BrightnessState;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LightAnimator;
    .registers 2
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mLightAnimator:Lcom/android/server/PowerManagerService$LightAnimator;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/server/PowerManagerService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->updateGservicesValues()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/PowerManagerService;Landroid/os/IBinder;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/android/server/PowerManagerService;->releaseWakeLockLocked(Landroid/os/IBinder;Z)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/PowerManagerService;I)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->isScreenLock(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/PowerManagerService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mIsPowered:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/PowerManagerService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mIsPowered:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/PowerManagerService;)Lcom/android/server/BatteryService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mBatteryService:Lcom/android/server/BatteryService;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/PowerManagerService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->updateWakeLockLocked()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/PowerManagerService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mUserActivityAllowed:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/PowerManagerService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mUserActivityAllowed:Z

    return p1
.end method

.method private batteryIsLow()Z
    .registers 3

    .prologue
    .line 1462
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mIsPowered:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mBatteryService:Lcom/android/server/BatteryService;

    invoke-virtual {v0}, Lcom/android/server/BatteryService;->getBatteryLevel()I

    move-result v0

    const/16 v1, 0xa

    if-gt v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private cancelTimerLocked()V
    .registers 3

    .prologue
    .line 953
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mTimeoutTask:Lcom/android/server/PowerManagerService$TimeoutTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 954
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mTimeoutTask:Lcom/android/server/PowerManagerService$TimeoutTask;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/server/PowerManagerService$TimeoutTask;->nextState:I

    .line 955
    return-void
.end method

.method private do_PreferredALCMODEON(ZZ)Z
    .registers 7
    .parameter "set"
    .parameter "force"

    .prologue
    .line 1879
    const/4 v1, 0x0

    .line 1882
    .local v1, inALCMode:Z
    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->ALCMODE_state:Z

    if-ne p1, v2, :cond_7

    if-eqz p2, :cond_1d

    .line 1885
    :cond_7
    :try_start_7
    const-string v2, "hardware"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IHardwareService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IHardwareService;

    move-result-object v0

    .line 1886
    .local v0, hardware:Landroid/os/IHardwareService;
    if-eqz v0, :cond_1d

    .line 1887
    invoke-interface {v0, p1}, Landroid/os/IHardwareService;->setALCMode(Z)V

    .line 1888
    const-string v2, "PowerManagerService"

    const-string v3, "Success do_PreferredALCMODEON"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_1d} :catch_23

    .line 1895
    .end local v0           #hardware:Landroid/os/IHardwareService;
    :cond_1d
    :goto_1d
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->ALCMODE_state:Z

    .line 1896
    if-eqz p1, :cond_22

    .line 1897
    const/4 v1, 0x1

    .line 1899
    :cond_22
    return v1

    .line 1891
    :catch_23
    move-exception v2

    goto :goto_1d
.end method

.method private static dumpPowerState(I)Ljava/lang/String;
    .registers 4
    .parameter "state"

    .prologue
    const-string v2, ""

    .line 825
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_34

    const-string v1, "KEYBOARD_BRIGHT_BIT "

    :goto_d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_38

    const-string v1, "SCREEN_BRIGHT_BIT "

    :goto_17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_3c

    const-string v1, "SCREEN_ON_BIT "

    :goto_21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_40

    const-string v1, "BATTERY_LOW_BIT "

    :goto_2b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_34
    const-string v1, ""

    move-object v1, v2

    goto :goto_d

    :cond_38
    const-string v1, ""

    move-object v1, v2

    goto :goto_17

    :cond_3c
    const-string v1, ""

    move-object v1, v2

    goto :goto_21

    :cond_40
    const-string v1, ""

    move-object v1, v2

    goto :goto_2b
.end method

.method private forceReenableScreen()V
    .registers 3

    .prologue
    const-string v1, "PowerManagerService"

    .line 1267
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mPreventScreenOn:Z

    if-nez v0, :cond_e

    .line 1268
    const-string v0, "PowerManagerService"

    const-string v0, "forceReenableScreen: mPreventScreenOn is false, nothing to do"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    :goto_d
    return-void

    .line 1280
    :cond_e
    const-string v0, "PowerManagerService"

    const-string v0, "App called preventScreenOn(true) but didn\'t promptly reenable the screen! Forcing the screen back on..."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/PowerManagerService;->preventScreenOn(Z)V

    goto :goto_d
.end method

.method private getPreferredALCMODEON()Z
    .registers 7

    .prologue
    const-string v5, "PowerManagerService"

    .line 1860
    const/4 v0, 0x0

    .line 1864
    .local v0, ALCMODEOn:Z
    :try_start_3
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sensor_illumination"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_12

    .line 1865
    const/4 v0, 0x1

    .line 1867
    :cond_12
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPreferredALCMODEON"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_3 .. :try_end_2a} :catch_2b

    .line 1875
    :goto_2a
    return v0

    .line 1870
    :catch_2b
    move-exception v2

    move-object v1, v2

    .line 1871
    .local v1, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "PowerManagerService"

    const-string v2, "getPreferredALCMODEON fails"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a
.end method

.method private getPreferredBrightness()I
    .registers 5

    .prologue
    .line 1798
    :try_start_0
    iget v2, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessOverride:I

    if-ltz v2, :cond_7

    .line 1799
    iget v2, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessOverride:I

    .line 1806
    :goto_6
    return v2

    .line 1801
    :cond_7
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 1804
    .local v0, brightness:I
    const/16 v2, 0x14

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I
    :try_end_18
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_18} :catch_1a

    move-result v2

    goto :goto_6

    .line 1805
    .end local v0           #brightness:I
    :catch_1a
    move-exception v2

    move-object v1, v2

    .line 1806
    .local v1, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const/16 v2, 0xff

    goto :goto_6
.end method

.method private goToSleepLocked(J)V
    .registers 11
    .parameter "time"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2074
    iget-wide v4, p0, Lcom/android/server/PowerManagerService;->mLastEventTime:J

    cmp-long v4, v4, p1

    if-gtz v4, :cond_47

    .line 2075
    iput-wide p1, p0, Lcom/android/server/PowerManagerService;->mLastEventTime:J

    .line 2078
    invoke-static {v6}, Landroid/text/method/MetaKeyKeyListener;->WriteShiftKeyState(I)V

    .line 2082
    iput v6, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    .line 2083
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v4}, Lcom/android/server/PowerManagerService$LockList;->size()I

    move-result v0

    .line 2084
    .local v0, N:I
    const/4 v2, 0x0

    .line 2085
    .local v2, numCleared:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_17
    if-ge v1, v0, :cond_38

    .line 2086
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v4, v1}, Lcom/android/server/PowerManagerService$LockList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/PowerManagerService$WakeLock;

    .line 2087
    .local v3, wl:Lcom/android/server/PowerManagerService$WakeLock;
    iget v4, v3, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    invoke-direct {p0, v4}, Lcom/android/server/PowerManagerService;->isScreenLock(I)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 2088
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v4, v1}, Lcom/android/server/PowerManagerService$LockList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/PowerManagerService$WakeLock;

    iput-boolean v6, v4, Lcom/android/server/PowerManagerService$WakeLock;->activated:Z

    .line 2089
    add-int/lit8 v2, v2, 0x1

    .line 2085
    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 2092
    .end local v3           #wl:Lcom/android/server/PowerManagerService$WakeLock;
    :cond_38
    const/16 v4, 0xaa4

    invoke-static {v4, v2}, Landroid/util/EventLog;->writeEvent(II)I

    .line 2093
    iput-boolean v7, p0, Lcom/android/server/PowerManagerService;->mStillNeedSleepNotification:Z

    .line 2094
    iput v6, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    .line 2095
    invoke-direct {p0, v6, v6, v7}, Lcom/android/server/PowerManagerService;->setPowerState(IZZ)V

    .line 2096
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->cancelTimerLocked()V

    .line 2098
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #numCleared:I
    :cond_47
    return-void
.end method

.method private goToSleepLocked_Virtual(J)V
    .registers 7
    .parameter "time"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2106
    iget-wide v0, p0, Lcom/android/server/PowerManagerService;->mLastEventTime:J

    cmp-long v0, v0, p1

    if-gtz v0, :cond_12

    .line 2111
    iput v2, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    .line 2125
    iput v2, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    .line 2127
    invoke-direct {p0, v2, v2, v3}, Lcom/android/server/PowerManagerService;->setPowerState(IZZ)V

    .line 2130
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->cancelTimerLocked()V

    .line 2132
    :cond_12
    iput-boolean v3, p0, Lcom/android/server/PowerManagerService;->proximityNear:Z

    .line 2133
    return-void
.end method

.method private isScreenLock(I)Z
    .registers 4
    .parameter "flags"

    .prologue
    .line 555
    and-int/lit8 v0, p1, 0x1f

    .line 556
    .local v0, n:I
    const/16 v1, 0x1a

    if-eq v0, v1, :cond_d

    const/16 v1, 0xa

    if-eq v0, v1, :cond_d

    const/4 v1, 0x6

    if-ne v0, v1, :cond_f

    :cond_d
    const/4 v1, 0x1

    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method private static lockType(I)Ljava/lang/String;
    .registers 2
    .parameter "type"

    .prologue
    .line 809
    sparse-switch p0, :sswitch_data_12

    .line 820
    const-string v0, "???                    "

    :goto_5
    return-object v0

    .line 812
    :sswitch_6
    const-string v0, "FULL_WAKE_LOCK         "

    goto :goto_5

    .line 814
    :sswitch_9
    const-string v0, "SCREEN_BRIGHT_WAKE_LOCK"

    goto :goto_5

    .line 816
    :sswitch_c
    const-string v0, "SCREEN_DIM_WAKE_LOCK   "

    goto :goto_5

    .line 818
    :sswitch_f
    const-string v0, "PARTIAL_WAKE_LOCK      "

    goto :goto_5

    .line 809
    :sswitch_data_12
    .sparse-switch
        0x1 -> :sswitch_f
        0x6 -> :sswitch_c
        0xa -> :sswitch_9
        0x1a -> :sswitch_6
    .end sparse-switch
.end method

.method private releaseWakeLockLocked(Landroid/os/IBinder;Z)V
    .registers 14
    .parameter "lock"
    .parameter "death"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v10, "PowerManagerService"

    .line 681
    iget-object v6, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v6, p1}, Lcom/android/server/PowerManagerService$LockList;->removeLock(Landroid/os/IBinder;)Lcom/android/server/PowerManagerService$WakeLock;

    move-result-object v5

    .line 682
    .local v5, wl:Lcom/android/server/PowerManagerService$WakeLock;
    if-nez v5, :cond_d

    .line 722
    :cond_c
    :goto_c
    return-void

    .line 687
    :cond_d
    const-string v6, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "releaseWakeLock flags=0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v5, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " tag="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lcom/android/server/PowerManagerService$WakeLock;->tag:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    iget v6, v5, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    invoke-direct {p0, v6}, Lcom/android/server/PowerManagerService;->isScreenLock(I)Z

    move-result v6

    if-eqz v6, :cond_77

    .line 692
    iget-object v6, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v6}, Lcom/android/server/PowerManagerService$LockList;->gatherState()I

    move-result v6

    iput v6, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    .line 694
    iget v6, v5, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    const/high16 v7, 0x2000

    and-int/2addr v6, v7

    if-eqz v6, :cond_55

    .line 695
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7, v8}, Lcom/android/server/PowerManagerService;->userActivity(JZ)V

    .line 697
    :cond_55
    iget v6, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    iget v7, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    or-int/2addr v6, v7

    invoke-direct {p0, v6}, Lcom/android/server/PowerManagerService;->setPowerState(I)V

    .line 707
    :cond_5d
    :goto_5d
    iget-object v6, v5, Lcom/android/server/PowerManagerService$WakeLock;->binder:Landroid/os/IBinder;

    invoke-interface {v6, v5, v8}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 708
    iget v4, v5, Lcom/android/server/PowerManagerService$WakeLock;->uid:I

    .line 709
    .local v4, releaseUid:I
    iget-object v2, v5, Lcom/android/server/PowerManagerService$WakeLock;->tag:Ljava/lang/String;

    .line 710
    .local v2, releaseName:Ljava/lang/String;
    iget v3, v5, Lcom/android/server/PowerManagerService$WakeLock;->monitorType:I

    .line 712
    .local v3, releaseType:I
    if-ltz v3, :cond_c

    .line 713
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 715
    .local v0, origId:J
    :try_start_6e
    iget-object v6, p0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v6, v4, v2, v3}, Lcom/android/internal/app/IBatteryStats;->noteStopWakelock(ILjava/lang/String;I)V
    :try_end_73
    .catchall {:try_start_6e .. :try_end_73} :catchall_8c
    .catch Landroid/os/RemoteException; {:try_start_6e .. :try_end_73} :catch_91

    .line 719
    :goto_73
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_c

    .line 699
    .end local v0           #origId:J
    .end local v2           #releaseName:Ljava/lang/String;
    .end local v3           #releaseType:I
    .end local v4           #releaseUid:I
    :cond_77
    iget v6, v5, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    and-int/lit8 v6, v6, 0x1f

    if-ne v6, v9, :cond_5d

    .line 700
    iget v6, p0, Lcom/android/server/PowerManagerService;->mPartialCount:I

    sub-int/2addr v6, v9

    iput v6, p0, Lcom/android/server/PowerManagerService;->mPartialCount:I

    .line 701
    iget v6, p0, Lcom/android/server/PowerManagerService;->mPartialCount:I

    if-nez v6, :cond_5d

    .line 703
    const-string v6, "PowerManagerService"

    invoke-static {v10}, Landroid/os/Power;->releaseWakeLock(Ljava/lang/String;)V

    goto :goto_5d

    .line 719
    .restart local v0       #origId:J
    .restart local v2       #releaseName:Ljava/lang/String;
    .restart local v3       #releaseType:I
    .restart local v4       #releaseUid:I
    :catchall_8c
    move-exception v6

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 716
    :catch_91
    move-exception v6

    goto :goto_73
.end method

.method private screenOffFinishedAnimatingLocked(Z)I
    .registers 15
    .parameter "becauseOfUser"

    .prologue
    const/4 v12, 0x2

    const-wide/16 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1439
    const/16 v2, 0xaa8

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    if-eqz p1, :cond_58

    move v4, v9

    :goto_13
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v9

    iget-wide v4, p0, Lcom/android/server/PowerManagerService;->mTotalTouchDownTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v12

    const/4 v4, 0x3

    iget v5, p0, Lcom/android/server/PowerManagerService;->mTouchCycles:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1441
    iput-wide v10, p0, Lcom/android/server/PowerManagerService;->mLastTouchDown:J

    .line 1444
    const/4 v0, 0x0

    .line 1445
    .local v0, err:I
    const-string v2, "PowerManagerService"

    const-string v3, "screenOffFinishedAnimatingLocked"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    invoke-static {v8}, Landroid/os/Power;->setScreenState(Z)I

    move-result v0

    .line 1448
    iget-wide v2, p0, Lcom/android/server/PowerManagerService;->mScreenOnStartTime:J

    cmp-long v2, v2, v10

    if-eqz v2, :cond_4f

    .line 1449
    iget-wide v2, p0, Lcom/android/server/PowerManagerService;->mScreenOnTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/PowerManagerService;->mScreenOnStartTime:J

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/PowerManagerService;->mScreenOnTime:J

    .line 1450
    iput-wide v10, p0, Lcom/android/server/PowerManagerService;->mScreenOnStartTime:J

    .line 1452
    :cond_4f
    if-nez v0, :cond_57

    .line 1453
    if-eqz p1, :cond_5a

    move v1, v9

    .line 1456
    .local v1, why:I
    :goto_54
    invoke-direct {p0, v8, v1}, Lcom/android/server/PowerManagerService;->sendNotificationLocked(ZI)V

    .line 1458
    .end local v1           #why:I
    :cond_57
    return v0

    .end local v0           #err:I
    :cond_58
    move v4, v8

    .line 1439
    goto :goto_13

    .restart local v0       #err:I
    :cond_5a
    move v1, v12

    .line 1453
    goto :goto_54
.end method

.method private sendNotificationLocked(ZI)V
    .registers 10
    .parameter "on"
    .parameter "why"

    .prologue
    const/4 v6, 0x2

    const/4 v3, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 993
    if-nez p1, :cond_8

    .line 994
    iput-boolean v5, p0, Lcom/android/server/PowerManagerService;->mStillNeedSleepNotification:Z

    .line 998
    :cond_8
    const/4 v0, 0x0

    .line 999
    .local v0, index:I
    :goto_9
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    aget v1, v1, v0

    if-eq v1, v3, :cond_12

    .line 1000
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 1002
    :cond_12
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    if-eqz p1, :cond_78

    move v2, v4

    :goto_17
    aput v2, v1, v0

    .line 1003
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastWhy:[I

    aput p2, v1, v0

    .line 1012
    if-ne v0, v6, :cond_37

    .line 1016
    if-nez p1, :cond_27

    if-ne p2, v4, :cond_27

    .line 1017
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastWhy:[I

    aput v4, v1, v5

    .line 1019
    :cond_27
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    if-eqz p1, :cond_7a

    move v2, v4

    :goto_2c
    aput v2, v1, v5

    .line 1020
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    aput v3, v1, v4

    .line 1021
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    aput v3, v1, v6

    .line 1022
    const/4 v0, 0x0

    .line 1024
    :cond_37
    if-ne v0, v4, :cond_60

    if-nez p1, :cond_60

    .line 1025
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    aput v3, v1, v5

    .line 1026
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    aput v3, v1, v4

    .line 1027
    const/4 v0, -0x1

    .line 1030
    const/16 v1, 0xaa7

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    iget v3, v3, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->mCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1031
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v1}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->release()V

    .line 1035
    :cond_60
    if-ltz v0, :cond_77

    .line 1040
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v1}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->acquire()V

    .line 1041
    const/16 v1, 0xaa5

    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    iget v2, v2, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->mCount:I

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1042
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mNotificationTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1044
    :cond_77
    return-void

    :cond_78
    move v2, v5

    .line 1002
    goto :goto_17

    :cond_7a
    move v2, v5

    .line 1019
    goto :goto_2c
.end method

.method private setLightBrightness(II)V
    .registers 5
    .parameter "mask"
    .parameter "value"

    .prologue
    .line 1692
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_a

    .line 1693
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mHardware:Lcom/android/server/HardwareService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lcom/android/server/HardwareService;->setLightBrightness_UNCHECKED(II)V

    .line 1695
    :cond_a
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_14

    .line 1696
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mHardware:Lcom/android/server/HardwareService;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Lcom/android/server/HardwareService;->setLightBrightness_UNCHECKED(II)V

    .line 1698
    :cond_14
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_1e

    .line 1699
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mHardware:Lcom/android/server/HardwareService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/HardwareService;->setLightBrightness_UNCHECKED(II)V

    .line 1701
    :cond_1e
    return-void
.end method

.method private setPowerState(I)V
    .registers 3
    .parameter "state"

    .prologue
    const/4 v0, 0x0

    .line 1293
    invoke-direct {p0, p1, v0, v0}, Lcom/android/server/PowerManagerService;->setPowerState(IZZ)V

    .line 1294
    return-void
.end method

.method private setPowerState(IZZ)V
    .registers 20
    .parameter "newState"
    .parameter "noChangeLights"
    .parameter "becauseOfUser"

    .prologue
    .line 1298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    move-object v10, v0

    monitor-enter v10

    .line 1299
    const/4 v4, 0x0

    .line 1302
    .local v4, err:I
    :try_start_7
    const-string v11, "PowerManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setPowerState: mPowerState=0x"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mPowerState:I

    move v13, v0

    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " newState=0x"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " noChangeLights="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v0, v12

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    if-eqz p2, :cond_53

    .line 1308
    move/from16 v0, p1

    and-int/lit16 v0, v0, -0x10f

    move v11, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mPowerState:I

    move v12, v0

    and-int/lit16 v12, v12, 0x10e

    or-int p1, v11, v12

    .line 1311
    :cond_53
    invoke-direct/range {p0 .. p0}, Lcom/android/server/PowerManagerService;->batteryIsLow()Z

    move-result v11

    if-eqz v11, :cond_67

    .line 1312
    or-int/lit8 p1, p1, 0x10

    .line 1316
    :goto_5b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mPowerState:I

    move v11, v0

    move/from16 v0, p1

    move v1, v11

    if-ne v0, v1, :cond_6a

    .line 1317
    monitor-exit v10

    .line 1433
    :goto_66
    return-void

    .line 1314
    :cond_67
    and-int/lit8 p1, p1, -0x11

    goto :goto_5b

    .line 1320
    :cond_6a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mDoneBooting:Z

    move v11, v0

    if-nez v11, :cond_73

    .line 1321
    or-int/lit8 p1, p1, 0xf

    .line 1324
    :cond_73
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mPowerState:I

    move v11, v0

    and-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_29c

    const/4 v11, 0x1

    move v8, v11

    .line 1325
    .local v8, oldScreenOn:Z
    :goto_7e
    and-int/lit8 v11, p1, 0x1

    if-eqz v11, :cond_2a0

    const/4 v11, 0x1

    move v7, v11

    .line 1328
    .local v7, newScreenOn:Z
    :goto_84
    const-string v11, "PowerManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setPowerState: mPowerState="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mPowerState:I

    move v13, v0

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " newState="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v0, v12

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " noChangeLights="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v0, v12

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    const-string v11, "PowerManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  oldKeyboardBright="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mPowerState:I

    move v13, v0

    and-int/lit8 v13, v13, 0x8

    if-eqz v13, :cond_2a4

    const/4 v13, 0x1

    :goto_d2
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " newKeyboardBright="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    and-int/lit8 v13, p1, 0x8

    if-eqz v13, :cond_2a7

    const/4 v13, 0x1

    :goto_e1
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    const-string v11, "PowerManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  oldScreenBright="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mPowerState:I

    move v13, v0

    and-int/lit8 v13, v13, 0x2

    if-eqz v13, :cond_2aa

    const/4 v13, 0x1

    :goto_103
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " newScreenBright="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    and-int/lit8 v13, p1, 0x2

    if-eqz v13, :cond_2ad

    const/4 v13, 0x1

    :goto_112
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    const-string v11, "PowerManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  oldButtonBright="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mPowerState:I

    move v13, v0

    and-int/lit8 v13, v13, 0x4

    if-eqz v13, :cond_2b0

    const/4 v13, 0x1

    :goto_134
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " newButtonBright="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    and-int/lit8 v13, p1, 0x4

    if-eqz v13, :cond_2b3

    const/4 v13, 0x1

    :goto_143
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    const-string v11, "PowerManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  oldScreenOn="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " newScreenOn="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    const-string v11, "PowerManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  oldBatteryLow="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mPowerState:I

    move v13, v0

    and-int/lit8 v13, v13, 0x10

    if-eqz v13, :cond_2b6

    const/4 v13, 0x1

    :goto_187
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " newBatteryLow="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    and-int/lit8 v13, p1, 0x10

    if-eqz v13, :cond_2b9

    const/4 v13, 0x1

    :goto_196
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mPowerState:I

    move v11, v0

    move v0, v11

    move/from16 v1, p1

    if-eq v0, v1, :cond_1c6

    .line 1343
    const/4 v11, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move v2, v11

    invoke-direct {v0, v1, v2}, Lcom/android/server/PowerManagerService;->updateLightsLocked(II)V

    .line 1344
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mPowerState:I

    move v11, v0

    and-int/lit16 v11, v11, -0x10f

    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x10e

    move v12, v0

    or-int/2addr v11, v12

    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PowerManagerService;->mPowerState:I

    .line 1347
    :cond_1c6
    if-eq v8, v7, :cond_296

    .line 1348
    if-eqz v7, :cond_2d8

    .line 1353
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mStillNeedSleepNotification:Z

    move v11, v0

    if-eqz v11, :cond_1da

    .line 1354
    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v0, p0

    move v1, v11

    move v2, v12

    invoke-direct {v0, v1, v2}, Lcom/android/server/PowerManagerService;->sendNotificationLocked(ZI)V

    .line 1362
    :cond_1da
    const/4 v9, 0x1

    .line 1364
    .local v9, reallyTurnScreenOn:Z
    const-string v11, "PowerManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "- turning screen on...  mPreventScreenOn = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mPreventScreenOn:Z

    move v13, v0

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mPreventScreenOn:Z

    move v11, v0

    if-eqz v11, :cond_207

    .line 1370
    const-string v11, "PowerManagerService"

    const-string v12, "- PREVENTING screen from really turning on!"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    const/4 v9, 0x0

    .line 1374
    :cond_207
    if-eqz v9, :cond_2cf

    .line 1375
    const/4 v11, 0x1

    invoke-static {v11}, Landroid/os/Power;->setScreenState(Z)I

    move-result v4

    .line 1381
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 1384
    .local v5, identity:J
    const-string v11, "PowerManagerService"

    const-string v12, "setPowerState turn on"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_219
    .catchall {:try_start_7 .. :try_end_219} :catchall_299

    .line 1388
    :try_start_219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move-object v11, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/PowerManagerService;->getPreferredBrightness()I

    move-result v12

    invoke-interface {v11, v12}, Lcom/android/internal/app/IBatteryStats;->noteScreenBrightness(I)V

    .line 1390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move-object v11, v0

    invoke-interface {v11}, Lcom/android/internal/app/IBatteryStats;->noteScreenOn()V
    :try_end_22d
    .catchall {:try_start_219 .. :try_end_22d} :catchall_2ca
    .catch Landroid/os/RemoteException; {:try_start_219 .. :try_end_22d} :catch_2bc

    .line 1394
    :try_start_22d
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1402
    .end local v5           #identity:J
    :goto_230
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    move-wide v0, v11

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/PowerManagerService;->mScreenOnStartTime:J

    .line 1403
    const-wide/16 v11, 0x0

    move-wide v0, v11

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/PowerManagerService;->mLastTouchDown:J

    .line 1404
    const-wide/16 v11, 0x0

    move-wide v0, v11

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/PowerManagerService;->mTotalTouchDownTime:J

    .line 1405
    const/4 v11, 0x0

    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PowerManagerService;->mTouchCycles:I

    .line 1406
    const/16 v11, 0xaa8

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    if-eqz p3, :cond_2d6

    const/4 v14, 0x1

    :goto_25e
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/PowerManagerService;->mTotalTouchDownTime:J

    move-wide v14, v0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mTouchCycles:I

    move v14, v0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1408
    if-nez v4, :cond_296

    .line 1409
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mPowerState:I

    move v11, v0

    or-int/lit8 v11, v11, 0x1

    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PowerManagerService;->mPowerState:I

    .line 1410
    const/4 v11, 0x1

    const/4 v12, -0x1

    move-object/from16 v0, p0

    move v1, v11

    move v2, v12

    invoke-direct {v0, v1, v2}, Lcom/android/server/PowerManagerService;->sendNotificationLocked(ZI)V

    .line 1432
    .end local v9           #reallyTurnScreenOn:Z
    :cond_296
    :goto_296
    monitor-exit v10

    goto/16 :goto_66

    .end local v7           #newScreenOn:Z
    .end local v8           #oldScreenOn:Z
    :catchall_299
    move-exception v11

    monitor-exit v10
    :try_end_29b
    .catchall {:try_start_22d .. :try_end_29b} :catchall_299

    throw v11

    .line 1324
    :cond_29c
    const/4 v11, 0x0

    move v8, v11

    goto/16 :goto_7e

    .line 1325
    .restart local v8       #oldScreenOn:Z
    :cond_2a0
    const/4 v11, 0x0

    move v7, v11

    goto/16 :goto_84

    .line 1330
    .restart local v7       #newScreenOn:Z
    :cond_2a4
    const/4 v13, 0x0

    goto/16 :goto_d2

    :cond_2a7
    const/4 v13, 0x0

    goto/16 :goto_e1

    .line 1332
    :cond_2aa
    const/4 v13, 0x0

    goto/16 :goto_103

    :cond_2ad
    const/4 v13, 0x0

    goto/16 :goto_112

    .line 1334
    :cond_2b0
    const/4 v13, 0x0

    goto/16 :goto_134

    :cond_2b3
    const/4 v13, 0x0

    goto/16 :goto_143

    .line 1338
    :cond_2b6
    const/4 v13, 0x0

    goto/16 :goto_187

    :cond_2b9
    const/4 v13, 0x0

    goto/16 :goto_196

    .line 1391
    .restart local v5       #identity:J
    .restart local v9       #reallyTurnScreenOn:Z
    :catch_2bc
    move-exception v11

    move-object v3, v11

    .line 1392
    .local v3, e:Landroid/os/RemoteException;
    :try_start_2be
    const-string v11, "PowerManagerService"

    const-string v12, "RemoteException calling noteScreenOn on BatteryStatsService"

    invoke-static {v11, v12, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2c5
    .catchall {:try_start_2be .. :try_end_2c5} :catchall_2ca

    .line 1394
    :try_start_2c5
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_230

    .end local v3           #e:Landroid/os/RemoteException;
    :catchall_2ca
    move-exception v11

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v11

    .line 1397
    .end local v5           #identity:J
    :cond_2cf
    const/4 v11, 0x0

    invoke-static {v11}, Landroid/os/Power;->setScreenState(Z)I

    .line 1399
    const/4 v4, 0x0

    goto/16 :goto_230

    .line 1406
    :cond_2d6
    const/4 v14, 0x0

    goto :goto_25e

    .line 1413
    .end local v9           #reallyTurnScreenOn:Z
    :cond_2d8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    move-wide v0, v11

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/PowerManagerService;->mScreenOffTime:J

    .line 1414
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2e4
    .catchall {:try_start_2c5 .. :try_end_2e4} :catchall_299

    move-result-wide v5

    .line 1416
    .restart local v5       #identity:J
    :try_start_2e5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move-object v11, v0

    invoke-interface {v11}, Lcom/android/internal/app/IBatteryStats;->noteScreenOff()V
    :try_end_2ed
    .catchall {:try_start_2e5 .. :try_end_2ed} :catchall_31b
    .catch Landroid/os/RemoteException; {:try_start_2e5 .. :try_end_2ed} :catch_30e

    .line 1420
    :try_start_2ed
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1422
    :goto_2f0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mPowerState:I

    move v11, v0

    and-int/lit8 v11, v11, -0x2

    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PowerManagerService;->mPowerState:I

    .line 1423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;

    move-object v11, v0

    iget-boolean v11, v11, Lcom/android/server/PowerManagerService$BrightnessState;->animating:Z

    if-nez v11, :cond_320

    .line 1424
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/PowerManagerService;->screenOffFinishedAnimatingLocked(Z)I
    :try_end_30c
    .catchall {:try_start_2ed .. :try_end_30c} :catchall_299

    move-result v4

    goto :goto_296

    .line 1417
    :catch_30e
    move-exception v11

    move-object v3, v11

    .line 1418
    .restart local v3       #e:Landroid/os/RemoteException;
    :try_start_310
    const-string v11, "PowerManagerService"

    const-string v12, "RemoteException calling noteScreenOff on BatteryStatsService"

    invoke-static {v11, v12, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_317
    .catchall {:try_start_310 .. :try_end_317} :catchall_31b

    .line 1420
    :try_start_317
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2f0

    .end local v3           #e:Landroid/os/RemoteException;
    :catchall_31b
    move-exception v11

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v11

    .line 1426
    :cond_320
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/PowerManagerService;->mOffBecauseOfUser:Z

    .line 1427
    const/4 v4, 0x0

    .line 1428
    const-wide/16 v11, 0x0

    move-wide v0, v11

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/PowerManagerService;->mLastTouchDown:J
    :try_end_32e
    .catchall {:try_start_317 .. :try_end_32e} :catchall_299

    goto/16 :goto_296
.end method

.method private setScreenOffTimeoutsLocked()V
    .registers 6

    .prologue
    const/16 v4, 0x1b58

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 2265
    iget v1, p0, Lcom/android/server/PowerManagerService;->mPokey:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_51

    .line 2266
    iget v1, p0, Lcom/android/server/PowerManagerService;->mShortKeylightDelay:I

    iput v1, p0, Lcom/android/server/PowerManagerService;->mKeylightDelay:I

    .line 2267
    iput v2, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    .line 2268
    iput v3, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    .line 2294
    :goto_12
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setScreenOffTimeouts mKeylightDelay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/PowerManagerService;->mKeylightDelay:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mDimDelay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mScreenOffDelay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mDimScreen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/PowerManagerService;->mDimScreen:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2298
    return-void

    .line 2269
    :cond_51
    iget v1, p0, Lcom/android/server/PowerManagerService;->mPokey:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_60

    .line 2270
    const/16 v1, 0x3a98

    iput v1, p0, Lcom/android/server/PowerManagerService;->mKeylightDelay:I

    .line 2271
    iput v2, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    .line 2272
    iput v3, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    goto :goto_12

    .line 2274
    :cond_60
    iget v0, p0, Lcom/android/server/PowerManagerService;->mTotalDelaySetting:I

    .line 2275
    .local v0, totalDelay:I
    const/16 v1, 0xbb8

    iput v1, p0, Lcom/android/server/PowerManagerService;->mKeylightDelay:I

    .line 2276
    if-gez v0, :cond_7d

    .line 2277
    const v1, 0x7fffffff

    iput v1, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    .line 2286
    :goto_6d
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mDimScreen:Z

    if-eqz v1, :cond_8b

    const/16 v1, 0x2710

    if-lt v0, v1, :cond_8b

    .line 2287
    iget v1, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    sub-int/2addr v1, v4

    iput v1, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    .line 2288
    iput v4, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    goto :goto_12

    .line 2278
    :cond_7d
    iget v1, p0, Lcom/android/server/PowerManagerService;->mKeylightDelay:I

    if-ge v1, v0, :cond_88

    .line 2282
    iget v1, p0, Lcom/android/server/PowerManagerService;->mKeylightDelay:I

    sub-int v1, v0, v1

    iput v1, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    goto :goto_6d

    .line 2284
    :cond_88
    iput v3, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    goto :goto_6d

    .line 2290
    :cond_8b
    iput v2, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    goto :goto_12
.end method

.method private setTimeoutLocked(JI)V
    .registers 10
    .parameter "now"
    .parameter "nextState"

    .prologue
    const-string v5, "PowerManagerService"

    .line 920
    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mDoneBooting:Z

    if-eqz v2, :cond_4a

    .line 921
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mTimeoutTask:Lcom/android/server/PowerManagerService$TimeoutTask;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 922
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mTimeoutTask:Lcom/android/server/PowerManagerService$TimeoutTask;

    iput p3, v2, Lcom/android/server/PowerManagerService$TimeoutTask;->nextState:I

    .line 923
    move-wide v0, p1

    .line 924
    .local v0, when:J
    packed-switch p3, :pswitch_data_86

    .line 943
    :goto_15
    :pswitch_15
    const-string v2, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setTimeoutLocked now="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " nextState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " when="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mTimeoutTask:Lcom/android/server/PowerManagerService$TimeoutTask;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 947
    iput-wide v0, p0, Lcom/android/server/PowerManagerService;->mNextTimeout:J

    .line 949
    .end local v0           #when:J
    :cond_4a
    return-void

    .line 927
    .restart local v0       #when:J
    :pswitch_4b
    iget v2, p0, Lcom/android/server/PowerManagerService;->mKeylightDelay:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 928
    goto :goto_15

    .line 930
    :pswitch_50
    iget v2, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    if-ltz v2, :cond_59

    .line 931
    iget v2, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 932
    goto :goto_15

    .line 934
    :cond_59
    const-string v2, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDimDelay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " while trying to dim"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    :pswitch_79
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v2

    .line 938
    :try_start_7c
    iget v3, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    int-to-long v3, v3

    add-long/2addr v0, v3

    .line 939
    monitor-exit v2

    goto :goto_15

    :catchall_82
    move-exception v3

    monitor-exit v2
    :try_end_84
    .catchall {:try_start_7c .. :try_end_84} :catchall_82

    throw v3

    .line 924
    nop

    :pswitch_data_86
    .packed-switch 0x0
        :pswitch_79
        :pswitch_50
        :pswitch_15
        :pswitch_4b
    .end packed-switch
.end method

.method private updateGservicesValues()V
    .registers 4

    .prologue
    .line 2306
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "short_keylight_delay_ms"

    const/16 v2, 0x1770

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/PowerManagerService;->mShortKeylightDelay:I

    .line 2311
    return-void
.end method

.method private updateLightsLocked(II)V
    .registers 28
    .parameter "newState"
    .parameter "forceState"

    .prologue
    .line 1467
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mPowerState:I

    move v14, v0

    .line 1468
    .local v14, oldState:I
    xor-int v18, p1, v14

    .line 1469
    .local v18, realDifference:I
    or-int v8, v18, p2

    .line 1470
    .local v8, difference:I
    if-nez v8, :cond_c

    .line 1689
    :cond_b
    :goto_b
    return-void

    .line 1474
    :cond_c
    const/4 v13, 0x0

    .line 1475
    .local v13, offMask:I
    const/4 v9, 0x0

    .line 1476
    .local v9, dimMask:I
    const/4 v15, 0x0

    .line 1478
    .local v15, onMask:I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/PowerManagerService;->getPreferredBrightness()I

    move-result v16

    .line 1479
    .local v16, preferredBrightness:I
    const/16 v20, 0x0

    .line 1481
    .local v20, startAnimation:Z
    and-int/lit8 v22, v8, 0x8

    if-eqz v22, :cond_1f

    .line 1494
    and-int/lit8 v22, p1, 0x8

    if-nez v22, :cond_156

    .line 1495
    or-int/lit8 v13, v13, 0x8

    .line 1502
    :cond_1f
    :goto_1f
    and-int/lit8 v22, v8, 0x4

    if-eqz v22, :cond_29

    .line 1515
    and-int/lit8 v22, p1, 0x4

    if-nez v22, :cond_15a

    .line 1516
    or-int/lit8 v13, v13, 0x4

    .line 1527
    :cond_29
    :goto_29
    move/from16 v7, v16

    .line 1529
    .local v7, brightness_screen:I
    and-int/lit8 v22, v8, 0x3

    if-eqz v22, :cond_ef

    .line 1531
    const/4 v12, -0x1

    .line 1537
    .local v12, nominalCurrentValue:I
    and-int/lit8 v22, v18, 0x3

    if-eqz v22, :cond_49

    .line 1538
    and-int/lit8 v22, v14, 0x3

    packed-switch v22, :pswitch_data_1d4

    .line 1551
    :pswitch_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/PowerManagerService$BrightnessState;->curValue:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-int v0, v0

    move v12, v0

    .line 1556
    :cond_49
    :goto_49
    const/16 v21, 0xf

    .line 1557
    .local v21, steps:I
    and-int/lit8 v22, p1, 0x2

    if-nez v22, :cond_6d

    .line 1561
    const/high16 v19, 0x3fc0

    .line 1562
    .local v19, scale:F
    const/high16 v22, 0x41a0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v17, v22, v23

    .line 1563
    .local v17, ratio:F
    const/high16 v22, 0x3f80

    cmpl-float v22, v17, v22

    if-lez v22, :cond_62

    const/high16 v17, 0x3f80

    .line 1564
    :cond_62
    and-int/lit8 v22, p1, 0x1

    if-nez v22, :cond_178

    .line 1565
    and-int/lit8 v22, v14, 0x2

    if-eqz v22, :cond_169

    .line 1567
    const/16 v21, 0xf

    .line 1572
    :goto_6c
    const/4 v7, 0x0

    .line 1592
    .end local v17           #ratio:F
    .end local v19           #scale:F
    :cond_6d
    :goto_6d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1593
    .local v10, identity:J
    const-string v22, "PowerManagerService"

    const-string v23, "UpdateLightsLocked 1"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1596
    :try_start_78
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move v1, v7

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteScreenBrightness(I)V
    :try_end_84
    .catchall {:try_start_78 .. :try_end_84} :catchall_1bf
    .catch Landroid/os/RemoteException; {:try_start_78 .. :try_end_84} :catch_1d0

    .line 1600
    :goto_84
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;

    move-object/from16 v22, v0

    const/16 v23, 0xff

    move-object/from16 v0, v22

    move v1, v7

    move/from16 v2, v21

    move/from16 v3, v23

    move v4, v12

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/PowerManagerService$BrightnessState;->setTargetLocked(IIII)V

    .line 1604
    const/16 v20, 0x1

    .line 1625
    const-string v22, "PowerManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "UpdateLightsLocked brightness_screen = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1628
    const/4 v5, 0x0

    .line 1629
    .local v5, ALCset:Z
    const/16 v22, 0x14

    move v0, v7

    move/from16 v1, v22

    if-le v0, v1, :cond_dd

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/PowerManagerService;->getPreventALCstate()Z

    move-result v22

    if-nez v22, :cond_dd

    .line 1633
    invoke-direct/range {p0 .. p0}, Lcom/android/server/PowerManagerService;->getPreferredALCMODEON()Z

    move-result v22

    if-eqz v22, :cond_dd

    .line 1636
    const/16 v20, 0x0

    .line 1640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mLightAnimator:Lcom/android/server/PowerManagerService$LightAnimator;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1641
    const/4 v5, 0x1

    .line 1648
    :cond_dd
    and-int/lit8 v22, v14, 0x1

    if-nez v22, :cond_1c4

    and-int/lit8 v22, p1, 0x1

    if-eqz v22, :cond_1c4

    .line 1650
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move v1, v5

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/server/PowerManagerService;->do_PreferredALCMODEON(ZZ)Z

    .line 1659
    .end local v5           #ALCset:Z
    .end local v10           #identity:J
    .end local v12           #nominalCurrentValue:I
    .end local v21           #steps:I
    :cond_ef
    :goto_ef
    if-eqz v20, :cond_116

    .line 1661
    const-string v22, "PowerManagerService"

    const-string v23, "Scheduling light animator!"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mLightAnimator:Lcom/android/server/PowerManagerService$LightAnimator;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1664
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mLightAnimator:Lcom/android/server/PowerManagerService$LightAnimator;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1667
    :cond_116
    if-eqz v13, :cond_122

    .line 1669
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move v1, v13

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/server/PowerManagerService;->setLightBrightness(II)V

    .line 1671
    :cond_122
    if-eqz v9, :cond_13a

    .line 1672
    const/16 v6, 0x14

    .line 1673
    .local v6, brightness:I
    and-int/lit8 v22, p1, 0x10

    if-eqz v22, :cond_133

    const/16 v22, 0xa

    move v0, v6

    move/from16 v1, v22

    if-le v0, v1, :cond_133

    .line 1675
    const/16 v6, 0xa

    .line 1678
    :cond_133
    move-object/from16 v0, p0

    move v1, v9

    move v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/server/PowerManagerService;->setLightBrightness(II)V

    .line 1680
    .end local v6           #brightness:I
    :cond_13a
    if-eqz v15, :cond_b

    .line 1681
    invoke-direct/range {p0 .. p0}, Lcom/android/server/PowerManagerService;->getPreferredBrightness()I

    move-result v6

    .line 1682
    .restart local v6       #brightness:I
    and-int/lit8 v22, p1, 0x10

    if-eqz v22, :cond_14d

    const/16 v22, 0xa

    move v0, v6

    move/from16 v1, v22

    if-le v0, v1, :cond_14d

    .line 1684
    const/16 v6, 0xa

    .line 1687
    :cond_14d
    move-object/from16 v0, p0

    move v1, v15

    move v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/server/PowerManagerService;->setLightBrightness(II)V

    goto/16 :goto_b

    .line 1497
    .end local v6           #brightness:I
    .end local v7           #brightness_screen:I
    :cond_156
    or-int/lit8 v15, v15, 0x8

    goto/16 :goto_1f

    .line 1518
    :cond_15a
    or-int/lit8 v15, v15, 0x4

    goto/16 :goto_29

    .line 1540
    .restart local v7       #brightness_screen:I
    .restart local v12       #nominalCurrentValue:I
    :pswitch_15e
    move/from16 v12, v16

    .line 1541
    goto/16 :goto_49

    .line 1543
    :pswitch_162
    const/16 v12, 0x14

    .line 1544
    goto/16 :goto_49

    .line 1546
    :pswitch_166
    const/4 v12, 0x0

    .line 1547
    goto/16 :goto_49

    .line 1570
    .restart local v17       #ratio:F
    .restart local v19       #scale:F
    .restart local v21       #steps:I
    :cond_169
    const/high16 v22, 0x4170

    mul-float v22, v22, v17

    const/high16 v23, 0x3fc0

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v21, v0

    goto/16 :goto_6c

    .line 1574
    :cond_178
    and-int/lit8 v22, v14, 0x1

    if-eqz v22, :cond_1b5

    .line 1576
    const/high16 v22, 0x4170

    const/high16 v23, 0x3f80

    sub-float v23, v23, v17

    mul-float v22, v22, v23

    const/high16 v23, 0x3fc0

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v21, v0

    .line 1581
    :goto_18d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mStayOnConditions:I

    move/from16 v22, v0

    if-eqz v22, :cond_1b1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mBatteryService:Lcom/android/server/BatteryService;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mStayOnConditions:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/android/server/BatteryService;->isPowered(I)Z

    move-result v22

    if-eqz v22, :cond_1b1

    .line 1587
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/PowerManagerService;->mScreenOffTime:J

    .line 1589
    :cond_1b1
    const/16 v7, 0x14

    goto/16 :goto_6d

    .line 1579
    :cond_1b5
    const/high16 v22, 0x4170

    mul-float v22, v22, v17

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v21, v0

    goto :goto_18d

    .line 1600
    .end local v17           #ratio:F
    .end local v19           #scale:F
    .restart local v10       #identity:J
    :catchall_1bf
    move-exception v22

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v22

    .line 1652
    .restart local v5       #ALCset:Z
    :cond_1c4
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/server/PowerManagerService;->do_PreferredALCMODEON(ZZ)Z

    goto/16 :goto_ef

    .line 1597
    .end local v5           #ALCset:Z
    :catch_1d0
    move-exception v22

    goto/16 :goto_84

    .line 1538
    nop

    :pswitch_data_1d4
    .packed-switch 0x0
        :pswitch_166
        :pswitch_162
        :pswitch_39
        :pswitch_15e
    .end packed-switch
.end method

.method private updateWakeLockLocked()V
    .registers 3

    .prologue
    .line 543
    iget v0, p0, Lcom/android/server/PowerManagerService;->mStayOnConditions:I

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mBatteryService:Lcom/android/server/BatteryService;

    iget v1, p0, Lcom/android/server/PowerManagerService;->mStayOnConditions:I

    invoke-virtual {v0, v1}, Lcom/android/server/BatteryService;->isPowered(I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 545
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mStayOnWhilePluggedInScreenDimLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->acquire()V

    .line 546
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mStayOnWhilePluggedInPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->acquire()V

    .line 551
    :goto_18
    return-void

    .line 548
    :cond_19
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mStayOnWhilePluggedInScreenDimLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->release()V

    .line 549
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mStayOnWhilePluggedInPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->release()V

    goto :goto_18
.end method


# virtual methods
.method public acquireWakeLock(ILandroid/os/IBinder;Ljava/lang/String;)V
    .registers 10
    .parameter "flags"
    .parameter "lock"
    .parameter "tag"

    .prologue
    .line 562
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 563
    .local v2, uid:I
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    if-eq v2, v3, :cond_12

    .line 564
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.WAKE_LOCK"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    :cond_12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 568
    .local v0, ident:J
    :try_start_16
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v3
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_24

    .line 569
    :try_start_19
    invoke-virtual {p0, p1, p2, v2, p3}, Lcom/android/server/PowerManagerService;->acquireWakeLockLocked(ILandroid/os/IBinder;ILjava/lang/String;)V

    .line 570
    monitor-exit v3
    :try_end_1d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_21

    .line 572
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 574
    return-void

    .line 570
    :catchall_21
    move-exception v4

    :try_start_22
    monitor-exit v3
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    :try_start_23
    throw v4
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_24

    .line 572
    :catchall_24
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public acquireWakeLockLocked(ILandroid/os/IBinder;ILjava/lang/String;)V
    .registers 19
    .parameter "flags"
    .parameter "lock"
    .parameter "uid"
    .parameter "tag"

    .prologue
    .line 577
    const/4 v10, -0x1

    .line 578
    .local v10, acquireUid:I
    const/4 v8, 0x0

    .line 579
    .local v8, acquireName:Ljava/lang/String;
    const/4 v9, -0x1

    .line 582
    .local v9, acquireType:I
    const-string v3, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "acquireWakeLock flags=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " tag="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    move-object v0, v3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/PowerManagerService$LockList;->getIndex(Landroid/os/IBinder;)I

    move-result v11

    .line 588
    .local v11, index:I
    if-gez v11, :cond_fc

    .line 589
    new-instance v2, Lcom/android/server/PowerManagerService$WakeLock;

    move-object v3, p0

    move v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p4

    move/from16 v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/server/PowerManagerService$WakeLock;-><init>(Lcom/android/server/PowerManagerService;ILandroid/os/IBinder;Ljava/lang/String;I)V

    .line 590
    .local v2, wl:Lcom/android/server/PowerManagerService$WakeLock;
    iget v3, v2, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    and-int/lit8 v3, v3, 0x1f

    sparse-switch v3, :sswitch_data_172

    .line 606
    const-string v3, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bad wakelock type for lock \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " flags="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    :cond_76
    :goto_76
    return-void

    .line 593
    :sswitch_77
    iget-boolean v3, p0, Lcom/android/server/PowerManagerService;->mKeyboardVisible:Z

    if-eqz v3, :cond_f2

    const/16 v3, 0xf

    :goto_7d
    iput v3, v2, Lcom/android/server/PowerManagerService$WakeLock;->minState:I

    .line 610
    :goto_7f
    :sswitch_7f
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v3, v2}, Lcom/android/server/PowerManagerService$LockList;->addLock(Lcom/android/server/PowerManagerService$WakeLock;)V

    .line 611
    const/4 v12, 0x1

    .line 616
    .local v12, newlock:Z
    :goto_85
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->isScreenLock(I)Z

    move-result v3

    if-eqz v3, :cond_157

    .line 621
    iget v3, v2, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    const/high16 v4, 0x1000

    and-int/2addr v3, v4

    if-eqz v3, :cond_106

    .line 622
    iget v13, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    .line 623
    .local v13, oldWakeLockState:I
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v3}, Lcom/android/server/PowerManagerService$LockList;->reactivateScreenLocksLocked()I

    move-result v3

    iput v3, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    .line 625
    const-string v3, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wakeup here mUserState=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mWakeLockState=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " previous wakeLockState=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    .end local v13           #oldWakeLockState:I
    :goto_d8
    iget v3, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    iget v4, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    or-int/2addr v3, v4

    invoke-direct {p0, v3}, Lcom/android/server/PowerManagerService;->setPowerState(I)V

    .line 650
    :cond_e0
    :goto_e0
    if-eqz v12, :cond_e8

    .line 651
    iget v10, v2, Lcom/android/server/PowerManagerService$WakeLock;->uid:I

    .line 652
    iget-object v8, v2, Lcom/android/server/PowerManagerService$WakeLock;->tag:Ljava/lang/String;

    .line 653
    iget v9, v2, Lcom/android/server/PowerManagerService$WakeLock;->monitorType:I

    .line 656
    :cond_e8
    if-ltz v9, :cond_76

    .line 658
    :try_start_ea
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3, v10, v8, v9}, Lcom/android/internal/app/IBatteryStats;->noteStartWakelock(ILjava/lang/String;I)V
    :try_end_ef
    .catch Landroid/os/RemoteException; {:try_start_ea .. :try_end_ef} :catch_f0

    goto :goto_76

    .line 659
    :catch_f0
    move-exception v3

    goto :goto_76

    .line 593
    .end local v12           #newlock:Z
    :cond_f2
    const/4 v3, 0x7

    goto :goto_7d

    .line 596
    :sswitch_f4
    const/4 v3, 0x3

    iput v3, v2, Lcom/android/server/PowerManagerService$WakeLock;->minState:I

    goto :goto_7f

    .line 599
    :sswitch_f8
    const/4 v3, 0x1

    iput v3, v2, Lcom/android/server/PowerManagerService$WakeLock;->minState:I

    goto :goto_7f

    .line 613
    .end local v2           #wl:Lcom/android/server/PowerManagerService$WakeLock;
    :cond_fc
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v3, v11}, Lcom/android/server/PowerManagerService$LockList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PowerManagerService$WakeLock;

    .line 614
    .restart local v2       #wl:Lcom/android/server/PowerManagerService$WakeLock;
    const/4 v12, 0x0

    .restart local v12       #newlock:Z
    goto :goto_85

    .line 632
    :cond_106
    const-string v3, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "here mUserState=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mLocks.gatherState()=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v5}, Lcom/android/server/PowerManagerService$LockList;->gatherState()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mWakeLockState=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    iget v3, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    iget v4, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    or-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v4}, Lcom/android/server/PowerManagerService$LockList;->gatherState()I

    move-result v4

    and-int/2addr v3, v4

    iput v3, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    goto :goto_d8

    .line 641
    :cond_157
    and-int/lit8 v3, p1, 0x1f

    const/4 v4, 0x1

    if-ne v3, v4, :cond_e0

    .line 642
    if-eqz v12, :cond_169

    .line 643
    iget v3, p0, Lcom/android/server/PowerManagerService;->mPartialCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/PowerManagerService;->mPartialCount:I

    .line 644
    iget v3, p0, Lcom/android/server/PowerManagerService;->mPartialCount:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_169

    .line 648
    :cond_169
    const/4 v3, 0x1

    const-string v4, "PowerManagerService"

    invoke-static {v3, v4}, Landroid/os/Power;->acquireWakeLock(ILjava/lang/String;)V

    goto/16 :goto_e0

    .line 590
    nop

    :sswitch_data_172
    .sparse-switch
        0x1 -> :sswitch_7f
        0x6 -> :sswitch_f8
        0xa -> :sswitch_f4
        0x1a -> :sswitch_77
    .end sparse-switch
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 22
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 837
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    move-object v13, v0

    const-string v14, "android.permission.DUMP"

    invoke-virtual {v13, v14}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v13

    if-eqz v13, :cond_39

    .line 839
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Permission Denial: can\'t dump PowerManager from from pid="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", uid="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 916
    :goto_38
    return-void

    .line 845
    :cond_39
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 847
    .local v8, now:J
    const-string v13, "Power Manager State:"

    move-object/from16 v0, p2

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 848
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  mIsPowered="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mIsPowered:Z

    move v14, v0

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " mPowerState="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mPowerState:I

    move v14, v0

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " mScreenOffTime="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/PowerManagerService;->mScreenOffTime:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " ms"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 852
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  mPartialCount="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mPartialCount:I

    move v14, v0

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 853
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  mWakeLockState="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    move v14, v0

    invoke-static {v14}, Lcom/android/server/PowerManagerService;->dumpPowerState(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 854
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  mUserState="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mUserState:I

    move v14, v0

    invoke-static {v14}, Lcom/android/server/PowerManagerService;->dumpPowerState(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 855
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  mPowerState="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mPowerState:I

    move v14, v0

    invoke-static {v14}, Lcom/android/server/PowerManagerService;->dumpPowerState(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 856
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  mLocks.gather="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/android/server/PowerManagerService$LockList;->gatherState()I

    move-result v14

    invoke-static {v14}, Lcom/android/server/PowerManagerService;->dumpPowerState(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 857
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  mNextTimeout="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/PowerManagerService;->mNextTimeout:J

    move-wide v14, v0

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " now="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/PowerManagerService;->mNextTimeout:J

    move-wide v14, v0

    sub-long/2addr v14, v8

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "s from now"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 859
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  mDimScreen="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mDimScreen:Z

    move v14, v0

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " mStayOnConditions="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mStayOnConditions:I

    move v14, v0

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 861
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  mOffBecauseOfUser="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mOffBecauseOfUser:Z

    move v14, v0

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " mUserState="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mUserState:I

    move v14, v0

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 863
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  mBroadcastQueue={"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    move-object v14, v0

    const/4 v15, 0x0

    aget v14, v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x2c

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    move-object v14, v0

    const/4 v15, 0x1

    aget v14, v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x2c

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    move-object v14, v0

    const/4 v15, 0x2

    aget v14, v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "}"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 865
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  mBroadcastWhy={"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mBroadcastWhy:[I

    move-object v14, v0

    const/4 v15, 0x0

    aget v14, v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x2c

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mBroadcastWhy:[I

    move-object v14, v0

    const/4 v15, 0x1

    aget v14, v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x2c

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mBroadcastWhy:[I

    move-object v14, v0

    const/4 v15, 0x2

    aget v14, v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "}"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 867
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  mPokey="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mPokey:I

    move v14, v0

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " mPokeAwakeonSet="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mPokeAwakeOnSet:Z

    move v14, v0

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 868
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  mKeyboardVisible="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mKeyboardVisible:Z

    move v14, v0

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " mUserActivityAllowed="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mUserActivityAllowed:Z

    move v14, v0

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 870
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  mKeylightDelay="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mKeylightDelay:I

    move v14, v0

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " mDimDelay="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    move v14, v0

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " mScreenOffDelay="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    move v14, v0

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 872
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  mPreventScreenOn="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mPreventScreenOn:Z

    move v14, v0

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "  mScreenBrightnessOverride="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mScreenBrightnessOverride:I

    move v14, v0

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 874
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  mTotalDelaySetting="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mTotalDelaySetting:I

    move v14, v0

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 875
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  mBroadcastWakeLock="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    move-object v14, v0

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 876
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  mStayOnWhilePluggedInScreenDimLock="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mStayOnWhilePluggedInScreenDimLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    move-object v14, v0

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 877
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  mStayOnWhilePluggedInPartialLock="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mStayOnWhilePluggedInPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    move-object v14, v0

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 878
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  mPreventScreenOnPartialLock="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mPreventScreenOnPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    move-object v14, v0

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 879
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;

    move-object v13, v0

    const-string v14, "  mScreenBrightness: "

    move-object v0, v13

    move-object/from16 v1, p2

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PowerManagerService$BrightnessState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 880
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mKeyboardBrightness:Lcom/android/server/PowerManagerService$BrightnessState;

    move-object v13, v0

    const-string v14, "  mKeyboardBrightness: "

    move-object v0, v13

    move-object/from16 v1, p2

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PowerManagerService$BrightnessState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 881
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mButtonBrightness:Lcom/android/server/PowerManagerService$BrightnessState;

    move-object v13, v0

    const-string v14, "  mButtonBrightness: "

    move-object v0, v13

    move-object/from16 v1, p2

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PowerManagerService$BrightnessState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 883
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/android/server/PowerManagerService$LockList;->size()I

    move-result v3

    .line 884
    .local v3, N:I
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 885
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mLocks.size="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 886
    const/4 v6, 0x0

    .local v6, i:I
    :goto_419
    if-ge v6, v3, :cond_489

    .line 887
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    move-object v13, v0

    invoke-virtual {v13, v6}, Lcom/android/server/PowerManagerService$LockList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/PowerManagerService$WakeLock;

    .line 888
    .local v12, wl:Lcom/android/server/PowerManagerService$WakeLock;
    iget v13, v12, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    and-int/lit8 v13, v13, 0x1f

    invoke-static {v13}, Lcom/android/server/PowerManagerService;->lockType(I)Ljava/lang/String;

    move-result-object v11

    .line 889
    .local v11, type:Ljava/lang/String;
    const-string v4, ""

    .line 890
    .local v4, acquireCausesWakeup:Ljava/lang/String;
    iget v13, v12, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    const/high16 v14, 0x1000

    and-int/2addr v13, v14

    if-eqz v13, :cond_439

    .line 891
    const-string v4, "ACQUIRE_CAUSES_WAKEUP "

    .line 893
    :cond_439
    const-string v5, ""

    .line 894
    .local v5, activated:Ljava/lang/String;
    iget-boolean v13, v12, Lcom/android/server/PowerManagerService$WakeLock;->activated:Z

    if-eqz v13, :cond_441

    .line 895
    const-string v5, " activated"

    .line 897
    :cond_441
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " \'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v12, Lcom/android/server/PowerManagerService$WakeLock;->tag:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " (minState="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v12, Lcom/android/server/PowerManagerService$WakeLock;->minState:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 886
    add-int/lit8 v6, v6, 0x1

    goto :goto_419

    .line 901
    .end local v4           #acquireCausesWakeup:Ljava/lang/String;
    .end local v5           #activated:Ljava/lang/String;
    .end local v11           #type:Ljava/lang/String;
    .end local v12           #wl:Lcom/android/server/PowerManagerService$WakeLock;
    :cond_489
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 902
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mPokeLocks.size="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mPokeLocks:Ljava/util/HashMap;

    move-object v14, v0

    invoke-virtual {v14}, Ljava/util/HashMap;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 903
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mPokeLocks:Ljava/util/HashMap;

    move-object v13, v0

    invoke-virtual {v13}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_4c1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_52b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/PowerManagerService$PokeLock;

    .line 904
    .local v10, p:Lcom/android/server/PowerManagerService$PokeLock;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "    poke lock \'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v10, Lcom/android/server/PowerManagerService$PokeLock;->tag:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\':"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v10, Lcom/android/server/PowerManagerService$PokeLock;->pokey:I

    and-int/lit8 v14, v14, 0x1

    if-eqz v14, :cond_51f

    const-string v14, " POKE_LOCK_IGNORE_CHEEK_EVENTS"

    :goto_4ec
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v10, Lcom/android/server/PowerManagerService$PokeLock;->pokey:I

    and-int/lit8 v14, v14, 0x8

    if-eqz v14, :cond_522

    const-string v14, " POKE_LOCK_IGNORE_TOUCH_AND_CHEEK_EVENTS"

    :goto_4f8
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v10, Lcom/android/server/PowerManagerService$PokeLock;->pokey:I

    and-int/lit8 v14, v14, 0x2

    if-eqz v14, :cond_525

    const-string v14, " POKE_LOCK_SHORT_TIMEOUT"

    :goto_504
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v10, Lcom/android/server/PowerManagerService$PokeLock;->pokey:I

    and-int/lit8 v14, v14, 0x4

    if-eqz v14, :cond_528

    const-string v14, " POKE_LOCK_MEDIUM_TIMEOUT"

    :goto_510
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4c1

    :cond_51f
    const-string v14, ""

    goto :goto_4ec

    :cond_522
    const-string v14, ""

    goto :goto_4f8

    :cond_525
    const-string v14, ""

    goto :goto_504

    :cond_528
    const-string v14, ""

    goto :goto_510

    .line 915
    .end local v10           #p:Lcom/android/server/PowerManagerService$PokeLock;
    :cond_52b
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto/16 :goto_38
.end method

.method public enableUserActivity(Z)V
    .registers 5
    .parameter "enabled"

    .prologue
    .line 2253
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v0

    .line 2254
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mUserActivityAllowed:Z

    .line 2255
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/PowerManagerService;->mLastEventTime:J

    .line 2256
    monitor-exit v0

    .line 2257
    return-void

    .line 2256
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method getPolicyLocked()Landroid/view/WindowManagerPolicy;
    .registers 2

    .prologue
    .line 2394
    :goto_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mDoneBooting:Z

    if-nez v0, :cond_10

    .line 2396
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_d} :catch_e

    goto :goto_0

    .line 2397
    :catch_e
    move-exception v0

    goto :goto_0

    .line 2401
    :cond_10
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    return-object v0
.end method

.method public getPreventALCstate()Z
    .registers 2

    .prologue
    .line 1854
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->preventALC:Z

    return v0
.end method

.method public getRotationUpOnce()Z
    .registers 2

    .prologue
    .line 2146
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->SlideUpOnce:Z

    return v0
.end method

.method public getScreenOnTime()J
    .registers 6

    .prologue
    .line 2063
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v0

    .line 2064
    :try_start_3
    iget-wide v1, p0, Lcom/android/server/PowerManagerService;->mScreenOnStartTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_10

    .line 2065
    iget-wide v1, p0, Lcom/android/server/PowerManagerService;->mScreenOnTime:J

    monitor-exit v0

    move-wide v0, v1

    .line 2067
    :goto_f
    return-wide v0

    :cond_10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/PowerManagerService;->mScreenOnStartTime:J

    sub-long/2addr v1, v3

    iget-wide v3, p0, Lcom/android/server/PowerManagerService;->mScreenOnTime:J

    add-long/2addr v1, v3

    monitor-exit v0

    move-wide v0, v1

    goto :goto_f

    .line 2069
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public get_userMakeSleep()Z
    .registers 4

    .prologue
    .line 2210
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get_userMakeSleep userMakeSleep = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->proximityNear:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2211
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->proximityNear:Z

    return v0
.end method

.method public goToSleep(J)V
    .registers 6
    .parameter "time"

    .prologue
    .line 2040
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2041
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v0

    .line 2042
    :try_start_b
    invoke-direct {p0, p1, p2}, Lcom/android/server/PowerManagerService;->goToSleepLocked(J)V

    .line 2043
    monitor-exit v0

    .line 2044
    return-void

    .line 2043
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_10

    throw v1
.end method

.method public goToSleep_Virtual(J)V
    .registers 6
    .parameter "time"

    .prologue
    .line 2051
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2052
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v0

    .line 2053
    :try_start_b
    invoke-direct {p0, p1, p2}, Lcom/android/server/PowerManagerService;->goToSleepLocked_Virtual(J)V

    .line 2054
    monitor-exit v0

    .line 2055
    return-void

    .line 2054
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_10

    throw v1
.end method

.method public inVSleepState()I
    .registers 2

    .prologue
    .line 2197
    iget v0, p0, Lcom/android/server/PowerManagerService;->mVirtualSleepState:I

    .line 2203
    .local v0, inVSleep:I
    return v0
.end method

.method init(Landroid/content/Context;Lcom/android/server/HardwareService;Landroid/app/IActivityManager;Lcom/android/server/BatteryService;)V
    .registers 7
    .parameter "context"
    .parameter "hardware"
    .parameter "activity"
    .parameter "battery"

    .prologue
    .line 421
    iput-object p2, p0, Lcom/android/server/PowerManagerService;->mHardware:Lcom/android/server/HardwareService;

    .line 422
    iput-object p1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    .line 423
    iput-object p3, p0, Lcom/android/server/PowerManagerService;->mActivityService:Landroid/app/IActivityManager;

    .line 424
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 425
    iput-object p4, p0, Lcom/android/server/PowerManagerService;->mBatteryService:Lcom/android/server/BatteryService;

    .line 427
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/PowerManagerService;->mAudioManager:Landroid/media/AudioManager;

    .line 429
    new-instance v0, Lcom/android/server/PowerManagerService$1;

    const-string v1, "PowerManagerService"

    invoke-direct {v0, p0, v1}, Lcom/android/server/PowerManagerService$1;-><init>(Lcom/android/server/PowerManagerService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/PowerManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 436
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 438
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    monitor-enter v0

    .line 439
    :goto_2b
    :try_start_2b
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mInitComplete:Z
    :try_end_2d
    .catchall {:try_start_2b .. :try_end_2d} :catchall_39

    if-nez v1, :cond_37

    .line 441
    :try_start_2f
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_39
    .catch Ljava/lang/InterruptedException; {:try_start_2f .. :try_end_34} :catch_35

    goto :goto_2b

    .line 442
    :catch_35
    move-exception v1

    goto :goto_2b

    .line 446
    :cond_37
    :try_start_37
    monitor-exit v0

    .line 447
    return-void

    .line 446
    :catchall_39
    move-exception v1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_37 .. :try_end_3b} :catchall_39

    throw v1
.end method

.method initInThread()V
    .registers 13

    .prologue
    const/high16 v5, 0x4000

    const/4 v10, 0x0

    const/4 v2, 0x0

    const/4 v11, 0x1

    .line 450
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    .line 452
    new-instance v1, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    const-string v3, "sleep_broadcast"

    invoke-direct {v1, p0, v11, v3, v11}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;-><init>(Lcom/android/server/PowerManagerService;ILjava/lang/String;Z)V

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    .line 454
    new-instance v1, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    const/4 v3, 0x6

    const-string v4, "StayOnWhilePluggedIn Screen Dim"

    invoke-direct {v1, p0, v3, v4, v10}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;-><init>(Lcom/android/server/PowerManagerService;ILjava/lang/String;Z)V

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mStayOnWhilePluggedInScreenDimLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    .line 456
    new-instance v1, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    const-string v3, "StayOnWhilePluggedIn Partial"

    invoke-direct {v1, p0, v11, v3, v10}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;-><init>(Lcom/android/server/PowerManagerService;ILjava/lang/String;Z)V

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mStayOnWhilePluggedInPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    .line 458
    new-instance v1, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    const-string v3, "PreventScreenOn Partial"

    invoke-direct {v1, p0, v11, v3, v10}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;-><init>(Lcom/android/server/PowerManagerService;ILjava/lang/String;Z)V

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mPreventScreenOnPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    .line 461
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mScreenOnIntent:Landroid/content/Intent;

    .line 462
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mScreenOnIntent:Landroid/content/Intent;

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 463
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mScreenOffIntent:Landroid/content/Intent;

    .line 464
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mScreenOffIntent:Landroid/content/Intent;

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 466
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 469
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(name=?) or (name=?) or (name=?) or (name=?)"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "stay_on_while_plugged_in"

    aput-object v5, v4, v10

    const-string v5, "screen_off_timeout"

    aput-object v5, v4, v11

    const/4 v5, 0x2

    const-string v10, "dim_screen"

    aput-object v10, v4, v5

    const/4 v5, 0x3

    const-string v10, "sensor_illumination"

    aput-object v10, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 477
    .local v8, settingsCursor:Landroid/database/Cursor;
    new-instance v1, Landroid/content/ContentQueryMap;

    const-string v3, "name"

    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v8, v3, v11, v4}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mSettings:Landroid/content/ContentQueryMap;

    .line 478
    new-instance v9, Lcom/android/server/PowerManagerService$SettingsObserver;

    invoke-direct {v9, p0, v2}, Lcom/android/server/PowerManagerService$SettingsObserver;-><init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V

    .line 479
    .local v9, settingsObserver:Lcom/android/server/PowerManagerService$SettingsObserver;
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mSettings:Landroid/content/ContentQueryMap;

    invoke-virtual {v1, v9}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    .line 482
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mSettings:Landroid/content/ContentQueryMap;

    invoke-virtual {v9, v1, v2}, Lcom/android/server/PowerManagerService$SettingsObserver;->update(Ljava/util/Observable;Ljava/lang/Object;)V

    .line 485
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 486
    .local v6, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 487
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/PowerManagerService$BatteryReceiver;

    invoke-direct {v3, p0, v2}, Lcom/android/server/PowerManagerService$BatteryReceiver;-><init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V

    invoke-virtual {v1, v3, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 490
    new-instance v7, Landroid/content/IntentFilter;

    const-string v1, "com.google.gservices.intent.action.GSERVICES_CHANGED"

    invoke-direct {v7, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 492
    .local v7, gservicesChangedFilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/PowerManagerService$GservicesChangedReceiver;

    invoke-direct {v3, p0, v2}, Lcom/android/server/PowerManagerService$GservicesChangedReceiver;-><init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V

    invoke-virtual {v1, v3, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 494
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->updateGservicesValues()V

    .line 497
    const/16 v1, 0xf

    invoke-direct {p0, v1}, Lcom/android/server/PowerManagerService;->setPowerState(I)V

    .line 499
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    monitor-enter v1

    .line 500
    const/4 v2, 0x1

    :try_start_bc
    iput-boolean v2, p0, Lcom/android/server/PowerManagerService;->mInitComplete:Z

    .line 501
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 502
    monitor-exit v1

    .line 503
    return-void

    .line 502
    :catchall_c5
    move-exception v2

    monitor-exit v1
    :try_end_c7
    .catchall {:try_start_bc .. :try_end_c7} :catchall_c5

    throw v2
.end method

.method public isScreenOffwhenCall()Z
    .registers 5

    .prologue
    .line 1819
    const/4 v0, 0x0

    .line 1820
    .local v0, isScreenOffwhenCall:Z
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    .line 1821
    :try_start_4
    iget v2, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_12

    invoke-virtual {p0}, Lcom/android/server/PowerManagerService;->inVSleepState()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12

    .line 1824
    const/4 v0, 0x1

    .line 1828
    :cond_12
    monitor-exit v1

    .line 1829
    return v0

    .line 1828
    :catchall_14
    move-exception v2

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_14

    throw v2
.end method

.method public is_screenIsOn()Z
    .registers 3

    .prologue
    .line 1812
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v0

    .line 1813
    :try_start_3
    iget v1, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    :goto_a
    monitor-exit v0

    return v1

    :cond_c
    const/4 v1, 0x0

    goto :goto_a

    .line 1814
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method logPointerDownEvent()V
    .registers 5

    .prologue
    .line 1149
    iget-wide v0, p0, Lcom/android/server/PowerManagerService;->mLastTouchDown:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_14

    .line 1150
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/PowerManagerService;->mLastTouchDown:J

    .line 1151
    iget v0, p0, Lcom/android/server/PowerManagerService;->mTouchCycles:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/PowerManagerService;->mTouchCycles:I

    .line 1154
    :cond_14
    return-void
.end method

.method logPointerUpEvent()V
    .registers 7

    .prologue
    .line 1141
    iget-wide v0, p0, Lcom/android/server/PowerManagerService;->mTotalTouchDownTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/PowerManagerService;->mLastTouchDown:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/PowerManagerService;->mTotalTouchDownTime:J

    .line 1142
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/PowerManagerService;->mLastTouchDown:J

    .line 1144
    return-void
.end method

.method public monitor()V
    .registers 3

    .prologue
    .line 2425
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v0

    :try_start_3
    monitor-exit v0

    .line 2426
    return-void

    .line 2425
    :catchall_5
    move-exception v1

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_5

    throw v1
.end method

.method public preventScreenOn(Z)V
    .registers 8
    .parameter "prevent"

    .prologue
    const-string v1, "PowerManagerService"

    .line 1186
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.DEVICE_POWER"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    .line 1189
    if-eqz p1, :cond_29

    .line 1193
    :try_start_f
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mPreventScreenOnPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v2}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->acquire()V

    .line 1198
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mForceReenableScreenTask:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1199
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mForceReenableScreenTask:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1204
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/PowerManagerService;->mPreventScreenOn:Z

    .line 1244
    :goto_27
    monitor-exit v1

    .line 1245
    return-void

    .line 1207
    :cond_29
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/PowerManagerService;->mPreventScreenOn:Z

    .line 1211
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mForceReenableScreenTask:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1216
    iget v2, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_5f

    .line 1218
    const-string v2, "PowerManagerService"

    const-string v3, "preventScreenOn: turning on after a prior preventScreenOn(true)!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    const/4 v0, 0x0

    .line 1229
    .local v0, err:I
    const/4 v2, 0x1

    invoke-static {v2}, Landroid/os/Power;->setScreenState(Z)I

    .line 1235
    if-eqz v0, :cond_5f

    .line 1236
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preventScreenOn: error from Power.setScreenState(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    .end local v0           #err:I
    :cond_5f
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mPreventScreenOnPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v2}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->release()V

    goto :goto_27

    .line 1244
    :catchall_65
    move-exception v2

    monitor-exit v1
    :try_end_67
    .catchall {:try_start_f .. :try_end_67} :catchall_65

    throw v2
.end method

.method public reboot(Ljava/lang/String;)V
    .registers 6
    .parameter "reason"

    .prologue
    .line 2225
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.DEVICE_POWER"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2226
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    .line 2228
    :try_start_b
    invoke-static {p1}, Landroid/os/Power;->reboot(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_19
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_e} :catch_10

    .line 2232
    :goto_e
    :try_start_e
    monitor-exit v1

    .line 2233
    return-void

    .line 2229
    :catch_10
    move-exception v0

    .line 2230
    .local v0, e:Ljava/io/IOException;
    const-string v2, "PowerManagerService"

    const-string v3, "Reboot failed!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e

    .line 2232
    .end local v0           #e:Ljava/io/IOException;
    :catchall_19
    move-exception v2

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_19

    throw v2
.end method

.method public releaseWakeLock(Landroid/os/IBinder;)V
    .registers 6
    .parameter "lock"

    .prologue
    .line 666
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 667
    .local v0, uid:I
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_12

    .line 668
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WAKE_LOCK"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    :cond_12
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    .line 672
    const/4 v2, 0x0

    :try_start_16
    invoke-direct {p0, p1, v2}, Lcom/android/server/PowerManagerService;->releaseWakeLockLocked(Landroid/os/IBinder;Z)V

    .line 673
    monitor-exit v1

    .line 674
    return-void

    .line 673
    :catchall_1b
    move-exception v2

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_1b

    throw v2
.end method

.method screenIsBright()Z
    .registers 4

    .prologue
    .line 1909
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v0

    .line 1910
    :try_start_3
    iget v1, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v1, v1, 0x3

    const/4 v2, 0x3

    if-ne v1, v2, :cond_d

    const/4 v1, 0x1

    :goto_b
    monitor-exit v0

    return v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_b

    .line 1911
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method screenIsOn()Z
    .registers 3

    .prologue
    .line 1903
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v0

    .line 1904
    :try_start_3
    iget v1, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    :goto_a
    monitor-exit v0

    return v1

    :cond_c
    const/4 v1, 0x0

    goto :goto_a

    .line 1905
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public setKeyboardVisibility(Z)V
    .registers 2
    .parameter "visible"

    .prologue
    .line 2246
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mKeyboardVisible:Z

    .line 2247
    return-void
.end method

.method public setPokeLock(ILandroid/os/IBinder;Ljava/lang/String;)V
    .registers 24
    .parameter "pokey"
    .parameter "token"
    .parameter "tag"

    .prologue
    .line 747
    const-string v16, "PowerManagerService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "setPokeLock pokey = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const-string v17, "android.permission.DEVICE_POWER"

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    if-nez p2, :cond_4e

    .line 750
    const-string v16, "PowerManagerService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "setPokeLock got null token for tag=\'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    :goto_4d
    return-void

    .line 754
    :cond_4e
    and-int/lit8 v16, p1, 0x6

    const/16 v17, 0x6

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_60

    .line 755
    new-instance v16, Ljava/lang/IllegalArgumentException;

    const-string v17, "setPokeLock can\'t have both POKE_LOCK_SHORT_TIMEOUT and POKE_LOCK_MEDIUM_TIMEOUT"

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 759
    :cond_60
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 760
    if-eqz p1, :cond_f0

    .line 761
    :try_start_69
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mPokeLocks:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/PowerManagerService$PokeLock;

    .line 762
    .local v14, p:Lcom/android/server/PowerManagerService$PokeLock;
    const/4 v12, 0x0

    .line 763
    .local v12, oldPokey:I
    if-eqz v14, :cond_d0

    .line 764
    iget v12, v14, Lcom/android/server/PowerManagerService$PokeLock;->pokey:I

    .line 765
    move/from16 v0, p1

    move-object v1, v14

    iput v0, v1, Lcom/android/server/PowerManagerService$PokeLock;->pokey:I

    .line 770
    :goto_83
    and-int/lit8 v13, v12, 0x6

    .line 771
    .local v13, oldTimeout:I
    and-int/lit8 v9, p1, 0x6

    .line 772
    .local v9, newTimeout:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mPowerState:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x1

    if-nez v17, :cond_9a

    if-eq v13, v9, :cond_9a

    .line 773
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object v1, v14

    iput-boolean v0, v1, Lcom/android/server/PowerManagerService$PokeLock;->awakeOnSet:Z

    .line 782
    .end local v9           #newTimeout:I
    .end local v12           #oldPokey:I
    .end local v13           #oldTimeout:I
    .end local v14           #p:Lcom/android/server/PowerManagerService$PokeLock;
    :cond_9a
    :goto_9a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mPokey:I

    move v12, v0

    .line 783
    .restart local v12       #oldPokey:I
    const/4 v6, 0x0

    .line 784
    .local v6, cumulative:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mPokeAwakeOnSet:Z

    move v10, v0

    .line 785
    .local v10, oldAwakeOnSet:Z
    const/4 v5, 0x0

    .line 786
    .local v5, awakeOnSet:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mPokeLocks:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_b4
    :goto_b4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_10d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/PowerManagerService$PokeLock;

    .line 787
    .restart local v14       #p:Lcom/android/server/PowerManagerService$PokeLock;
    move-object v0, v14

    iget v0, v0, Lcom/android/server/PowerManagerService$PokeLock;->pokey:I

    move/from16 v17, v0

    or-int v6, v6, v17

    .line 788
    move-object v0, v14

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService$PokeLock;->awakeOnSet:Z

    move/from16 v17, v0

    if-eqz v17, :cond_b4

    .line 789
    const/4 v5, 0x1

    goto :goto_b4

    .line 767
    .end local v5           #awakeOnSet:Z
    .end local v6           #cumulative:I
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v10           #oldAwakeOnSet:Z
    :cond_d0
    new-instance v14, Lcom/android/server/PowerManagerService$PokeLock;

    .end local v14           #p:Lcom/android/server/PowerManagerService$PokeLock;
    move-object v0, v14

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/PowerManagerService$PokeLock;-><init>(Lcom/android/server/PowerManagerService;ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 768
    .restart local v14       #p:Lcom/android/server/PowerManagerService$PokeLock;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mPokeLocks:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_83

    .line 804
    .end local v12           #oldPokey:I
    .end local v14           #p:Lcom/android/server/PowerManagerService$PokeLock;
    :catchall_ed
    move-exception v17

    monitor-exit v16
    :try_end_ef
    .catchall {:try_start_69 .. :try_end_ef} :catchall_ed

    throw v17

    .line 776
    :cond_f0
    :try_start_f0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mPokeLocks:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/PowerManagerService$PokeLock;

    .line 777
    .local v15, rLock:Lcom/android/server/PowerManagerService$PokeLock;
    if-eqz v15, :cond_9a

    .line 778
    const/16 v17, 0x0

    move-object/from16 v0, p2

    move-object v1, v15

    move/from16 v2, v17

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto :goto_9a

    .line 792
    .end local v15           #rLock:Lcom/android/server/PowerManagerService$PokeLock;
    .restart local v5       #awakeOnSet:Z
    .restart local v6       #cumulative:I
    .restart local v7       #i$:Ljava/util/Iterator;
    .restart local v10       #oldAwakeOnSet:Z
    .restart local v12       #oldPokey:I
    :cond_10d
    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PowerManagerService;->mPokey:I

    .line 793
    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/PowerManagerService;->mPokeAwakeOnSet:Z

    .line 795
    and-int/lit8 v11, v12, 0x6

    .line 796
    .local v11, oldCumulativeTimeout:I
    and-int/lit8 v8, p1, 0x6

    .line 798
    .local v8, newCumulativeTimeout:I
    if-eq v11, v8, :cond_139

    .line 799
    invoke-direct/range {p0 .. p0}, Lcom/android/server/PowerManagerService;->setScreenOffTimeoutsLocked()V

    .line 802
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mTimeoutTask:Lcom/android/server/PowerManagerService$TimeoutTask;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/PowerManagerService$TimeoutTask;->nextState:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/PowerManagerService;->setTimeoutLocked(JI)V

    .line 804
    :cond_139
    monitor-exit v16
    :try_end_13a
    .catchall {:try_start_f0 .. :try_end_13a} :catchall_ed

    goto/16 :goto_4d
.end method

.method setPolicy(Landroid/view/WindowManagerPolicy;)V
    .registers 4
    .parameter "p"

    .prologue
    .line 2387
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v0

    .line 2388
    :try_start_3
    iput-object p1, p0, Lcom/android/server/PowerManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    .line 2389
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 2390
    monitor-exit v0

    .line 2391
    return-void

    .line 2390
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public setPreventALC(Z)V
    .registers 4
    .parameter "prevent"

    .prologue
    .line 1840
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->preventALC:Z

    .line 1841
    if-eqz p1, :cond_9

    .line 1844
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/PowerManagerService;->do_PreferredALCMODEON(ZZ)Z

    .line 1850
    :cond_9
    return-void
.end method

.method public setRotationUpOnce(Z)V
    .registers 2
    .parameter "set"

    .prologue
    .line 2138
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->SlideUpOnce:Z

    .line 2141
    return-void
.end method

.method public setScreenBrightnessOverride(I)V
    .registers 5
    .parameter "brightness"

    .prologue
    .line 1248
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1250
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v0

    .line 1251
    :try_start_b
    iget v1, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessOverride:I

    if-eq v1, p1, :cond_17

    .line 1252
    iput p1, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessOverride:I

    .line 1253
    iget v1, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/server/PowerManagerService;->updateLightsLocked(II)V

    .line 1255
    :cond_17
    monitor-exit v0

    .line 1256
    return-void

    .line 1255
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_b .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public setStayOnSetting(I)V
    .registers 5
    .parameter "val"

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "stay_on_while_plugged_in"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 373
    return-void
.end method

.method public setVirtualSleepState(I)V
    .registers 8
    .parameter "set"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "PowerManagerService"

    .line 2151
    const/4 v0, 0x0

    .line 2152
    .local v0, result:I
    const-string v1, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setVirtualSleepState set = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2153
    iget v1, p0, Lcom/android/server/PowerManagerService;->mVirtualSleepState:I

    if-eq v1, p1, :cond_35

    .line 2155
    if-eqz p1, :cond_4e

    .line 2160
    invoke-static {v4}, Landroid/os/Power;->enable_proximity_only(Z)I

    move-result v0

    .line 2161
    if-gtz v0, :cond_2d

    .line 2162
    invoke-static {v4}, Landroid/os/Power;->enable_proximity_only(Z)I

    move-result v0

    .line 2163
    :cond_2d
    iput p1, p0, Lcom/android/server/PowerManagerService;->mVirtualSleepState:I

    .line 2168
    sget v1, Lcom/android/server/PowerManagerService;->VirtualCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/server/PowerManagerService;->VirtualCount:I

    .line 2192
    :cond_35
    :goto_35
    const-string v1, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVirtualSleepState result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2194
    return-void

    .line 2174
    :cond_4e
    sget v1, Lcom/android/server/PowerManagerService;->VirtualCount:I

    if-lez v1, :cond_57

    .line 2175
    sget v1, Lcom/android/server/PowerManagerService;->VirtualCount:I

    sub-int/2addr v1, v4

    sput v1, Lcom/android/server/PowerManagerService;->VirtualCount:I

    .line 2179
    :cond_57
    invoke-static {v3}, Landroid/os/Power;->enable_proximity_only(Z)I

    move-result v0

    .line 2180
    if-gtz v0, :cond_61

    .line 2181
    invoke-static {v3}, Landroid/os/Power;->enable_proximity_only(Z)I

    move-result v0

    .line 2183
    :cond_61
    iput p1, p0, Lcom/android/server/PowerManagerService;->mVirtualSleepState:I

    .line 2185
    iput-boolean v3, p0, Lcom/android/server/PowerManagerService;->proximityNear:Z

    goto :goto_35
.end method

.method public shutdown()V
    .registers 4

    .prologue
    .line 2219
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2220
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v0

    .line 2221
    :try_start_b
    invoke-static {}, Landroid/os/Power;->shutdown()V

    .line 2222
    monitor-exit v0

    .line 2223
    return-void

    .line 2222
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_10

    throw v1
.end method

.method systemReady()V
    .registers 10

    .prologue
    const-string v0, "PowerManagerService"

    .line 2405
    iget-object v8, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v8

    .line 2406
    :try_start_5
    const-string v0, "PowerManagerService"

    const-string v1, "system ready!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2407
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/PowerManagerService;->mDoneBooting:Z

    .line 2408
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 2409
    .local v6, identity:J
    const-string v0, "PowerManagerService"

    const-string v1, "systemReady"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_45

    .line 2411
    :try_start_1a
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->getPreferredBrightness()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteScreenBrightness(I)V

    .line 2412
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0}, Lcom/android/internal/app/IBatteryStats;->noteScreenOn()V
    :try_end_28
    .catchall {:try_start_1a .. :try_end_28} :catchall_40
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_28} :catch_48

    .line 2416
    :try_start_28
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2418
    :goto_2b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/PowerManagerService;->userActivity(JZIZ)V

    .line 2419
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->updateWakeLockLocked()V

    .line 2420
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 2421
    monitor-exit v8

    .line 2422
    return-void

    .line 2416
    :catchall_40
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 2421
    .end local v6           #identity:J
    :catchall_45
    move-exception v0

    monitor-exit v8
    :try_end_47
    .catchall {:try_start_28 .. :try_end_47} :catchall_45

    throw v0

    .line 2413
    .restart local v6       #identity:J
    :catch_48
    move-exception v0

    .line 2416
    :try_start_49
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_45

    goto :goto_2b
.end method

.method public timeSinceScreenOn()J
    .registers 6

    .prologue
    .line 2237
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v0

    .line 2238
    :try_start_3
    iget v1, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_e

    .line 2239
    const-wide/16 v1, 0x0

    monitor-exit v0

    move-wide v0, v1

    .line 2241
    :goto_d
    return-wide v0

    :cond_e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/PowerManagerService;->mScreenOffTime:J

    sub-long/2addr v1, v3

    monitor-exit v0

    move-wide v0, v1

    goto :goto_d

    .line 2242
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public userActivity(JZ)V
    .registers 10
    .parameter "time"
    .parameter "noChangeLights"

    .prologue
    const/4 v4, 0x0

    .line 1920
    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/PowerManagerService;->userActivity(JZIZ)V

    .line 1921
    return-void
.end method

.method public userActivity(JZI)V
    .registers 11
    .parameter "time"
    .parameter "noChangeLights"
    .parameter "eventType"

    .prologue
    .line 1945
    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/PowerManagerService;->userActivity(JZIZ)V

    .line 1946
    return-void
.end method

.method public userActivity(JZIZ)V
    .registers 14
    .parameter "time"
    .parameter "noChangeLights"
    .parameter "eventType"
    .parameter "force"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 1951
    iget v3, p0, Lcom/android/server/PowerManagerService;->mPokey:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_f

    if-eq p4, v4, :cond_e

    if-ne p4, v5, :cond_f

    .line 2032
    :cond_e
    :goto_e
    return-void

    .line 1959
    :cond_f
    iget v3, p0, Lcom/android/server/PowerManagerService;->mPokey:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_1d

    if-eq p4, v5, :cond_e

    if-eq p4, v7, :cond_e

    if-eq p4, v6, :cond_e

    if-eq p4, v4, :cond_e

    .line 1978
    :cond_1d
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService;->inVSleepState()I

    move-result v3

    if-eqz v3, :cond_39

    invoke-virtual {p0}, Lcom/android/server/PowerManagerService;->screenIsOn()Z

    move-result v3

    if-nez v3, :cond_39

    if-eq p4, v5, :cond_31

    if-eq p4, v7, :cond_31

    if-eq p4, v6, :cond_31

    if-ne p4, v4, :cond_39

    .line 1982
    :cond_31
    const-string v3, "PowerManagerService"

    const-string v4, "when VSleep ignoring Touch"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 1987
    :cond_39
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v3

    .line 1999
    :try_start_3c
    iget-wide v4, p0, Lcom/android/server/PowerManagerService;->mLastEventTime:J

    cmp-long v4, v4, p1

    if-lez v4, :cond_44

    if-eqz p5, :cond_7c

    .line 2000
    :cond_44
    iput-wide p1, p0, Lcom/android/server/PowerManagerService;->mLastEventTime:J

    .line 2001
    iget-boolean v4, p0, Lcom/android/server/PowerManagerService;->mUserActivityAllowed:Z

    if-nez v4, :cond_4c

    if-eqz p5, :cond_7c

    .line 2003
    :cond_4c
    const/4 v4, 0x5

    if-ne p4, v4, :cond_83

    .line 2004
    iget-boolean v4, p0, Lcom/android/server/PowerManagerService;->mKeyboardVisible:Z

    if-eqz v4, :cond_81

    const/16 v4, 0xf

    :goto_55
    iput v4, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    .line 2010
    :goto_57
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 2011
    .local v2, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_5e
    .catchall {:try_start_3c .. :try_end_5e} :catchall_7e

    move-result-wide v0

    .line 2013
    .local v0, ident:J
    :try_start_5f
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v4, v2, p4}, Lcom/android/internal/app/IBatteryStats;->noteUserActivity(II)V
    :try_end_64
    .catchall {:try_start_5f .. :try_end_64} :catchall_8a
    .catch Landroid/os/RemoteException; {:try_start_5f .. :try_end_64} :catch_8f

    .line 2017
    :try_start_64
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2023
    :goto_67
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v4}, Lcom/android/server/PowerManagerService$LockList;->reactivateScreenLocksLocked()I

    move-result v4

    iput v4, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    .line 2026
    iget v4, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    iget v5, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    or-int/2addr v4, v5

    const/4 v5, 0x1

    invoke-direct {p0, v4, p3, v5}, Lcom/android/server/PowerManagerService;->setPowerState(IZZ)V

    .line 2027
    const/4 v4, 0x3

    invoke-direct {p0, p1, p2, v4}, Lcom/android/server/PowerManagerService;->setTimeoutLocked(JI)V

    .line 2031
    .end local v0           #ident:J
    .end local v2           #uid:I
    :cond_7c
    monitor-exit v3

    goto :goto_e

    :catchall_7e
    move-exception v4

    monitor-exit v3
    :try_end_80
    .catchall {:try_start_64 .. :try_end_80} :catchall_7e

    throw v4

    .line 2004
    :cond_81
    const/4 v4, 0x7

    goto :goto_55

    .line 2007
    :cond_83
    :try_start_83
    iget v4, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    or-int/lit8 v4, v4, 0x3

    iput v4, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    goto :goto_57

    .line 2017
    .restart local v0       #ident:J
    .restart local v2       #uid:I
    :catchall_8a
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 2014
    :catch_8f
    move-exception v4

    .line 2017
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_93
    .catchall {:try_start_83 .. :try_end_93} :catchall_7e

    goto :goto_67
.end method

.method public userActivityWithForce(JZZ)V
    .registers 11
    .parameter "time"
    .parameter "noChangeLights"
    .parameter "force"

    .prologue
    .line 1915
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1916
    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/PowerManagerService;->userActivity(JZIZ)V

    .line 1917
    return-void
.end method

.method public userActivity_Virtual(JZ)V
    .registers 10
    .parameter "time"
    .parameter "noChangeLights"

    .prologue
    const/4 v5, 0x0

    .line 1925
    const-string v0, "PowerManagerService"

    const-string v1, "userActivity_Virtual"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1927
    iput-boolean v5, p0, Lcom/android/server/PowerManagerService;->proximityNear:Z

    .line 1928
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService;->inVSleepState()I

    move-result v0

    if-eqz v0, :cond_17

    .line 1936
    const/4 v4, 0x6

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/PowerManagerService;->userActivity(JZIZ)V

    .line 1942
    :cond_17
    return-void
.end method
