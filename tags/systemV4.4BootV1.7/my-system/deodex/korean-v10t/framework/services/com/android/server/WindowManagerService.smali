.class public Lcom/android/server/WindowManagerService;
.super Landroid/view/IWindowManager$Stub;
.source "WindowManagerService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/WindowManagerService$FadeInOutAnimation;,
        Lcom/android/server/WindowManagerService$DimAnimator;,
        Lcom/android/server/WindowManagerService$H;,
        Lcom/android/server/WindowManagerService$StartingData;,
        Lcom/android/server/WindowManagerService$DummyAnimation;,
        Lcom/android/server/WindowManagerService$AppWindowToken;,
        Lcom/android/server/WindowManagerService$WindowToken;,
        Lcom/android/server/WindowManagerService$WindowState;,
        Lcom/android/server/WindowManagerService$Session;,
        Lcom/android/server/WindowManagerService$InputDispatcherThread;,
        Lcom/android/server/WindowManagerService$KeyQ;,
        Lcom/android/server/WindowManagerService$KeyWaiter;,
        Lcom/android/server/WindowManagerService$PolicyThread;,
        Lcom/android/server/WindowManagerService$WMThread;
    }
.end annotation


# static fields
.field private static APP_TRANSITION_TIMEOUT_SENT:Z = false

.field static final BLUR:Z = true

.field private static final CHEEK_THRESHOLD:F = 0.6f

.field static final DEBUG:Z = false

.field static final DEBUG_ANIM:Z = false

.field static final DEBUG_APP_TRANSITIONS:Z = false

.field static final DEBUG_FOCUS:Z = false

.field static final DEBUG_INPUT:Z = false

.field static final DEBUG_INPUT_METHOD:Z = false

.field static final DEBUG_LAYERS:Z = false

.field static final DEBUG_ORIENTATION:Z = false

.field static final DEBUG_REORDER:Z = false

.field static final DEBUG_SKIP_SLIDE:Z = false

.field static final DEBUG_STARTING_WINDOW:Z = false

.field static final DEBUG_VISIBILITY:Z = false

.field static final DEFAULT_DIM_DURATION:I = 0xc8

.field static final DEFAULT_FADE_IN_OUT_DURATION:I = 0x190

.field static final DIM_DURATION_MULTIPLIER:I = 0x6

.field private static final EVENT_CHEEK:I = 0x0

.field private static final EVENT_IGNORE_DURATION:I = 0x12c

.field private static final EVENT_NONE:I = 0x0

.field private static final EVENT_UNKNOWN:I = 0x0

.field private static FORCE_GC_SENT:Z = false

.field static final INJECT_FAILED:I = 0x0

.field static final INJECT_NO_PERMISSION:I = -0x1

.field static final INJECT_SUCCEEDED:I = 0x1

.field static final KEY_REPEAT_DELAY:I = 0x32

.field static final KEY_REPEAT_FIRST_DELAY:I = 0x2ee

.field static final LOG_WM_NO_SURFACE_MEMORY:I = 0x7918

.field static final MAX_ANIMATION_DURATION:I = 0x2710

.field private static MAX_VIBRATION_COUNT:I = 0x0

.field static final MIN_TIME_BETWEEN_USERACTIVITIES:I = 0x3e8

.field private static ORIENTATION_CHECK_GURAD_SENT:Z = false

.field static final PROFILE_ORIENTATION:Z = false

.field static SEND_MUSIC_KEY_INTENT:Z = false

.field static final SHOW_TRANSACTIONS:Z = false

.field private static final SYSTEM_DEBUGGABLE:Ljava/lang/String; = "ro.debuggable"

.field private static final SYSTEM_SECURE:Ljava/lang/String; = "ro.secure"

.field static final TAG:Ljava/lang/String; = "WindowManager"

.field static final TYPE_LAYER_MULTIPLIER:I = 0x2710

.field static final TYPE_LAYER_OFFSET:I = 0x3e8

.field static final UPDATE_FOCUS_NORMAL:I = 0x0

.field static final UPDATE_FOCUS_PLACING_SURFACES:I = 0x2

.field static final UPDATE_FOCUS_WILL_ASSIGN_LAYERS:I = 0x1

.field static final UPDATE_FOCUS_WILL_PLACE_SURFACES:I = 0x3

.field private static final VIBRATION_RATE:I = 0x2d

.field private static WINDOW_FREEZE_TIMEOUT_SENT:Z = false

.field static final WINDOW_LAYER_MULTIPLIER:I = 0x5

.field private static allowFreeze:Z

.field private static bCAMERA_BTN:Z

.field private static bDoFactoryReset:Z

.field private static bMENU_BTN:Z

.field private static bVOL_DOWN_BTN:Z

.field private static home_pressed_cnt:I

.field static iHodeKey_in_Landscape_Mode:I

.field private static lastOpen:Z

.field private static lastdevice:Lcom/android/server/InputDevice;

.field private static lastevent:Landroid/view/RawInputEvent;

.field static final localLOGV:Z

.field static final sDummyAnimation:Landroid/view/animation/Animation;


# instance fields
.field private check_orientationChangeComplete:Z

.field private lastAlwaysSend:Z

.field final mActivityManager:Landroid/app/IActivityManager;

.field mAnimationPending:Z

.field final mAppTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/WindowManagerService$AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field mAppTransitionReady:Z

.field mAppTransitionTimeout:Z

.field mAppsFreezingScreen:I

.field mBackgroundFillerShown:Z

.field mBackgroundFillerSurface:Landroid/view/Surface;

.field final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field mBlurShown:Z

.field mBlurSurface:Landroid/view/Surface;

.field final mClosingApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/WindowManagerService$AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field mCompatibleScreenFrame:Landroid/graphics/Rect;

.field final mContext:Landroid/content/Context;

.field mCurrentFocus:Lcom/android/server/WindowManagerService$WindowState;

.field final mDestroySurface:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/WindowManagerService$WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mDimAnimator:Lcom/android/server/WindowManagerService$DimAnimator;

.field mDimCurrentAlpha:F

.field mDimDeltaPerMs:F

.field mDimShown:Z

.field mDimSurface:Landroid/view/Surface;

.field mDimTargetAlpha:F

.field mDisplay:Landroid/view/Display;

.field mDisplayEnabled:Z

.field mDisplayFrozen:Z

.field private mEventSize:F

.field private mEventState:I

.field final mExitingAppTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/WindowManagerService$AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field final mExitingTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/WindowManagerService$WindowToken;",
            ">;"
        }
    .end annotation
.end field

.field mFatTouch:Z

.field final mFinishedStarting:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/WindowManagerService$AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field mFocusedApp:Lcom/android/server/WindowManagerService$AppWindowToken;

.field mForceRemoves:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/WindowManagerService$WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mForcedAppOrientation:I

.field mFreezeGcPending:J

.field mFxSession:Landroid/view/SurfaceSession;

.field mH:Lcom/android/server/WindowManagerService$H;

.field final mHaveInputMethods:Z

.field mHoldingScreenOn:Lcom/android/server/WindowManagerService$Session;

.field private mInLayout:Z

.field mInTouchMode:Z

.field mInputMethodAnimLayerAdjustment:I

.field final mInputMethodDialogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/WindowManagerService$WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

.field mInputMethodTarget:Lcom/android/server/WindowManagerService$WindowState;

.field mInputMethodTargetWaitingAnim:Z

.field mInputMethodWindow:Lcom/android/server/WindowManagerService$WindowState;

.field final mInputThread:Lcom/android/server/WindowManagerService$InputDispatcherThread;

.field private mKeyBlocking:Z

.field final mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

.field final mKeyguardDisabled:Landroid/os/TokenWatcher;

.field private mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field mLastBatteryStatsCallTime:J

.field mLastDimAnimTime:J

.field mLastFocus:Lcom/android/server/WindowManagerService$WindowState;

.field mLastRotationFlags:I

.field mLastTouchEventTime:J

.field mLastTouchEventType:I

.field mLastUserActivityCallTime:J

.field mLayoutNeeded:Z

.field final mLimitedAlphaCompositing:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockScreenIsOn:Z

.field mLosingFocus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/WindowManagerService$WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mMinWaitTimeBetweenTouchEvents:I

.field mNextAppTransition:I

.field final mOpeningApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/WindowManagerService$AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingRemove:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/WindowManagerService$WindowState;",
            ">;"
        }
    .end annotation
.end field

.field final mPolicy:Landroid/view/WindowManagerPolicy;

.field mPowerManager:Lcom/android/server/PowerManagerService;

.field final mQueue:Lcom/android/server/WindowManagerService$KeyQ;

.field mRequestedRotation:I

.field final mResizingWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/WindowManagerService$WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mRotation:I

.field mRotationWatchers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/IRotationWatcher;",
            ">;"
        }
    .end annotation
.end field

.field mSafeMode:Z

.field mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

.field mScreenLayout:I

.field final mSessions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/server/WindowManagerService$Session;",
            ">;"
        }
    .end annotation
.end field

.field mSkipAppTransitionAnimation:Z

.field mStartingIconInTransition:Z

.field mSystemBooted:Z

.field final mTempConfiguration:Landroid/content/res/Configuration;

.field final mTempRect:Landroid/graphics/Rect;

.field final mTmpFloats:[F

.field final mTokenList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/WindowManagerService$WindowToken;",
            ">;"
        }
    .end annotation
.end field

.field final mTokenMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/WindowManagerService$WindowToken;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchBlocking:Z

.field mTransactionSequence:I

.field mTransitionAnimationScale:F

.field mUpcomingInputMethodTarget:Lcom/android/server/WindowManagerService$WindowState;

.field private mVibrationFeedback:Z

.field private mViewServer:Lcom/android/server/ViewServer;

.field private mWaitingUntilKeyguardReenabled:Z

.field mWindowAnimationScale:F

.field final mWindowMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/WindowManagerService$WindowState;",
            ">;"
        }
    .end annotation
.end field

.field final mWindows:Ljava/util/ArrayList;

.field mWindowsFreezingScreen:Z

.field private reset_flag:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 174
    sput v1, Lcom/android/server/WindowManagerService;->iHodeKey_in_Landscape_Mode:I

    .line 182
    sput-boolean v1, Lcom/android/server/WindowManagerService;->bMENU_BTN:Z

    .line 183
    sput-boolean v1, Lcom/android/server/WindowManagerService;->bVOL_DOWN_BTN:Z

    .line 184
    sput-boolean v1, Lcom/android/server/WindowManagerService;->bCAMERA_BTN:Z

    .line 185
    sput-boolean v1, Lcom/android/server/WindowManagerService;->bDoFactoryReset:Z

    .line 194
    sput-boolean v1, Lcom/android/server/WindowManagerService;->SEND_MUSIC_KEY_INTENT:Z

    .line 288
    sput-boolean v1, Lcom/android/server/WindowManagerService;->lastOpen:Z

    .line 291
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/WindowManagerService;->allowFreeze:Z

    .line 293
    sput-boolean v1, Lcom/android/server/WindowManagerService;->WINDOW_FREEZE_TIMEOUT_SENT:Z

    .line 294
    sput-boolean v1, Lcom/android/server/WindowManagerService;->FORCE_GC_SENT:Z

    .line 295
    sput-boolean v1, Lcom/android/server/WindowManagerService;->APP_TRANSITION_TIMEOUT_SENT:Z

    .line 296
    sput-boolean v1, Lcom/android/server/WindowManagerService;->ORIENTATION_CHECK_GURAD_SENT:Z

    .line 4419
    sput v1, Lcom/android/server/WindowManagerService;->home_pressed_cnt:I

    .line 4420
    const/16 v0, 0xa

    sput v0, Lcom/android/server/WindowManagerService;->MAX_VIBRATION_COUNT:I

    .line 7834
    new-instance v0, Lcom/android/server/WindowManagerService$DummyAnimation;

    invoke-direct {v0}, Lcom/android/server/WindowManagerService$DummyAnimation;-><init>()V

    sput-object v0, Lcom/android/server/WindowManagerService;->sDummyAnimation:Landroid/view/animation/Animation;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;Z)V
    .registers 11
    .parameter "context"
    .parameter "pm"
    .parameter "haveInputMethods"

    .prologue
    .line 603
    invoke-direct {p0}, Landroid/view/IWindowManager$Stub;-><init>()V

    .line 187
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 190
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->reset_flag:Z

    .line 248
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mWaitingUntilKeyguardReenabled:Z

    .line 252
    const/16 v4, 0x1c

    iput v4, p0, Lcom/android/server/WindowManagerService;->mMinWaitTimeBetweenTouchEvents:I

    .line 255
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/server/WindowManagerService;->mLastTouchEventTime:J

    .line 258
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/WindowManagerService;->mLastTouchEventType:I

    .line 265
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/server/WindowManagerService;->mLastUserActivityCallTime:J

    .line 268
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/server/WindowManagerService;->mLastBatteryStatsCallTime:J

    .line 280
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mLockScreenIsOn:Z

    .line 281
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mKeyBlocking:Z

    .line 282
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mVibrationFeedback:Z

    .line 286
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->check_orientationChangeComplete:Z

    .line 287
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->lastAlwaysSend:Z

    .line 302
    new-instance v4, Lcom/android/server/WindowManagerService$1;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    const-string v6, "WindowManagerService.mKeyguardDisabled"

    invoke-direct {v4, p0, v5, v6}, Lcom/android/server/WindowManagerService$1;-><init>(Lcom/android/server/WindowManagerService;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mKeyguardDisabled:Landroid/os/TokenWatcher;

    .line 322
    invoke-static {}, Lcom/android/internal/policy/PolicyManager;->makeNewWindowManager()Landroid/view/WindowManagerPolicy;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    .line 331
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mSessions:Ljava/util/HashSet;

    .line 337
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    .line 342
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    .line 349
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mTokenList:Ljava/util/ArrayList;

    .line 355
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    .line 362
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    .line 368
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    .line 374
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    .line 379
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    .line 386
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    .line 391
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    .line 396
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    .line 402
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    .line 413
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mDimAnimator:Lcom/android/server/WindowManagerService$DimAnimator;

    .line 424
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/WindowManagerService;->mTransactionSequence:I

    .line 426
    const/16 v4, 0x9

    new-array v4, v4, [F

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mTmpFloats:[F

    .line 429
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mDisplayEnabled:Z

    .line 430
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mSystemBooted:Z

    .line 431
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/WindowManagerService;->mRotation:I

    .line 432
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/WindowManagerService;->mRequestedRotation:I

    .line 433
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/server/WindowManagerService;->mForcedAppOrientation:I

    .line 435
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    .line 438
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 439
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mAnimationPending:Z

    .line 440
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    .line 441
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mWindowsFreezingScreen:Z

    .line 442
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/server/WindowManagerService;->mFreezeGcPending:J

    .line 443
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/WindowManagerService;->mAppsFreezingScreen:I

    .line 455
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    .line 456
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mAppTransitionReady:Z

    .line 457
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mAppTransitionTimeout:Z

    .line 458
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mStartingIconInTransition:Z

    .line 459
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mSkipAppTransitionAnimation:Z

    .line 460
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    .line 461
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    .line 464
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mFatTouch:Z

    .line 467
    new-instance v4, Lcom/android/server/WindowManagerService$H;

    invoke-direct {v4, p0}, Lcom/android/server/WindowManagerService$H;-><init>(Lcom/android/server/WindowManagerService;)V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    .line 469
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mCurrentFocus:Lcom/android/server/WindowManagerService$WindowState;

    .line 470
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mLastFocus:Lcom/android/server/WindowManagerService$WindowState;

    .line 474
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mInputMethodTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 475
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mUpcomingInputMethodTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 479
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mInputMethodWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 480
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    .line 482
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mFocusedApp:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 486
    const/high16 v4, 0x3f80

    iput v4, p0, Lcom/android/server/WindowManagerService;->mWindowAnimationScale:F

    .line 487
    const/high16 v4, 0x3f80

    iput v4, p0, Lcom/android/server/WindowManagerService;->mTransitionAnimationScale:F

    .line 489
    new-instance v4, Lcom/android/server/WindowManagerService$KeyWaiter;

    invoke-direct {v4, p0}, Lcom/android/server/WindowManagerService$KeyWaiter;-><init>(Lcom/android/server/WindowManagerService;)V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    .line 500
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mInTouchMode:Z

    .line 504
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mTempRect:Landroid/graphics/Rect;

    .line 506
    new-instance v4, Landroid/content/res/Configuration;

    invoke-direct {v4}, Landroid/content/res/Configuration;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    .line 509
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mTouchBlocking:Z

    .line 512
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/WindowManagerService;->mScreenLayout:I

    .line 515
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mCompatibleScreenFrame:Landroid/graphics/Rect;

    .line 517
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mBackgroundFillerSurface:Landroid/view/Surface;

    .line 518
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mBackgroundFillerShown:Z

    .line 4061
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/WindowManagerService;->mEventState:I

    .line 8389
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mInLayout:Z

    .line 604
    iput-object p1, p0, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    .line 605
    iput-boolean p3, p0, Lcom/android/server/WindowManagerService;->mHaveInputMethods:Z

    .line 606
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x10d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mLimitedAlphaCompositing:Z

    .line 609
    iput-object p2, p0, Lcom/android/server/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    .line 610
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-virtual {v4, v5}, Lcom/android/server/PowerManagerService;->setPolicy(Landroid/view/WindowManagerPolicy;)V

    .line 611
    const-string v4, "power"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 613
    .local v1, pmc:Landroid/os/PowerManager;
    const-string v4, "keyguard"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    .end local p3
    check-cast p3, Landroid/app/KeyguardManager;

    iput-object p3, p0, Lcom/android/server/WindowManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 615
    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/ContentResolver;)V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 617
    const/4 v4, 0x1

    const-string v5, "SCREEN_FROZEN"

    invoke-virtual {v1, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

    .line 619
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 621
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 622
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 625
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "window_animation_scale"

    iget v6, p0, Lcom/android/server/WindowManagerService;->mWindowAnimationScale:F

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v4

    iput v4, p0, Lcom/android/server/WindowManagerService;->mWindowAnimationScale:F

    .line 627
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "transition_animation_scale"

    iget v6, p0, Lcom/android/server/WindowManagerService;->mTransitionAnimationScale:F

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v4

    iput v4, p0, Lcom/android/server/WindowManagerService;->mTransitionAnimationScale:F

    .line 630
    const/16 v0, 0x23

    .line 632
    .local v0, max_events_per_sec:I
    :try_start_1bc
    const-string v4, "windowsmgr.max_events_per_sec"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1c5
    .catch Ljava/lang/NumberFormatException; {:try_start_1bc .. :try_end_1c5} :catch_219

    move-result v0

    .line 634
    const/4 v4, 0x1

    if-ge v0, v4, :cond_1cb

    .line 635
    const/16 v0, 0x23

    .line 639
    :cond_1cb
    :goto_1cb
    const/16 v4, 0x3e8

    div-int/2addr v4, v0

    iput v4, p0, Lcom/android/server/WindowManagerService;->mMinWaitTimeBetweenTouchEvents:I

    .line 641
    new-instance v4, Lcom/android/server/WindowManagerService$KeyQ;

    invoke-direct {v4, p0}, Lcom/android/server/WindowManagerService$KeyQ;-><init>(Lcom/android/server/WindowManagerService;)V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mQueue:Lcom/android/server/WindowManagerService$KeyQ;

    .line 643
    new-instance v4, Lcom/android/server/WindowManagerService$InputDispatcherThread;

    invoke-direct {v4, p0}, Lcom/android/server/WindowManagerService$InputDispatcherThread;-><init>(Lcom/android/server/WindowManagerService;)V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mInputThread:Lcom/android/server/WindowManagerService$InputDispatcherThread;

    .line 645
    new-instance v2, Lcom/android/server/WindowManagerService$PolicyThread;

    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-direct {v2, v4, p0, p1, p2}, Lcom/android/server/WindowManagerService$PolicyThread;-><init>(Landroid/view/WindowManagerPolicy;Lcom/android/server/WindowManagerService;Landroid/content/Context;Lcom/android/server/PowerManagerService;)V

    .line 646
    .local v2, thr:Lcom/android/server/WindowManagerService$PolicyThread;
    invoke-virtual {v2}, Lcom/android/server/WindowManagerService$PolicyThread;->start()V

    .line 649
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "vibration_feedback_enabled"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 650
    .local v3, vib:I
    const/4 v4, 0x1

    if-ne v3, v4, :cond_204

    .line 651
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mVibrationFeedback:Z

    .line 656
    :goto_1f9
    monitor-enter v2

    .line 657
    :goto_1fa
    :try_start_1fa
    iget-boolean v4, v2, Lcom/android/server/WindowManagerService$PolicyThread;->mRunning:Z
    :try_end_1fc
    .catchall {:try_start_1fa .. :try_end_1fc} :catchall_216

    if-nez v4, :cond_208

    .line 659
    :try_start_1fe
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_201
    .catchall {:try_start_1fe .. :try_end_201} :catchall_216
    .catch Ljava/lang/InterruptedException; {:try_start_1fe .. :try_end_201} :catch_202

    goto :goto_1fa

    .line 660
    :catch_202
    move-exception v4

    goto :goto_1fa

    .line 653
    :cond_204
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mVibrationFeedback:Z

    goto :goto_1f9

    .line 663
    :cond_208
    :try_start_208
    monitor-exit v2
    :try_end_209
    .catchall {:try_start_208 .. :try_end_209} :catchall_216

    .line 665
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mInputThread:Lcom/android/server/WindowManagerService$InputDispatcherThread;

    invoke-virtual {v4}, Lcom/android/server/WindowManagerService$InputDispatcherThread;->start()V

    .line 668
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 669
    return-void

    .line 663
    :catchall_216
    move-exception v4

    :try_start_217
    monitor-exit v2
    :try_end_218
    .catchall {:try_start_217 .. :try_end_218} :catchall_216

    throw v4

    .line 637
    .end local v2           #thr:Lcom/android/server/WindowManagerService$PolicyThread;
    .end local v3           #vib:I
    :catch_219
    move-exception v4

    goto :goto_1cb
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;ZLcom/android/server/WindowManagerService$1;)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 150
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/WindowManagerService;-><init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;Z)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/server/WindowManagerService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/android/server/WindowManagerService;->mWaitingUntilKeyguardReenabled:Z

    return p1
.end method

.method static synthetic access$1000(Lcom/android/server/WindowManagerService;Landroid/view/MotionEvent;)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/android/server/WindowManagerService;->eventType(Landroid/view/MotionEvent;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/WindowManagerService;Landroid/view/KeyEvent;II)I
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 150
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/WindowManagerService;->dispatchKey(Landroid/view/KeyEvent;II)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/WindowManagerService;Lcom/android/server/KeyInputQueue$QueuedEvent;Landroid/view/MotionEvent;II)I
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 150
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/WindowManagerService;->dispatchPointer(Lcom/android/server/KeyInputQueue$QueuedEvent;Landroid/view/MotionEvent;II)I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/WindowManagerService;Lcom/android/server/KeyInputQueue$QueuedEvent;Landroid/view/MotionEvent;II)I
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 150
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/WindowManagerService;->dispatchTrackball(Lcom/android/server/KeyInputQueue$QueuedEvent;Landroid/view/MotionEvent;II)I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/WindowManagerService;Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Landroid/graphics/Region;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 150
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/WindowManagerService;->setTransparentRegionWindow(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Landroid/graphics/Region;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/WindowManagerService;Lcom/android/server/WindowManagerService$WindowState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/android/server/WindowManagerService;->applyEnterAnimationLocked(Lcom/android/server/WindowManagerService$WindowState;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/WindowManagerService;Lcom/android/server/WindowManagerService$WindowState;IZ)Z
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 150
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/WindowManagerService;->applyAnimationLocked(Lcom/android/server/WindowManagerService$WindowState;IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/WindowManagerService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    return-void
.end method

.method static synthetic access$1900()Z
    .registers 1

    .prologue
    .line 150
    sget-boolean v0, Lcom/android/server/WindowManagerService;->bDoFactoryReset:Z

    return v0
.end method

.method static synthetic access$1902(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 150
    sput-boolean p0, Lcom/android/server/WindowManagerService;->bDoFactoryReset:Z

    return p0
.end method

.method static synthetic access$2002(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 150
    sput-boolean p0, Lcom/android/server/WindowManagerService;->WINDOW_FREEZE_TIMEOUT_SENT:Z

    return p0
.end method

.method static synthetic access$2102(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 150
    sput-boolean p0, Lcom/android/server/WindowManagerService;->APP_TRANSITION_TIMEOUT_SENT:Z

    return p0
.end method

.method static synthetic access$2202(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 150
    sput-boolean p0, Lcom/android/server/WindowManagerService;->FORCE_GC_SENT:Z

    return p0
.end method

.method static synthetic access$2302(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 150
    sput-boolean p0, Lcom/android/server/WindowManagerService;->ORIENTATION_CHECK_GURAD_SENT:Z

    return p0
.end method

.method static synthetic access$800(Lcom/android/server/WindowManagerService;)Lcom/android/server/WindowManagerService$WindowState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->getFocusedWindowLocked()Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/WindowManagerService;Lcom/android/server/WindowManagerService$WindowState;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 150
    invoke-direct {p0, p1, p2}, Lcom/android/server/WindowManagerService;->wakeupIfNeeded(Lcom/android/server/WindowManagerService$WindowState;I)V

    return-void
.end method

.method private addWindowToListInOrderLocked(Lcom/android/server/WindowManagerService$WindowState;Z)V
    .registers 31
    .parameter "win"
    .parameter "addToToken"

    .prologue
    .line 721
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    move-object v10, v0

    .line 722
    .local v10, client:Landroid/view/IWindow;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mToken:Lcom/android/server/WindowManagerService$WindowToken;

    move-object/from16 v20, v0

    .line 723
    .local v20, token:Lcom/android/server/WindowManagerService$WindowToken;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object v14, v0

    .line 725
    .local v14, localmWindows:Ljava/util/ArrayList;
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 726
    .local v3, N:I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttachedWindow:Lcom/android/server/WindowManagerService$WindowState;

    move-object v8, v0

    .line 728
    .local v8, attached:Lcom/android/server/WindowManagerService$WindowState;
    if-nez v8, :cond_241

    .line 729
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v21

    .line 730
    .local v21, tokenWindowsPos:I
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->appWindowToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v26, v0

    if-eqz v26, :cond_214

    .line 731
    const/16 v26, 0x1

    sub-int v12, v21, v26

    .line 732
    .local v12, index:I
    if-ltz v12, :cond_dc

    .line 736
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_8d

    .line 738
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/WindowManagerService;->placeWindowBefore(Ljava/lang/Object;Lcom/android/server/WindowManagerService$WindowState;)V

    .line 739
    const/16 v21, 0x0

    .line 848
    .end local v3           #N:I
    .end local v12           #index:I
    .end local p0
    :cond_5e
    :goto_5e
    if-eqz p2, :cond_6f

    .line 849
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v21

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 904
    .end local v21           #tokenWindowsPos:I
    :cond_6f
    :goto_6f
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v26, v0

    if-eqz v26, :cond_8c

    if-eqz p2, :cond_8c

    .line 905
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 907
    :cond_8c
    return-void

    .line 741
    .restart local v3       #N:I
    .restart local v12       #index:I
    .restart local v21       #tokenWindowsPos:I
    .restart local p0
    :cond_8d
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object v7, v0

    .line 742
    .local v7, atoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-eqz v7, :cond_c5

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    move-object v0, v7

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingWindow:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_c5

    .line 744
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/WindowManagerService;->placeWindowBefore(Ljava/lang/Object;Lcom/android/server/WindowManagerService$WindowState;)V

    .line 745
    add-int/lit8 v21, v21, -0x1

    goto :goto_5e

    .line 747
    :cond_c5
    invoke-direct/range {p0 .. p1}, Lcom/android/server/WindowManagerService;->findIdxBasedOnAppTokens(Lcom/android/server/WindowManagerService$WindowState;)I

    move-result v16

    .line 748
    .local v16, newIdx:I
    const/16 v26, -0x1

    move/from16 v0, v16

    move/from16 v1, v26

    if-eq v0, v1, :cond_5e

    .line 753
    add-int/lit8 v26, v16, 0x1

    move-object v0, v14

    move/from16 v1, v26

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_5e

    .line 763
    .end local v7           #atoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    .end local v16           #newIdx:I
    :cond_dc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 764
    .local v4, NA:I
    const/16 v17, 0x0

    .line 765
    .local v17, pos:Ljava/lang/Object;
    const/16 v26, 0x1

    sub-int v11, v4, v26

    .local v11, i:I
    move-object/from16 v4, v17

    .end local v4           #NA:I
    .end local v17           #pos:Ljava/lang/Object;
    :goto_ee
    if-ltz v11, :cond_107

    .line 766
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 767
    .local v19, t:Lcom/android/server/WindowManagerService$AppWindowToken;
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_152

    .line 768
    add-int/lit8 v11, v11, -0x1

    .line 778
    .end local v19           #t:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_107
    if-eqz v4, :cond_174

    .line 780
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    move-object/from16 v26, v0

    move-object v0, v4

    check-cast v0, Lcom/android/server/WindowManagerService$WindowState;

    move-object v3, v0

    .end local v3           #N:I
    move-object v0, v3

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/WindowManagerService$WindowToken;

    .line 782
    .local v7, atoken:Lcom/android/server/WindowManagerService$WindowToken;
    if-eqz v7, :cond_2f5

    .line 783
    move-object v0, v7

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 784
    .local v5, NC:I
    if-lez v5, :cond_2f5

    .line 785
    move-object v0, v7

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/WindowManagerService$WindowState;

    .line 786
    .local v9, bottom:Lcom/android/server/WindowManagerService$WindowState;
    move-object v0, v9

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSubLayer:I

    move/from16 v26, v0

    if-gez v26, :cond_2f5

    .line 787
    move-object/from16 v17, v9

    .local v17, pos:Lcom/android/server/WindowManagerService$WindowState;
    move-object/from16 v26, v17

    .line 791
    .end local v5           #NC:I
    .end local v9           #bottom:Lcom/android/server/WindowManagerService$WindowState;
    .end local v17           #pos:Lcom/android/server/WindowManagerService$WindowState;
    :goto_147
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/WindowManagerService;->placeWindowBefore(Ljava/lang/Object;Lcom/android/server/WindowManagerService$WindowState;)V

    goto/16 :goto_5e

    .line 771
    .end local v7           #atoken:Lcom/android/server/WindowManagerService$WindowToken;
    .restart local v3       #N:I
    .restart local v19       #t:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_152
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    if-lez v26, :cond_2f9

    .line 772
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    .local v17, pos:Ljava/lang/Object;
    move-object/from16 v26, v17

    .line 765
    .end local v17           #pos:Ljava/lang/Object;
    :goto_16c
    add-int/lit8 v11, v11, -0x1

    move-object/from16 v4, v26

    goto/16 :goto_ee

    .line 800
    .local v6, NW:I
    :cond_172
    add-int/lit8 v11, v11, -0x1

    .line 793
    .end local v6           #NW:I
    .end local v19           #t:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_174
    if-ltz v11, :cond_1a1

    .line 794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 795
    .restart local v19       #t:Lcom/android/server/WindowManagerService$AppWindowToken;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 796
    .restart local v6       #NW:I
    if-lez v6, :cond_172

    .line 797
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    sub-int v27, v6, v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    .restart local v17       #pos:Ljava/lang/Object;
    move-object/from16 v4, v17

    .line 802
    .end local v6           #NW:I
    .end local v17           #pos:Ljava/lang/Object;
    .end local v19           #t:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_1a1
    if-eqz v4, :cond_1ef

    .line 805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    move-object/from16 v26, v0

    move-object v0, v4

    check-cast v0, Lcom/android/server/WindowManagerService$WindowState;

    move-object v3, v0

    .end local v3           #N:I
    move-object v0, v3

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/WindowManagerService$WindowToken;

    .line 807
    .restart local v7       #atoken:Lcom/android/server/WindowManagerService$WindowToken;
    if-eqz v7, :cond_2f1

    .line 808
    move-object v0, v7

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 809
    .restart local v5       #NC:I
    if-lez v5, :cond_2f1

    .line 810
    move-object v0, v7

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    sub-int v27, v5, v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/WindowManagerService$WindowState;

    .line 811
    .local v22, top:Lcom/android/server/WindowManagerService$WindowState;
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSubLayer:I

    move/from16 v26, v0

    if-ltz v26, :cond_2f1

    .line 812
    move-object/from16 v17, v22

    .local v17, pos:Lcom/android/server/WindowManagerService$WindowState;
    move-object/from16 v26, v17

    .line 816
    .end local v5           #NC:I
    .end local v17           #pos:Lcom/android/server/WindowManagerService$WindowState;
    .end local v22           #top:Lcom/android/server/WindowManagerService$WindowState;
    :goto_1e4
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/WindowManagerService;->placeWindowAfter(Ljava/lang/Object;Lcom/android/server/WindowManagerService$WindowState;)V

    goto/16 :goto_5e

    .line 819
    .end local v7           #atoken:Lcom/android/server/WindowManagerService$WindowToken;
    .restart local v3       #N:I
    :cond_1ef
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mBaseLayer:I

    move v15, v0

    .line 820
    .local v15, myLayer:I
    const/4 v11, 0x0

    :goto_1f5
    if-ge v11, v3, :cond_208

    .line 821
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/WindowManagerService$WindowState;

    .line 822
    .local v23, w:Lcom/android/server/WindowManagerService$WindowState;
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mBaseLayer:I

    move/from16 v26, v0

    move/from16 v0, v26

    move v1, v15

    if-le v0, v1, :cond_211

    .line 829
    .end local v23           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_208
    move-object v0, v14

    move v1, v11

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_5e

    .line 820
    .restart local v23       #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_211
    add-int/lit8 v11, v11, 0x1

    goto :goto_1f5

    .line 835
    .end local v11           #i:I
    .end local v12           #index:I
    .end local v15           #myLayer:I
    .end local v23           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_214
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mBaseLayer:I

    move v15, v0

    .line 836
    .restart local v15       #myLayer:I
    const/16 v26, 0x1

    sub-int v11, v3, v26

    .end local p0
    .restart local v11       #i:I
    :goto_21d
    if-ltz v11, :cond_232

    .line 837
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mBaseLayer:I

    move/from16 v26, v0

    move/from16 v0, v26

    move v1, v15

    if-gt v0, v1, :cond_23e

    .line 838
    add-int/lit8 v11, v11, 0x1

    .line 842
    :cond_232
    if-gez v11, :cond_235

    const/4 v11, 0x0

    .line 846
    :cond_235
    move-object v0, v14

    move v1, v11

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_5e

    .line 836
    :cond_23e
    add-int/lit8 v11, v11, -0x1

    goto :goto_21d

    .line 855
    .end local v11           #i:I
    .end local v15           #myLayer:I
    .end local v21           #tokenWindowsPos:I
    .restart local p0
    :cond_241
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 856
    .restart local v4       #NA:I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSubLayer:I

    move/from16 v18, v0

    .line 857
    .local v18, sublayer:I
    const/high16 v13, -0x8000

    .line 858
    .local v13, largestSublayer:I
    const/16 v25, 0x0

    .line 859
    .local v25, windowWithLargestSublayer:Lcom/android/server/WindowManagerService$WindowState;
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_256
    if-ge v11, v4, :cond_29b

    .line 860
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/WindowManagerService$WindowState;

    .line 861
    .restart local v23       #w:Lcom/android/server/WindowManagerService$WindowState;
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSubLayer:I

    move/from16 v24, v0

    .line 862
    .local v24, wSublayer:I
    move/from16 v0, v24

    move v1, v13

    if-lt v0, v1, :cond_276

    .line 863
    move/from16 v13, v24

    .line 864
    move-object/from16 v25, v23

    .line 866
    :cond_276
    if-gez v18, :cond_2bb

    .line 869
    move/from16 v0, v24

    move/from16 v1, v18

    if-lt v0, v1, :cond_2db

    .line 870
    if-eqz p2, :cond_28e

    .line 871
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move v1, v11

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 873
    :cond_28e
    if-ltz v24, :cond_2b8

    move-object/from16 v26, v8

    :goto_292
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/WindowManagerService;->placeWindowBefore(Ljava/lang/Object;Lcom/android/server/WindowManagerService$WindowState;)V

    .line 889
    .end local v23           #w:Lcom/android/server/WindowManagerService$WindowState;
    .end local v24           #wSublayer:I
    :cond_29b
    :goto_29b
    if-lt v11, v4, :cond_6f

    .line 890
    if-eqz p2, :cond_2ac

    .line 891
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 893
    :cond_2ac
    if-gez v18, :cond_2df

    .line 894
    move-object/from16 v0, p0

    move-object v1, v8

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/WindowManagerService;->placeWindowBefore(Ljava/lang/Object;Lcom/android/server/WindowManagerService$WindowState;)V

    goto/16 :goto_6f

    .restart local v23       #w:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v24       #wSublayer:I
    :cond_2b8
    move-object/from16 v26, v23

    .line 873
    goto :goto_292

    .line 880
    :cond_2bb
    move/from16 v0, v24

    move/from16 v1, v18

    if-le v0, v1, :cond_2db

    .line 881
    if-eqz p2, :cond_2d1

    .line 882
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move v1, v11

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 884
    :cond_2d1
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/WindowManagerService;->placeWindowBefore(Ljava/lang/Object;Lcom/android/server/WindowManagerService$WindowState;)V

    goto :goto_29b

    .line 859
    :cond_2db
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_256

    .line 896
    .end local v23           #w:Lcom/android/server/WindowManagerService$WindowState;
    .end local v24           #wSublayer:I
    :cond_2df
    if-ltz v13, :cond_2ee

    move-object/from16 v26, v25

    :goto_2e3
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/WindowManagerService;->placeWindowAfter(Ljava/lang/Object;Lcom/android/server/WindowManagerService$WindowState;)V

    goto/16 :goto_6f

    :cond_2ee
    move-object/from16 v26, v8

    goto :goto_2e3

    .end local v3           #N:I
    .end local v4           #NA:I
    .end local v13           #largestSublayer:I
    .end local v18           #sublayer:I
    .end local v25           #windowWithLargestSublayer:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v7       #atoken:Lcom/android/server/WindowManagerService$WindowToken;
    .restart local v12       #index:I
    .restart local v21       #tokenWindowsPos:I
    :cond_2f1
    move-object/from16 v26, v4

    goto/16 :goto_1e4

    :cond_2f5
    move-object/from16 v26, v4

    goto/16 :goto_147

    .end local v7           #atoken:Lcom/android/server/WindowManagerService$WindowToken;
    .restart local v3       #N:I
    .restart local v19       #t:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_2f9
    move-object/from16 v26, v4

    goto/16 :goto_16c
.end method

.method private applyAnimationLocked(Lcom/android/server/WindowManagerService$AppWindowToken;Landroid/view/WindowManager$LayoutParams;IZ)Z
    .registers 9
    .parameter "wtoken"
    .parameter "lp"
    .parameter "transit"
    .parameter "enter"

    .prologue
    .line 1972
    iget-boolean v2, p0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    if-nez v2, :cond_5e

    .line 1974
    if-eqz p2, :cond_1d

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x10

    and-int/2addr v2, v3

    if-eqz v2, :cond_1d

    .line 1975
    new-instance v0, Lcom/android/server/WindowManagerService$FadeInOutAnimation;

    invoke-direct {v0, p4}, Lcom/android/server/WindowManagerService$FadeInOutAnimation;-><init>(Z)V

    .line 2018
    .local v0, a:Landroid/view/animation/Animation;
    :goto_12
    if-eqz v0, :cond_17

    .line 2024
    invoke-virtual {p1, v0}, Lcom/android/server/WindowManagerService$AppWindowToken;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2030
    .end local v0           #a:Landroid/view/animation/Animation;
    :cond_17
    :goto_17
    iget-object v2, p1, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_62

    const/4 v2, 0x1

    :goto_1c
    return v2

    .line 1979
    :cond_1d
    const/4 v1, 0x0

    .line 1980
    .local v1, animAttr:I
    packed-switch p3, :pswitch_data_64

    .line 2012
    :goto_21
    invoke-direct {p0, p2, v1}, Lcom/android/server/WindowManagerService;->loadAnimation(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v0

    .restart local v0       #a:Landroid/view/animation/Animation;
    goto :goto_12

    .line 1982
    .end local v0           #a:Landroid/view/animation/Animation;
    :pswitch_26
    if-eqz p4, :cond_2b

    const/4 v2, 0x4

    move v1, v2

    .line 1985
    :goto_2a
    goto :goto_21

    .line 1982
    :cond_2b
    const/4 v2, 0x5

    move v1, v2

    goto :goto_2a

    .line 1987
    :pswitch_2e
    if-eqz p4, :cond_33

    const/4 v2, 0x6

    move v1, v2

    .line 1990
    :goto_32
    goto :goto_21

    .line 1987
    :cond_33
    const/4 v2, 0x7

    move v1, v2

    goto :goto_32

    .line 1992
    :pswitch_36
    if-eqz p4, :cond_3c

    const/16 v2, 0x8

    move v1, v2

    .line 1995
    :goto_3b
    goto :goto_21

    .line 1992
    :cond_3c
    const/16 v2, 0x9

    move v1, v2

    goto :goto_3b

    .line 1997
    :pswitch_40
    if-eqz p4, :cond_46

    const/16 v2, 0xa

    move v1, v2

    .line 2000
    :goto_45
    goto :goto_21

    .line 1997
    :cond_46
    const/16 v2, 0xb

    move v1, v2

    goto :goto_45

    .line 2002
    :pswitch_4a
    if-eqz p4, :cond_50

    const/16 v2, 0xc

    move v1, v2

    .line 2005
    :goto_4f
    goto :goto_21

    .line 2002
    :cond_50
    const/16 v2, 0xd

    move v1, v2

    goto :goto_4f

    .line 2007
    :pswitch_54
    if-eqz p4, :cond_5a

    const/16 v2, 0xe

    move v1, v2

    :goto_59
    goto :goto_21

    :cond_5a
    const/16 v2, 0xf

    move v1, v2

    goto :goto_59

    .line 2027
    .end local v1           #animAttr:I
    :cond_5e
    invoke-virtual {p1}, Lcom/android/server/WindowManagerService$AppWindowToken;->clearAnimation()V

    goto :goto_17

    .line 2030
    :cond_62
    const/4 v2, 0x0

    goto :goto_1c

    .line 1980
    :pswitch_data_64
    .packed-switch 0x6
        :pswitch_26
        :pswitch_2e
        :pswitch_36
        :pswitch_40
        :pswitch_4a
        :pswitch_54
    .end packed-switch
.end method

.method private applyAnimationLocked(Lcom/android/server/WindowManagerService$WindowState;IZ)Z
    .registers 9
    .parameter "win"
    .parameter "transit"
    .parameter "isEntrance"

    .prologue
    const/4 v4, 0x1

    .line 1895
    iget-boolean v3, p1, Lcom/android/server/WindowManagerService$WindowState;->mLocalAnimating:Z

    if-eqz v3, :cond_b

    iget-boolean v3, p1, Lcom/android/server/WindowManagerService$WindowState;->mAnimationIsEntrance:Z

    if-ne v3, p3, :cond_b

    move v3, v4

    .line 1947
    :goto_a
    return v3

    .line 1905
    :cond_b
    iget-boolean v3, p0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    if-nez v3, :cond_40

    .line 1906
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v3, p1, p2}, Landroid/view/WindowManagerPolicy;->selectAnimationLw(Landroid/view/WindowManagerPolicy$WindowState;I)I

    move-result v1

    .line 1907
    .local v1, anim:I
    const/4 v2, -0x1

    .line 1908
    .local v2, attr:I
    const/4 v0, 0x0

    .line 1909
    .local v0, a:Landroid/view/animation/Animation;
    if-eqz v1, :cond_2c

    .line 1910
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1934
    :cond_1f
    :goto_1f
    if-eqz v0, :cond_26

    .line 1940
    invoke-virtual {p1, v0}, Lcom/android/server/WindowManagerService$WindowState;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1941
    iput-boolean p3, p1, Lcom/android/server/WindowManagerService$WindowState;->mAnimationIsEntrance:Z

    .line 1947
    .end local v0           #a:Landroid/view/animation/Animation;
    .end local v1           #anim:I
    .end local v2           #attr:I
    :cond_26
    :goto_26
    iget-object v3, p1, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_44

    move v3, v4

    goto :goto_a

    .line 1912
    .restart local v0       #a:Landroid/view/animation/Animation;
    .restart local v1       #anim:I
    .restart local v2       #attr:I
    :cond_2c
    packed-switch p2, :pswitch_data_46

    .line 1926
    :goto_2f
    if-ltz v2, :cond_1f

    .line 1927
    iget-object v3, p1, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, v3, v2}, Lcom/android/server/WindowManagerService;->loadAnimation(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_1f

    .line 1914
    :pswitch_38
    const/4 v2, 0x0

    .line 1915
    goto :goto_2f

    .line 1917
    :pswitch_3a
    const/4 v2, 0x1

    .line 1918
    goto :goto_2f

    .line 1920
    :pswitch_3c
    const/4 v2, 0x2

    .line 1921
    goto :goto_2f

    .line 1923
    :pswitch_3e
    const/4 v2, 0x3

    goto :goto_2f

    .line 1944
    .end local v0           #a:Landroid/view/animation/Animation;
    .end local v1           #anim:I
    .end local v2           #attr:I
    :cond_40
    invoke-virtual {p1}, Lcom/android/server/WindowManagerService$WindowState;->clearAnimation()V

    goto :goto_26

    .line 1947
    :cond_44
    const/4 v3, 0x0

    goto :goto_a

    .line 1912
    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_38
        :pswitch_3a
        :pswitch_3c
        :pswitch_3e
    .end packed-switch
.end method

.method private applyEnterAnimationLocked(Lcom/android/server/WindowManagerService$WindowState;)V
    .registers 4
    .parameter "win"

    .prologue
    .line 1884
    const/4 v0, 0x3

    .line 1885
    .local v0, transit:I
    iget-boolean v1, p1, Lcom/android/server/WindowManagerService$WindowState;->mEnterAnimationPending:Z

    if-eqz v1, :cond_9

    .line 1886
    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/android/server/WindowManagerService$WindowState;->mEnterAnimationPending:Z

    .line 1887
    const/4 v0, 0x1

    .line 1890
    :cond_9
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/WindowManagerService;->applyAnimationLocked(Lcom/android/server/WindowManagerService$WindowState;IZ)Z

    .line 1891
    return-void
.end method

.method private final assignLayersLocked()V
    .registers 8

    .prologue
    .line 8358
    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 8359
    .local v0, N:I
    const/4 v1, 0x0

    .line 8360
    .local v1, curBaseLayer:I
    const/4 v2, 0x0

    .line 8363
    .local v2, curLayer:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_9
    if-ge v3, v0, :cond_53

    .line 8364
    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/WindowManagerService$WindowState;

    .line 8365
    .local v4, w:Lcom/android/server/WindowManagerService$WindowState;
    iget v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mBaseLayer:I

    if-eq v5, v1, :cond_1b

    iget-boolean v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mIsImWindow:Z

    if-eqz v5, :cond_3a

    .line 8366
    :cond_1b
    add-int/lit8 v2, v2, 0x5

    .line 8367
    iput v2, v4, Lcom/android/server/WindowManagerService$WindowState;->mLayer:I

    .line 8372
    :goto_1f
    iget-object v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mTargetAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v5, :cond_40

    .line 8373
    iget v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mLayer:I

    iget-object v6, v4, Lcom/android/server/WindowManagerService$WindowState;->mTargetAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iget v6, v6, Lcom/android/server/WindowManagerService$AppWindowToken;->animLayerAdjustment:I

    add-int/2addr v5, v6

    iput v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    .line 8379
    :goto_2c
    iget-boolean v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mIsImWindow:Z

    if-eqz v5, :cond_37

    .line 8380
    iget v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    iget v6, p0, Lcom/android/server/WindowManagerService;->mInputMethodAnimLayerAdjustment:I

    add-int/2addr v5, v6

    iput v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    .line 8363
    :cond_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 8369
    :cond_3a
    iget v2, v4, Lcom/android/server/WindowManagerService$WindowState;->mBaseLayer:I

    move v1, v2

    .line 8370
    iput v2, v4, Lcom/android/server/WindowManagerService$WindowState;->mLayer:I

    goto :goto_1f

    .line 8374
    :cond_40
    iget-object v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v5, :cond_4e

    .line 8375
    iget v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mLayer:I

    iget-object v6, v4, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iget v6, v6, Lcom/android/server/WindowManagerService$AppWindowToken;->animLayerAdjustment:I

    add-int/2addr v5, v6

    iput v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    goto :goto_2c

    .line 8377
    :cond_4e
    iget v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mLayer:I

    iput v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    goto :goto_2c

    .line 8387
    .end local v4           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_53
    return-void
.end method

.method static canBeImeTarget(Lcom/android/server/WindowManagerService$WindowState;)Z
    .registers 4
    .parameter "w"

    .prologue
    const v2, 0x20008

    .line 910
    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int v0, v1, v2

    .line 912
    .local v0, fl:I
    if-eqz v0, :cond_d

    if-ne v0, v2, :cond_12

    .line 913
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService$WindowState;->isVisibleOrAdding()Z

    move-result v1

    .line 915
    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method private computeFocusedWindowLocked()Lcom/android/server/WindowManagerService$WindowState;
    .registers 11

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 9424
    const/4 v4, 0x0

    .line 9427
    .local v4, result:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v0, v7, v8

    .line 9428
    .local v0, i:I
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v2, v7, v8

    .line 9429
    .local v2, nextAppIndex:I
    if-ltz v2, :cond_33

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object v1, v7

    .line 9432
    .local v1, nextApp:Lcom/android/server/WindowManagerService$WindowToken;
    :goto_1e
    if-ltz v0, :cond_69

    .line 9433
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/WindowManagerService$WindowState;

    .line 9441
    .local v6, win:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v5, v6, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 9444
    .local v5, thisApp:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-eqz v5, :cond_35

    iget-boolean v7, v5, Lcom/android/server/WindowManagerService$AppWindowToken;->removed:Z

    if-eqz v7, :cond_35

    .line 9445
    add-int/lit8 v0, v0, -0x1

    .line 9446
    goto :goto_1e

    .end local v1           #nextApp:Lcom/android/server/WindowManagerService$WindowToken;
    .end local v5           #thisApp:Lcom/android/server/WindowManagerService$AppWindowToken;
    .end local v6           #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_33
    move-object v1, v9

    .line 9429
    goto :goto_1e

    .line 9452
    .restart local v1       #nextApp:Lcom/android/server/WindowManagerService$WindowToken;
    .restart local v5       #thisApp:Lcom/android/server/WindowManagerService$AppWindowToken;
    .restart local v6       #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_35
    if-eqz v5, :cond_62

    if-eqz v1, :cond_62

    if-eq v5, v1, :cond_62

    iget-object v7, v6, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v8, 0x3

    if-eq v7, v8, :cond_62

    .line 9454
    move v3, v2

    .line 9455
    .local v3, origAppIndex:I
    :cond_43
    if-lez v2, :cond_57

    .line 9456
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mFocusedApp:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-ne v1, v7, :cond_4b

    move-object v7, v9

    .line 9489
    .end local v3           #origAppIndex:I
    .end local v5           #thisApp:Lcom/android/server/WindowManagerService$AppWindowToken;
    .end local v6           #win:Lcom/android/server/WindowManagerService$WindowState;
    :goto_4a
    return-object v7

    .line 9463
    .restart local v3       #origAppIndex:I
    .restart local v5       #thisApp:Lcom/android/server/WindowManagerService$AppWindowToken;
    .restart local v6       #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_4b
    add-int/lit8 v2, v2, -0x1

    .line 9464
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #nextApp:Lcom/android/server/WindowManagerService$WindowToken;
    check-cast v1, Lcom/android/server/WindowManagerService$WindowToken;

    .line 9465
    .restart local v1       #nextApp:Lcom/android/server/WindowManagerService$WindowToken;
    if-ne v1, v5, :cond_43

    .line 9469
    :cond_57
    if-eq v5, v1, :cond_62

    .line 9473
    move v2, v3

    .line 9474
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #nextApp:Lcom/android/server/WindowManagerService$WindowToken;
    check-cast v1, Lcom/android/server/WindowManagerService$WindowToken;

    .line 9479
    .end local v3           #origAppIndex:I
    .restart local v1       #nextApp:Lcom/android/server/WindowManagerService$WindowToken;
    :cond_62
    invoke-virtual {v6}, Lcom/android/server/WindowManagerService$WindowState;->canReceiveKeys()Z

    move-result v7

    if-eqz v7, :cond_6b

    .line 9482
    move-object v4, v6

    .end local v5           #thisApp:Lcom/android/server/WindowManagerService$AppWindowToken;
    .end local v6           #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_69
    move-object v7, v4

    .line 9489
    goto :goto_4a

    .line 9486
    .restart local v5       #thisApp:Lcom/android/server/WindowManagerService$AppWindowToken;
    .restart local v6       #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_6b
    add-int/lit8 v0, v0, -0x1

    .line 9487
    goto :goto_1e
.end method

.method private dispatchKey(Landroid/view/KeyEvent;II)I
    .registers 22
    .parameter "event"
    .parameter "pid"
    .parameter "uid"

    .prologue
    .line 4428
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mKeyBlocking:Z

    move v4, v0

    if-eqz v4, :cond_9

    const/4 v4, 0x0

    .line 4618
    :goto_8
    return v4

    .line 4436
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/16 v5, 0x52

    if-ne v4, v5, :cond_131

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_131

    .line 4437
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/server/WindowManagerService;->bMENU_BTN:Z

    .line 4441
    :cond_1a
    :goto_1a
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/16 v5, 0x19

    if-ne v4, v5, :cond_145

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_145

    .line 4442
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/server/WindowManagerService;->bVOL_DOWN_BTN:Z

    .line 4446
    :cond_2b
    :goto_2b
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/16 v5, 0x1b

    if-ne v4, v5, :cond_159

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_159

    .line 4447
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/server/WindowManagerService;->bCAMERA_BTN:Z

    .line 4451
    :cond_3c
    :goto_3c
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_16d

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_16d

    .line 4452
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->reset_flag:Z

    .line 4456
    :cond_50
    :goto_50
    sget-boolean v4, Lcom/android/server/WindowManagerService;->bMENU_BTN:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_184

    sget-boolean v4, Lcom/android/server/WindowManagerService;->bVOL_DOWN_BTN:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_184

    sget-boolean v4, Lcom/android/server/WindowManagerService;->bCAMERA_BTN:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_184

    sget-boolean v4, Lcom/android/server/WindowManagerService;->bDoFactoryReset:Z

    if-nez v4, :cond_184

    .line 4459
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/server/WindowManagerService;->bDoFactoryReset:Z

    .line 4460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    move-object v5, v0

    const/16 v6, 0x13

    invoke-virtual {v5, v6}, Lcom/android/server/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x1388

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4480
    :cond_7b
    :goto_7b
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/16 v5, 0xca

    if-ne v4, v5, :cond_bb

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_bb

    invoke-direct/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->isInMusicKeyExcludeList()Z

    move-result v4

    if-nez v4, :cond_bb

    sget-boolean v4, Lcom/android/server/WindowManagerService;->SEND_MUSIC_KEY_INTENT:Z

    if-nez v4, :cond_bb

    .line 4483
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/server/WindowManagerService;->SEND_MUSIC_KEY_INTENT:Z

    .line 4484
    const-string v4, "MUSIC_INTENT"

    const-string v5, "MUSIC app will be started"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4485
    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15}, Landroid/content/Intent;-><init>()V

    .line 4486
    .local v15, intent:Landroid/content/Intent;
    const-string v4, "com.android.music"

    const-string v5, "com.android.music.MusicBrowserActivity"

    invoke-virtual {v15, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4487
    const/high16 v4, 0x1010

    invoke-virtual {v15, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4488
    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v15, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-virtual {v4, v15}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 4494
    .end local v15           #intent:Landroid/content/Intent;
    :cond_bb
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/16 v5, 0xca

    if-ne v4, v5, :cond_d4

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_d4

    .line 4496
    const-string v4, "MUSIC_INTENT"

    const-string v5, "-----------------------------------"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4497
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/server/WindowManagerService;->SEND_MUSIC_KEY_INTENT:Z

    .line 4503
    :cond_d4
    const/16 v16, 0x0

    .line 4504
    .local v16, mTelephonyManager:Landroid/telephony/TelephonyManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    move-object v4, v0

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    .end local v16           #mTelephonyManager:Landroid/telephony/TelephonyManager;
    check-cast v16, Landroid/telephony/TelephonyManager;

    .line 4507
    .restart local v16       #mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    packed-switch v4, :pswitch_data_2ce

    .line 4553
    :cond_ea
    :goto_ea
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WindowManagerService;->mRotation:I

    move v4, v0

    const/4 v5, 0x1

    if-ne v4, v5, :cond_205

    sget v4, Lcom/android/server/WindowManagerService;->iHodeKey_in_Landscape_Mode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_205

    .line 4555
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    packed-switch v4, :pswitch_data_2d6

    .line 4567
    :goto_fe
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    move-object v4, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p1

    move/from16 v10, p2

    move/from16 v11, p3

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/WindowManagerService$KeyWaiter;->waitForNextEventTarget(Landroid/view/KeyEvent;Lcom/android/server/KeyInputQueue$QueuedEvent;Landroid/view/MotionEvent;ZZII)Ljava/lang/Object;

    move-result-object v14

    .line 4569
    .local v14, focusObj:Ljava/lang/Object;
    if-nez v14, :cond_20a

    .line 4570
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No focus window, dropping: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4571
    const/4 v4, 0x0

    goto/16 :goto_8

    .line 4438
    .end local v14           #focusObj:Ljava/lang/Object;
    .end local v16           #mTelephonyManager:Landroid/telephony/TelephonyManager;
    :cond_131
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/16 v5, 0x52

    if-ne v4, v5, :cond_1a

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1a

    .line 4439
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/server/WindowManagerService;->bMENU_BTN:Z

    goto/16 :goto_1a

    .line 4443
    :cond_145
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/16 v5, 0x19

    if-ne v4, v5, :cond_2b

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2b

    .line 4444
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/server/WindowManagerService;->bVOL_DOWN_BTN:Z

    goto/16 :goto_2b

    .line 4448
    :cond_159
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/16 v5, 0x1b

    if-ne v4, v5, :cond_3c

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3c

    .line 4449
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/server/WindowManagerService;->bCAMERA_BTN:Z

    goto/16 :goto_3c

    .line 4453
    :cond_16d
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_50

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_50

    .line 4454
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->reset_flag:Z

    goto/16 :goto_50

    .line 4462
    :cond_184
    sget-boolean v4, Lcom/android/server/WindowManagerService;->bDoFactoryReset:Z

    const/4 v5, 0x1

    if-eq v4, v5, :cond_7b

    .line 4468
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/server/WindowManagerService;->bDoFactoryReset:Z

    goto/16 :goto_7b

    .line 4510
    .restart local v16       #mTelephonyManager:Landroid/telephony/TelephonyManager;
    :pswitch_18e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mLockScreenIsOn:Z

    move v4, v0

    if-nez v4, :cond_ea

    .line 4511
    new-instance v17, Landroid/os/Vibrator;

    invoke-direct/range {v17 .. v17}, Landroid/os/Vibrator;-><init>()V

    .line 4512
    .local v17, mVibrator:Landroid/os/Vibrator;
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_1c3

    .line 4513
    sget v4, Lcom/android/server/WindowManagerService;->home_pressed_cnt:I

    sget v5, Lcom/android/server/WindowManagerService;->MAX_VIBRATION_COUNT:I

    if-gt v4, v5, :cond_1bb

    .line 4514
    invoke-virtual/range {v16 .. v16}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    if-nez v4, :cond_1bb

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mVibrationFeedback:Z

    move v4, v0

    if-eqz v4, :cond_1bb

    .line 4516
    const-wide/16 v4, 0x2d

    move-object/from16 v0, v17

    move-wide v1, v4

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 4517
    :cond_1bb
    sget v4, Lcom/android/server/WindowManagerService;->home_pressed_cnt:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/android/server/WindowManagerService;->home_pressed_cnt:I

    goto/16 :goto_ea

    .line 4519
    :cond_1c3
    const/4 v4, 0x0

    sput v4, Lcom/android/server/WindowManagerService;->home_pressed_cnt:I

    goto/16 :goto_ea

    .line 4526
    .end local v17           #mVibrator:Landroid/os/Vibrator;
    :pswitch_1c8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mLockScreenIsOn:Z

    move v4, v0

    if-nez v4, :cond_ea

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_ea

    .line 4528
    invoke-virtual/range {v16 .. v16}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    if-nez v4, :cond_ea

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mVibrationFeedback:Z

    move v4, v0

    if-eqz v4, :cond_ea

    .line 4531
    new-instance v17, Landroid/os/Vibrator;

    invoke-direct/range {v17 .. v17}, Landroid/os/Vibrator;-><init>()V

    .line 4532
    .restart local v17       #mVibrator:Landroid/os/Vibrator;
    const-wide/16 v4, 0x2d

    move-object/from16 v0, v17

    move-wide v1, v4

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto/16 :goto_ea

    .line 4557
    .end local v17           #mVibrator:Landroid/os/Vibrator;
    :pswitch_1f1
    const/16 v4, 0x19

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/KeyEvent;->setKeyCode(I)V

    goto/16 :goto_fe

    .line 4560
    :pswitch_1fb
    const/16 v4, 0x18

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/KeyEvent;->setKeyCode(I)V

    goto/16 :goto_fe

    .line 4565
    :cond_205
    const/4 v4, 0x0

    sput v4, Lcom/android/server/WindowManagerService;->iHodeKey_in_Landscape_Mode:I

    goto/16 :goto_fe

    .line 4573
    .restart local v14       #focusObj:Ljava/lang/Object;
    :cond_20a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/WindowManagerService$KeyWaiter;->CONSUMED_EVENT_TOKEN:Ljava/lang/Object;

    if-ne v14, v4, :cond_216

    .line 4574
    const/4 v4, 0x1

    goto/16 :goto_8

    .line 4577
    :cond_216
    move-object v0, v14

    check-cast v0, Lcom/android/server/WindowManagerService$WindowState;

    move-object v13, v0

    .line 4582
    .local v13, focus:Lcom/android/server/WindowManagerService$WindowState;
    if-eqz p3, :cond_27b

    iget-object v4, v13, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    iget v4, v4, Lcom/android/server/WindowManagerService$Session;->mUid:I

    move/from16 v0, p3

    move v1, v4

    if-eq v0, v1, :cond_27b

    .line 4583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    move-object v4, v0

    const-string v5, "android.permission.INJECT_EVENTS"

    move-object v0, v4

    move-object v1, v5

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_27b

    .line 4586
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Permission denied: injecting key event from pid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to window "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " owned by uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v13, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    iget v6, v6, Lcom/android/server/WindowManagerService$Session;->mUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4589
    const/4 v4, -0x1

    goto/16 :goto_8

    .line 4593
    :cond_27b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object v4, v0

    monitor-enter v4

    .line 4594
    :try_start_281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    move-object v5, v0

    invoke-virtual {v5, v13}, Lcom/android/server/WindowManagerService$KeyWaiter;->bindTargetWindowLocked(Lcom/android/server/WindowManagerService$WindowState;)V

    .line 4595
    monitor-exit v4
    :try_end_28a
    .catchall {:try_start_281 .. :try_end_28a} :catchall_2a1

    .line 4598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p1

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService$KeyWaiter;->recordDispatchState(Landroid/view/KeyEvent;Lcom/android/server/WindowManagerService$WindowState;)V

    .line 4606
    :try_start_296
    iget-object v4, v13, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/IWindow;->dispatchKey(Landroid/view/KeyEvent;)V
    :try_end_29e
    .catch Landroid/os/RemoteException; {:try_start_296 .. :try_end_29e} :catch_2a4

    .line 4607
    const/4 v4, 0x1

    goto/16 :goto_8

    .line 4595
    :catchall_2a1
    move-exception v5

    :try_start_2a2
    monitor-exit v4
    :try_end_2a3
    .catchall {:try_start_2a2 .. :try_end_2a3} :catchall_2a1

    throw v5

    .line 4608
    :catch_2a4
    move-exception v4

    move-object v12, v4

    .line 4609
    .local v12, e:Landroid/os/RemoteException;
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WINDOW DIED during key dispatch: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4611
    :try_start_2be
    iget-object v4, v13, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    iget-object v5, v13, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService;->removeWindow(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;)V
    :try_end_2c9
    .catch Ljava/util/NoSuchElementException; {:try_start_2be .. :try_end_2c9} :catch_2cc

    .line 4618
    :goto_2c9
    const/4 v4, 0x0

    goto/16 :goto_8

    .line 4612
    :catch_2cc
    move-exception v4

    goto :goto_2c9

    .line 4507
    :pswitch_data_2ce
    .packed-switch 0x3
        :pswitch_18e
        :pswitch_1c8
    .end packed-switch

    .line 4555
    :pswitch_data_2d6
    .packed-switch 0x18
        :pswitch_1f1
        :pswitch_1fb
    .end packed-switch
.end method

.method private dispatchPointer(Lcom/android/server/KeyInputQueue$QueuedEvent;Landroid/view/MotionEvent;II)I
    .registers 32
    .parameter "qev"
    .parameter "ev"
    .parameter "pid"
    .parameter "uid"

    .prologue
    .line 4108
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mTouchBlocking:Z

    move v4, v0

    const/4 v5, 0x1

    if-ne v4, v5, :cond_11

    .line 4109
    const-string v4, "nodebug"

    const-string v5, "WindowManagerService>dispatchPointer>TouchBlocking"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4110
    const/4 v4, 0x1

    .line 4302
    :goto_10
    return v4

    .line 4113
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v10, p3

    move/from16 v11, p4

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/WindowManagerService$KeyWaiter;->waitForNextEventTarget(Landroid/view/KeyEvent;Lcom/android/server/KeyInputQueue$QueuedEvent;Landroid/view/MotionEvent;ZZII)Ljava/lang/Object;

    move-result-object v26

    .line 4116
    .local v26, targetObj:Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    .line 4118
    .local v12, action:I
    const/4 v4, 0x1

    if-ne v12, v4, :cond_6f

    .line 4120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/server/WindowManagerService$KeyWaiter;->mMotionTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 4121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/server/PowerManagerService;->logPointerUpEvent()V

    .line 4126
    :cond_3c
    :goto_3c
    if-nez v26, :cond_7a

    .line 4132
    const/4 v4, 0x2

    if-eq v12, v4, :cond_5d

    .line 4133
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No window to dispatch pointer action "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4135
    :cond_5d
    if-eqz p1, :cond_6a

    .line 4136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mQueue:Lcom/android/server/WindowManagerService$KeyQ;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService$KeyQ;->recycleEvent(Lcom/android/server/KeyInputQueue$QueuedEvent;)V

    .line 4138
    :cond_6a
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->recycle()V

    .line 4139
    const/4 v4, 0x0

    goto :goto_10

    .line 4122
    :cond_6f
    if-nez v12, :cond_3c

    .line 4123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/server/PowerManagerService;->logPointerDownEvent()V

    goto :goto_3c

    .line 4141
    :cond_7a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/WindowManagerService$KeyWaiter;->CONSUMED_EVENT_TOKEN:Ljava/lang/Object;

    move-object/from16 v0, v26

    move-object v1, v4

    if-ne v0, v1, :cond_99

    .line 4142
    if-eqz p1, :cond_93

    .line 4143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mQueue:Lcom/android/server/WindowManagerService$KeyQ;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService$KeyQ;->recycleEvent(Lcom/android/server/KeyInputQueue$QueuedEvent;)V

    .line 4145
    :cond_93
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->recycle()V

    .line 4146
    const/4 v4, 0x1

    goto/16 :goto_10

    .line 4149
    :cond_99
    move-object/from16 v0, v26

    check-cast v0, Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v25, v0

    .line 4151
    .local v25, target:Lcom/android/server/WindowManagerService$WindowState;
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v15

    .line 4155
    .local v15, eventTime:J
    if-eqz p4, :cond_11d

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    move-object v4, v0

    iget v4, v4, Lcom/android/server/WindowManagerService$Session;->mUid:I

    move/from16 v0, p4

    move v1, v4

    if-eq v0, v1, :cond_11d

    .line 4156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    move-object v4, v0

    const-string v5, "android.permission.INJECT_EVENTS"

    move-object v0, v4

    move-object v1, v5

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_11d

    .line 4159
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Permission denied: injecting pointer event from pid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to window "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " owned by uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    move-object v6, v0

    iget v6, v6, Lcom/android/server/WindowManagerService$Session;->mUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4162
    if-eqz p1, :cond_117

    .line 4163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mQueue:Lcom/android/server/WindowManagerService$KeyQ;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService$KeyQ;->recycleEvent(Lcom/android/server/KeyInputQueue$QueuedEvent;)V

    .line 4165
    :cond_117
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->recycle()V

    .line 4166
    const/4 v4, -0x1

    goto/16 :goto_10

    .line 4170
    :cond_11d
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v4, v0

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v5, 0x8000

    and-int/2addr v4, v5

    if-eqz v4, :cond_19b

    .line 4173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->isCheekPressedAgainstScreen(Landroid/view/MotionEvent;)Z

    move-result v13

    .line 4175
    .local v13, cheekPress:Z
    const/16 v24, 0x0

    .line 4176
    .local v24, returnFlag:Z
    if-nez v12, :cond_15f

    .line 4177
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mFatTouch:Z

    .line 4178
    if-eqz v13, :cond_14a

    .line 4179
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mFatTouch:Z

    .line 4180
    const/16 v24, 0x1

    .line 4210
    :cond_14a
    :goto_14a
    if-eqz v24, :cond_19b

    .line 4212
    if-eqz p1, :cond_159

    .line 4213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mQueue:Lcom/android/server/WindowManagerService$KeyQ;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService$KeyQ;->recycleEvent(Lcom/android/server/KeyInputQueue$QueuedEvent;)V

    .line 4215
    :cond_159
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->recycle()V

    .line 4216
    const/4 v4, 0x0

    goto/16 :goto_10

    .line 4183
    :cond_15f
    const/4 v4, 0x1

    if-ne v12, v4, :cond_17d

    .line 4184
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mFatTouch:Z

    move v4, v0

    if-eqz v4, :cond_172

    .line 4186
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mFatTouch:Z

    .line 4187
    const/16 v24, 0x1

    goto :goto_14a

    .line 4188
    :cond_172
    if-eqz v13, :cond_14a

    .line 4190
    const/4 v4, 0x3

    move-object/from16 v0, p2

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 4191
    const/4 v12, 0x3

    goto :goto_14a

    .line 4193
    :cond_17d
    const/4 v4, 0x2

    if-ne v12, v4, :cond_14a

    .line 4194
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mFatTouch:Z

    move v4, v0

    if-eqz v4, :cond_18a

    .line 4198
    const/16 v24, 0x1

    goto :goto_14a

    .line 4199
    :cond_18a
    if-eqz v13, :cond_14a

    .line 4202
    const/4 v4, 0x3

    move-object/from16 v0, p2

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 4203
    const/4 v12, 0x3

    .line 4206
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mFatTouch:Z

    goto :goto_14a

    .line 4238
    .end local v13           #cheekPress:Z
    .end local v24           #returnFlag:Z
    :cond_19b
    const/4 v4, 0x2

    if-ne v12, v4, :cond_1be

    .line 4239
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/WindowManagerService;->mLastTouchEventTime:J

    move-wide v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WindowManagerService;->mMinWaitTimeBetweenTouchEvents:I

    move v6, v0

    int-to-long v6, v6

    add-long v18, v4, v6

    .line 4240
    .local v18, nextEventTime:J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    .line 4241
    .local v20, now:J
    cmp-long v4, v20, v18

    if-gez v4, :cond_1ea

    .line 4243
    sub-long v4, v18, v20

    :try_start_1b5
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1b8
    .catch Ljava/lang/InterruptedException; {:try_start_1b5 .. :try_end_1b8} :catch_2d6

    .line 4246
    :goto_1b8
    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/WindowManagerService;->mLastTouchEventTime:J

    .line 4253
    .end local v18           #nextEventTime:J
    .end local v20           #now:J
    :cond_1be
    :goto_1be
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object v4, v0

    monitor-enter v4

    .line 4254
    if-eqz p1, :cond_1f1

    const/4 v5, 0x2

    if-ne v12, v5, :cond_1f1

    .line 4255
    :try_start_1c9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    move-object v5, v0

    const/4 v6, 0x1

    move-object v0, v5

    move-object/from16 v1, v25

    move v2, v6

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/WindowManagerService$KeyWaiter;->bindTargetWindowLocked(Lcom/android/server/WindowManagerService$WindowState;ILcom/android/server/KeyInputQueue$QueuedEvent;)V

    .line 4257
    const/16 p2, 0x0

    .line 4282
    :goto_1da
    monitor-exit v4
    :try_end_1db
    .catchall {:try_start_1c9 .. :try_end_1db} :catchall_27c

    .line 4290
    :try_start_1db
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p2

    move-wide v2, v15

    invoke-interface {v0, v1, v2, v3}, Landroid/view/IWindow;->dispatchPointer(Landroid/view/MotionEvent;J)V
    :try_end_1e7
    .catch Landroid/os/RemoteException; {:try_start_1db .. :try_end_1e7} :catch_29d

    .line 4291
    const/4 v4, 0x1

    goto/16 :goto_10

    .line 4248
    .restart local v18       #nextEventTime:J
    .restart local v20       #now:J
    :cond_1ea
    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/WindowManagerService;->mLastTouchEventTime:J

    goto :goto_1be

    .line 4259
    .end local v18           #nextEventTime:J
    .end local v20           #now:J
    :cond_1f1
    if-nez v12, :cond_254

    .line 4260
    :try_start_1f3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    move-object v5, v0

    move-object v0, v5

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->mOutsideTouchTargets:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v23, v0

    .line 4261
    .local v23, out:Lcom/android/server/WindowManagerService$WindowState;
    if-eqz v23, :cond_254

    .line 4262
    invoke-static/range {p2 .. p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v22

    .line 4263
    .local v22, oev:Landroid/view/MotionEvent;
    const/4 v5, 0x4

    move-object/from16 v0, v22

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 4265
    :cond_20a
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    .line 4266
    .local v17, frame:Landroid/graphics/Rect;
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v5, v0

    int-to-float v5, v5

    neg-float v5, v5

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v6, v0

    int-to-float v6, v6

    neg-float v6, v6

    move-object/from16 v0, v22

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V
    :try_end_225
    .catchall {:try_start_1f3 .. :try_end_225} :catchall_27c

    .line 4268
    :try_start_225
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v22

    move-wide v2, v15

    invoke-interface {v0, v1, v2, v3}, Landroid/view/IWindow;->dispatchPointer(Landroid/view/MotionEvent;J)V
    :try_end_231
    .catchall {:try_start_225 .. :try_end_231} :catchall_27c
    .catch Landroid/os/RemoteException; {:try_start_225 .. :try_end_231} :catch_27f

    .line 4272
    :goto_231
    :try_start_231
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v5, v0

    int-to-float v5, v5

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v6, v0

    int-to-float v6, v6

    move-object/from16 v0, v22

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 4273
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mNextOutsideTouch:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v23, v0

    .line 4274
    if-nez v23, :cond_20a

    .line 4275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/android/server/WindowManagerService$KeyWaiter;->mOutsideTouchTargets:Lcom/android/server/WindowManagerService$WindowState;

    .line 4278
    .end local v17           #frame:Landroid/graphics/Rect;
    .end local v22           #oev:Landroid/view/MotionEvent;
    .end local v23           #out:Lcom/android/server/WindowManagerService$WindowState;
    :cond_254
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    .line 4279
    .restart local v17       #frame:Landroid/graphics/Rect;
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v5, v0

    int-to-float v5, v5

    neg-float v5, v5

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v6, v0

    int-to-float v6, v6

    neg-float v6, v6

    move-object/from16 v0, p2

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 4280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService$KeyWaiter;->bindTargetWindowLocked(Lcom/android/server/WindowManagerService$WindowState;)V

    goto/16 :goto_1da

    .line 4282
    .end local v17           #frame:Landroid/graphics/Rect;
    :catchall_27c
    move-exception v5

    monitor-exit v4
    :try_end_27e
    .catchall {:try_start_231 .. :try_end_27e} :catchall_27c

    throw v5

    .line 4269
    .restart local v17       #frame:Landroid/graphics/Rect;
    .restart local v22       #oev:Landroid/view/MotionEvent;
    .restart local v23       #out:Lcom/android/server/WindowManagerService$WindowState;
    :catch_27f
    move-exception v5

    move-object v14, v5

    .line 4270
    .local v14, e:Landroid/os/RemoteException;
    :try_start_281
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WINDOW DIED during outside motion dispatch: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29c
    .catchall {:try_start_281 .. :try_end_29c} :catchall_27c

    goto :goto_231

    .line 4292
    .end local v14           #e:Landroid/os/RemoteException;
    .end local v17           #frame:Landroid/graphics/Rect;
    .end local v22           #oev:Landroid/view/MotionEvent;
    .end local v23           #out:Lcom/android/server/WindowManagerService$WindowState;
    :catch_29d
    move-exception v4

    move-object v14, v4

    .line 4293
    .restart local v14       #e:Landroid/os/RemoteException;
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WINDOW DIED during motion dispatch: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/server/WindowManagerService$KeyWaiter;->mMotionTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 4296
    :try_start_2c2
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    move-object v4, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService;->removeWindow(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;)V
    :try_end_2d3
    .catch Ljava/util/NoSuchElementException; {:try_start_2c2 .. :try_end_2d3} :catch_2d9

    .line 4302
    :goto_2d3
    const/4 v4, 0x0

    goto/16 :goto_10

    .line 4244
    .end local v14           #e:Landroid/os/RemoteException;
    .restart local v18       #nextEventTime:J
    .restart local v20       #now:J
    :catch_2d6
    move-exception v4

    goto/16 :goto_1b8

    .line 4297
    .end local v18           #nextEventTime:J
    .end local v20           #now:J
    .restart local v14       #e:Landroid/os/RemoteException;
    :catch_2d9
    move-exception v4

    goto :goto_2d3
.end method

.method private dispatchTrackball(Lcom/android/server/KeyInputQueue$QueuedEvent;Landroid/view/MotionEvent;II)I
    .registers 22
    .parameter "qev"
    .parameter "ev"
    .parameter "pid"
    .parameter "uid"

    .prologue
    .line 4312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v10, p3

    move/from16 v11, p4

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/WindowManagerService$KeyWaiter;->waitForNextEventTarget(Landroid/view/KeyEvent;Lcom/android/server/KeyInputQueue$QueuedEvent;Landroid/view/MotionEvent;ZZII)Ljava/lang/Object;

    move-result-object v16

    .line 4314
    .local v16, focusObj:Ljava/lang/Object;
    if-nez v16, :cond_43

    .line 4315
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No focus window, dropping trackball: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4316
    if-eqz p1, :cond_3e

    .line 4317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mQueue:Lcom/android/server/WindowManagerService$KeyQ;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService$KeyQ;->recycleEvent(Lcom/android/server/KeyInputQueue$QueuedEvent;)V

    .line 4319
    :cond_3e
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->recycle()V

    .line 4320
    const/4 v4, 0x0

    .line 4373
    :goto_42
    return v4

    .line 4322
    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/WindowManagerService$KeyWaiter;->CONSUMED_EVENT_TOKEN:Ljava/lang/Object;

    move-object/from16 v0, v16

    move-object v1, v4

    if-ne v0, v1, :cond_61

    .line 4323
    if-eqz p1, :cond_5c

    .line 4324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mQueue:Lcom/android/server/WindowManagerService$KeyQ;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService$KeyQ;->recycleEvent(Lcom/android/server/KeyInputQueue$QueuedEvent;)V

    .line 4326
    :cond_5c
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->recycle()V

    .line 4327
    const/4 v4, 0x1

    goto :goto_42

    .line 4330
    :cond_61
    move-object/from16 v0, v16

    check-cast v0, Lcom/android/server/WindowManagerService$WindowState;

    move-object v15, v0

    .line 4332
    .local v15, focus:Lcom/android/server/WindowManagerService$WindowState;
    if-eqz p4, :cond_d7

    iget-object v4, v15, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    iget v4, v4, Lcom/android/server/WindowManagerService$Session;->mUid:I

    move/from16 v0, p4

    move v1, v4

    if-eq v0, v1, :cond_d7

    .line 4333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    move-object v4, v0

    const-string v5, "android.permission.INJECT_EVENTS"

    move-object v0, v4

    move-object v1, v5

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_d7

    .line 4336
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Permission denied: injecting key event from pid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to window "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " owned by uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v15, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    iget v6, v6, Lcom/android/server/WindowManagerService$Session;->mUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4339
    if-eqz p1, :cond_d1

    .line 4340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mQueue:Lcom/android/server/WindowManagerService$KeyQ;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService$KeyQ;->recycleEvent(Lcom/android/server/KeyInputQueue$QueuedEvent;)V

    .line 4342
    :cond_d1
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->recycle()V

    .line 4343
    const/4 v4, -0x1

    goto/16 :goto_42

    .line 4347
    :cond_d7
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v13

    .line 4349
    .local v13, eventTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object v4, v0

    monitor-enter v4

    .line 4350
    if-eqz p1, :cond_107

    :try_start_e3
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_107

    .line 4351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    move-object v5, v0

    const/4 v6, 0x2

    move-object v0, v5

    move-object v1, v15

    move v2, v6

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/WindowManagerService$KeyWaiter;->bindTargetWindowLocked(Lcom/android/server/WindowManagerService$WindowState;ILcom/android/server/KeyInputQueue$QueuedEvent;)V

    .line 4355
    const/16 p2, 0x0

    .line 4359
    :goto_fa
    monitor-exit v4
    :try_end_fb
    .catchall {:try_start_e3 .. :try_end_fb} :catchall_110

    .line 4362
    :try_start_fb
    iget-object v4, v15, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    move-object v0, v4

    move-object/from16 v1, p2

    move-wide v2, v13

    invoke-interface {v0, v1, v2, v3}, Landroid/view/IWindow;->dispatchTrackball(Landroid/view/MotionEvent;J)V
    :try_end_104
    .catch Landroid/os/RemoteException; {:try_start_fb .. :try_end_104} :catch_113

    .line 4363
    const/4 v4, 0x1

    goto/16 :goto_42

    .line 4357
    :cond_107
    :try_start_107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    move-object v5, v0

    invoke-virtual {v5, v15}, Lcom/android/server/WindowManagerService$KeyWaiter;->bindTargetWindowLocked(Lcom/android/server/WindowManagerService$WindowState;)V

    goto :goto_fa

    .line 4359
    :catchall_110
    move-exception v5

    monitor-exit v4
    :try_end_112
    .catchall {:try_start_107 .. :try_end_112} :catchall_110

    throw v5

    .line 4364
    :catch_113
    move-exception v4

    move-object v12, v4

    .line 4365
    .local v12, e:Landroid/os/RemoteException;
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WINDOW DIED during key dispatch: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4367
    :try_start_12d
    iget-object v4, v15, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    iget-object v5, v15, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService;->removeWindow(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;)V
    :try_end_138
    .catch Ljava/util/NoSuchElementException; {:try_start_12d .. :try_end_138} :catch_13b

    .line 4373
    :goto_138
    const/4 v4, 0x0

    goto/16 :goto_42

    .line 4368
    :catch_13b
    move-exception v4

    goto :goto_138
.end method

.method private eventType(Landroid/view/MotionEvent;)I
    .registers 12
    .parameter "ev"

    .prologue
    const/4 v9, 0x2

    const/4 v5, 0x1

    const v4, 0x3f19999a

    .line 4065
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSize()F

    move-result v2

    .line 4066
    .local v2, size:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_72

    .line 4089
    const/4 v3, 0x0

    :goto_11
    return v3

    .line 4068
    :pswitch_12
    iput v2, p0, Lcom/android/server/WindowManagerService;->mEventSize:F

    .line 4069
    iget v3, p0, Lcom/android/server/WindowManagerService;->mEventSize:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1c

    move v3, v5

    goto :goto_11

    :cond_1c
    move v3, v9

    goto :goto_11

    .line 4071
    :pswitch_1e
    iget v3, p0, Lcom/android/server/WindowManagerService;->mEventSize:F

    cmpl-float v3, v2, v3

    if-lez v3, :cond_26

    iput v2, p0, Lcom/android/server/WindowManagerService;->mEventSize:F

    .line 4072
    :cond_26
    iget v3, p0, Lcom/android/server/WindowManagerService;->mEventSize:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2e

    move v3, v5

    goto :goto_11

    :cond_2e
    const/4 v3, 0x4

    goto :goto_11

    .line 4074
    :pswitch_30
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    .line 4075
    .local v0, N:I
    iget v3, p0, Lcom/android/server/WindowManagerService;->mEventSize:F

    cmpl-float v3, v2, v3

    if-lez v3, :cond_3c

    iput v2, p0, Lcom/android/server/WindowManagerService;->mEventSize:F

    .line 4076
    :cond_3c
    iget v3, p0, Lcom/android/server/WindowManagerService;->mEventSize:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_44

    move v3, v5

    goto :goto_11

    .line 4077
    :cond_44
    const/4 v1, 0x0

    .local v1, i:I
    :goto_45
    if-ge v1, v0, :cond_5e

    .line 4078
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalSize(I)F

    move-result v2

    .line 4079
    iget v3, p0, Lcom/android/server/WindowManagerService;->mEventSize:F

    cmpl-float v3, v2, v3

    if-lez v3, :cond_53

    iput v2, p0, Lcom/android/server/WindowManagerService;->mEventSize:F

    .line 4080
    :cond_53
    iget v3, p0, Lcom/android/server/WindowManagerService;->mEventSize:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_5b

    move v3, v5

    goto :goto_11

    .line 4077
    :cond_5b
    add-int/lit8 v1, v1, 0x1

    goto :goto_45

    .line 4082
    :cond_5e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v5

    const-wide/16 v7, 0x12c

    add-long/2addr v5, v7

    cmp-long v3, v3, v5

    if-gez v3, :cond_6f

    move v3, v9

    .line 4083
    goto :goto_11

    .line 4085
    :cond_6f
    const/4 v3, 0x3

    goto :goto_11

    .line 4066
    nop

    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_12
        :pswitch_1e
        :pswitch_30
    .end packed-switch
.end method

.method public static findAnimations(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroid/view/WindowManager$LayoutParams;
    .registers 13
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/WindowManagerService$AppWindowToken;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/WindowManagerService$AppWindowToken;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/WindowManagerService$AppWindowToken;",
            ">;)",
            "Landroid/view/WindowManager$LayoutParams;"
        }
    .end annotation

    .prologue
    .local p0, order:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/WindowManagerService$AppWindowToken;>;"
    .local p1, openingTokenList1:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/WindowManagerService$AppWindowToken;>;"
    .local p2, closingTokenList2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/WindowManagerService$AppWindowToken;>;"
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 7765
    const/4 v0, 0x0

    .line 7766
    .local v0, animParams:Landroid/view/WindowManager$LayoutParams;
    const/4 v1, 0x0

    .line 7767
    .local v1, animSrc:I
    invoke-static {p1}, Lcom/android/server/WindowManagerService;->findCompatibleWindowParams(Ljava/util/ArrayList;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 7768
    if-nez v0, :cond_e

    .line 7769
    invoke-static {p2}, Lcom/android/server/WindowManagerService;->findCompatibleWindowParams(Ljava/util/ArrayList;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 7771
    :cond_e
    if-eqz v0, :cond_12

    move-object v6, v0

    .line 7804
    :goto_11
    return-object v6

    .line 7776
    :cond_12
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int v2, v6, v8

    .local v2, i:I
    :goto_18
    if-ltz v2, :cond_67

    .line 7777
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 7779
    .local v5, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2c

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_64

    .line 7780
    :cond_2c
    iget-object v6, v5, Lcom/android/server/WindowManagerService$AppWindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 7781
    .local v3, j:I
    :cond_32
    :goto_32
    if-lez v3, :cond_64

    .line 7782
    add-int/lit8 v3, v3, -0x1

    .line 7783
    iget-object v6, v5, Lcom/android/server/WindowManagerService$AppWindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/WindowManagerService$WindowState;

    .line 7785
    .local v4, win:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v6, v4, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v6, v8, :cond_4b

    iget-object v6, v4, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_58

    .line 7788
    :cond_4b
    iget-boolean v6, v5, Lcom/android/server/WindowManagerService$AppWindowToken;->appFullscreen:Z

    if-eqz v6, :cond_52

    .line 7789
    iget-object v6, v4, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    goto :goto_11

    .line 7791
    :cond_52
    if-ge v1, v9, :cond_32

    .line 7792
    iget-object v0, v4, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 7793
    const/4 v1, 0x2

    goto :goto_32

    .line 7795
    :cond_58
    if-ge v1, v8, :cond_32

    iget-object v6, v4, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v6, v9, :cond_32

    .line 7797
    iget-object v0, v4, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 7798
    const/4 v1, 0x1

    goto :goto_32

    .line 7776
    .end local v3           #j:I
    .end local v4           #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_64
    add-int/lit8 v2, v2, -0x1

    goto :goto_18

    .end local v5           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_67
    move-object v6, v0

    .line 7804
    goto :goto_11
.end method

.method private static findCompatibleWindowParams(Ljava/util/ArrayList;)Landroid/view/WindowManager$LayoutParams;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/WindowManagerService$AppWindowToken;",
            ">;)",
            "Landroid/view/WindowManager$LayoutParams;"
        }
    .end annotation

    .prologue
    .line 7808
    .local p0, tokenList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/WindowManagerService$AppWindowToken;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int v0, v3, v4

    .local v0, appCount:I
    :goto_7
    if-ltz v0, :cond_2e

    .line 7809
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 7812
    .local v2, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    iget-object v3, v2, Lcom/android/server/WindowManagerService$AppWindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2b

    .line 7813
    iget-object v3, v2, Lcom/android/server/WindowManagerService$AppWindowToken;->windows:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/WindowManagerService$WindowState;

    iget-object v1, v3, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 7814
    .local v1, params:Landroid/view/WindowManager$LayoutParams;
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x10

    and-int/2addr v3, v4

    if-eqz v3, :cond_2b

    move-object v3, v1

    .line 7819
    .end local v1           #params:Landroid/view/WindowManager$LayoutParams;
    .end local v2           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :goto_2a
    return-object v3

    .line 7808
    .restart local v2       #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_2b
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    .line 7819
    .end local v2           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_2e
    const/4 v3, 0x0

    goto :goto_2a
.end method

.method private findIdxBasedOnAppTokens(Lcom/android/server/WindowManagerService$WindowState;)I
    .registers 9
    .parameter "win"

    .prologue
    const/4 v6, -0x1

    .line 706
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    .line 707
    .local v2, localmWindows:Ljava/util/ArrayList;
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 708
    .local v1, jmax:I
    if-nez v1, :cond_b

    move v4, v6

    .line 717
    :goto_a
    return v4

    .line 711
    :cond_b
    const/4 v4, 0x1

    sub-int v0, v1, v4

    .local v0, j:I
    :goto_e
    if-ltz v0, :cond_21

    .line 712
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/WindowManagerService$WindowState;

    .line 713
    .local v3, wentry:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v4, v3, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iget-object v5, p1, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-ne v4, v5, :cond_1e

    move v4, v0

    .line 714
    goto :goto_a

    .line 711
    :cond_1e
    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    .end local v3           #wentry:Lcom/android/server/WindowManagerService$WindowState;
    :cond_21
    move v4, v6

    .line 717
    goto :goto_a
.end method

.method private findWindow(I)Lcom/android/server/WindowManagerService$WindowState;
    .registers 8
    .parameter "hashCode"

    .prologue
    .line 3898
    const/4 v4, -0x1

    if-ne p1, v4, :cond_8

    .line 3899
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->getFocusedWindow()Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v4

    .line 3914
    :goto_7
    return-object v4

    .line 3902
    :cond_8
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 3903
    :try_start_b
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    .line 3904
    .local v3, windows:Ljava/util/ArrayList;
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3906
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_12
    if-ge v1, v0, :cond_26

    .line 3907
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/WindowManagerService$WindowState;

    .line 3908
    .local v2, w:Lcom/android/server/WindowManagerService$WindowState;
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    if-ne v5, p1, :cond_23

    .line 3909
    monitor-exit v4

    move-object v4, v2

    goto :goto_7

    .line 3906
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 3912
    .end local v2           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_26
    monitor-exit v4

    .line 3914
    const/4 v4, 0x0

    goto :goto_7

    .line 3912
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v3           #windows:Ljava/util/ArrayList;
    :catchall_29
    move-exception v5

    monitor-exit v4
    :try_end_2b
    .catchall {:try_start_b .. :try_end_2b} :catchall_29

    throw v5
.end method

.method private findWindowOffsetLocked(I)I
    .registers 12
    .parameter "tokenPos"

    .prologue
    const/4 v9, 0x1

    .line 3025
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3027
    .local v0, NW:I
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt p1, v7, :cond_27

    .line 3028
    move v2, v0

    .line 3029
    .local v2, i:I
    :cond_10
    if-lez v2, :cond_27

    .line 3030
    add-int/lit8 v2, v2, -0x1

    .line 3031
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$WindowState;

    .line 3032
    .local v5, win:Lcom/android/server/WindowManagerService$WindowState;
    invoke-virtual {v5}, Lcom/android/server/WindowManagerService$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v7

    if-eqz v7, :cond_10

    .line 3033
    add-int/lit8 v7, v2, 0x1

    .line 3072
    .end local v2           #i:I
    .end local v5           #win:Lcom/android/server/WindowManagerService$WindowState;
    :goto_24
    return v7

    .line 3069
    .restart local v2       #i:I
    .local v6, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_25
    add-int/lit8 p1, p1, -0x1

    .line 3038
    .end local v2           #i:I
    .end local v6           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_27
    if-lez p1, :cond_7f

    .line 3041
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    sub-int v8, p1, v9

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 3044
    .restart local v6       #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    iget-object v7, v6, Lcom/android/server/WindowManagerService$AppWindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3045
    .restart local v2       #i:I
    :cond_39
    if-lez v2, :cond_25

    .line 3046
    add-int/lit8 v2, v2, -0x1

    .line 3047
    iget-object v7, v6, Lcom/android/server/WindowManagerService$AppWindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$WindowState;

    .line 3048
    .restart local v5       #win:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v7, v5, Lcom/android/server/WindowManagerService$WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3049
    .local v3, j:I
    :cond_4b
    if-lez v3, :cond_6d

    .line 3050
    add-int/lit8 v3, v3, -0x1

    .line 3051
    iget-object v7, v5, Lcom/android/server/WindowManagerService$WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WindowManagerService$WindowState;

    .line 3052
    .local v1, cwin:Lcom/android/server/WindowManagerService$WindowState;
    iget v7, v1, Lcom/android/server/WindowManagerService$WindowState;->mSubLayer:I

    if-ltz v7, :cond_4b

    .line 3053
    sub-int v4, v0, v9

    .local v4, pos:I
    :goto_5d
    if-ltz v4, :cond_4b

    .line 3054
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v1, :cond_6a

    .line 3057
    add-int/lit8 v7, v4, 0x1

    goto :goto_24

    .line 3053
    :cond_6a
    add-int/lit8 v4, v4, -0x1

    goto :goto_5d

    .line 3062
    .end local v1           #cwin:Lcom/android/server/WindowManagerService$WindowState;
    .end local v4           #pos:I
    :cond_6d
    sub-int v4, v0, v9

    .restart local v4       #pos:I
    :goto_6f
    if-ltz v4, :cond_39

    .line 3063
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v5, :cond_7c

    .line 3065
    add-int/lit8 v7, v4, 0x1

    goto :goto_24

    .line 3062
    :cond_7c
    add-int/lit8 v4, v4, -0x1

    goto :goto_6f

    .line 3072
    .end local v2           #i:I
    .end local v3           #j:I
    .end local v4           #pos:I
    .end local v5           #win:Lcom/android/server/WindowManagerService$WindowState;
    .end local v6           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_7f
    const/4 v7, 0x0

    goto :goto_24
.end method

.method static fixScale(F)F
    .registers 2
    .parameter "scale"

    .prologue
    .line 3288
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_b

    const/4 p0, 0x0

    .line 3290
    :cond_6
    :goto_6
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0

    .line 3289
    :cond_b
    const/high16 v0, 0x41a0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_6

    const/high16 p0, 0x41a0

    goto :goto_6
.end method

.method private getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;
    .registers 6
    .parameter "lp"

    .prologue
    .line 1866
    if-eqz p1, :cond_27

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v2, :cond_27

    .line 1870
    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_23

    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    move-object v0, v2

    .line 1871
    .local v0, packageName:Ljava/lang/String;
    :goto_d
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1872
    .local v1, resId:I
    const/high16 v2, -0x100

    and-int/2addr v2, v1

    const/high16 v3, 0x100

    if-ne v2, v3, :cond_18

    .line 1873
    const-string v0, "android"

    .line 1877
    :cond_18
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v2

    sget-object v3, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[I)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    .line 1880
    .end local v0           #packageName:Ljava/lang/String;
    .end local v1           #resId:I
    :goto_22
    return-object v2

    .line 1870
    :cond_23
    const-string v2, "android"

    move-object v0, v2

    goto :goto_d

    .line 1880
    :cond_27
    const/4 v2, 0x0

    goto :goto_22
.end method

.method private getFocusedWindow()Lcom/android/server/WindowManagerService$WindowState;
    .registers 3

    .prologue
    .line 4760
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 4761
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->getFocusedWindowLocked()Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 4762
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method private getFocusedWindowLocked()Lcom/android/server/WindowManagerService$WindowState;
    .registers 2

    .prologue
    .line 4766
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mCurrentFocus:Lcom/android/server/WindowManagerService$WindowState;

    return-object v0
.end method

.method private isInMusicKeyExcludeList()Z
    .registers 2

    .prologue
    .line 4399
    iget-boolean v0, p0, Lcom/android/server/WindowManagerService;->mLockScreenIsOn:Z

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->isUnlockScreenOn()Z

    move-result v0

    if-nez v0, :cond_24

    const-string v0, "com.android.phone.EmergencyDialer"

    invoke-direct {p0, v0}, Lcom/android/server/WindowManagerService;->isTopActivity(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    const-string v0, "com.lge.hiddenmenu.device_test.KeyCompassTest"

    invoke-direct {p0, v0}, Lcom/android/server/WindowManagerService;->isTopActivity(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    const-string v0, "com.android.music"

    invoke-direct {p0, v0}, Lcom/android/server/WindowManagerService;->isTopActivity(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    :cond_24
    const/4 v0, 0x1

    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method private isSystemSecure()Z
    .registers 5

    .prologue
    const-string v3, "1"

    const-string v2, "0"

    .line 3714
    const-string v0, "1"

    const-string v0, "ro.secure"

    const-string v1, "1"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    const-string v0, "0"

    const-string v0, "ro.debuggable"

    const-string v1, "0"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method private isTopActivity(Ljava/lang/String;)Z
    .registers 10
    .parameter "className"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 4379
    :try_start_2
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/app/IActivityManager;->getTasks(IILandroid/app/IThumbnailReceiver;)Ljava/util/List;

    move-result-object v1

    .line 4380
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-nez v1, :cond_f

    move v2, v6

    .line 4395
    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :goto_e
    return v2

    .line 4383
    .restart local v1       #list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_f
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 4384
    .local v0, info:Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v0, :cond_1c

    iget-object v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-nez v2, :cond_1e

    :cond_1c
    move v2, v6

    .line 4385
    goto :goto_e

    .line 4389
    :cond_1e
    iget-object v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_27} :catch_2c

    move-result v2

    if-eqz v2, :cond_2d

    move v2, v7

    .line 4390
    goto :goto_e

    .line 4392
    .end local v0           #info:Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :catch_2c
    move-exception v2

    :cond_2d
    move v2, v6

    .line 4395
    goto :goto_e
.end method

.method private loadAnimation(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;
    .registers 8
    .parameter "lp"
    .parameter "animAttr"

    .prologue
    .line 1951
    const/4 v0, 0x0

    .line 1952
    .local v0, anim:I
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    .line 1953
    .local v1, context:Landroid/content/Context;
    if-ltz p2, :cond_14

    .line 1954
    invoke-direct {p0, p1}, Lcom/android/server/WindowManagerService;->getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    .line 1955
    .local v2, ent:Lcom/android/server/AttributeCache$Entry;
    if-eqz v2, :cond_14

    .line 1956
    iget-object v1, v2, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    .line 1957
    iget-object v3, v2, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v4, 0x0

    invoke-virtual {v3, p2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 1960
    .end local v2           #ent:Lcom/android/server/AttributeCache$Entry;
    :cond_14
    if-eqz v0, :cond_1b

    .line 1961
    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 1963
    :goto_1a
    return-object v3

    :cond_1b
    const/4 v3, 0x0

    goto :goto_1a
.end method

.method public static main(Landroid/content/Context;Lcom/android/server/PowerManagerService;Z)Lcom/android/server/WindowManagerService;
    .registers 5
    .parameter "context"
    .parameter "pm"
    .parameter "haveInputMethods"

    .prologue
    .line 522
    new-instance v0, Lcom/android/server/WindowManagerService$WMThread;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/WindowManagerService$WMThread;-><init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;Z)V

    .line 523
    .local v0, thr:Lcom/android/server/WindowManagerService$WMThread;
    invoke-virtual {v0}, Lcom/android/server/WindowManagerService$WMThread;->start()V

    .line 525
    monitor-enter v0

    .line 526
    :goto_9
    :try_start_9
    iget-object v1, v0, Lcom/android/server/WindowManagerService$WMThread;->mService:Lcom/android/server/WindowManagerService;
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_17

    if-nez v1, :cond_13

    .line 528
    :try_start_d
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_17
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_10} :catch_11

    goto :goto_9

    .line 529
    :catch_11
    move-exception v1

    goto :goto_9

    .line 532
    :cond_13
    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_17

    .line 534
    iget-object v1, v0, Lcom/android/server/WindowManagerService$WMThread;->mService:Lcom/android/server/WindowManagerService;

    return-object v1

    .line 532
    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v1
.end method

.method private moveAppWindowsLocked(Ljava/util/List;I)V
    .registers 9
    .parameter
    .parameter "tokenPos"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 3158
    .local p1, tokens:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 3160
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    if-ge v1, v0, :cond_1b

    .line 3161
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/WindowManagerService$WindowToken;

    .line 3162
    .local v3, token:Lcom/android/server/WindowManagerService$WindowToken;
    if-eqz v3, :cond_18

    .line 3163
    invoke-direct {p0, v3}, Lcom/android/server/WindowManagerService;->tmpRemoveAppWindowsLocked(Lcom/android/server/WindowManagerService$WindowToken;)Z

    .line 3160
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 3168
    .end local v3           #token:Lcom/android/server/WindowManagerService$WindowToken;
    :cond_1b
    invoke-direct {p0, p2}, Lcom/android/server/WindowManagerService;->findWindowOffsetLocked(I)I

    move-result v2

    .line 3171
    .local v2, pos:I
    const/4 v1, 0x0

    :goto_20
    if-ge v1, v0, :cond_37

    .line 3172
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/WindowManagerService$WindowToken;

    .line 3173
    .restart local v3       #token:Lcom/android/server/WindowManagerService$WindowToken;
    if-eqz v3, :cond_34

    .line 3174
    invoke-direct {p0, v2, v3}, Lcom/android/server/WindowManagerService;->reAddAppWindowsLocked(ILcom/android/server/WindowManagerService$WindowToken;)I

    move-result v2

    .line 3171
    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 3178
    .end local v3           #token:Lcom/android/server/WindowManagerService$WindowToken;
    :cond_37
    const/4 v4, 0x3

    invoke-direct {p0, v4}, Lcom/android/server/WindowManagerService;->updateFocusedWindowLocked(I)Z

    .line 3179
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 3180
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 3183
    return-void
.end method

.method private final performLayoutAndPlaceSurfacesLocked()V
    .registers 12

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v8, "WindowManager"

    .line 8391
    iget-boolean v6, p0, Lcom/android/server/WindowManagerService;->mInLayout:Z

    if-eqz v6, :cond_10

    .line 8395
    const-string v6, "WindowManager"

    const-string v6, "performLayoutAndPlaceSurfacesLocked called while in layout"

    invoke-static {v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8447
    :cond_f
    :goto_f
    return-void

    .line 8399
    :cond_10
    const/4 v2, 0x0

    .line 8400
    .local v2, recoveringMemory:Z
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    if-eqz v6, :cond_5d

    .line 8401
    const/4 v2, 0x1

    .line 8403
    const/4 v1, 0x0

    .local v1, i:I
    :goto_17
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_47

    .line 8404
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$WindowState;

    .line 8405
    .local v5, ws:Lcom/android/server/WindowManagerService$WindowState;
    const-string v6, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Force removing: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8406
    iget-object v6, v5, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    invoke-direct {p0, v6, v5}, Lcom/android/server/WindowManagerService;->removeWindowInnerLocked(Lcom/android/server/WindowManagerService$Session;Lcom/android/server/WindowManagerService$WindowState;)V

    .line 8403
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 8408
    .end local v5           #ws:Lcom/android/server/WindowManagerService$WindowState;
    :cond_47
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    .line 8409
    const-string v6, "WindowManager"

    const-string v6, "Due to memory failure, waiting a bit for next layout"

    invoke-static {v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8410
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 8411
    .local v3, tmp:Ljava/lang/Object;
    monitor-enter v3

    .line 8413
    const-wide/16 v6, 0xfa

    :try_start_59
    invoke-virtual {v3, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_7e
    .catch Ljava/lang/InterruptedException; {:try_start_59 .. :try_end_5c} :catch_af

    .line 8416
    :goto_5c
    :try_start_5c
    monitor-exit v3
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_7e

    .line 8419
    .end local v1           #i:I
    .end local v3           #tmp:Ljava/lang/Object;
    :cond_5d
    iput-boolean v10, p0, Lcom/android/server/WindowManagerService;->mInLayout:Z

    .line 8421
    :try_start_5f
    invoke-direct {p0, v2}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLockedInner(Z)V

    .line 8423
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int v1, v6, v10

    .line 8424
    .restart local v1       #i:I
    if-ltz v1, :cond_a1

    .line 8425
    :goto_6c
    if-ltz v1, :cond_81

    .line 8426
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/WindowManagerService$WindowState;

    .line 8427
    .local v4, w:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v6, v4, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    invoke-direct {p0, v6, v4}, Lcom/android/server/WindowManagerService;->removeWindowInnerLocked(Lcom/android/server/WindowManagerService$Session;Lcom/android/server/WindowManagerService$WindowState;)V
    :try_end_7b
    .catch Ljava/lang/RuntimeException; {:try_start_5f .. :try_end_7b} :catch_94

    .line 8428
    add-int/lit8 v1, v1, -0x1

    .line 8429
    goto :goto_6c

    .line 8416
    .end local v4           #w:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v3       #tmp:Ljava/lang/Object;
    :catchall_7e
    move-exception v6

    :try_start_7f
    monitor-exit v3
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_7e

    throw v6

    .line 8430
    .end local v3           #tmp:Ljava/lang/Object;
    :cond_81
    :try_start_81
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 8432
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/WindowManagerService;->mInLayout:Z

    .line 8433
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->assignLayersLocked()V

    .line 8434
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 8435
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V
    :try_end_92
    .catch Ljava/lang/RuntimeException; {:try_start_81 .. :try_end_92} :catch_94

    goto/16 :goto_f

    .line 8443
    .end local v1           #i:I
    :catch_94
    move-exception v6

    move-object v0, v6

    .line 8444
    .local v0, e:Ljava/lang/RuntimeException;
    iput-boolean v9, p0, Lcom/android/server/WindowManagerService;->mInLayout:Z

    .line 8445
    const-string v6, "WindowManager"

    const-string v6, "Unhandled exception while layout out windows"

    invoke-static {v8, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_f

    .line 8438
    .end local v0           #e:Ljava/lang/RuntimeException;
    .restart local v1       #i:I
    :cond_a1
    const/4 v6, 0x0

    :try_start_a2
    iput-boolean v6, p0, Lcom/android/server/WindowManagerService;->mInLayout:Z

    .line 8439
    iget-boolean v6, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    if-eqz v6, :cond_f

    .line 8440
    const-wide/16 v6, 0x0

    invoke-virtual {p0, v6, v7}, Lcom/android/server/WindowManagerService;->requestAnimationLocked(J)V
    :try_end_ad
    .catch Ljava/lang/RuntimeException; {:try_start_a2 .. :try_end_ad} :catch_94

    goto/16 :goto_f

    .line 8414
    .restart local v3       #tmp:Ljava/lang/Object;
    :catch_af
    move-exception v6

    goto :goto_5c
.end method

.method private final performLayoutAndPlaceSurfacesLockedInner(Z)V
    .registers 66
    .parameter "recoveringMemory"

    .prologue
    .line 8527
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v37

    .line 8528
    .local v37, currentTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v14

    .line 8529
    .local v14, dw:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v15

    .line 8531
    .local v15, dh:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v24

    .line 8535
    .local v24, N:I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->performLayoutLockedInner()V

    .line 8537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    move-object v5, v0

    if-nez v5, :cond_33

    .line 8538
    new-instance v5, Landroid/view/SurfaceSession;

    invoke-direct {v5}, Landroid/view/SurfaceSession;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    .line 8544
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int v46, v5, v6

    .local v46, i:I
    :goto_3f
    if-ltz v46, :cond_55

    .line 8545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$WindowToken;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/server/WindowManagerService$WindowToken;->hasVisible:Z

    .line 8544
    add-int/lit8 v46, v46, -0x1

    goto :goto_3f

    .line 8549
    :cond_55
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int v46, v5, v6

    :goto_61
    if-ltz v46, :cond_77

    .line 8550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$AppWindowToken;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/server/WindowManagerService$AppWindowToken;->hasVisible:Z

    .line 8549
    add-int/lit8 v46, v46, -0x1

    goto :goto_61

    .line 8554
    :cond_77
    const/16 v51, 0x1

    .line 8555
    .local v51, orientationChangeComplete:Z
    const/16 v45, 0x0

    .line 8556
    .local v45, holdScreen:Lcom/android/server/WindowManagerService$Session;
    const/high16 v54, -0x4080

    .line 8557
    .local v54, screenBrightness:F
    const/16 v42, 0x0

    .line 8558
    .local v42, focusDisplayed:Z
    const/16 v29, 0x0

    .line 8560
    .local v29, animating:Z
    invoke-static {}, Landroid/view/Surface;->openTransaction()V

    .line 8565
    :cond_84
    :try_start_84
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WindowManagerService;->mTransactionSequence:I

    move v5, v0

    add-int/lit8 v60, v5, 0x1

    move/from16 v0, v60

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/WindowManagerService;->mTransactionSequence:I

    .line 8569
    .local v60, transactionSequence:I
    const/16 v59, 0x0

    .line 8570
    .local v59, tokensAnimating:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v25

    .line 8571
    .local v25, NAT:I
    const/16 v46, 0x0

    :goto_9e
    move/from16 v0, v46

    move/from16 v1, v25

    if-ge v0, v1, :cond_c2

    .line 8572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object v0, v5

    move-wide/from16 v1, v37

    move v3, v14

    move v4, v15

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/WindowManagerService$AppWindowToken;->stepAnimationLocked(JII)Z

    move-result v5

    if-eqz v5, :cond_bf

    .line 8573
    const/16 v59, 0x1

    .line 8571
    :cond_bf
    add-int/lit8 v46, v46, 0x1

    goto :goto_9e

    .line 8576
    :cond_c2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v26

    .line 8577
    .local v26, NEAT:I
    const/16 v46, 0x0

    :goto_cd
    move/from16 v0, v46

    move/from16 v1, v26

    if-ge v0, v1, :cond_f1

    .line 8578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object v0, v5

    move-wide/from16 v1, v37

    move v3, v14

    move v4, v15

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/WindowManagerService$AppWindowToken;->stepAnimationLocked(JII)Z

    move-result v5

    if-eqz v5, :cond_ee

    .line 8579
    const/16 v59, 0x1

    .line 8577
    :cond_ee
    add-int/lit8 v46, v46, 0x1

    goto :goto_cd

    .line 8583
    :cond_f1
    move/from16 v29, v59

    .line 8584
    const/16 v53, 0x0

    .line 8586
    .local v53, restart:Z
    const/16 v58, 0x0

    .line 8588
    .local v58, tokenMayBeDrawn:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v5, v0

    invoke-interface {v5, v14, v15}, Landroid/view/WindowManagerPolicy;->beginAnimationLw(II)V

    .line 8590
    const/4 v5, 0x1

    sub-int v46, v24, v5

    :goto_102
    if-ltz v46, :cond_2ef

    .line 8591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Lcom/android/server/WindowManagerService$WindowState;

    .line 8593
    .local v61, w:Lcom/android/server/WindowManagerService$WindowState;
    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v32, v0

    .line 8595
    .local v32, attrs:Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    if-eqz v5, :cond_141

    .line 8597
    move-object/from16 v0, v61

    move-wide/from16 v1, v37

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService$WindowState;->commitFinishDrawingLocked(J)V

    .line 8598
    move-object/from16 v0, v61

    move-wide/from16 v1, v37

    move v3, v14

    move v4, v15

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/WindowManagerService$WindowState;->stepAnimationLocked(JII)Z

    move-result v5

    if-eqz v5, :cond_134

    .line 8599
    const/16 v29, 0x1

    .line 8603
    :cond_134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v61

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->animatingWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V

    .line 8606
    :cond_141
    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v30, v0

    .line 8607
    .local v30, atoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-eqz v30, :cond_2e3

    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->allDrawn:Z

    move v5, v0

    if-eqz v5, :cond_157

    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->freezingScreen:Z

    move v5, v0

    if-eqz v5, :cond_2e3

    .line 8608
    :cond_157
    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->lastTransactionSequence:I

    move v5, v0

    move v0, v5

    move/from16 v1, v60

    if-eq v0, v1, :cond_178

    .line 8609
    move/from16 v0, v60

    move-object/from16 v1, v30

    iput v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->lastTransactionSequence:I

    .line 8610
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v30

    iput v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->numDrawnWindows:I

    move v0, v5

    move-object/from16 v1, v30

    iput v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->numInterestingWindows:I

    .line 8611
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v30

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->startingDisplayed:Z

    .line 8613
    :cond_178
    invoke-virtual/range {v61 .. v61}, Lcom/android/server/WindowManagerService$WindowState;->isOnScreen()Z

    move-result v5

    if-nez v5, :cond_188

    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1ce

    :cond_188
    move-object/from16 v0, v61

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mExiting:Z

    move v5, v0

    if-nez v5, :cond_1ce

    move-object/from16 v0, v61

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDestroying:Z

    move v5, v0

    if-nez v5, :cond_1ce

    .line 8630
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingWindow:Lcom/android/server/WindowManagerService$WindowState;

    move-object v5, v0

    move-object/from16 v0, v61

    move-object v1, v5

    if-eq v0, v1, :cond_1d2

    .line 8631
    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->freezingScreen:Z

    move v5, v0

    if-eqz v5, :cond_1ae

    move-object/from16 v0, v61

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppFreezing:Z

    move v5, v0

    if-nez v5, :cond_1ce

    .line 8632
    :cond_1ae
    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->numInterestingWindows:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, v30

    iput v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->numInterestingWindows:I

    .line 8633
    invoke-virtual/range {v61 .. v61}, Lcom/android/server/WindowManagerService$WindowState;->isDisplayedLw()Z

    move-result v5

    if-eqz v5, :cond_1ce

    .line 8634
    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->numDrawnWindows:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, v30

    iput v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->numDrawnWindows:I

    .line 8639
    const/16 v58, 0x1

    .line 8590
    :cond_1ce
    :goto_1ce
    add-int/lit8 v46, v46, -0x1

    goto/16 :goto_102

    .line 8642
    :cond_1d2
    invoke-virtual/range {v61 .. v61}, Lcom/android/server/WindowManagerService$WindowState;->isDisplayedLw()Z

    move-result v5

    if-eqz v5, :cond_1ce

    .line 8643
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, v30

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->startingDisplayed:Z
    :try_end_1de
    .catch Ljava/lang/RuntimeException; {:try_start_84 .. :try_end_1de} :catch_1df

    goto :goto_1ce

    .line 9179
    .end local v25           #NAT:I
    .end local v26           #NEAT:I
    .end local v30           #atoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    .end local v32           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v53           #restart:Z
    .end local v58           #tokenMayBeDrawn:Z
    .end local v59           #tokensAnimating:Z
    .end local v60           #transactionSequence:I
    .end local v61           #w:Lcom/android/server/WindowManagerService$WindowState;
    :catch_1df
    move-exception v5

    move-object/from16 v41, v5

    .line 9180
    .local v41, e:Ljava/lang/RuntimeException;
    const-string v5, "WindowManager"

    const-string v6, "Unhandled exception in Window Manager"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v41

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9183
    .end local v41           #e:Ljava/lang/RuntimeException;
    :cond_1ed
    :goto_1ed
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 9188
    if-eqz v51, :cond_216

    .line 9189
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mWindowsFreezingScreen:Z

    move v5, v0

    if-eqz v5, :cond_20c

    .line 9190
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mWindowsFreezingScreen:Z

    .line 9191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    move-object v5, v0

    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Lcom/android/server/WindowManagerService$H;->removeMessages(I)V

    .line 9192
    const/4 v5, 0x0

    sput-boolean v5, Lcom/android/server/WindowManagerService;->WINDOW_FREEZE_TIMEOUT_SENT:Z

    .line 9194
    :cond_20c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WindowManagerService;->mAppsFreezingScreen:I

    move v5, v0

    if-nez v5, :cond_216

    .line 9195
    invoke-direct/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->stopFreezingDisplayLocked()V

    .line 9199
    :cond_216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v46

    .line 9200
    if-lez v46, :cond_274

    .line 9202
    :cond_221
    add-int/lit8 v46, v46, -0x1

    .line 9203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Lcom/android/server/WindowManagerService$WindowState;

    .line 9205
    .local v63, win:Lcom/android/server/WindowManagerService$WindowState;
    :try_start_231
    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    move-object/from16 v16, v0

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v17

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v18

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v63

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDrawPending:Z

    move/from16 v21, v0

    invoke-interface/range {v16 .. v21}, Landroid/view/IWindow;->resized(IILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 9208
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v63

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mContentInsetsChanged:Z

    .line 9209
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v63

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mVisibleInsetsChanged:Z
    :try_end_26a
    .catch Landroid/os/RemoteException; {:try_start_231 .. :try_end_26a} :catch_c02

    .line 9213
    :goto_26a
    if-gtz v46, :cond_221

    .line 9214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 9218
    .end local v63           #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v46

    .line 9219
    if-lez v46, :cond_2b2

    .line 9221
    :cond_27f
    add-int/lit8 v46, v46, -0x1

    .line 9222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Lcom/android/server/WindowManagerService$WindowState;

    .line 9223
    .restart local v63       #win:Lcom/android/server/WindowManagerService$WindowState;
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v63

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mDestroying:Z

    .line 9224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mInputMethodWindow:Lcom/android/server/WindowManagerService$WindowState;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v63

    if-ne v0, v1, :cond_2a5

    .line 9225
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mInputMethodWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 9227
    :cond_2a5
    invoke-virtual/range {v63 .. v63}, Lcom/android/server/WindowManagerService$WindowState;->destroySurfaceLocked()V

    .line 9228
    if-gtz v46, :cond_27f

    .line 9229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 9233
    .end local v63           #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_2b2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int v46, v5, v6

    :goto_2be
    if-ltz v46, :cond_c0d

    .line 9234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v57

    check-cast v57, Lcom/android/server/WindowManagerService$WindowToken;

    .line 9235
    .local v57, token:Lcom/android/server/WindowManagerService$WindowToken;
    move-object/from16 v0, v57

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->hasVisible:Z

    move v5, v0

    if-nez v5, :cond_2e0

    .line 9236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 9233
    :cond_2e0
    add-int/lit8 v46, v46, -0x1

    goto :goto_2be

    .line 8646
    .end local v57           #token:Lcom/android/server/WindowManagerService$WindowToken;
    .restart local v25       #NAT:I
    .restart local v26       #NEAT:I
    .restart local v30       #atoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    .restart local v32       #attrs:Landroid/view/WindowManager$LayoutParams;
    .restart local v53       #restart:Z
    .restart local v58       #tokenMayBeDrawn:Z
    .restart local v59       #tokensAnimating:Z
    .restart local v60       #transactionSequence:I
    .restart local v61       #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_2e3
    :try_start_2e3
    move-object/from16 v0, v61

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mReadyToShow:Z

    move v5, v0

    if-eqz v5, :cond_1ce

    .line 8647
    invoke-virtual/range {v61 .. v61}, Lcom/android/server/WindowManagerService$WindowState;->performShowLocked()Z

    goto/16 :goto_1ce

    .line 8651
    .end local v30           #atoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    .end local v32           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v61           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_2ef
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v5, v0

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy;->finishAnimationLw()Z

    move-result v5

    if-eqz v5, :cond_2fc

    .line 8652
    const/16 v53, 0x1

    .line 8655
    :cond_2fc
    if-eqz v58, :cond_37a

    .line 8658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mTokenList:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v28

    .line 8659
    .local v28, NT:I
    const/16 v46, 0x0

    :goto_309
    move/from16 v0, v46

    move/from16 v1, v28

    if-ge v0, v1, :cond_37a

    .line 8660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mTokenList:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$WindowToken;

    iget-object v6, v5, Lcom/android/server/WindowManagerService$WindowToken;->appWindowToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 8661
    .local v6, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-nez v6, :cond_324

    .line 8659
    :cond_321
    :goto_321
    add-int/lit8 v46, v46, 0x1

    goto :goto_309

    .line 8664
    :cond_324
    iget-boolean v5, v6, Lcom/android/server/WindowManagerService$AppWindowToken;->freezingScreen:Z

    if-eqz v5, :cond_34d

    .line 8665
    move-object v0, v6

    iget v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->numInterestingWindows:I

    move/from16 v48, v0

    .line 8666
    .local v48, numInteresting:I
    if-lez v48, :cond_321

    iget v5, v6, Lcom/android/server/WindowManagerService$AppWindowToken;->numDrawnWindows:I

    move v0, v5

    move/from16 v1, v48

    if-lt v0, v1, :cond_321

    .line 8671
    invoke-virtual {v6}, Lcom/android/server/WindowManagerService$AppWindowToken;->showAllWindowsLocked()V

    .line 8672
    const/4 v5, 0x0

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v5

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/WindowManagerService;->unsetAppFreezingScreenLocked(Lcom/android/server/WindowManagerService$AppWindowToken;ZZ)V

    .line 8673
    const/16 v51, 0x1

    .line 8677
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService;->setStateorientationChangeComplete(Z)V

    goto :goto_321

    .line 8680
    .end local v48           #numInteresting:I
    :cond_34d
    iget-boolean v5, v6, Lcom/android/server/WindowManagerService$AppWindowToken;->allDrawn:Z

    if-nez v5, :cond_321

    .line 8681
    move-object v0, v6

    iget v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->numInterestingWindows:I

    move/from16 v48, v0

    .line 8682
    .restart local v48       #numInteresting:I
    if-lez v48, :cond_321

    iget v5, v6, Lcom/android/server/WindowManagerService$AppWindowToken;->numDrawnWindows:I

    move v0, v5

    move/from16 v1, v48

    if-lt v0, v1, :cond_321

    .line 8687
    const/4 v5, 0x1

    iput-boolean v5, v6, Lcom/android/server/WindowManagerService$AppWindowToken;->allDrawn:Z

    .line 8688
    const/16 v53, 0x1

    .line 8691
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_321

    .line 8692
    invoke-virtual {v6}, Lcom/android/server/WindowManagerService$AppWindowToken;->showAllWindowsLocked()V

    .line 8695
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService;->setStateorientationChangeComplete(Z)V

    goto :goto_321

    .line 8705
    .end local v6           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    .end local v28           #NT:I
    .end local v48           #numInteresting:I
    :cond_37a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mAppTransitionReady:Z

    move v5, v0

    if-eqz v5, :cond_4a6

    .line 8706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v27

    .line 8707
    .local v27, NN:I
    const/16 v43, 0x1

    .line 8712
    .local v43, goodToGo:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    move v5, v0

    if-nez v5, :cond_3c3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mAppTransitionTimeout:Z

    move v5, v0

    if-nez v5, :cond_3c3

    .line 8716
    const/16 v46, 0x0

    :goto_39c
    move/from16 v0, v46

    move/from16 v1, v27

    if-ge v0, v1, :cond_3c3

    if-eqz v43, :cond_3c3

    .line 8717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 8722
    .restart local v6       #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    iget-boolean v5, v6, Lcom/android/server/WindowManagerService$AppWindowToken;->allDrawn:Z

    if-nez v5, :cond_3c0

    iget-boolean v5, v6, Lcom/android/server/WindowManagerService$AppWindowToken;->startingDisplayed:Z

    if-nez v5, :cond_3c0

    iget-boolean v5, v6, Lcom/android/server/WindowManagerService$AppWindowToken;->startingMoved:Z

    if-nez v5, :cond_3c0

    .line 8724
    const/16 v43, 0x0

    .line 8716
    :cond_3c0
    add-int/lit8 v46, v46, 0x1

    goto :goto_39c

    .line 8728
    .end local v6           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_3c3
    if-eqz v43, :cond_4a6

    .line 8730
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    move v9, v0

    .line 8731
    .local v9, transit:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mSkipAppTransitionAnimation:Z

    move v5, v0

    if-eqz v5, :cond_3d2

    .line 8732
    const/4 v9, 0x0

    .line 8734
    :cond_3d2
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    .line 8735
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mAppTransitionReady:Z

    .line 8736
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mAppTransitionTimeout:Z

    .line 8737
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mStartingIconInTransition:Z

    .line 8738
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mSkipAppTransitionAnimation:Z

    .line 8740
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    move-object v5, v0

    const/16 v6, 0xd

    invoke-virtual {v5, v6}, Lcom/android/server/WindowManagerService$H;->removeMessages(I)V

    .line 8741
    const/4 v5, 0x0

    sput-boolean v5, Lcom/android/server/WindowManagerService;->APP_TRANSITION_TIMEOUT_SENT:Z

    .line 8743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    move-object v7, v0

    invoke-static {v5, v6, v7}, Lcom/android/server/WindowManagerService;->findAnimations(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    .line 8746
    .local v7, lp:Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v27

    .line 8747
    const/16 v46, 0x0

    :goto_41b
    move/from16 v0, v46

    move/from16 v1, v27

    if-ge v0, v1, :cond_445

    .line 8748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 8751
    .restart local v6       #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    const/4 v5, 0x0

    iput-boolean v5, v6, Lcom/android/server/WindowManagerService$AppWindowToken;->reportedVisible:Z

    .line 8752
    const/4 v5, 0x0

    iput-boolean v5, v6, Lcom/android/server/WindowManagerService$AppWindowToken;->inPendingTransaction:Z

    .line 8753
    const/4 v8, 0x1

    const/4 v10, 0x0

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/WindowManagerService;->setTokenVisibilityLocked(Lcom/android/server/WindowManagerService$AppWindowToken;Landroid/view/WindowManager$LayoutParams;ZIZ)Z

    .line 8754
    invoke-virtual {v6}, Lcom/android/server/WindowManagerService$AppWindowToken;->updateReportedVisibilityLocked()V

    .line 8755
    invoke-virtual {v6}, Lcom/android/server/WindowManagerService$AppWindowToken;->showAllWindowsLocked()V

    .line 8747
    add-int/lit8 v46, v46, 0x1

    goto :goto_41b

    .line 8757
    .end local v6           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v27

    .line 8758
    const/16 v46, 0x0

    :goto_450
    move/from16 v0, v46

    move/from16 v1, v27

    if-ge v0, v1, :cond_477

    .line 8759
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 8762
    .restart local v6       #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    const/4 v5, 0x0

    iput-boolean v5, v6, Lcom/android/server/WindowManagerService$AppWindowToken;->inPendingTransaction:Z

    .line 8763
    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/WindowManagerService;->setTokenVisibilityLocked(Lcom/android/server/WindowManagerService$AppWindowToken;Landroid/view/WindowManager$LayoutParams;ZIZ)Z

    .line 8764
    invoke-virtual {v6}, Lcom/android/server/WindowManagerService$AppWindowToken;->updateReportedVisibilityLocked()V

    .line 8768
    const/4 v5, 0x1

    iput-boolean v5, v6, Lcom/android/server/WindowManagerService$AppWindowToken;->allDrawn:Z

    .line 8758
    add-int/lit8 v46, v46, 0x1

    goto :goto_450

    .line 8771
    .end local v6           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 8772
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 8776
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 8777
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService;->moveInputMethodWindowsIfNeededLocked(Z)Z

    move-result v5

    if-nez v5, :cond_49a

    .line 8778
    invoke-direct/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->assignLayersLocked()V

    .line 8780
    :cond_49a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->performLayoutLockedInner()V

    .line 8781
    const/4 v5, 0x2

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/android/server/WindowManagerService;->updateFocusedWindowLocked(I)Z

    .line 8783
    const/16 v53, 0x1

    .line 8786
    .end local v7           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v9           #transit:I
    .end local v27           #NN:I
    .end local v43           #goodToGo:Z
    :cond_4a6
    if-nez v53, :cond_84

    .line 8790
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_726

    const/4 v5, 0x1

    move/from16 v55, v5

    .line 8792
    .local v55, someoneLosingFocus:Z
    :goto_4b6
    const/16 v49, 0x0

    .line 8793
    .local v49, obscured:Z
    const/16 v34, 0x0

    .line 8794
    .local v34, blurring:Z
    const/16 v39, 0x0

    .line 8795
    .local v39, dimming:Z
    const/16 v36, 0x0

    .line 8796
    .local v36, covered:Z
    const/16 v56, 0x0

    .line 8797
    .local v56, syswin:Z
    const/16 v33, 0x0

    .line 8799
    .local v33, backgroundFillerShown:Z
    const/4 v5, 0x1

    sub-int v46, v24, v5

    :goto_4c5
    if-ltz v46, :cond_b92

    .line 8800
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Lcom/android/server/WindowManagerService$WindowState;

    .line 8802
    .restart local v61       #w:Lcom/android/server/WindowManagerService$WindowState;
    const/16 v40, 0x0

    .line 8803
    .local v40, displayed:Z
    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v32, v0

    .line 8804
    .restart local v32       #attrs:Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v32

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v31, v0

    .line 8806
    .local v31, attrFlags:I
    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    if-eqz v5, :cond_a4d

    .line 8807
    invoke-virtual/range {v61 .. v61}, Lcom/android/server/WindowManagerService$WindowState;->computeShownFrameLocked()V

    .line 8815
    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v6, v0

    and-int/lit16 v5, v5, 0x4000

    if-eqz v5, :cond_760

    .line 8816
    move-object/from16 v0, v61

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastRequestedWidth:I

    move v5, v0

    move-object/from16 v0, v61

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mRequestedWidth:I

    move v6, v0

    if-ne v5, v6, :cond_515

    move-object/from16 v0, v61

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastRequestedHeight:I

    move v5, v0

    move-object/from16 v0, v61

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mRequestedHeight:I

    move v6, v0

    if-eq v5, v6, :cond_72b

    :cond_515
    const/4 v5, 0x1

    move/from16 v52, v5

    .line 8820
    .local v52, resize:Z
    :goto_518
    move-object/from16 v0, v61

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mRequestedWidth:I

    move/from16 v62, v0

    .line 8821
    .local v62, width:I
    move-object/from16 v0, v61

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mRequestedHeight:I

    move/from16 v44, v0

    .line 8822
    .local v44, height:I
    move/from16 v0, v62

    move-object/from16 v1, v61

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mLastRequestedWidth:I

    .line 8823
    move/from16 v0, v44

    move-object/from16 v1, v61

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mLastRequestedHeight:I

    .line 8824
    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastShownFrame:Landroid/graphics/Rect;

    move-object v5, v0

    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownFrame:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_53d
    .catch Ljava/lang/RuntimeException; {:try_start_2e3 .. :try_end_53d} :catch_1df

    .line 8826
    :try_start_53d
    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownFrame:Landroid/graphics/Rect;

    move-object v6, v0

    iget v6, v6, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownFrame:Landroid/graphics/Rect;

    move-object v7, v0

    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5, v6, v7}, Landroid/view/Surface;->setPosition(II)V
    :try_end_553
    .catch Ljava/lang/RuntimeException; {:try_start_53d .. :try_end_553} :catch_730

    .line 8848
    :cond_553
    :goto_553
    if-eqz v52, :cond_58f

    .line 8849
    const/4 v5, 0x1

    move/from16 v0, v62

    move v1, v5

    if-ge v0, v1, :cond_55d

    const/16 v62, 0x1

    .line 8850
    :cond_55d
    const/4 v5, 0x1

    move/from16 v0, v44

    move v1, v5

    if-ge v0, v1, :cond_565

    const/16 v44, 0x1

    .line 8851
    :cond_565
    :try_start_565
    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0
    :try_end_56a
    .catch Ljava/lang/RuntimeException; {:try_start_565 .. :try_end_56a} :catch_1df

    if-eqz v5, :cond_58f

    .line 8853
    :try_start_56c
    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v62

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/view/Surface;->setSize(II)V

    .line 8854
    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownFrame:Landroid/graphics/Rect;

    move-object v6, v0

    iget v6, v6, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownFrame:Landroid/graphics/Rect;

    move-object v7, v0

    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5, v6, v7}, Landroid/view/Surface;->setPosition(II)V
    :try_end_58f
    .catch Ljava/lang/RuntimeException; {:try_start_56c .. :try_end_58f} :catch_79a

    .line 8870
    :cond_58f
    :goto_58f
    :try_start_58f
    move-object/from16 v0, v61

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppFreezing:Z

    move v5, v0

    if-nez v5, :cond_63a

    .line 8871
    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    move-object v5, v0

    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mContentInsets:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_80c

    const/4 v5, 0x1

    :goto_5a7
    move v0, v5

    move-object/from16 v1, v61

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mContentInsetsChanged:Z

    .line 8873
    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastVisibleInsets:Landroid/graphics/Rect;

    move-object v5, v0

    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_80f

    const/4 v5, 0x1

    :goto_5bd
    move v0, v5

    move-object/from16 v1, v61

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mVisibleInsetsChanged:Z

    .line 8875
    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastFrame:Landroid/graphics/Rect;

    move-object v5, v0

    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5e0

    move-object/from16 v0, v61

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mContentInsetsChanged:Z

    move v5, v0

    if-nez v5, :cond_5e0

    move-object/from16 v0, v61

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mVisibleInsetsChanged:Z

    move v5, v0

    if-eqz v5, :cond_812

    .line 8878
    :cond_5e0
    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastFrame:Landroid/graphics/Rect;

    move-object v5, v0

    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 8879
    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    move-object v5, v0

    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mContentInsets:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 8880
    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastVisibleInsets:Landroid/graphics/Rect;

    move-object v5, v0

    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 8886
    move-object/from16 v0, v61

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    move v5, v0

    if-eqz v5, :cond_62f

    .line 8890
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, v61

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mDrawPending:Z

    .line 8891
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v61

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mCommitDrawPending:Z

    .line 8892
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v61

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mReadyToShow:Z

    .line 8893
    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object v5, v0

    if-eqz v5, :cond_62f

    .line 8894
    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/server/WindowManagerService$AppWindowToken;->allDrawn:Z

    .line 8899
    :cond_62f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8910
    :cond_63a
    :goto_63a
    move-object/from16 v0, v61

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttachedHidden:Z

    move v5, v0

    if-eqz v5, :cond_84f

    .line 8911
    move-object/from16 v0, v61

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastHidden:Z

    move v5, v0

    if-nez v5, :cond_66a

    .line 8913
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, v61

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mLastHidden:Z

    .line 8916
    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0
    :try_end_653
    .catch Ljava/lang/RuntimeException; {:try_start_58f .. :try_end_653} :catch_1df

    if-eqz v5, :cond_65d

    .line 8918
    :try_start_655
    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/Surface;->hide()V
    :try_end_65d
    .catch Ljava/lang/RuntimeException; {:try_start_655 .. :try_end_65d} :catch_82f

    .line 8923
    :cond_65d
    :goto_65d
    :try_start_65d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    move-object v5, v0

    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/android/server/WindowManagerService$KeyWaiter;->releasePendingPointerLocked(Lcom/android/server/WindowManagerService$Session;)V

    .line 8931
    :cond_66a
    move-object/from16 v0, v61

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    move v5, v0

    if-eqz v5, :cond_677

    .line 8932
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v61

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    .line 9019
    :cond_677
    :goto_677
    if-eqz v40, :cond_6ac

    .line 9020
    if-nez v36, :cond_68d

    .line 9021
    move-object/from16 v0, v32

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move v5, v0

    const/4 v6, -0x1

    if-ne v5, v6, :cond_68d

    move-object/from16 v0, v32

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    move v5, v0

    const/4 v6, -0x1

    if-ne v5, v6, :cond_68d

    .line 9023
    const/16 v36, 0x1

    .line 9026
    :cond_68d
    move-object/from16 v0, v61

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    move v5, v0

    if-eqz v5, :cond_6a4

    .line 9027
    move-object/from16 v0, v61

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDrawPending:Z

    move v5, v0

    if-nez v5, :cond_6a2

    move-object/from16 v0, v61

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mCommitDrawPending:Z

    move v5, v0

    if-eqz v5, :cond_a45

    .line 9028
    :cond_6a2
    const/16 v51, 0x0

    .line 9037
    :cond_6a4
    :goto_6a4
    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mToken:Lcom/android/server/WindowManagerService$WindowToken;

    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/WindowManagerService$WindowToken;->hasVisible:Z

    .line 9045
    .end local v44           #height:I
    .end local v52           #resize:Z
    .end local v62           #width:I
    :cond_6ac
    :goto_6ac
    invoke-virtual/range {v61 .. v61}, Lcom/android/server/WindowManagerService$WindowState;->isDisplayedLw()Z

    move-result v35

    .line 9047
    .local v35, canBeSeen:Z
    if-eqz v55, :cond_6c0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mCurrentFocus:Lcom/android/server/WindowManagerService$WindowState;

    move-object v5, v0

    move-object/from16 v0, v61

    move-object v1, v5

    if-ne v0, v1, :cond_6c0

    if-eqz v35, :cond_6c0

    .line 9048
    const/16 v42, 0x1

    .line 9052
    :cond_6c0
    if-nez v49, :cond_722

    .line 9053
    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    if-eqz v5, :cond_710

    .line 9054
    move/from16 v0, v31

    and-int/lit16 v0, v0, 0x80

    move v5, v0

    if-eqz v5, :cond_6d6

    .line 9055
    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    move-object/from16 v45, v0

    .line 9057
    :cond_6d6
    if-nez v56, :cond_6f3

    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_6f3

    const/4 v5, 0x0

    cmpg-float v5, v54, v5

    if-gez v5, :cond_6f3

    .line 9059
    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    move-object v0, v5

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    move/from16 v54, v0

    .line 9061
    :cond_6f3
    move-object/from16 v0, v32

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v5, v0

    const/16 v6, 0x7d8

    if-eq v5, v6, :cond_70e

    move-object/from16 v0, v32

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v5, v0

    const/16 v6, 0x7d4

    if-eq v5, v6, :cond_70e

    move-object/from16 v0, v32

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v5, v0

    const/16 v6, 0x7da

    if-ne v5, v6, :cond_710

    .line 9064
    :cond_70e
    const/16 v56, 0x1

    .line 9068
    :cond_710
    invoke-virtual/range {v61 .. v61}, Lcom/android/server/WindowManagerService$WindowState;->isOpaqueDrawn()Z

    move-result v50

    .line 9069
    .local v50, opaqueDrawn:Z
    if-eqz v50, :cond_a5c

    move-object/from16 v0, v61

    move v1, v14

    move v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService$WindowState;->isFullscreen(II)Z

    move-result v5

    if-eqz v5, :cond_a5c

    .line 9073
    const/16 v49, 0x1

    .line 8799
    .end local v50           #opaqueDrawn:Z
    :cond_722
    :goto_722
    add-int/lit8 v46, v46, -0x1

    goto/16 :goto_4c5

    .line 8790
    .end local v31           #attrFlags:I
    .end local v32           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v33           #backgroundFillerShown:Z
    .end local v34           #blurring:Z
    .end local v35           #canBeSeen:Z
    .end local v36           #covered:Z
    .end local v39           #dimming:Z
    .end local v40           #displayed:Z
    .end local v49           #obscured:Z
    .end local v55           #someoneLosingFocus:Z
    .end local v56           #syswin:Z
    .end local v61           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_726
    const/4 v5, 0x0

    move/from16 v55, v5

    goto/16 :goto_4b6

    .line 8816
    .restart local v31       #attrFlags:I
    .restart local v32       #attrs:Landroid/view/WindowManager$LayoutParams;
    .restart local v33       #backgroundFillerShown:Z
    .restart local v34       #blurring:Z
    .restart local v36       #covered:Z
    .restart local v39       #dimming:Z
    .restart local v40       #displayed:Z
    .restart local v49       #obscured:Z
    .restart local v55       #someoneLosingFocus:Z
    .restart local v56       #syswin:Z
    .restart local v61       #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_72b
    const/4 v5, 0x0

    move/from16 v52, v5

    goto/16 :goto_518

    .line 8827
    .restart local v44       #height:I
    .restart local v52       #resize:Z
    .restart local v62       #width:I
    :catch_730
    move-exception v5

    move-object/from16 v41, v5

    .line 8828
    .restart local v41       #e:Ljava/lang/RuntimeException;
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error positioning surface in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v41

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8829
    if-nez p1, :cond_553

    .line 8830
    const-string v5, "position"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/WindowManagerService$WindowState;Ljava/lang/String;)V

    goto/16 :goto_553

    .line 8834
    .end local v41           #e:Ljava/lang/RuntimeException;
    .end local v44           #height:I
    .end local v52           #resize:Z
    .end local v62           #width:I
    :cond_760
    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastShownFrame:Landroid/graphics/Rect;

    move-object v5, v0

    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownFrame:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_796

    const/4 v5, 0x1

    move/from16 v52, v5

    .line 8835
    .restart local v52       #resize:Z
    :goto_773
    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownFrame:Landroid/graphics/Rect;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v62

    .line 8836
    .restart local v62       #width:I
    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownFrame:Landroid/graphics/Rect;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v44

    .line 8837
    .restart local v44       #height:I
    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastShownFrame:Landroid/graphics/Rect;

    move-object v5, v0

    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownFrame:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 8838
    if-eqz v52, :cond_553

    goto/16 :goto_553

    .line 8834
    .end local v44           #height:I
    .end local v52           #resize:Z
    .end local v62           #width:I
    :cond_796
    const/4 v5, 0x0

    move/from16 v52, v5

    goto :goto_773

    .line 8856
    .restart local v44       #height:I
    .restart local v52       #resize:Z
    .restart local v62       #width:I
    :catch_79a
    move-exception v5

    move-object/from16 v41, v5

    .line 8860
    .restart local v41       #e:Ljava/lang/RuntimeException;
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failure updating surface of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "size=("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "), pos=("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownFrame:Landroid/graphics/Rect;

    move-object v7, v0

    iget v7, v7, Landroid/graphics/Rect;->left:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownFrame:Landroid/graphics/Rect;

    move-object v7, v0

    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v41

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8864
    if-nez p1, :cond_58f

    .line 8865
    const-string v5, "size"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/WindowManagerService$WindowState;Ljava/lang/String;)V

    goto/16 :goto_58f

    .line 8871
    .end local v41           #e:Ljava/lang/RuntimeException;
    :cond_80c
    const/4 v5, 0x0

    goto/16 :goto_5a7

    .line 8873
    :cond_80f
    const/4 v5, 0x0

    goto/16 :goto_5bd

    .line 8900
    :cond_812
    move-object/from16 v0, v61

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    move v5, v0

    if-eqz v5, :cond_63a

    .line 8901
    move-object/from16 v0, v61

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDrawPending:Z

    move v5, v0

    if-nez v5, :cond_63a

    move-object/from16 v0, v61

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mCommitDrawPending:Z

    move v5, v0

    if-nez v5, :cond_63a

    .line 8905
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v61

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    goto/16 :goto_63a

    .line 8919
    :catch_82f
    move-exception v5

    move-object/from16 v41, v5

    .line 8920
    .restart local v41       #e:Ljava/lang/RuntimeException;
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception hiding surface in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_65d

    .line 8936
    .end local v41           #e:Ljava/lang/RuntimeException;
    :cond_84f
    invoke-virtual/range {v61 .. v61}, Lcom/android/server/WindowManagerService$WindowState;->isReadyForDisplay()Z

    move-result v5

    if-nez v5, :cond_8ac

    .line 8937
    move-object/from16 v0, v61

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastHidden:Z

    move v5, v0

    if-nez v5, :cond_87e

    .line 8939
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, v61

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mLastHidden:Z

    .line 8942
    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0
    :try_end_867
    .catch Ljava/lang/RuntimeException; {:try_start_65d .. :try_end_867} :catch_1df

    if-eqz v5, :cond_871

    .line 8944
    :try_start_869
    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/Surface;->hide()V
    :try_end_871
    .catch Ljava/lang/RuntimeException; {:try_start_869 .. :try_end_871} :catch_88d

    .line 8949
    :cond_871
    :goto_871
    :try_start_871
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    move-object v5, v0

    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/android/server/WindowManagerService$KeyWaiter;->releasePendingPointerLocked(Lcom/android/server/WindowManagerService$Session;)V

    .line 8957
    :cond_87e
    move-object/from16 v0, v61

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    move v5, v0

    if-eqz v5, :cond_677

    .line 8958
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v61

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    goto/16 :goto_677

    .line 8945
    :catch_88d
    move-exception v5

    move-object/from16 v41, v5

    .line 8946
    .restart local v41       #e:Ljava/lang/RuntimeException;
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception exception hiding surface in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_871

    .line 8962
    .end local v41           #e:Ljava/lang/RuntimeException;
    :cond_8ac
    move-object/from16 v0, v61

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastLayer:I

    move v5, v0

    move-object/from16 v0, v61

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    move v6, v0

    if-ne v5, v6, :cond_921

    move-object/from16 v0, v61

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastAlpha:F

    move v5, v0

    move-object/from16 v0, v61

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownAlpha:F

    move v6, v0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_921

    move-object/from16 v0, v61

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastDsDx:F

    move v5, v0

    move-object/from16 v0, v61

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDsDx:F

    move v6, v0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_921

    move-object/from16 v0, v61

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastDtDx:F

    move v5, v0

    move-object/from16 v0, v61

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDtDx:F

    move v6, v0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_921

    move-object/from16 v0, v61

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastDsDy:F

    move v5, v0

    move-object/from16 v0, v61

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDsDy:F

    move v6, v0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_921

    move-object/from16 v0, v61

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastDtDy:F

    move v5, v0

    move-object/from16 v0, v61

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDtDy:F

    move v6, v0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_921

    move-object/from16 v0, v61

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastHScale:F

    move v5, v0

    move-object/from16 v0, v61

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mHScale:F

    move v6, v0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_921

    move-object/from16 v0, v61

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastVScale:F

    move v5, v0

    move-object/from16 v0, v61

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mVScale:F

    move v6, v0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_921

    move-object/from16 v0, v61

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastHidden:Z

    move v5, v0

    if-eqz v5, :cond_a41

    .line 8971
    :cond_921
    const/16 v40, 0x1

    .line 8972
    move-object/from16 v0, v61

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownAlpha:F

    move v5, v0

    move v0, v5

    move-object/from16 v1, v61

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mLastAlpha:F

    .line 8973
    move-object/from16 v0, v61

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, v61

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mLastLayer:I

    .line 8974
    move-object/from16 v0, v61

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDsDx:F

    move v5, v0

    move v0, v5

    move-object/from16 v1, v61

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mLastDsDx:F

    .line 8975
    move-object/from16 v0, v61

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDtDx:F

    move v5, v0

    move v0, v5

    move-object/from16 v1, v61

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mLastDtDx:F

    .line 8976
    move-object/from16 v0, v61

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDsDy:F

    move v5, v0

    move v0, v5

    move-object/from16 v1, v61

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mLastDsDy:F

    .line 8977
    move-object/from16 v0, v61

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDtDy:F

    move v5, v0

    move v0, v5

    move-object/from16 v1, v61

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mLastDtDy:F

    .line 8978
    move-object/from16 v0, v61

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mHScale:F

    move v5, v0

    move v0, v5

    move-object/from16 v1, v61

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mLastHScale:F

    .line 8979
    move-object/from16 v0, v61

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mVScale:F

    move v5, v0

    move v0, v5

    move-object/from16 v1, v61

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mLastVScale:F

    .line 8983
    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0
    :try_end_978
    .catch Ljava/lang/RuntimeException; {:try_start_871 .. :try_end_978} :catch_1df

    if-eqz v5, :cond_9c8

    .line 8985
    :try_start_97a
    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    move-object/from16 v0, v61

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownAlpha:F

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/view/Surface;->setAlpha(F)V

    .line 8986
    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    move-object/from16 v0, v61

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/view/Surface;->setLayer(I)V

    .line 8987
    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    move-object/from16 v0, v61

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDsDx:F

    move v6, v0

    move-object/from16 v0, v61

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mHScale:F

    move v7, v0

    mul-float/2addr v6, v7

    move-object/from16 v0, v61

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDtDx:F

    move v7, v0

    move-object/from16 v0, v61

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mVScale:F

    move v8, v0

    mul-float/2addr v7, v8

    move-object/from16 v0, v61

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDsDy:F

    move v8, v0

    move-object/from16 v0, v61

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mHScale:F

    move v9, v0

    mul-float/2addr v8, v9

    move-object/from16 v0, v61

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDtDy:F

    move v9, v0

    move-object/from16 v0, v61

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mVScale:F

    move v10, v0

    mul-float/2addr v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/Surface;->setMatrix(FFFF)V
    :try_end_9c8
    .catch Ljava/lang/RuntimeException; {:try_start_97a .. :try_end_9c8} :catch_a0b

    .line 8998
    :cond_9c8
    :goto_9c8
    :try_start_9c8
    move-object/from16 v0, v61

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastHidden:Z

    move v5, v0

    if-eqz v5, :cond_9fa

    move-object/from16 v0, v61

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDrawPending:Z

    move v5, v0

    if-nez v5, :cond_9fa

    move-object/from16 v0, v61

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mCommitDrawPending:Z

    move v5, v0

    if-nez v5, :cond_9fa

    move-object/from16 v0, v61

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mReadyToShow:Z

    move v5, v0

    if-nez v5, :cond_9fa

    .line 9005
    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService;->showSurfaceRobustlyLocked(Lcom/android/server/WindowManagerService$WindowState;)Z

    move-result v5

    if-eqz v5, :cond_a3a

    .line 9006
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, v61

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mHasDrawn:Z

    .line 9007
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v61

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mLastHidden:Z

    .line 9012
    :cond_9fa
    :goto_9fa
    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    if-eqz v5, :cond_677

    .line 9013
    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mToken:Lcom/android/server/WindowManagerService$WindowToken;

    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/WindowManagerService$WindowToken;->hasVisible:Z

    goto/16 :goto_677

    .line 8990
    :catch_a0b
    move-exception v5

    move-object/from16 v41, v5

    .line 8991
    .restart local v41       #e:Ljava/lang/RuntimeException;
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error updating surface in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v41

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8992
    if-nez p1, :cond_9c8

    .line 8993
    const-string v5, "update"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/WindowManagerService$WindowState;Ljava/lang/String;)V

    goto :goto_9c8

    .line 9009
    .end local v41           #e:Ljava/lang/RuntimeException;
    :cond_a3a
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v61

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    goto :goto_9fa

    .line 9016
    :cond_a41
    const/16 v40, 0x1

    goto/16 :goto_677

    .line 9032
    :cond_a45
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v61

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    goto/16 :goto_6a4

    .line 9039
    .end local v44           #height:I
    .end local v52           #resize:Z
    .end local v62           #width:I
    :cond_a4d
    move-object/from16 v0, v61

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    move v5, v0

    if-eqz v5, :cond_6ac

    .line 9042
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v61

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    goto/16 :goto_6ac

    .line 9074
    .restart local v35       #canBeSeen:Z
    .restart local v50       #opaqueDrawn:Z
    :cond_a5c
    if-eqz v50, :cond_ad3

    move-object/from16 v0, v61

    move v1, v14

    move v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService$WindowState;->needsBackgroundFiller(II)Z

    move-result v5

    if-eqz v5, :cond_ad3

    .line 9077
    const/16 v49, 0x1

    .line 9078
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mBackgroundFillerSurface:Landroid/view/Surface;

    move-object v5, v0
    :try_end_a6f
    .catch Ljava/lang/RuntimeException; {:try_start_9c8 .. :try_end_a6f} :catch_1df

    if-nez v5, :cond_a86

    .line 9080
    :try_start_a71
    new-instance v10, Landroid/view/Surface;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    move-object v11, v0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, -0x1

    const/16 v17, 0x0

    invoke-direct/range {v10 .. v17}, Landroid/view/Surface;-><init>(Landroid/view/SurfaceSession;IIIIII)V

    move-object v0, v10

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mBackgroundFillerSurface:Landroid/view/Surface;
    :try_end_a86
    .catch Ljava/lang/Exception; {:try_start_a71 .. :try_end_a86} :catch_ab9
    .catch Ljava/lang/RuntimeException; {:try_start_a71 .. :try_end_a86} :catch_1df

    .line 9089
    :cond_a86
    :goto_a86
    :try_start_a86
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mBackgroundFillerSurface:Landroid/view/Surface;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/Surface;->setPosition(II)V

    .line 9090
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mBackgroundFillerSurface:Landroid/view/Surface;

    move-object v5, v0

    invoke-virtual {v5, v14, v15}, Landroid/view/Surface;->setSize(II)V

    .line 9093
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mBackgroundFillerSurface:Landroid/view/Surface;

    move-object v5, v0

    move-object/from16 v0, v61

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    move v6, v0

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/view/Surface;->setLayer(I)V

    .line 9094
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mBackgroundFillerSurface:Landroid/view/Surface;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/Surface;->show()V
    :try_end_aaf
    .catch Ljava/lang/RuntimeException; {:try_start_a86 .. :try_end_aaf} :catch_ac8

    .line 9098
    :goto_aaf
    const/16 v33, 0x1

    .line 9099
    const/4 v5, 0x1

    :try_start_ab2
    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mBackgroundFillerShown:Z

    goto/16 :goto_722

    .line 9084
    :catch_ab9
    move-exception v5

    move-object/from16 v41, v5

    .line 9085
    .local v41, e:Ljava/lang/Exception;
    const-string v5, "WindowManager"

    const-string v6, "Exception creating filler surface"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v41

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a86

    .line 9095
    .end local v41           #e:Ljava/lang/Exception;
    :catch_ac8
    move-exception v5

    move-object/from16 v41, v5

    .line 9096
    .local v41, e:Ljava/lang/RuntimeException;
    const-string v5, "WindowManager"

    const-string v6, "Exception showing filler surface"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_aaf

    .line 9100
    .end local v41           #e:Ljava/lang/RuntimeException;
    :cond_ad3
    if-eqz v35, :cond_722

    if-nez v49, :cond_722

    and-int/lit8 v5, v31, 0x4

    or-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_722

    .line 9106
    and-int/lit8 v5, v31, 0x2

    if-eqz v5, :cond_b10

    .line 9107
    if-nez v39, :cond_b03

    .line 9109
    const/16 v39, 0x1

    .line 9110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDimAnimator:Lcom/android/server/WindowManagerService$DimAnimator;

    move-object v5, v0

    if-nez v5, :cond_afb

    .line 9111
    new-instance v5, Lcom/android/server/WindowManagerService$DimAnimator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/android/server/WindowManagerService$DimAnimator;-><init>(Landroid/view/SurfaceSession;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mDimAnimator:Lcom/android/server/WindowManagerService$DimAnimator;

    .line 9113
    :cond_afb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDimAnimator:Lcom/android/server/WindowManagerService$DimAnimator;

    move-object v5, v0

    invoke-virtual {v5, v14, v15}, Lcom/android/server/WindowManagerService$DimAnimator;->show(II)V

    .line 9115
    :cond_b03
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDimAnimator:Lcom/android/server/WindowManagerService$DimAnimator;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v61

    move-wide/from16 v2, v37

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/WindowManagerService$DimAnimator;->updateParameters(Lcom/android/server/WindowManagerService$WindowState;J)V

    .line 9117
    :cond_b10
    and-int/lit8 v5, v31, 0x4

    if-eqz v5, :cond_722

    .line 9118
    if-nez v34, :cond_b63

    .line 9120
    const/16 v34, 0x1

    .line 9121
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mBlurShown:Z

    .line 9122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mBlurSurface:Landroid/view/Surface;

    move-object v5, v0
    :try_end_b23
    .catch Ljava/lang/RuntimeException; {:try_start_ab2 .. :try_end_b23} :catch_1df

    if-nez v5, :cond_b42

    .line 9126
    :try_start_b25
    new-instance v16, Landroid/view/Surface;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, -0x1

    const/16 v20, 0x10

    const/16 v21, 0x10

    const/16 v22, -0x1

    const/high16 v23, 0x1

    invoke-direct/range {v16 .. v23}, Landroid/view/Surface;-><init>(Landroid/view/SurfaceSession;IIIIII)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mBlurSurface:Landroid/view/Surface;
    :try_end_b42
    .catch Ljava/lang/Exception; {:try_start_b25 .. :try_end_b42} :catch_b74
    .catch Ljava/lang/RuntimeException; {:try_start_b25 .. :try_end_b42} :catch_1df

    .line 9137
    :cond_b42
    :goto_b42
    :try_start_b42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mBlurSurface:Landroid/view/Surface;

    move-object v5, v0

    if-eqz v5, :cond_b63

    .line 9138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mBlurSurface:Landroid/view/Surface;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/Surface;->setPosition(II)V

    .line 9139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mBlurSurface:Landroid/view/Surface;

    move-object v5, v0

    invoke-virtual {v5, v14, v15}, Landroid/view/Surface;->setSize(II)V
    :try_end_b5b
    .catch Ljava/lang/RuntimeException; {:try_start_b42 .. :try_end_b5b} :catch_1df

    .line 9141
    :try_start_b5b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mBlurSurface:Landroid/view/Surface;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/Surface;->show()V
    :try_end_b63
    .catch Ljava/lang/RuntimeException; {:try_start_b5b .. :try_end_b63} :catch_b83

    .line 9147
    :cond_b63
    :goto_b63
    :try_start_b63
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mBlurSurface:Landroid/view/Surface;

    move-object v5, v0

    move-object/from16 v0, v61

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    move v6, v0

    const/4 v7, 0x2

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/view/Surface;->setLayer(I)V

    goto/16 :goto_722

    .line 9130
    :catch_b74
    move-exception v5

    move-object/from16 v41, v5

    .line 9131
    .local v41, e:Ljava/lang/Exception;
    const-string v5, "WindowManager"

    const-string v6, "Exception creating Blur surface"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v41

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b42

    .line 9142
    .end local v41           #e:Ljava/lang/Exception;
    :catch_b83
    move-exception v5

    move-object/from16 v41, v5

    .line 9143
    .local v41, e:Ljava/lang/RuntimeException;
    const-string v5, "WindowManager"

    const-string v6, "Failure showing blur surface"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v41

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b63

    .line 9153
    .end local v31           #attrFlags:I
    .end local v32           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v35           #canBeSeen:Z
    .end local v40           #displayed:Z
    .end local v41           #e:Ljava/lang/RuntimeException;
    .end local v50           #opaqueDrawn:Z
    .end local v61           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_b92
    if-nez v33, :cond_ba9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mBackgroundFillerShown:Z

    move v5, v0

    if-eqz v5, :cond_ba9

    .line 9154
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mBackgroundFillerShown:Z
    :try_end_ba1
    .catch Ljava/lang/RuntimeException; {:try_start_b63 .. :try_end_ba1} :catch_1df

    .line 9157
    :try_start_ba1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mBackgroundFillerSurface:Landroid/view/Surface;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/Surface;->hide()V
    :try_end_ba9
    .catch Ljava/lang/RuntimeException; {:try_start_ba1 .. :try_end_ba9} :catch_be8

    .line 9163
    :cond_ba9
    :goto_ba9
    :try_start_ba9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDimAnimator:Lcom/android/server/WindowManagerService$DimAnimator;

    move-object v5, v0

    if-eqz v5, :cond_bcf

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDimAnimator:Lcom/android/server/WindowManagerService$DimAnimator;

    move-object v5, v0

    iget-boolean v5, v5, Lcom/android/server/WindowManagerService$DimAnimator;->mDimShown:Z

    if-eqz v5, :cond_bcf

    .line 9164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDimAnimator:Lcom/android/server/WindowManagerService$DimAnimator;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    move v6, v0

    move-object v0, v5

    move/from16 v1, v39

    move-wide/from16 v2, v37

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/WindowManagerService$DimAnimator;->updateSurface(ZJZ)Z

    move-result v5

    or-int v29, v29, v5

    .line 9167
    :cond_bcf
    if-nez v34, :cond_1ed

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mBlurShown:Z

    move v5, v0
    :try_end_bd6
    .catch Ljava/lang/RuntimeException; {:try_start_ba9 .. :try_end_bd6} :catch_1df

    if-eqz v5, :cond_1ed

    .line 9171
    :try_start_bd8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mBlurSurface:Landroid/view/Surface;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/Surface;->hide()V
    :try_end_be0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_bd8 .. :try_end_be0} :catch_bf7
    .catch Ljava/lang/RuntimeException; {:try_start_bd8 .. :try_end_be0} :catch_1df

    .line 9175
    :goto_be0
    const/4 v5, 0x0

    :try_start_be1
    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mBlurShown:Z

    goto/16 :goto_1ed

    .line 9158
    :catch_be8
    move-exception v5

    move-object/from16 v41, v5

    .line 9159
    .restart local v41       #e:Ljava/lang/RuntimeException;
    const-string v5, "WindowManager"

    const-string v6, "Exception hiding filler surface"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v41

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_ba9

    .line 9172
    .end local v41           #e:Ljava/lang/RuntimeException;
    :catch_bf7
    move-exception v5

    move-object/from16 v41, v5

    .line 9173
    .local v41, e:Ljava/lang/IllegalArgumentException;
    const-string v5, "WindowManager"

    const-string v6, "Illegal argument exception hiding blur surface"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c01
    .catch Ljava/lang/RuntimeException; {:try_start_be1 .. :try_end_c01} :catch_1df

    goto :goto_be0

    .line 9210
    .end local v25           #NAT:I
    .end local v26           #NEAT:I
    .end local v33           #backgroundFillerShown:Z
    .end local v34           #blurring:Z
    .end local v36           #covered:Z
    .end local v39           #dimming:Z
    .end local v41           #e:Ljava/lang/IllegalArgumentException;
    .end local v49           #obscured:Z
    .end local v53           #restart:Z
    .end local v55           #someoneLosingFocus:Z
    .end local v56           #syswin:Z
    .end local v58           #tokenMayBeDrawn:Z
    .end local v59           #tokensAnimating:Z
    .end local v60           #transactionSequence:I
    .restart local v63       #win:Lcom/android/server/WindowManagerService$WindowState;
    :catch_c02
    move-exception v5

    move-object/from16 v41, v5

    .line 9211
    .local v41, e:Landroid/os/RemoteException;
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v63

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    goto/16 :goto_26a

    .line 9241
    .end local v41           #e:Landroid/os/RemoteException;
    .end local v63           #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_c0d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int v46, v5, v6

    :goto_c19
    if-ltz v46, :cond_c57

    .line 9242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v57

    check-cast v57, Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 9243
    .local v57, token:Lcom/android/server/WindowManagerService$AppWindowToken;
    move-object/from16 v0, v57

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->hasVisible:Z

    move v5, v0

    if-nez v5, :cond_c54

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c54

    .line 9244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 9245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 9241
    :cond_c54
    add-int/lit8 v46, v46, -0x1

    goto :goto_c19

    .line 9249
    .end local v57           #token:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_c57
    if-eqz v42, :cond_c62

    .line 9250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    move-object v5, v0

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/android/server/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 9252
    :cond_c62
    if-eqz v29, :cond_c73

    .line 9253
    const-wide/16 v10, 0x10

    add-long v10, v10, v37

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    sub-long/2addr v10, v12

    move-object/from16 v0, p0

    move-wide v1, v10

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService;->requestAnimationLocked(J)V

    .line 9255
    :cond_c73
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mQueue:Lcom/android/server/WindowManagerService$KeyQ;

    move-object v5, v0

    if-eqz v45, :cond_cbd

    const/4 v6, 0x1

    :goto_c7b
    invoke-virtual {v5, v6}, Lcom/android/server/WindowManagerService$KeyQ;->setHoldScreenLocked(Z)V

    .line 9256
    const/4 v5, 0x0

    cmpg-float v5, v54, v5

    if-ltz v5, :cond_c89

    const/high16 v5, 0x3f80

    cmpl-float v5, v54, v5

    if-lez v5, :cond_cbf

    .line 9257
    :cond_c89
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    move-object v5, v0

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lcom/android/server/PowerManagerService;->setScreenBrightnessOverride(I)V

    .line 9262
    :goto_c92
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mHoldingScreenOn:Lcom/android/server/WindowManagerService$Session;

    move-object v5, v0

    move-object/from16 v0, v45

    move-object v1, v5

    if-eq v0, v1, :cond_cbc

    .line 9263
    move-object/from16 v0, v45

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mHoldingScreenOn:Lcom/android/server/WindowManagerService$Session;

    .line 9264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    move-object v5, v0

    const/16 v6, 0xc

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v47

    .line 9265
    .local v47, m:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 9267
    .end local v47           #m:Landroid/os/Message;
    :cond_cbc
    return-void

    .line 9255
    :cond_cbd
    const/4 v6, 0x0

    goto :goto_c7b

    .line 9259
    :cond_cbf
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    move-object v5, v0

    const/high16 v6, 0x437f

    mul-float v6, v6, v54

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Lcom/android/server/PowerManagerService;->setScreenBrightnessOverride(I)V

    goto :goto_c92
.end method

.method private final performLayoutLockedInner()V
    .registers 16

    .prologue
    const/16 v14, 0x8

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 8450
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v9}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 8451
    .local v3, dw:I
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v9}, Landroid/view/Display;->getHeight()I

    move-result v2

    .line 8453
    .local v2, dh:I
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 8454
    .local v0, N:I
    const/4 v6, 0x0

    .line 8459
    .local v6, repeats:I
    :goto_17
    iget-boolean v9, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    if-eqz v9, :cond_b4

    .line 8460
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v9, v3, v2}, Landroid/view/WindowManagerPolicy;->beginLayoutLw(II)V

    .line 8464
    const/4 v7, -0x1

    .line 8465
    .local v7, topAttached:I
    sub-int v5, v0, v13

    .local v5, i:I
    :goto_23
    if-ltz v5, :cond_6f

    .line 8466
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/WindowManagerService$WindowState;

    .line 8471
    .local v8, win:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v1, v8, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 8472
    .local v1, atoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    iget v9, v8, Lcom/android/server/WindowManagerService$WindowState;->mViewVisibility:I

    if-eq v9, v14, :cond_53

    iget-boolean v9, v8, Lcom/android/server/WindowManagerService$WindowState;->mRelayoutCalled:Z

    if-eqz v9, :cond_53

    iget-object v9, v8, Lcom/android/server/WindowManagerService$WindowState;->mRootToken:Lcom/android/server/WindowManagerService$WindowToken;

    iget-boolean v9, v9, Lcom/android/server/WindowManagerService$WindowToken;->hidden:Z

    if-nez v9, :cond_53

    if-eqz v1, :cond_43

    iget-boolean v9, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->hiddenRequested:Z

    if-nez v9, :cond_53

    :cond_43
    iget-boolean v9, v8, Lcom/android/server/WindowManagerService$WindowState;->mPolicyVisibility:Z

    if-eqz v9, :cond_53

    iget-boolean v9, v8, Lcom/android/server/WindowManagerService$WindowState;->mAttachedHidden:Z

    if-nez v9, :cond_53

    iget-boolean v9, v8, Lcom/android/server/WindowManagerService$WindowState;->mExiting:Z

    if-nez v9, :cond_53

    iget-boolean v9, v8, Lcom/android/server/WindowManagerService$WindowState;->mDestroying:Z

    if-eqz v9, :cond_69

    :cond_53
    move v4, v13

    .line 8485
    .local v4, gone:Z
    :goto_54
    if-eqz v4, :cond_5a

    iget-boolean v9, v8, Lcom/android/server/WindowManagerService$WindowState;->mHaveFrame:Z

    if-nez v9, :cond_66

    .line 8486
    :cond_5a
    iget-boolean v9, v8, Lcom/android/server/WindowManagerService$WindowState;->mLayoutAttached:Z

    if-nez v9, :cond_6b

    .line 8487
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v10, v8, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    const/4 v11, 0x0

    invoke-interface {v9, v8, v10, v11}, Landroid/view/WindowManagerPolicy;->layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 8465
    :cond_66
    :goto_66
    add-int/lit8 v5, v5, -0x1

    goto :goto_23

    .end local v4           #gone:Z
    :cond_69
    move v4, v12

    .line 8472
    goto :goto_54

    .line 8489
    .restart local v4       #gone:Z
    :cond_6b
    if-gez v7, :cond_66

    move v7, v5

    goto :goto_66

    .line 8498
    .end local v1           #atoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    .end local v4           #gone:Z
    .end local v8           #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_6f
    move v5, v7

    :goto_70
    if-ltz v5, :cond_96

    .line 8499
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/WindowManagerService$WindowState;

    .line 8506
    .restart local v8       #win:Lcom/android/server/WindowManagerService$WindowState;
    iget-boolean v9, v8, Lcom/android/server/WindowManagerService$WindowState;->mLayoutAttached:Z

    if-eqz v9, :cond_93

    .line 8507
    iget v9, v8, Lcom/android/server/WindowManagerService$WindowState;->mViewVisibility:I

    if-eq v9, v14, :cond_86

    iget-boolean v9, v8, Lcom/android/server/WindowManagerService$WindowState;->mRelayoutCalled:Z

    if-nez v9, :cond_8a

    :cond_86
    iget-boolean v9, v8, Lcom/android/server/WindowManagerService$WindowState;->mHaveFrame:Z

    if-nez v9, :cond_93

    .line 8509
    :cond_8a
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v10, v8, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v11, v8, Lcom/android/server/WindowManagerService$WindowState;->mAttachedWindow:Lcom/android/server/WindowManagerService$WindowState;

    invoke-interface {v9, v8, v10, v11}, Landroid/view/WindowManagerPolicy;->layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 8498
    :cond_93
    add-int/lit8 v5, v5, -0x1

    goto :goto_70

    .line 8514
    .end local v8           #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_96
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v9}, Landroid/view/WindowManagerPolicy;->finishLayoutLw()Z

    move-result v9

    if-nez v9, :cond_a2

    .line 8515
    iput-boolean v12, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    goto/16 :goto_17

    .line 8516
    :cond_a2
    const/4 v9, 0x2

    if-le v6, v9, :cond_b0

    .line 8517
    const-string v9, "WindowManager"

    const-string v10, "Layout repeat aborted after too many iterations"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8518
    iput-boolean v12, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    goto/16 :goto_17

    .line 8520
    :cond_b0
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_17

    .line 8523
    .end local v5           #i:I
    .end local v7           #topAttached:I
    :cond_b4
    return-void
.end method

.method private placeWindowAfter(Ljava/lang/Object;Lcom/android/server/WindowManagerService$WindowState;)V
    .registers 6
    .parameter "pos"
    .parameter "window"

    .prologue
    .line 687
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 691
    .local v0, i:I
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 692
    return-void
.end method

.method private placeWindowBefore(Ljava/lang/Object;Lcom/android/server/WindowManagerService$WindowState;)V
    .registers 5
    .parameter "pos"
    .parameter "window"

    .prologue
    .line 695
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 699
    .local v0, i:I
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 700
    return-void
.end method

.method private final reAddAppWindowsLocked(ILcom/android/server/WindowManagerService$WindowToken;)I
    .registers 6
    .parameter "index"
    .parameter "token"

    .prologue
    .line 3096
    iget-object v2, p2, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3097
    .local v0, NW:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v0, :cond_18

    .line 3098
    iget-object v2, p2, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/WindowManagerService$WindowState;

    invoke-direct {p0, p1, v2}, Lcom/android/server/WindowManagerService;->reAddWindowLocked(ILcom/android/server/WindowManagerService$WindowState;)I

    move-result p1

    .line 3097
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 3100
    :cond_18
    return p1
.end method

.method private final reAddWindowLocked(ILcom/android/server/WindowManagerService$WindowState;)I
    .registers 8
    .parameter "index"
    .parameter "win"

    .prologue
    .line 3076
    iget-object v4, p2, Lcom/android/server/WindowManagerService$WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3077
    .local v0, NCW:I
    const/4 v1, 0x0

    .line 3078
    .local v1, added:Z
    const/4 v3, 0x0

    .local v3, j:I
    :goto_8
    if-ge v3, v0, :cond_2a

    .line 3079
    iget-object v4, p2, Lcom/android/server/WindowManagerService$WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/WindowManagerService$WindowState;

    .line 3080
    .local v2, cwin:Lcom/android/server/WindowManagerService$WindowState;
    if-nez v1, :cond_20

    iget v4, v2, Lcom/android/server/WindowManagerService$WindowState;->mSubLayer:I

    if-ltz v4, :cond_20

    .line 3081
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3082
    add-int/lit8 p1, p1, 0x1

    .line 3083
    const/4 v1, 0x1

    .line 3085
    :cond_20
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, p1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3086
    add-int/lit8 p1, p1, 0x1

    .line 3078
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 3088
    .end local v2           #cwin:Lcom/android/server/WindowManagerService$WindowState;
    :cond_2a
    if-nez v1, :cond_33

    .line 3089
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3090
    add-int/lit8 p1, p1, 0x1

    .line 3092
    :cond_33
    return p1
.end method

.method private reAddWindowToListInOrderLocked(Lcom/android/server/WindowManagerService$WindowState;)V
    .registers 4
    .parameter "win"

    .prologue
    .line 1098
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/server/WindowManagerService;->addWindowToListInOrderLocked(Lcom/android/server/WindowManagerService$WindowState;Z)V

    .line 1102
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1103
    .local v0, wpos:I
    if-ltz v0, :cond_14

    .line 1104
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1105
    invoke-direct {p0, v0, p1}, Lcom/android/server/WindowManagerService;->reAddWindowLocked(ILcom/android/server/WindowManagerService$WindowState;)I

    .line 1107
    :cond_14
    return-void
.end method

.method private removeAppTokensLocked(Ljava/util/List;)V
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3143
    .local p1, tokens:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 3144
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    if-ge v1, v0, :cond_48

    .line 3145
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    .line 3146
    .local v2, token:Landroid/os/IBinder;
    invoke-virtual {p0, v2}, Lcom/android/server/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/WindowManagerService$AppWindowToken;

    move-result-object v3

    .line 3147
    .local v3, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_45

    .line 3148
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempting to reorder token that doesn\'t exist: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3150
    add-int/lit8 v1, v1, -0x1

    .line 3151
    add-int/lit8 v0, v0, -0x1

    .line 3144
    :cond_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 3154
    .end local v2           #token:Landroid/os/IBinder;
    .end local v3           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_48
    return-void
.end method

.method private removeWindowInnerLocked(Lcom/android/server/WindowManagerService$Session;Lcom/android/server/WindowManagerService$WindowState;)V
    .registers 11
    .parameter "session"
    .parameter "win"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1537
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    iget-object v4, p2, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    invoke-virtual {v3, v4}, Lcom/android/server/WindowManagerService$KeyWaiter;->releasePendingPointerLocked(Lcom/android/server/WindowManagerService$Session;)V

    .line 1538
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    iget-object v4, p2, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    invoke-virtual {v3, v4}, Lcom/android/server/WindowManagerService$KeyWaiter;->releasePendingTrackballLocked(Lcom/android/server/WindowManagerService$Session;)V

    .line 1540
    iput-boolean v5, p2, Lcom/android/server/WindowManagerService$WindowState;->mRemoved:Z

    .line 1542
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mInputMethodTarget:Lcom/android/server/WindowManagerService$WindowState;

    if-ne v3, p2, :cond_1a

    .line 1543
    invoke-virtual {p0, v7}, Lcom/android/server/WindowManagerService;->moveInputMethodWindowsIfNeededLocked(Z)Z

    .line 1546
    :cond_1a
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v3, p2}, Landroid/view/WindowManagerPolicy;->removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 1547
    invoke-virtual {p2}, Lcom/android/server/WindowManagerService$WindowState;->removeLocked()V

    .line 1549
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    iget-object v4, p2, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v4}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1550
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1552
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mInputMethodWindow:Lcom/android/server/WindowManagerService$WindowState;

    if-ne v3, p2, :cond_7e

    .line 1553
    iput-object v6, p0, Lcom/android/server/WindowManagerService;->mInputMethodWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 1558
    :cond_38
    :goto_38
    iget-object v2, p2, Lcom/android/server/WindowManagerService$WindowState;->mToken:Lcom/android/server/WindowManagerService$WindowToken;

    .line 1559
    .local v2, token:Lcom/android/server/WindowManagerService$WindowToken;
    iget-object v0, p2, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 1560
    .local v0, atoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    iget-object v3, v2, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1561
    if-eqz v0, :cond_48

    .line 1562
    iget-object v3, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1567
    :cond_48
    iget-object v3, v2, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_60

    .line 1568
    iget-boolean v3, v2, Lcom/android/server/WindowManagerService$WindowToken;->explicit:Z

    if-nez v3, :cond_8c

    .line 1569
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    iget-object v4, v2, Lcom/android/server/WindowManagerService$WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1570
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mTokenList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1576
    :cond_60
    :goto_60
    if-eqz v0, :cond_68

    .line 1577
    iget-object v3, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingWindow:Lcom/android/server/WindowManagerService$WindowState;

    if-ne v3, p2, :cond_91

    .line 1578
    iput-object v6, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 1595
    :cond_68
    :goto_68
    iget-boolean v3, p0, Lcom/android/server/WindowManagerService;->mInLayout:Z

    if-nez v3, :cond_7d

    .line 1596
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->assignLayersLocked()V

    .line 1597
    iput-boolean v5, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 1598
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 1599
    iget-object v3, p2, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v3, :cond_7d

    .line 1600
    iget-object v3, p2, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    invoke-virtual {v3}, Lcom/android/server/WindowManagerService$AppWindowToken;->updateReportedVisibilityLocked()V

    .line 1603
    :cond_7d
    return-void

    .line 1554
    .end local v0           #atoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    .end local v2           #token:Lcom/android/server/WindowManagerService$WindowToken;
    :cond_7e
    iget-object v3, p2, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7dc

    if-ne v3, v4, :cond_38

    .line 1555
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_38

    .line 1571
    .restart local v0       #atoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    .restart local v2       #token:Lcom/android/server/WindowManagerService$WindowToken;
    :cond_8c
    if-eqz v0, :cond_60

    .line 1572
    iput-boolean v7, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->firstWindowDrawn:Z

    goto :goto_60

    .line 1579
    :cond_91
    iget-object v3, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_a0

    iget-object v3, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingData:Lcom/android/server/WindowManagerService$StartingData;

    if-eqz v3, :cond_a0

    .line 1582
    iput-object v6, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingData:Lcom/android/server/WindowManagerService$StartingData;

    goto :goto_68

    .line 1583
    :cond_a0
    iget-object v3, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v5, :cond_68

    iget-object v3, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingView:Landroid/view/View;

    if-eqz v3, :cond_68

    .line 1590
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    const/4 v4, 0x6

    invoke-virtual {v3, v4, v0}, Lcom/android/server/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1591
    .local v1, m:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    invoke-virtual {v3, v1}, Lcom/android/server/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    goto :goto_68
.end method

.method private setTransparentRegionWindow(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Landroid/graphics/Region;)V
    .registers 9
    .parameter "session"
    .parameter "client"
    .parameter "region"

    .prologue
    .line 1606
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1608
    .local v0, origId:J
    :try_start_4
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_29

    .line 1609
    :try_start_7
    invoke-virtual {p0, p1, p2}, Lcom/android/server/WindowManagerService;->windowForClientLocked(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;)Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v2

    .line 1610
    .local v2, w:Lcom/android/server/WindowManagerService$WindowState;
    if-eqz v2, :cond_1c

    iget-object v4, v2, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v4, :cond_1c

    .line 1611
    invoke-static {}, Landroid/view/Surface;->openTransaction()V
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_26

    .line 1613
    :try_start_14
    iget-object v4, v2, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4, p3}, Landroid/view/Surface;->setTransparentRegionHint(Landroid/graphics/Region;)V
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_21

    .line 1615
    :try_start_19
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 1618
    :cond_1c
    monitor-exit v3
    :try_end_1d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_26

    .line 1620
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1622
    return-void

    .line 1615
    :catchall_21
    move-exception v4

    :try_start_22
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    throw v4

    .line 1618
    .end local v2           #w:Lcom/android/server/WindowManagerService$WindowState;
    :catchall_26
    move-exception v4

    monitor-exit v3
    :try_end_28
    .catchall {:try_start_22 .. :try_end_28} :catchall_26

    :try_start_28
    throw v4
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_29

    .line 1620
    :catchall_29
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private startFreezingDisplayLocked()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 9493
    iget-boolean v2, p0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    if-eqz v2, :cond_13

    .line 9500
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    monitor-enter v2

    .line 9501
    :try_start_9
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/WindowManagerService$KeyWaiter;->mWasFrozen:Z

    .line 9502
    monitor-exit v2

    .line 9533
    :goto_f
    return-void

    .line 9502
    :catchall_10
    move-exception v3

    monitor-exit v2
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_10

    throw v3

    .line 9506
    :cond_13
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 9508
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 9510
    .local v0, now:J
    iget-wide v2, p0, Lcom/android/server/WindowManagerService;->mFreezeGcPending:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4d

    .line 9511
    iget-wide v2, p0, Lcom/android/server/WindowManagerService;->mFreezeGcPending:J

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-lez v2, :cond_3f

    .line 9513
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Lcom/android/server/WindowManagerService$H;->removeMessages(I)V

    .line 9514
    sput-boolean v6, Lcom/android/server/WindowManagerService;->FORCE_GC_SENT:Z

    .line 9515
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->gc()V

    .line 9516
    iput-wide v0, p0, Lcom/android/server/WindowManagerService;->mFreezeGcPending:J

    .line 9522
    :cond_3f
    :goto_3f
    iput-boolean v7, p0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    .line 9523
    iget v2, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    if-eqz v2, :cond_49

    .line 9524
    iput v6, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    .line 9525
    iput-boolean v7, p0, Lcom/android/server/WindowManagerService;->mAppTransitionReady:Z

    .line 9532
    :cond_49
    invoke-static {v6}, Landroid/view/Surface;->freezeDisplay(I)V

    goto :goto_f

    .line 9519
    :cond_4d
    iput-wide v0, p0, Lcom/android/server/WindowManagerService;->mFreezeGcPending:J

    goto :goto_3f
.end method

.method private stopFreezingDisplayLocked()V
    .registers 6

    .prologue
    const/16 v4, 0xf

    const/4 v3, 0x0

    .line 9536
    iget-boolean v0, p0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    if-nez v0, :cond_8

    .line 9570
    :goto_7
    return-void

    .line 9540
    :cond_8
    iput-boolean v3, p0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    .line 9541
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService$H;->removeMessages(I)V

    .line 9545
    invoke-static {v3}, Landroid/view/Surface;->unfreezeDisplay(I)V

    .line 9549
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    monitor-enter v0

    .line 9550
    :try_start_17
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/WindowManagerService$KeyWaiter;->mWasFrozen:Z

    .line 9551
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 9552
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_17 .. :try_end_22} :catchall_43

    .line 9559
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    invoke-virtual {v0, v4}, Lcom/android/server/WindowManagerService$H;->removeMessages(I)V

    .line 9563
    sput-boolean v3, Lcom/android/server/WindowManagerService;->FORCE_GC_SENT:Z

    .line 9565
    sget-boolean v0, Lcom/android/server/WindowManagerService;->allowFreeze:Z

    if-eqz v0, :cond_3d

    .line 9566
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    invoke-virtual {v1, v4}, Lcom/android/server/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/WindowManagerService;->FORCE_GC_SENT:Z

    .line 9569
    :cond_3d
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_7

    .line 9552
    :catchall_43
    move-exception v1

    :try_start_44
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw v1
.end method

.method private tmpRemoveAppWindowsLocked(Lcom/android/server/WindowManagerService$WindowToken;)Z
    .registers 8
    .parameter "token"

    .prologue
    .line 2999
    iget-object v4, p1, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3000
    .local v0, NW:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v0, :cond_2f

    .line 3001
    iget-object v4, p1, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/WindowManagerService$WindowState;

    .line 3002
    .local v3, win:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3003
    iget-object v4, v3, Lcom/android/server/WindowManagerService$WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3004
    .local v2, j:I
    :goto_1c
    if-lez v2, :cond_2c

    .line 3005
    add-int/lit8 v2, v2, -0x1

    .line 3006
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    iget-object v5, v3, Lcom/android/server/WindowManagerService$WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 3000
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 3009
    .end local v2           #j:I
    .end local v3           #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_2f
    if-lez v0, :cond_33

    const/4 v4, 0x1

    :goto_32
    return v4

    :cond_33
    const/4 v4, 0x0

    goto :goto_32
.end method

.method private tmpRemoveWindowLocked(ILcom/android/server/WindowManagerService$WindowState;)I
    .registers 8
    .parameter "interestingPos"
    .parameter "win"

    .prologue
    .line 1079
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 1080
    .local v3, wpos:I
    if-ltz v3, :cond_35

    .line 1081
    if-ge v3, p1, :cond_c

    add-int/lit8 p1, p1, -0x1

    .line 1082
    :cond_c
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1083
    iget-object v4, p2, Lcom/android/server/WindowManagerService$WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1084
    .local v0, NC:I
    :cond_17
    :goto_17
    if-lez v0, :cond_35

    .line 1085
    add-int/lit8 v0, v0, -0x1

    .line 1086
    iget-object v4, p2, Lcom/android/server/WindowManagerService$WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/WindowManagerService$WindowState;

    .line 1087
    .local v2, cw:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1088
    .local v1, cpos:I
    if-ltz v1, :cond_17

    .line 1089
    if-ge v1, p1, :cond_2f

    add-int/lit8 p1, p1, -0x1

    .line 1090
    :cond_2f
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_17

    .line 1094
    .end local v0           #NC:I
    .end local v1           #cpos:I
    .end local v2           #cw:Lcom/android/server/WindowManagerService$WindowState;
    :cond_35
    return p1
.end method

.method private updateFocusedWindowLocked(I)Z
    .registers 10
    .parameter "mode"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 9387
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->computeFocusedWindowLocked()Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v1

    .line 9388
    .local v1, newFocus:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mCurrentFocus:Lcom/android/server/WindowManagerService$WindowState;

    if-eq v3, v1, :cond_4a

    .line 9391
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    invoke-virtual {v3, v5}, Lcom/android/server/WindowManagerService$H;->removeMessages(I)V

    .line 9392
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    invoke-virtual {v3, v5}, Lcom/android/server/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 9395
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mCurrentFocus:Lcom/android/server/WindowManagerService$WindowState;

    .line 9396
    .local v2, oldFocus:Lcom/android/server/WindowManagerService$WindowState;
    iput-object v1, p0, Lcom/android/server/WindowManagerService;->mCurrentFocus:Lcom/android/server/WindowManagerService$WindowState;

    .line 9397
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 9399
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mInputMethodWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 9400
    .local v0, imWindow:Lcom/android/server/WindowManagerService$WindowState;
    if-eq v1, v0, :cond_37

    if-eq v2, v0, :cond_37

    .line 9401
    if-eq p1, v4, :cond_42

    if-eq p1, v7, :cond_42

    move v3, v4

    :goto_2a
    invoke-virtual {p0, v3}, Lcom/android/server/WindowManagerService;->moveInputMethodWindowsIfNeededLocked(Z)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 9404
    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 9406
    :cond_32
    if-ne p1, v5, :cond_44

    .line 9407
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->performLayoutLockedInner()V

    .line 9415
    :cond_37
    :goto_37
    if-eqz v1, :cond_40

    if-eq p1, v4, :cond_40

    .line 9416
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    invoke-virtual {v3, v1}, Lcom/android/server/WindowManagerService$KeyWaiter;->handleNewWindowLocked(Lcom/android/server/WindowManagerService$WindowState;)V

    :cond_40
    move v3, v4

    .line 9420
    .end local v0           #imWindow:Lcom/android/server/WindowManagerService$WindowState;
    .end local v2           #oldFocus:Lcom/android/server/WindowManagerService$WindowState;
    :goto_41
    return v3

    .restart local v0       #imWindow:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v2       #oldFocus:Lcom/android/server/WindowManagerService$WindowState;
    :cond_42
    move v3, v6

    .line 9401
    goto :goto_2a

    .line 9408
    :cond_44
    if-ne p1, v7, :cond_37

    .line 9411
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->assignLayersLocked()V

    goto :goto_37

    .end local v0           #imWindow:Lcom/android/server/WindowManagerService$WindowState;
    .end local v2           #oldFocus:Lcom/android/server/WindowManagerService$WindowState;
    :cond_4a
    move v3, v6

    .line 9420
    goto :goto_41
.end method

.method private final wakeupIfNeeded(Lcom/android/server/WindowManagerService$WindowState;I)V
    .registers 11
    .parameter "targetWin"
    .parameter "eventType"

    .prologue
    const/4 v3, 0x0

    .line 4038
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 4040
    .local v1, curTime:J
    const/4 v0, 0x3

    if-eq p2, v0, :cond_b

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1e

    .line 4041
    :cond_b
    iget v0, p0, Lcom/android/server/WindowManagerService;->mLastTouchEventType:I

    if-ne v0, p2, :cond_1a

    iget-wide v4, p0, Lcom/android/server/WindowManagerService;->mLastUserActivityCallTime:J

    sub-long v4, v1, v4

    const-wide/16 v6, 0x3e8

    cmp-long v0, v4, v6

    if-gez v0, :cond_1a

    .line 4053
    :cond_19
    :goto_19
    return-void

    .line 4045
    :cond_1a
    iput-wide v1, p0, Lcom/android/server/WindowManagerService;->mLastUserActivityCallTime:J

    .line 4046
    iput p2, p0, Lcom/android/server/WindowManagerService;->mLastTouchEventType:I

    .line 4049
    :cond_1e
    if-eqz p1, :cond_28

    iget-object v0, p1, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7d4

    if-eq v0, v4, :cond_19

    .line 4051
    :cond_28
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    move v4, p2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/PowerManagerService;->userActivity(JZIZ)V

    goto :goto_19
.end method


# virtual methods
.method public addAppToken(ILandroid/view/IApplicationToken;IIZ)V
    .registers 11
    .parameter "addPos"
    .parameter "token"
    .parameter "groupId"
    .parameter "requestedOrientation"
    .parameter "fullscreen"

    .prologue
    .line 2164
    const-string v1, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "addAppToken()"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 2166
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2169
    :cond_12
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 2170
    :try_start_15
    invoke-interface {p2}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/WindowManagerService$AppWindowToken;

    move-result-object v0

    .line 2171
    .local v0, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-eqz v0, :cond_39

    .line 2172
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to add existing app token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2173
    monitor-exit v1

    .line 2190
    :goto_38
    return-void

    .line 2175
    :cond_39
    new-instance v0, Lcom/android/server/WindowManagerService$AppWindowToken;

    .end local v0           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    invoke-direct {v0, p0, p2}, Lcom/android/server/WindowManagerService$AppWindowToken;-><init>(Lcom/android/server/WindowManagerService;Landroid/view/IApplicationToken;)V

    .line 2176
    .restart local v0       #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    iput p3, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->groupId:I

    .line 2177
    iput-boolean p5, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->appFullscreen:Z

    .line 2178
    iput p4, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->requestedOrientation:I

    .line 2179
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2181
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-interface {p2}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2182
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mTokenList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2185
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->hidden:Z

    .line 2186
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->hiddenRequested:Z

    .line 2189
    monitor-exit v1

    goto :goto_38

    .end local v0           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :catchall_5f
    move-exception v2

    monitor-exit v1
    :try_end_61
    .catchall {:try_start_15 .. :try_end_61} :catchall_5f

    throw v2
.end method

.method addInputMethodWindowToListLocked(Lcom/android/server/WindowManagerService$WindowState;)V
    .registers 5
    .parameter "win"

    .prologue
    const/4 v2, 0x1

    .line 1039
    invoke-virtual {p0, v2}, Lcom/android/server/WindowManagerService;->findDesiredInputMethodWindowIndexLocked(Z)I

    move-result v0

    .line 1040
    .local v0, pos:I
    if-ltz v0, :cond_18

    .line 1041
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mInputMethodTarget:Lcom/android/server/WindowManagerService$WindowState;

    iget-object v1, v1, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iput-object v1, p1, Lcom/android/server/WindowManagerService$WindowState;->mTargetAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 1042
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1043
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/WindowManagerService;->moveInputMethodDialogsLocked(I)V

    .line 1049
    :goto_17
    return-void

    .line 1046
    :cond_18
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/server/WindowManagerService$WindowState;->mTargetAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 1047
    invoke-direct {p0, p1, v2}, Lcom/android/server/WindowManagerService;->addWindowToListInOrderLocked(Lcom/android/server/WindowManagerService$WindowState;Z)V

    .line 1048
    invoke-virtual {p0, v0}, Lcom/android/server/WindowManagerService;->moveInputMethodDialogsLocked(I)V

    goto :goto_17
.end method

.method public addWindow(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;)I
    .registers 30
    .parameter "session"
    .parameter "client"
    .parameter "attrs"
    .parameter "viewVisibility"
    .parameter "outContentInsets"

    .prologue
    .line 1267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->checkAddPermission(Landroid/view/WindowManager$LayoutParams;)I

    move-result v20

    .line 1268
    .local v20, res:I
    if-eqz v20, :cond_11

    move/from16 v6, v20

    .line 1456
    :goto_10
    return v6

    .line 1272
    :cond_11
    const/16 v19, 0x0

    .line 1273
    .local v19, reportNewConfig:Z
    const/4 v10, 0x0

    .line 1274
    .local v10, attachedWindow:Lcom/android/server/WindowManagerService$WindowState;
    const/16 v21, 0x0

    .line 1276
    .local v21, win:Lcom/android/server/WindowManagerService$WindowState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v23, v0

    monitor-enter v23

    .line 1280
    :try_start_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    move-object v6, v0

    if-nez v6, :cond_49

    .line 1281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    move-object v6, v0

    const-string v7, "window"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/view/WindowManager;

    .line 1282
    .local v22, wm:Landroid/view/WindowManager;
    invoke-interface/range {v22 .. v22}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    .line 1283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mQueue:Lcom/android/server/WindowManagerService$KeyQ;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    move-object v7, v0

    invoke-virtual {v6, v7}, Lcom/android/server/WindowManagerService$KeyQ;->setDisplay(Landroid/view/Display;)V

    .line 1284
    const/16 v19, 0x1

    .line 1287
    .end local v22           #wm:Landroid/view/WindowManager;
    :cond_49
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object v6, v0

    invoke-interface/range {p2 .. p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_81

    .line 1288
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Window "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is already added"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    const/4 v6, -0x5

    monitor-exit v23
    :try_end_7b
    .catchall {:try_start_1d .. :try_end_7b} :catchall_7c

    goto :goto_10

    .line 1436
    :catchall_7c
    move-exception v6

    move-object/from16 v5, v21

    .end local v21           #win:Lcom/android/server/WindowManagerService$WindowState;
    .local v5, win:Lcom/android/server/WindowManagerService$WindowState;
    :goto_7f
    :try_start_7f
    monitor-exit v23
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_1c8

    throw v6

    .line 1292
    .end local v5           #win:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v21       #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_81
    :try_start_81
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v6, v0

    const/16 v7, 0x3e8

    if-lt v6, v7, :cond_101

    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v6, v0

    const/16 v7, 0x7cf

    if-gt v6, v7, :cond_101

    .line 1293
    const/4 v6, 0x0

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    move-object v7, v0

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService;->windowForClientLocked(Lcom/android/server/WindowManagerService$Session;Landroid/os/IBinder;)Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v10

    .line 1294
    if-nez v10, :cond_ca

    .line 1295
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempted to add window with token that is not a window: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".  Aborting."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    const/4 v6, -0x2

    monitor-exit v23

    goto/16 :goto_10

    .line 1299
    :cond_ca
    iget-object v6, v10, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x3e8

    if-lt v6, v7, :cond_101

    iget-object v6, v10, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7cf

    if-gt v6, v7, :cond_101

    .line 1301
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempted to add window with token that is a sub-window: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".  Aborting."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    const/4 v6, -0x2

    monitor-exit v23

    goto/16 :goto_10

    .line 1307
    :cond_101
    const/4 v13, 0x0

    .line 1308
    .local v13, addToken:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    move-object v6, v0

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/WindowManagerService$WindowToken;

    .line 1309
    .local v9, token:Lcom/android/server/WindowManagerService$WindowToken;
    if-nez v9, :cond_1cb

    .line 1310
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v6, v0

    const/4 v7, 0x1

    if-lt v6, v7, :cond_14c

    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v6, v0

    const/16 v7, 0x63

    if-gt v6, v7, :cond_14c

    .line 1312
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempted to add application window with unknown token "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".  Aborting."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    const/4 v6, -0x1

    monitor-exit v23

    goto/16 :goto_10

    .line 1316
    :cond_14c
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v6, v0

    const/16 v7, 0x7db

    if-ne v6, v7, :cond_17c

    .line 1317
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempted to add input method window with unknown token "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".  Aborting."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    const/4 v6, -0x1

    monitor-exit v23

    goto/16 :goto_10

    .line 1321
    :cond_17c
    new-instance v9, Lcom/android/server/WindowManagerService$WindowToken;

    .end local v9           #token:Lcom/android/server/WindowManagerService$WindowToken;
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    move-object v6, v0

    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v2, v6

    move v3, v7

    move v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/WindowManagerService$WindowToken;-><init>(Lcom/android/server/WindowManagerService;Landroid/os/IBinder;IZ)V

    .line 1322
    .restart local v9       #token:Lcom/android/server/WindowManagerService$WindowToken;
    const/4 v13, 0x1

    .line 1349
    :cond_18f
    new-instance v5, Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v11, p3

    move/from16 v12, p4

    invoke-direct/range {v5 .. v12}, Lcom/android/server/WindowManagerService$WindowState;-><init>(Lcom/android/server/WindowManagerService;Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Lcom/android/server/WindowManagerService$WindowToken;Lcom/android/server/WindowManagerService$WindowState;Landroid/view/WindowManager$LayoutParams;I)V
    :try_end_19e
    .catchall {:try_start_81 .. :try_end_19e} :catchall_7c

    .line 1351
    .end local v21           #win:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v5       #win:Lcom/android/server/WindowManagerService$WindowState;
    :try_start_19e
    iget-object v6, v5, Lcom/android/server/WindowManagerService$WindowState;->mDeathRecipient:Lcom/android/server/WindowManagerService$WindowState$DeathRecipient;

    if-nez v6, :cond_26e

    .line 1354
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Adding window client "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface/range {p2 .. p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " that is dead, aborting."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    const/4 v6, -0x4

    monitor-exit v23
    :try_end_1c6
    .catchall {:try_start_19e .. :try_end_1c6} :catchall_1c8

    goto/16 :goto_10

    .line 1436
    .end local v9           #token:Lcom/android/server/WindowManagerService$WindowToken;
    .end local v13           #addToken:Z
    :catchall_1c8
    move-exception v6

    goto/16 :goto_7f

    .line 1323
    .end local v5           #win:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v9       #token:Lcom/android/server/WindowManagerService$WindowToken;
    .restart local v13       #addToken:Z
    .restart local v21       #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_1cb
    :try_start_1cb
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v6, v0

    const/4 v7, 0x1

    if-lt v6, v7, :cond_238

    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v6, v0

    const/16 v7, 0x63

    if-gt v6, v7, :cond_238

    .line 1325
    iget-object v14, v9, Lcom/android/server/WindowManagerService$WindowToken;->appWindowToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 1326
    .local v14, atoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-nez v14, :cond_202

    .line 1327
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempted to add window with non-application token "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".  Aborting."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    const/4 v6, -0x3

    monitor-exit v23

    goto/16 :goto_10

    .line 1330
    :cond_202
    iget-boolean v6, v14, Lcom/android/server/WindowManagerService$AppWindowToken;->removed:Z

    if-eqz v6, :cond_228

    .line 1331
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempted to add window with exiting application token "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".  Aborting."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    const/4 v6, -0x4

    monitor-exit v23

    goto/16 :goto_10

    .line 1335
    :cond_228
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v6, v0

    const/4 v7, 0x3

    if-ne v6, v7, :cond_18f

    iget-boolean v6, v14, Lcom/android/server/WindowManagerService$AppWindowToken;->firstWindowDrawn:Z

    if-eqz v6, :cond_18f

    .line 1339
    const/4 v6, -0x6

    monitor-exit v23

    goto/16 :goto_10

    .line 1341
    .end local v14           #atoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_238
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v6, v0

    const/16 v7, 0x7db

    if-ne v6, v7, :cond_18f

    .line 1342
    iget v6, v9, Lcom/android/server/WindowManagerService$WindowToken;->windowType:I

    const/16 v7, 0x7db

    if-eq v6, v7, :cond_18f

    .line 1343
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempted to add input method window with bad token "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".  Aborting."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    const/4 v6, -0x1

    monitor-exit v23
    :try_end_26c
    .catchall {:try_start_1cb .. :try_end_26c} :catchall_7c

    goto/16 :goto_10

    .line 1359
    .end local v21           #win:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v5       #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_26e
    :try_start_26e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v6, v0

    iget-object v7, v5, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v6, v7}, Landroid/view/WindowManagerPolicy;->adjustWindowParamsLw(Landroid/view/WindowManager$LayoutParams;)V

    .line 1361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v5

    move-object/from16 v2, p3

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v20

    .line 1362
    if-eqz v20, :cond_28c

    .line 1363
    monitor-exit v23

    move/from16 v6, v20

    goto/16 :goto_10

    .line 1368
    :cond_28c
    const/16 v20, 0x0

    .line 1370
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    .line 1372
    .local v17, origId:J
    if-eqz v13, :cond_2a9

    .line 1373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    move-object v6, v0

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    move-object v7, v0

    invoke-virtual {v6, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mTokenList:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1376
    :cond_2a9
    invoke-virtual {v5}, Lcom/android/server/WindowManagerService$WindowState;->attach()V

    .line 1377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object v6, v0

    invoke-interface/range {p2 .. p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1379
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v6, v0

    const/4 v7, 0x3

    if-ne v6, v7, :cond_2c8

    iget-object v6, v9, Lcom/android/server/WindowManagerService$WindowToken;->appWindowToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v6, :cond_2c8

    .line 1381
    iget-object v6, v9, Lcom/android/server/WindowManagerService$WindowToken;->appWindowToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iput-object v5, v6, Lcom/android/server/WindowManagerService$AppWindowToken;->startingWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 1384
    :cond_2c8
    const/16 v16, 0x1

    .line 1386
    .local v16, imMayMove:Z
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v6, v0

    const/16 v7, 0x7db

    if-ne v6, v7, :cond_34e

    .line 1387
    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mInputMethodWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 1388
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService;->addInputMethodWindowToListLocked(Lcom/android/server/WindowManagerService$WindowState;)V

    .line 1389
    const/16 v16, 0x0

    .line 1399
    :goto_2e0
    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/WindowManagerService$WindowState;->mEnterAnimationPending:Z

    .line 1401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->getContentInsetHintLw(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;)V

    .line 1403
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mInTouchMode:Z

    move v6, v0

    if-eqz v6, :cond_2f9

    .line 1404
    or-int/lit8 v20, v20, 0x1

    .line 1406
    :cond_2f9
    if-eqz v5, :cond_305

    iget-object v6, v5, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v6, :cond_305

    iget-object v6, v5, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iget-boolean v6, v6, Lcom/android/server/WindowManagerService$AppWindowToken;->clientHidden:Z

    if-nez v6, :cond_307

    .line 1407
    :cond_305
    or-int/lit8 v20, v20, 0x2

    .line 1410
    :cond_307
    const/4 v15, 0x0

    .line 1411
    .local v15, focusChanged:Z
    invoke-virtual {v5}, Lcom/android/server/WindowManagerService$WindowState;->canReceiveKeys()Z

    move-result v6

    if-eqz v6, :cond_31b

    .line 1412
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/WindowManagerService;->updateFocusedWindowLocked(I)Z

    move-result v15

    const/4 v6, 0x1

    if-ne v15, v6, :cond_31b

    .line 1414
    const/16 v16, 0x0

    .line 1418
    :cond_31b
    if-eqz v16, :cond_324

    .line 1419
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService;->moveInputMethodWindowsIfNeededLocked(Z)Z

    .line 1422
    :cond_324
    invoke-direct/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->assignLayersLocked()V

    .line 1428
    if-eqz v15, :cond_33d

    .line 1429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mCurrentFocus:Lcom/android/server/WindowManagerService$WindowState;

    move-object v6, v0

    if-eqz v6, :cond_33d

    .line 1430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mCurrentFocus:Lcom/android/server/WindowManagerService$WindowState;

    move-object v7, v0

    invoke-virtual {v6, v7}, Lcom/android/server/WindowManagerService$KeyWaiter;->handleNewWindowLocked(Lcom/android/server/WindowManagerService$WindowState;)V

    .line 1436
    :cond_33d
    monitor-exit v23
    :try_end_33e
    .catchall {:try_start_26e .. :try_end_33e} :catchall_1c8

    .line 1442
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    .line 1443
    if-eqz v19, :cond_378

    .line 1444
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->sendNewConfiguration()V

    .line 1454
    :cond_347
    :goto_347
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move/from16 v6, v20

    .line 1456
    goto/16 :goto_10

    .line 1390
    .end local v15           #focusChanged:Z
    :cond_34e
    :try_start_34e
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v6, v0

    const/16 v7, 0x7dc

    if-ne v6, v7, :cond_36e

    .line 1391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1392
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/server/WindowManagerService;->addWindowToListInOrderLocked(Lcom/android/server/WindowManagerService$WindowState;Z)V

    .line 1393
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->adjustInputMethodDialogsLocked()V

    .line 1394
    const/16 v16, 0x0

    goto/16 :goto_2e0

    .line 1396
    :cond_36e
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/server/WindowManagerService;->addWindowToListInOrderLocked(Lcom/android/server/WindowManagerService$WindowState;Z)V
    :try_end_376
    .catchall {:try_start_34e .. :try_end_376} :catchall_1c8

    goto/16 :goto_2e0

    .line 1448
    .restart local v15       #focusChanged:Z
    :cond_378
    invoke-virtual {v5}, Lcom/android/server/WindowManagerService$WindowState;->isVisibleOrAdding()Z

    move-result v6

    if-eqz v6, :cond_347

    .line 1449
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService;->updateOrientationFromAppTokensUnchecked(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;

    move-result-object v6

    if-eqz v6, :cond_347

    .line 1450
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->sendNewConfiguration()V

    goto :goto_347
.end method

.method public addWindowToken(Landroid/os/IBinder;I)V
    .registers 8
    .parameter "token"
    .parameter "type"

    .prologue
    .line 2093
    const-string v1, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "addWindowToken()"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 2095
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2098
    :cond_12
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 2099
    :try_start_15
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/WindowManagerService$WindowToken;

    .line 2100
    .local v0, wtoken:Lcom/android/server/WindowManagerService$WindowToken;
    if-eqz v0, :cond_39

    .line 2101
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to add existing input method token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2102
    monitor-exit v1

    .line 2108
    :goto_38
    return-void

    .line 2104
    :cond_39
    new-instance v0, Lcom/android/server/WindowManagerService$WindowToken;

    .end local v0           #wtoken:Lcom/android/server/WindowManagerService$WindowToken;
    const/4 v2, 0x1

    invoke-direct {v0, p0, p1, p2, v2}, Lcom/android/server/WindowManagerService$WindowToken;-><init>(Lcom/android/server/WindowManagerService;Landroid/os/IBinder;IZ)V

    .line 2105
    .restart local v0       #wtoken:Lcom/android/server/WindowManagerService$WindowToken;
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2106
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mTokenList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2107
    monitor-exit v1

    goto :goto_38

    .end local v0           #wtoken:Lcom/android/server/WindowManagerService$WindowToken;
    :catchall_4b
    move-exception v2

    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_15 .. :try_end_4d} :catchall_4b

    throw v2
.end method

.method adjustInputMethodDialogsLocked()V
    .registers 2

    .prologue
    .line 1261
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/WindowManagerService;->findDesiredInputMethodWindowIndexLocked(Z)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/WindowManagerService;->moveInputMethodDialogsLocked(I)V

    .line 1262
    return-void
.end method

.method checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .parameter "permission"
    .parameter "func"

    .prologue
    const/4 v3, 0x1

    .line 2068
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-ne v1, v2, :cond_d

    move v1, v3

    .line 2081
    :goto_c
    return v1

    .line 2072
    :cond_d
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_17

    move v1, v3

    .line 2074
    goto :goto_c

    .line 2076
    :cond_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requires "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2080
    .local v0, msg:Ljava/lang/String;
    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2081
    const/4 v1, 0x0

    goto :goto_c
.end method

.method computeForcedAppOrientationLocked()I
    .registers 3

    .prologue
    .line 2377
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService;->getOrientationFromWindowsLocked()I

    move-result v0

    .line 2378
    .local v0, req:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 2379
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService;->getOrientationFromAppTokensLocked()I

    move-result v0

    .line 2381
    :cond_b
    return v0
.end method

.method public computeNewConfiguration()Landroid/content/res/Configuration;
    .registers 3

    .prologue
    .line 3929
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 3930
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService;->computeNewConfigurationLocked()Landroid/content/res/Configuration;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 3931
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method computeNewConfigurationLocked()Landroid/content/res/Configuration;
    .registers 8

    .prologue
    .line 3935
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 3936
    .local v0, config:Landroid/content/res/Configuration;
    invoke-virtual {p0, v0}, Lcom/android/server/WindowManagerService;->computeNewConfigurationLocked(Landroid/content/res/Configuration;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 3937
    const/4 v3, 0x0

    .line 3955
    :goto_c
    return-object v3

    .line 3939
    :cond_d
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Config changed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3940
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 3942
    .local v1, now:J
    iget-wide v3, p0, Lcom/android/server/WindowManagerService;->mFreezeGcPending:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4f

    .line 3943
    iget-wide v3, p0, Lcom/android/server/WindowManagerService;->mFreezeGcPending:J

    const-wide/16 v5, 0x3e8

    add-long/2addr v3, v5

    cmp-long v3, v1, v3

    if-lez v3, :cond_4d

    .line 3945
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    const/16 v4, 0xf

    invoke-virtual {v3, v4}, Lcom/android/server/WindowManagerService$H;->removeMessages(I)V

    .line 3947
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/server/WindowManagerService;->FORCE_GC_SENT:Z

    .line 3949
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->gc()V

    .line 3950
    iput-wide v1, p0, Lcom/android/server/WindowManagerService;->mFreezeGcPending:J

    :cond_4d
    :goto_4d
    move-object v3, v0

    .line 3955
    goto :goto_c

    .line 3953
    :cond_4f
    iput-wide v1, p0, Lcom/android/server/WindowManagerService;->mFreezeGcPending:J

    goto :goto_4d
.end method

.method computeNewConfigurationLocked(Landroid/content/res/Configuration;)Z
    .registers 12
    .parameter "config"

    .prologue
    const/4 v9, 0x1

    .line 3959
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    if-nez v7, :cond_7

    .line 3960
    const/4 v7, 0x0

    .line 4030
    :goto_6
    return v7

    .line 3962
    :cond_7
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mQueue:Lcom/android/server/WindowManagerService$KeyQ;

    invoke-virtual {v7, p1}, Lcom/android/server/WindowManagerService$KeyQ;->getInputConfiguration(Landroid/content/res/Configuration;)V

    .line 3963
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v7}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 3964
    .local v2, dw:I
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v7}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 3965
    .local v0, dh:I
    const/4 v4, 0x3

    .line 3966
    .local v4, orientation:I
    if-ge v2, v0, :cond_59

    .line 3967
    const/4 v4, 0x1

    .line 3971
    :cond_1c
    :goto_1c
    iput v4, p1, Landroid/content/res/Configuration;->orientation:I

    .line 3973
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 3974
    .local v1, dm:Landroid/util/DisplayMetrics;
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v7, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 3975
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mCompatibleScreenFrame:Landroid/graphics/Rect;

    invoke-static {v1, v4, v7}, Landroid/content/res/CompatibilityInfo;->updateCompatibleScreenFrame(Landroid/util/DisplayMetrics;ILandroid/graphics/Rect;)V

    .line 3977
    iget v7, p0, Lcom/android/server/WindowManagerService;->mScreenLayout:I

    if-nez v7, :cond_4a

    .line 3981
    move v3, v2

    .line 3982
    .local v3, longSize:I
    move v5, v0

    .line 3983
    .local v5, shortSize:I
    if-ge v3, v5, :cond_38

    .line 3984
    move v6, v3

    .line 3985
    .local v6, tmp:I
    move v3, v5

    .line 3986
    move v5, v6

    .line 3988
    .end local v6           #tmp:I
    :cond_38
    int-to-float v7, v3

    iget v8, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v7, v8

    float-to-int v3, v7

    .line 3989
    int-to-float v7, v5

    iget v8, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v7, v8

    float-to-int v5, v7

    .line 3994
    const/16 v7, 0x1d6

    if-ge v3, v7, :cond_5d

    .line 3997
    const/16 v7, 0x11

    iput v7, p0, Lcom/android/server/WindowManagerService;->mScreenLayout:I

    .line 4025
    .end local v3           #longSize:I
    .end local v5           #shortSize:I
    :cond_4a
    :goto_4a
    iget v7, p0, Lcom/android/server/WindowManagerService;->mScreenLayout:I

    iput v7, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 4027
    iput v9, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 4028
    iput v9, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 4029
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v7, p1}, Landroid/view/WindowManagerPolicy;->adjustConfigurationLw(Landroid/content/res/Configuration;)V

    move v7, v9

    .line 4030
    goto :goto_6

    .line 3968
    .end local v1           #dm:Landroid/util/DisplayMetrics;
    :cond_59
    if-le v2, v0, :cond_1c

    .line 3969
    const/4 v4, 0x2

    goto :goto_1c

    .line 4001
    .restart local v1       #dm:Landroid/util/DisplayMetrics;
    .restart local v3       #longSize:I
    .restart local v5       #shortSize:I
    :cond_5d
    const/16 v7, 0x280

    if-le v3, v7, :cond_77

    const/16 v7, 0x1e0

    if-lt v5, v7, :cond_77

    .line 4004
    const/4 v7, 0x3

    iput v7, p0, Lcom/android/server/WindowManagerService;->mScreenLayout:I

    .line 4017
    :cond_68
    :goto_68
    mul-int/lit8 v7, v3, 0x3

    div-int/lit8 v7, v7, 0x5

    sub-int v8, v5, v9

    if-lt v7, v8, :cond_8a

    .line 4019
    iget v7, p0, Lcom/android/server/WindowManagerService;->mScreenLayout:I

    or-int/lit8 v7, v7, 0x20

    iput v7, p0, Lcom/android/server/WindowManagerService;->mScreenLayout:I

    goto :goto_4a

    .line 4006
    :cond_77
    const/4 v7, 0x2

    iput v7, p0, Lcom/android/server/WindowManagerService;->mScreenLayout:I

    .line 4011
    const/16 v7, 0x141

    if-gt v5, v7, :cond_82

    const/16 v7, 0x23a

    if-le v3, v7, :cond_68

    .line 4012
    :cond_82
    iget v7, p0, Lcom/android/server/WindowManagerService;->mScreenLayout:I

    const/high16 v8, 0x1000

    or-int/2addr v7, v8

    iput v7, p0, Lcom/android/server/WindowManagerService;->mScreenLayout:I

    goto :goto_68

    .line 4021
    :cond_8a
    iget v7, p0, Lcom/android/server/WindowManagerService;->mScreenLayout:I

    or-int/lit8 v7, v7, 0x10

    iput v7, p0, Lcom/android/server/WindowManagerService;->mScreenLayout:I

    goto :goto_4a
.end method

.method public detectSafeMode()Z
    .registers 2

    .prologue
    .line 5707
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->detectSafeMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/WindowManagerService;->mSafeMode:Z

    .line 5708
    iget-boolean v0, p0, Lcom/android/server/WindowManagerService;->mSafeMode:Z

    return v0
.end method

.method public disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 5
    .parameter "token"
    .parameter "tag"

    .prologue
    .line 3234
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DISABLE_KEYGUARD"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_12

    .line 3236
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires DISABLE_KEYGUARD permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3238
    :cond_12
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mKeyguardDisabled:Landroid/os/TokenWatcher;

    invoke-virtual {v0, p1, p2}, Landroid/os/TokenWatcher;->acquire(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 3239
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 13
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    const/4 v8, 0x1

    const-string v6, "    "

    const-string v6, " "

    .line 9574
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.DUMP"

    invoke-virtual {v6, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_38

    .line 9576
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission Denial: can\'t dump WindowManager from from pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9753
    :goto_37
    return-void

    .line 9582
    :cond_38
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 9583
    :try_start_3b
    const-string v7, "Current Window Manager state:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9584
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v0, v7, v8

    .local v0, i:I
    :goto_48
    if-ltz v0, :cond_6f

    .line 9585
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$WindowState;

    .line 9586
    .local v5, w:Lcom/android/server/WindowManagerService$WindowState;
    const-string v7, "  Window #"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v7, 0x20

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 9587
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v7, ":"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9588
    const-string v7, "    "

    invoke-virtual {v5, p2, v7}, Lcom/android/server/WindowManagerService$WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 9584
    add-int/lit8 v0, v0, -0x1

    goto :goto_48

    .line 9590
    .end local v5           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_6f
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_a6

    .line 9591
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9592
    const-string v7, "  Input method dialogs:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9593
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v0, v7, v8

    :goto_89
    if-ltz v0, :cond_a6

    .line 9594
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$WindowState;

    .line 9595
    .restart local v5       #w:Lcom/android/server/WindowManagerService$WindowState;
    const-string v7, "  IM Dialog #"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, ": "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9593
    add-int/lit8 v0, v0, -0x1

    goto :goto_89

    .line 9598
    .end local v5           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_a6
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_e7

    .line 9599
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9600
    const-string v7, "  Remove pending for:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9601
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v0, v7, v8

    :goto_c0
    if-ltz v0, :cond_e7

    .line 9602
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$WindowState;

    .line 9603
    .restart local v5       #w:Lcom/android/server/WindowManagerService$WindowState;
    const-string v7, "  Remove #"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v7, 0x20

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 9604
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v7, ":"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9605
    const-string v7, "    "

    invoke-virtual {v5, p2, v7}, Lcom/android/server/WindowManagerService$WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 9601
    add-int/lit8 v0, v0, -0x1

    goto :goto_c0

    .line 9608
    .end local v5           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_e7
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    if-eqz v7, :cond_12c

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_12c

    .line 9609
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9610
    const-string v7, "  Windows force removing:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9611
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v0, v7, v8

    :goto_105
    if-ltz v0, :cond_12c

    .line 9612
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$WindowState;

    .line 9613
    .restart local v5       #w:Lcom/android/server/WindowManagerService$WindowState;
    const-string v7, "  Removing #"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v7, 0x20

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 9614
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v7, ":"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9615
    const-string v7, "    "

    invoke-virtual {v5, p2, v7}, Lcom/android/server/WindowManagerService$WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 9611
    add-int/lit8 v0, v0, -0x1

    goto :goto_105

    .line 9618
    .end local v5           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_12c
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_16d

    .line 9619
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9620
    const-string v7, "  Windows waiting to destroy their surface:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9621
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v0, v7, v8

    :goto_146
    if-ltz v0, :cond_16d

    .line 9622
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$WindowState;

    .line 9623
    .restart local v5       #w:Lcom/android/server/WindowManagerService$WindowState;
    const-string v7, "  Destroy #"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v7, 0x20

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 9624
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v7, ":"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9625
    const-string v7, "    "

    invoke-virtual {v5, p2, v7}, Lcom/android/server/WindowManagerService$WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 9621
    add-int/lit8 v0, v0, -0x1

    goto :goto_146

    .line 9628
    .end local v5           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_16d
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_1ae

    .line 9629
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9630
    const-string v7, "  Windows losing focus:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9631
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v0, v7, v8

    :goto_187
    if-ltz v0, :cond_1ae

    .line 9632
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$WindowState;

    .line 9633
    .restart local v5       #w:Lcom/android/server/WindowManagerService$WindowState;
    const-string v7, "  Losing #"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v7, 0x20

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 9634
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v7, ":"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9635
    const-string v7, "    "

    invoke-virtual {v5, p2, v7}, Lcom/android/server/WindowManagerService$WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 9631
    add-int/lit8 v0, v0, -0x1

    goto :goto_187

    .line 9638
    .end local v5           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_1ae
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mSessions:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v7

    if-lez v7, :cond_1e8

    .line 9639
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9640
    const-string v7, "  All active sessions:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9641
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mSessions:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 9642
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/WindowManagerService$Session;>;"
    :goto_1c6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1e8

    .line 9643
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/WindowManagerService$Session;

    .line 9644
    .local v3, s:Lcom/android/server/WindowManagerService$Session;
    const-string v7, "  Session "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const/16 v7, 0x3a

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(C)V

    .line 9645
    const-string v7, "    "

    invoke-virtual {v3, p2, v7}, Lcom/android/server/WindowManagerService$Session;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_1c6

    .line 9752
    .end local v0           #i:I
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/WindowManagerService$Session;>;"
    .end local v3           #s:Lcom/android/server/WindowManagerService$Session;
    :catchall_1e5
    move-exception v7

    monitor-exit v6
    :try_end_1e7
    .catchall {:try_start_3b .. :try_end_1e7} :catchall_1e5

    throw v7

    .line 9648
    .restart local v0       #i:I
    :cond_1e8
    :try_start_1e8
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    if-lez v7, :cond_225

    .line 9649
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9650
    const-string v7, "  All tokens:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9651
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 9652
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/WindowManagerService$WindowToken;>;"
    :goto_204
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_225

    .line 9653
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/WindowManagerService$WindowToken;

    .line 9654
    .local v4, token:Lcom/android/server/WindowManagerService$WindowToken;
    const-string v7, "  Token "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v4, Lcom/android/server/WindowManagerService$WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const/16 v7, 0x3a

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(C)V

    .line 9655
    const-string v7, "    "

    invoke-virtual {v4, p2, v7}, Lcom/android/server/WindowManagerService$WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_204

    .line 9658
    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/WindowManagerService$WindowToken;>;"
    .end local v4           #token:Lcom/android/server/WindowManagerService$WindowToken;
    :cond_225
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mTokenList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_259

    .line 9659
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9660
    const-string v7, "  Window token list:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9661
    const/4 v0, 0x0

    :goto_238
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mTokenList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_259

    .line 9662
    const-string v7, "  #"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, ": "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9663
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mTokenList:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9661
    add-int/lit8 v0, v0, 0x1

    goto :goto_238

    .line 9666
    :cond_259
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_28e

    .line 9667
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9668
    const-string v7, "  Application tokens in Z order:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9669
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v0, v7, v8

    :goto_273
    if-ltz v0, :cond_28e

    .line 9670
    const-string v7, "  App #"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, ": "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9671
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9669
    add-int/lit8 v0, v0, -0x1

    goto :goto_273

    .line 9674
    :cond_28e
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_2cf

    .line 9675
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9676
    const-string v7, "  Finishing start of application tokens:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9677
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v0, v7, v8

    :goto_2a8
    if-ltz v0, :cond_2cf

    .line 9678
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/WindowManagerService$WindowToken;

    .line 9679
    .restart local v4       #token:Lcom/android/server/WindowManagerService$WindowToken;
    const-string v7, "  Finished Starting #"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 9680
    const/16 v7, 0x20

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const/16 v7, 0x3a

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(C)V

    .line 9681
    const-string v7, "    "

    invoke-virtual {v4, p2, v7}, Lcom/android/server/WindowManagerService$WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 9677
    add-int/lit8 v0, v0, -0x1

    goto :goto_2a8

    .line 9684
    .end local v4           #token:Lcom/android/server/WindowManagerService$WindowToken;
    :cond_2cf
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_310

    .line 9685
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9686
    const-string v7, "  Exiting tokens:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9687
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v0, v7, v8

    :goto_2e9
    if-ltz v0, :cond_310

    .line 9688
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/WindowManagerService$WindowToken;

    .line 9689
    .restart local v4       #token:Lcom/android/server/WindowManagerService$WindowToken;
    const-string v7, "  Exiting #"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 9690
    const/16 v7, 0x20

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const/16 v7, 0x3a

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(C)V

    .line 9691
    const-string v7, "    "

    invoke-virtual {v4, p2, v7}, Lcom/android/server/WindowManagerService$WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 9687
    add-int/lit8 v0, v0, -0x1

    goto :goto_2e9

    .line 9694
    .end local v4           #token:Lcom/android/server/WindowManagerService$WindowToken;
    :cond_310
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_351

    .line 9695
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9696
    const-string v7, "  Exiting application tokens:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9697
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v0, v7, v8

    :goto_32a
    if-ltz v0, :cond_351

    .line 9698
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/WindowManagerService$WindowToken;

    .line 9699
    .restart local v4       #token:Lcom/android/server/WindowManagerService$WindowToken;
    const-string v7, "  Exiting App #"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 9700
    const/16 v7, 0x20

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const/16 v7, 0x3a

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(C)V

    .line 9701
    const-string v7, "    "

    invoke-virtual {v4, p2, v7}, Lcom/android/server/WindowManagerService$WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 9697
    add-int/lit8 v0, v0, -0x1

    goto :goto_32a

    .line 9704
    .end local v4           #token:Lcom/android/server/WindowManagerService$WindowToken;
    :cond_351
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9705
    const-string v7, "  mCurrentFocus="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mCurrentFocus:Lcom/android/server/WindowManagerService$WindowState;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9706
    const-string v7, "  mLastFocus="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mLastFocus:Lcom/android/server/WindowManagerService$WindowState;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9707
    const-string v7, "  mFocusedApp="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mFocusedApp:Lcom/android/server/WindowManagerService$AppWindowToken;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9708
    const-string v7, "  mInputMethodTarget="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mInputMethodTarget:Lcom/android/server/WindowManagerService$WindowState;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9709
    const-string v7, "  mInputMethodWindow="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mInputMethodWindow:Lcom/android/server/WindowManagerService$WindowState;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9710
    const-string v7, "  mInTouchMode="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/WindowManagerService;->mInTouchMode:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Z)V

    .line 9711
    const-string v7, "  mSystemBooted="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/WindowManagerService;->mSystemBooted:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 9712
    const-string v7, " mDisplayEnabled="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/WindowManagerService;->mDisplayEnabled:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Z)V

    .line 9713
    const-string v7, "  mLayoutNeeded="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 9714
    const-string v7, " mBlurShown="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/WindowManagerService;->mBlurShown:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Z)V

    .line 9715
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mDimAnimator:Lcom/android/server/WindowManagerService$DimAnimator;

    if-eqz v7, :cond_4f9

    .line 9716
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mDimAnimator:Lcom/android/server/WindowManagerService$DimAnimator;

    invoke-virtual {v7, p2}, Lcom/android/server/WindowManagerService$DimAnimator;->printTo(Ljava/io/PrintWriter;)V

    .line 9720
    :goto_3c3
    const-string v7, "  mInputMethodAnimLayerAdjustment="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9721
    iget v7, p0, Lcom/android/server/WindowManagerService;->mInputMethodAnimLayerAdjustment:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 9722
    const-string v7, "  mDisplayFrozen="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 9723
    const-string v7, " mWindowsFreezingScreen="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/WindowManagerService;->mWindowsFreezingScreen:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 9724
    const-string v7, " mAppsFreezingScreen="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/WindowManagerService;->mAppsFreezingScreen:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 9725
    const-string v7, "  mRotation="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/WindowManagerService;->mRotation:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 9726
    const-string v7, ", mForcedAppOrientation="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/WindowManagerService;->mForcedAppOrientation:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 9727
    const-string v7, ", mRequestedRotation="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/WindowManagerService;->mRequestedRotation:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 9728
    const-string v7, "  mAnimationPending="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/WindowManagerService;->mAnimationPending:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 9729
    const-string v7, " mWindowAnimationScale="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/WindowManagerService;->mWindowAnimationScale:F

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(F)V

    .line 9730
    const-string v7, " mTransitionWindowAnimationScale="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/WindowManagerService;->mTransitionAnimationScale:F

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(F)V

    .line 9731
    const-string v7, "  mNextAppTransition=0x"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9732
    iget v7, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9733
    const-string v7, ", mAppTransitionReady="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/WindowManagerService;->mAppTransitionReady:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 9734
    const-string v7, ", mAppTransitionTimeout="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/WindowManagerService;->mAppTransitionTimeout:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Z)V

    .line 9735
    const-string v7, "  mStartingIconInTransition="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/WindowManagerService;->mStartingIconInTransition:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 9736
    const-string v7, ", mSkipAppTransitionAnimation="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/WindowManagerService;->mSkipAppTransitionAnimation:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Z)V

    .line 9737
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_46f

    .line 9738
    const-string v7, "  mOpeningApps="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9740
    :cond_46f
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_481

    .line 9741
    const-string v7, "  mClosingApps="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9743
    :cond_481
    const-string v7, "  DisplayWidth="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v7}, Landroid/view/Display;->getWidth()I

    move-result v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 9744
    const-string v7, " DisplayHeight="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v7}, Landroid/view/Display;->getHeight()I

    move-result v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 9745
    const-string v7, "  KeyWaiter state:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9746
    const-string v7, "    mLastWin="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    invoke-static {v7}, Lcom/android/server/WindowManagerService$KeyWaiter;->access$200(Lcom/android/server/WindowManagerService$KeyWaiter;)Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 9747
    const-string v7, " mLastBinder="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    invoke-static {v7}, Lcom/android/server/WindowManagerService$KeyWaiter;->access$300(Lcom/android/server/WindowManagerService$KeyWaiter;)Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9748
    const-string v7, "    mFinished="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    invoke-static {v7}, Lcom/android/server/WindowManagerService$KeyWaiter;->access$400(Lcom/android/server/WindowManagerService$KeyWaiter;)Z

    move-result v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 9749
    const-string v7, " mGotFirstWindow="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    invoke-static {v7}, Lcom/android/server/WindowManagerService$KeyWaiter;->access$500(Lcom/android/server/WindowManagerService$KeyWaiter;)Z

    move-result v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 9750
    const-string v7, " mEventDispatching="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    invoke-static {v7}, Lcom/android/server/WindowManagerService$KeyWaiter;->access$600(Lcom/android/server/WindowManagerService$KeyWaiter;)Z

    move-result v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 9751
    const-string v7, " mTimeToSwitch="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    invoke-static {v7}, Lcom/android/server/WindowManagerService$KeyWaiter;->access$700(Lcom/android/server/WindowManagerService$KeyWaiter;)J

    move-result-wide v7

    invoke-virtual {p2, v7, v8}, Ljava/io/PrintWriter;->println(J)V

    .line 9752
    monitor-exit v6

    goto/16 :goto_37

    .line 9718
    :cond_4f9
    const-string v7, "  no DimAnimator "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_4fe
    .catchall {:try_start_1e8 .. :try_end_4fe} :catchall_1e5

    goto/16 :goto_3c3
.end method

.method dumpAppTokensLocked()V
    .registers 5

    .prologue
    .line 3013
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .local v0, i:I
    :goto_9
    if-ltz v0, :cond_3a

    .line 3014
    const-string v2, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  #"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WindowManagerService$AppWindowToken;

    iget-object v1, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3013
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 3016
    :cond_3a
    return-void
.end method

.method dumpWindowsLocked()V
    .registers 5

    .prologue
    .line 3019
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .local v0, i:I
    :goto_9
    if-ltz v0, :cond_36

    .line 3020
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3019
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 3022
    :cond_36
    return-void
.end method

.method public enableScreenAfterBoot()V
    .registers 3

    .prologue
    .line 3395
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 3396
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/WindowManagerService;->mSystemBooted:Z

    if-eqz v1, :cond_9

    .line 3397
    monitor-exit v0

    .line 3403
    :goto_8
    return-void

    .line 3399
    :cond_9
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/WindowManagerService;->mSystemBooted:Z

    .line 3400
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_11

    .line 3402
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService;->performEnableScreen()V

    goto :goto_8

    .line 3400
    :catchall_11
    move-exception v1

    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public enableScreenIfNeededLocked()V
    .registers 4

    .prologue
    .line 3406
    iget-boolean v0, p0, Lcom/android/server/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v0, :cond_5

    .line 3413
    :cond_4
    :goto_4
    return-void

    .line 3409
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/WindowManagerService;->mSystemBooted:Z

    if-eqz v0, :cond_4

    .line 3412
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/android/server/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4
.end method

.method public executeAppTransition()V
    .registers 5

    .prologue
    .line 2492
    const-string v2, "android.permission.MANAGE_APP_TOKENS"

    const-string v3, "executeAppTransition()"

    invoke-virtual {p0, v2, v3}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 2494
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2497
    :cond_12
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 2500
    :try_start_15
    iget v3, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    if-eqz v3, :cond_26

    .line 2501
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/WindowManagerService;->mAppTransitionReady:Z

    .line 2502
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2503
    .local v0, origId:J
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 2504
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2506
    .end local v0           #origId:J
    :cond_26
    monitor-exit v2

    .line 2507
    return-void

    .line 2506
    :catchall_28
    move-exception v3

    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_15 .. :try_end_2a} :catchall_28

    throw v3
.end method

.method public exitKeyguardSecurely(Landroid/view/IOnKeyguardExitResult;)V
    .registers 4
    .parameter "callback"

    .prologue
    .line 3268
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DISABLE_KEYGUARD"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_12

    .line 3270
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires DISABLE_KEYGUARD permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3272
    :cond_12
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    new-instance v1, Lcom/android/server/WindowManagerService$2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/WindowManagerService$2;-><init>(Lcom/android/server/WindowManagerService;Landroid/view/IOnKeyguardExitResult;)V

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->exitKeyguardSecurely(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V

    .line 3281
    return-void
.end method

.method findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/WindowManagerService$AppWindowToken;
    .registers 4
    .parameter "token"

    .prologue
    .line 2085
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/WindowManagerService$WindowToken;

    .line 2086
    .local v0, wtoken:Lcom/android/server/WindowManagerService$WindowToken;
    if-nez v0, :cond_c

    .line 2087
    const/4 v1, 0x0

    .line 2089
    :goto_b
    return-object v1

    :cond_c
    iget-object v1, v0, Lcom/android/server/WindowManagerService$WindowToken;->appWindowToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    goto :goto_b
.end method

.method findDesiredInputMethodWindowIndexLocked(Z)I
    .registers 16
    .parameter "willMove"

    .prologue
    .line 919
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    .line 920
    .local v6, localmWindows:Ljava/util/ArrayList;
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 921
    .local v0, N:I
    const/4 v9, 0x0

    .line 922
    .local v9, w:Lcom/android/server/WindowManagerService$WindowState;
    move v5, v0

    .line 923
    .local v5, i:I
    :cond_8
    if-lez v5, :cond_3b

    .line 924
    add-int/lit8 v5, v5, -0x1

    .line 925
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #w:Lcom/android/server/WindowManagerService$WindowState;
    check-cast v9, Lcom/android/server/WindowManagerService$WindowState;

    .line 929
    .restart local v9       #w:Lcom/android/server/WindowManagerService$WindowState;
    invoke-static {v9}, Lcom/android/server/WindowManagerService;->canBeImeTarget(Lcom/android/server/WindowManagerService$WindowState;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 937
    if-nez p1, :cond_3b

    iget-object v12, v9, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_3b

    if-lez v5, :cond_3b

    .line 940
    const/4 v12, 0x1

    sub-int v12, v5, v12

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/WindowManagerService$WindowState;

    .line 941
    .local v10, wb:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v12, v10, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iget-object v13, v9, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-ne v12, v13, :cond_3b

    invoke-static {v10}, Lcom/android/server/WindowManagerService;->canBeImeTarget(Lcom/android/server/WindowManagerService$WindowState;)Z

    move-result v12

    if-eqz v12, :cond_3b

    .line 942
    add-int/lit8 v5, v5, -0x1

    .line 943
    move-object v9, v10

    .line 950
    .end local v10           #wb:Lcom/android/server/WindowManagerService$WindowState;
    :cond_3b
    iput-object v9, p0, Lcom/android/server/WindowManagerService;->mUpcomingInputMethodTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 955
    if-eqz p1, :cond_96

    if-eqz v9, :cond_96

    .line 956
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mInputMethodTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 957
    .local v1, curTarget:Lcom/android/server/WindowManagerService$WindowState;
    if-eqz v1, :cond_96

    iget-object v12, v1, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v12, :cond_96

    .line 963
    iget-object v8, v1, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 964
    .local v8, token:Lcom/android/server/WindowManagerService$AppWindowToken;
    const/4 v4, 0x0

    .line 965
    .local v4, highestTarget:Lcom/android/server/WindowManagerService$WindowState;
    const/4 v3, 0x0

    .line 966
    .local v3, highestPos:I
    iget-boolean v12, v8, Lcom/android/server/WindowManagerService$AppWindowToken;->animating:Z

    if-nez v12, :cond_55

    iget-object v12, v8, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    if-eqz v12, :cond_66

    .line 967
    :cond_55
    const/4 v7, 0x0

    .line 968
    .local v7, pos:I
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 969
    :goto_5a
    if-ltz v7, :cond_66

    .line 970
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/WindowManagerService$WindowState;

    .line 971
    .local v11, win:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v12, v11, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eq v12, v8, :cond_74

    .line 985
    .end local v7           #pos:I
    .end local v11           #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_66
    if-eqz v4, :cond_96

    .line 992
    iget v12, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    if-eqz v12, :cond_85

    .line 995
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/android/server/WindowManagerService;->mInputMethodTargetWaitingAnim:Z

    .line 996
    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mInputMethodTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 997
    add-int/lit8 v12, v3, 0x1

    .line 1035
    .end local v1           #curTarget:Lcom/android/server/WindowManagerService$WindowState;
    .end local v3           #highestPos:I
    .end local v4           #highestTarget:Lcom/android/server/WindowManagerService$WindowState;
    .end local v8           #token:Lcom/android/server/WindowManagerService$AppWindowToken;
    :goto_73
    return v12

    .line 974
    .restart local v1       #curTarget:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v3       #highestPos:I
    .restart local v4       #highestTarget:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v7       #pos:I
    .restart local v8       #token:Lcom/android/server/WindowManagerService$AppWindowToken;
    .restart local v11       #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_74
    iget-boolean v12, v11, Lcom/android/server/WindowManagerService$WindowState;->mRemoved:Z

    if-nez v12, :cond_82

    .line 975
    if-eqz v4, :cond_80

    iget v12, v11, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    iget v13, v4, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    if-le v12, v13, :cond_82

    .line 977
    :cond_80
    move-object v4, v11

    .line 978
    move v3, v7

    .line 981
    :cond_82
    add-int/lit8 v7, v7, -0x1

    .line 982
    goto :goto_5a

    .line 998
    .end local v7           #pos:I
    .end local v11           #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_85
    invoke-virtual {v4}, Lcom/android/server/WindowManagerService$WindowState;->isAnimating()Z

    move-result v12

    if-eqz v12, :cond_96

    iget v12, v4, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    iget v13, v9, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    if-le v12, v13, :cond_96

    .line 1004
    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mInputMethodTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 1005
    add-int/lit8 v12, v3, 0x1

    goto :goto_73

    .line 1012
    .end local v1           #curTarget:Lcom/android/server/WindowManagerService$WindowState;
    .end local v3           #highestPos:I
    .end local v4           #highestTarget:Lcom/android/server/WindowManagerService$WindowState;
    .end local v8           #token:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_96
    if-eqz v9, :cond_b7

    .line 1013
    if-eqz p1, :cond_af

    .line 1014
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    .line 1015
    .local v2, e:Ljava/lang/RuntimeException;
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 1018
    iput-object v9, p0, Lcom/android/server/WindowManagerService;->mInputMethodTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 1019
    iget-object v12, v9, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v12, :cond_b2

    .line 1020
    iget-object v12, v9, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iget v12, v12, Lcom/android/server/WindowManagerService$AppWindowToken;->animLayerAdjustment:I

    invoke-virtual {p0, v12}, Lcom/android/server/WindowManagerService;->setInputMethodAnimLayerAdjustment(I)V

    .line 1025
    .end local v2           #e:Ljava/lang/RuntimeException;
    :cond_af
    :goto_af
    add-int/lit8 v12, v5, 0x1

    goto :goto_73

    .line 1022
    .restart local v2       #e:Ljava/lang/RuntimeException;
    :cond_b2
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcom/android/server/WindowManagerService;->setInputMethodAnimLayerAdjustment(I)V

    goto :goto_af

    .line 1027
    .end local v2           #e:Ljava/lang/RuntimeException;
    :cond_b7
    if-eqz p1, :cond_c8

    .line 1028
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    .line 1029
    .restart local v2       #e:Ljava/lang/RuntimeException;
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 1032
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/server/WindowManagerService;->mInputMethodTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 1033
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcom/android/server/WindowManagerService;->setInputMethodAnimLayerAdjustment(I)V

    .line 1035
    .end local v2           #e:Ljava/lang/RuntimeException;
    :cond_c8
    const/4 v12, -0x1

    goto :goto_73
.end method

.method public finishDrawingWindow(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;)V
    .registers 8
    .parameter "session"
    .parameter "client"

    .prologue
    .line 1851
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1852
    .local v0, origId:J
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 1853
    :try_start_7
    invoke-virtual {p0, p1, p2}, Lcom/android/server/WindowManagerService;->windowForClientLocked(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;)Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v2

    .line 1854
    .local v2, win:Lcom/android/server/WindowManagerService$WindowState;
    if-eqz v2, :cond_19

    invoke-virtual {v2}, Lcom/android/server/WindowManagerService$WindowState;->finishDrawingLocked()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 1855
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 1856
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 1858
    :cond_19
    monitor-exit v3
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_1e

    .line 1859
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1860
    return-void

    .line 1858
    .end local v2           #win:Lcom/android/server/WindowManagerService$WindowState;
    :catchall_1e
    move-exception v4

    :try_start_1f
    monitor-exit v3
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v4
.end method

.method public getAnimationScale(I)F
    .registers 3
    .parameter "which"

    .prologue
    .line 3331
    packed-switch p1, :pswitch_data_c

    .line 3335
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 3332
    :pswitch_5
    iget v0, p0, Lcom/android/server/WindowManagerService;->mWindowAnimationScale:F

    goto :goto_4

    .line 3333
    :pswitch_8
    iget v0, p0, Lcom/android/server/WindowManagerService;->mTransitionAnimationScale:F

    goto :goto_4

    .line 3331
    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method

.method public getAnimationScales()[F
    .registers 4

    .prologue
    .line 3339
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/WindowManagerService;->mWindowAnimationScale:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/server/WindowManagerService;->mTransitionAnimationScale:F

    aput v2, v0, v1

    return-object v0
.end method

.method public getAppOrientation(Landroid/view/IApplicationToken;)I
    .registers 5
    .parameter "token"

    .prologue
    .line 2402
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 2403
    :try_start_3
    invoke-interface {p1}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/WindowManagerService$AppWindowToken;

    move-result-object v0

    .line 2404
    .local v0, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-nez v0, :cond_11

    .line 2405
    const/4 v2, -0x1

    monitor-exit v1

    move v1, v2

    .line 2408
    :goto_10
    return v1

    :cond_11
    iget v2, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->requestedOrientation:I

    monitor-exit v1

    move v1, v2

    goto :goto_10

    .line 2409
    .end local v0           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :catchall_16
    move-exception v2

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v2
.end method

.method public getKeycodeState(I)I
    .registers 4
    .parameter "sw"

    .prologue
    .line 3375
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getKeycodeState()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 3377
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3379
    :cond_12
    invoke-static {p1}, Lcom/android/server/KeyInputQueue;->getKeycodeState(I)I

    move-result v0

    return v0
.end method

.method public getKeycodeStateForDevice(II)I
    .registers 5
    .parameter "devid"
    .parameter "sw"

    .prologue
    .line 3383
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getKeycodeStateForDevice()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 3385
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3387
    :cond_12
    invoke-static {p1, p2}, Lcom/android/server/KeyInputQueue;->getKeycodeState(II)I

    move-result v0

    return v0
.end method

.method public getLockScreen()Z
    .registers 2

    .prologue
    .line 9781
    iget-boolean v0, p0, Lcom/android/server/WindowManagerService;->mLockScreenIsOn:Z

    return v0
.end method

.method public getOrientationFromAppTokensLocked()I
    .registers 12

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    .line 2233
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int v6, v8, v9

    .line 2234
    .local v6, pos:I
    const/4 v0, 0x0

    .line 2235
    .local v0, curGroup:I
    const/4 v4, -0x1

    .line 2236
    .local v4, lastOrientation:I
    const/4 v1, 0x0

    .line 2237
    .local v1, findingBehind:Z
    const/4 v2, 0x0

    .line 2238
    .local v2, haveGroup:Z
    const/4 v3, 0x0

    .line 2239
    .local v3, lastFullscreen:Z
    :cond_f
    :goto_f
    if-ltz v6, :cond_5e

    .line 2240
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 2241
    .local v7, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    add-int/lit8 v6, v6, -0x1

    .line 2244
    if-nez v1, :cond_25

    iget-boolean v8, v7, Lcom/android/server/WindowManagerService$AppWindowToken;->hidden:Z

    if-nez v8, :cond_25

    iget-boolean v8, v7, Lcom/android/server/WindowManagerService$AppWindowToken;->hiddenRequested:Z

    if-nez v8, :cond_f

    .line 2249
    :cond_25
    if-nez v2, :cond_3e

    .line 2251
    iget-boolean v8, v7, Lcom/android/server/WindowManagerService$AppWindowToken;->hiddenRequested:Z

    if-nez v8, :cond_f

    iget-boolean v8, v7, Lcom/android/server/WindowManagerService$AppWindowToken;->willBeHidden:Z

    if-nez v8, :cond_f

    .line 2254
    const/4 v2, 0x1

    .line 2255
    iget v0, v7, Lcom/android/server/WindowManagerService$AppWindowToken;->groupId:I

    .line 2256
    iget v4, v7, Lcom/android/server/WindowManagerService$AppWindowToken;->requestedOrientation:I

    .line 2268
    :cond_34
    iget v5, v7, Lcom/android/server/WindowManagerService$AppWindowToken;->requestedOrientation:I

    .line 2272
    .local v5, or:I
    iget-boolean v3, v7, Lcom/android/server/WindowManagerService$AppWindowToken;->appFullscreen:Z

    .line 2273
    if-eqz v3, :cond_48

    if-eq v5, v10, :cond_48

    move v8, v5

    .line 2288
    .end local v5           #or:I
    .end local v7           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :goto_3d
    return v8

    .line 2257
    .restart local v7       #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_3e
    iget v8, v7, Lcom/android/server/WindowManagerService$AppWindowToken;->groupId:I

    if-eq v0, v8, :cond_34

    .line 2263
    if-eq v4, v10, :cond_34

    if-eqz v3, :cond_34

    move v8, v4

    .line 2265
    goto :goto_3d

    .line 2279
    .restart local v5       #or:I
    :cond_48
    if-eqz v5, :cond_55

    if-eq v5, v9, :cond_55

    const/4 v8, 0x4

    if-eq v5, v8, :cond_55

    const/4 v8, 0x5

    if-eq v5, v8, :cond_55

    const/4 v8, 0x2

    if-ne v5, v8, :cond_57

    :cond_55
    move v8, v5

    .line 2284
    goto :goto_3d

    .line 2286
    :cond_57
    if-ne v5, v10, :cond_5c

    move v8, v9

    :goto_5a
    or-int/2addr v1, v8

    .line 2287
    goto :goto_f

    .line 2286
    :cond_5c
    const/4 v8, 0x0

    goto :goto_5a

    .line 2288
    .end local v5           #or:I
    .end local v7           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_5e
    const/4 v8, -0x1

    goto :goto_3d
.end method

.method public getOrientationFromWindowsLocked()I
    .registers 7

    .prologue
    const/4 v5, -0x1

    .line 2209
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int v0, v3, v4

    .line 2210
    .local v0, pos:I
    :cond_a
    if-ltz v0, :cond_2d

    .line 2211
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/WindowManagerService$WindowState;

    .line 2212
    .local v2, wtoken:Lcom/android/server/WindowManagerService$WindowState;
    add-int/lit8 v0, v0, -0x1

    .line 2213
    iget-object v3, v2, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v3, :cond_1c

    move v3, v5

    .line 2229
    .end local v2           #wtoken:Lcom/android/server/WindowManagerService$WindowState;
    :goto_1b
    return v3

    .line 2218
    .restart local v2       #wtoken:Lcom/android/server/WindowManagerService$WindowState;
    :cond_1c
    invoke-virtual {v2}, Lcom/android/server/WindowManagerService$WindowState;->isVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2221
    iget-object v3, v2, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v3, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 2222
    .local v1, req:I
    if-eq v1, v5, :cond_a

    const/4 v3, 0x3

    if-eq v1, v3, :cond_a

    move v3, v1

    .line 2226
    goto :goto_1b

    .end local v1           #req:I
    .end local v2           #wtoken:Lcom/android/server/WindowManagerService$WindowState;
    :cond_2d
    move v3, v5

    .line 2229
    goto :goto_1b
.end method

.method public getPendingAppTransition()I
    .registers 2

    .prologue
    .line 2488
    iget v0, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    return v0
.end method

.method public getRotation()I
    .registers 2

    .prologue
    .line 3637
    iget v0, p0, Lcom/android/server/WindowManagerService;->mRotation:I

    return v0
.end method

.method public getScancodeState(I)I
    .registers 4
    .parameter "sw"

    .prologue
    .line 3359
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getScancodeState()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 3361
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3363
    :cond_12
    invoke-static {p1}, Lcom/android/server/KeyInputQueue;->getScancodeState(I)I

    move-result v0

    return v0
.end method

.method public getScancodeStateForDevice(II)I
    .registers 5
    .parameter "devid"
    .parameter "sw"

    .prologue
    .line 3367
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getScancodeStateForDevice()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 3369
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3371
    :cond_12
    invoke-static {p1, p2}, Lcom/android/server/KeyInputQueue;->getScancodeState(II)I

    move-result v0

    return v0
.end method

.method public getStateorientationChangeComplete()Z
    .registers 2

    .prologue
    .line 9792
    const/4 v0, 0x1

    return v0
.end method

.method public getSwitchState(I)I
    .registers 4
    .parameter "sw"

    .prologue
    .line 3343
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getSwitchState()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 3345
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3347
    :cond_12
    invoke-static {p1}, Lcom/android/server/KeyInputQueue;->getSwitchState(I)I

    move-result v0

    return v0
.end method

.method public getSwitchStateForDevice(II)I
    .registers 5
    .parameter "devid"
    .parameter "sw"

    .prologue
    .line 3351
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getSwitchStateForDevice()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 3353
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3355
    :cond_12
    invoke-static {p1, p2}, Lcom/android/server/KeyInputQueue;->getSwitchState(II)I

    move-result v0

    return v0
.end method

.method public getWindowDisplayFrame(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Landroid/graphics/Rect;)V
    .registers 7
    .parameter "session"
    .parameter "client"
    .parameter "outDisplayFrame"

    .prologue
    .line 1647
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1648
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/WindowManagerService;->windowForClientLocked(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;)Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v0

    .line 1649
    .local v0, win:Lcom/android/server/WindowManagerService$WindowState;
    if-nez v0, :cond_e

    .line 1650
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    .line 1651
    monitor-exit v1

    .line 1655
    :goto_d
    return-void

    .line 1653
    :cond_e
    iget-object v2, v0, Lcom/android/server/WindowManagerService$WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {p3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1654
    monitor-exit v1

    goto :goto_d

    .end local v0           #win:Lcom/android/server/WindowManagerService$WindowState;
    :catchall_15
    move-exception v2

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v2
.end method

.method public hasKeys([I[Z)Z
    .registers 4
    .parameter "keycodes"
    .parameter "keyExists"

    .prologue
    .line 3391
    invoke-static {p1, p2}, Lcom/android/server/KeyInputQueue;->hasKeys([I[Z)Z

    move-result v0

    return v0
.end method

.method public inKeyguardRestrictedInputMode()Z
    .registers 2

    .prologue
    .line 3284
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->inKeyguardRestrictedKeyInputMode()Z

    move-result v0

    return v0
.end method

.method public injectKeyEvent(Landroid/view/KeyEvent;Z)Z
    .registers 29
    .parameter "ev"
    .parameter "sync"

    .prologue
    .line 4669
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v5

    .line 4670
    .local v5, downTime:J
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v7

    .line 4672
    .local v7, eventTime:J
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v9

    .line 4673
    .local v9, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v10

    .line 4674
    .local v10, code:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v11

    .line 4675
    .local v11, repeatCount:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v12

    .line 4676
    .local v12, metaState:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v13

    .line 4677
    .local v13, deviceId:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v14

    .line 4679
    .local v14, scancode:I
    const-wide/16 v15, 0x0

    cmp-long v15, v7, v15

    if-nez v15, :cond_2a

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 4680
    :cond_2a
    const-wide/16 v15, 0x0

    cmp-long v15, v5, v15

    if-nez v15, :cond_31

    move-wide v5, v7

    .line 4682
    :cond_31
    new-instance v4, Landroid/view/KeyEvent;

    const/16 v15, 0x8

    invoke-direct/range {v4 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    .line 4685
    .local v4, newEvent:Landroid/view/KeyEvent;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v21

    .line 4686
    .local v21, pid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v22

    .line 4687
    .local v22, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v23

    .line 4688
    .local v23, ident:J
    move-object/from16 v0, p0

    move-object v1, v4

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/WindowManagerService;->dispatchKey(Landroid/view/KeyEvent;II)I

    move-result v25

    .line 4689
    .local v25, result:I
    if-eqz p2, :cond_63

    .line 4690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    move-object v15, v0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    invoke-virtual/range {v15 .. v22}, Lcom/android/server/WindowManagerService$KeyWaiter;->waitForNextEventTarget(Landroid/view/KeyEvent;Lcom/android/server/KeyInputQueue$QueuedEvent;Landroid/view/MotionEvent;ZZII)Ljava/lang/Object;

    .line 4692
    :cond_63
    invoke-static/range {v23 .. v24}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4693
    packed-switch v25, :pswitch_data_76

    .line 4700
    :pswitch_69
    const/4 v15, 0x0

    :goto_6a
    return v15

    .line 4695
    :pswitch_6b
    new-instance v15, Ljava/lang/SecurityException;

    const-string v16, "Injecting to another application requires INJECT_EVENT permission"

    invoke-direct/range {v15 .. v16}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 4698
    :pswitch_73
    const/4 v15, 0x1

    goto :goto_6a

    .line 4693
    nop

    :pswitch_data_76
    .packed-switch -0x1
        :pswitch_6b
        :pswitch_69
        :pswitch_73
    .end packed-switch
.end method

.method public injectPointerEvent(Landroid/view/MotionEvent;Z)Z
    .registers 14
    .parameter "ev"
    .parameter "sync"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 4713
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 4714
    .local v6, pid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 4715
    .local v7, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 4716
    .local v8, ident:J
    invoke-direct {p0, v1, p1, v6, v7}, Lcom/android/server/WindowManagerService;->dispatchPointer(Lcom/android/server/KeyInputQueue$QueuedEvent;Landroid/view/MotionEvent;II)I

    move-result v10

    .line 4717
    .local v10, result:I
    if-eqz p2, :cond_1c

    .line 4718
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    move-object v2, v1

    move-object v3, v1

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/WindowManagerService$KeyWaiter;->waitForNextEventTarget(Landroid/view/KeyEvent;Lcom/android/server/KeyInputQueue$QueuedEvent;Landroid/view/MotionEvent;ZZII)Ljava/lang/Object;

    .line 4720
    :cond_1c
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4721
    packed-switch v10, :pswitch_data_2e

    :pswitch_22
    move v0, v4

    .line 4728
    :goto_23
    return v0

    .line 4723
    :pswitch_24
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Injecting to another application requires INJECT_EVENT permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2c
    move v0, v5

    .line 4726
    goto :goto_23

    .line 4721
    :pswitch_data_2e
    .packed-switch -0x1
        :pswitch_24
        :pswitch_22
        :pswitch_2c
    .end packed-switch
.end method

.method public injectTrackballEvent(Landroid/view/MotionEvent;Z)Z
    .registers 14
    .parameter "ev"
    .parameter "sync"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 4741
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 4742
    .local v6, pid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 4743
    .local v7, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 4744
    .local v8, ident:J
    invoke-direct {p0, v1, p1, v6, v7}, Lcom/android/server/WindowManagerService;->dispatchTrackball(Lcom/android/server/KeyInputQueue$QueuedEvent;Landroid/view/MotionEvent;II)I

    move-result v10

    .line 4745
    .local v10, result:I
    if-eqz p2, :cond_1c

    .line 4746
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    move-object v2, v1

    move-object v3, v1

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/WindowManagerService$KeyWaiter;->waitForNextEventTarget(Landroid/view/KeyEvent;Lcom/android/server/KeyInputQueue$QueuedEvent;Landroid/view/MotionEvent;ZZII)Ljava/lang/Object;

    .line 4748
    :cond_1c
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4749
    packed-switch v10, :pswitch_data_2e

    :pswitch_22
    move v0, v4

    .line 4756
    :goto_23
    return v0

    .line 4751
    :pswitch_24
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Injecting to another application requires INJECT_EVENT permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2c
    move v0, v5

    .line 4754
    goto :goto_23

    .line 4749
    :pswitch_data_2e
    .packed-switch -0x1
        :pswitch_24
        :pswitch_22
        :pswitch_2c
    .end packed-switch
.end method

.method public inputMethodClientHasFocus(Lcom/android/internal/view/IInputMethodClient;)Z
    .registers 9
    .parameter "client"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 8312
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 8315
    const/4 v3, 0x0

    :try_start_6
    invoke-virtual {p0, v3}, Lcom/android/server/WindowManagerService;->findDesiredInputMethodWindowIndexLocked(Z)I

    move-result v0

    .line 8317
    .local v0, idx:I
    if-lez v0, :cond_2f

    .line 8318
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    sub-int v4, v0, v6

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WindowManagerService$WindowState;

    .line 8319
    .local v1, imFocus:Lcom/android/server/WindowManagerService$WindowState;
    if-eqz v1, :cond_2f

    .line 8320
    iget-object v3, v1, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    iget-object v3, v3, Lcom/android/server/WindowManagerService$Session;->mClient:Lcom/android/internal/view/IInputMethodClient;

    if-eqz v3, :cond_2f

    iget-object v3, v1, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    iget-object v3, v3, Lcom/android/server/WindowManagerService$Session;->mClient:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v3}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v3, v4, :cond_2f

    .line 8322
    monitor-exit v2

    move v2, v6

    .line 8327
    .end local v1           #imFocus:Lcom/android/server/WindowManagerService$WindowState;
    :goto_2e
    return v2

    .line 8326
    :cond_2f
    monitor-exit v2

    move v2, v5

    .line 8327
    goto :goto_2e

    .line 8326
    .end local v0           #idx:I
    :catchall_32
    move-exception v3

    monitor-exit v2
    :try_end_34
    .catchall {:try_start_6 .. :try_end_34} :catchall_32

    throw v3
.end method

.method public isViewServerRunning()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 3749
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->isSystemSecure()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v2

    .line 3757
    :goto_8
    return v0

    .line 3753
    :cond_9
    const-string v0, "android.permission.DUMP"

    const-string v1, "isViewServerRunning"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    move v0, v2

    .line 3754
    goto :goto_8

    .line 3757
    :cond_15
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mViewServer:Lcom/android/server/ViewServer;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mViewServer:Lcom/android/server/ViewServer;

    invoke-virtual {v0}, Lcom/android/server/ViewServer;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_23

    const/4 v0, 0x1

    goto :goto_8

    :cond_23
    move v0, v2

    goto :goto_8
.end method

.method logWindowList(Ljava/lang/String;)V
    .registers 6
    .parameter "prefix"

    .prologue
    .line 1110
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1111
    .local v0, N:I
    :goto_6
    if-lez v0, :cond_37

    .line 1112
    add-int/lit8 v0, v0, -0x1

    .line 1113
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1115
    :cond_37
    return-void
.end method

.method public monitor()V
    .registers 3

    .prologue
    .line 9756
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_d

    .line 9757
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mKeyguardDisabled:Landroid/os/TokenWatcher;

    monitor-enter v0

    :try_start_7
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_10

    .line 9758
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    monitor-enter v0

    :try_start_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_13

    .line 9759
    return-void

    .line 9756
    :catchall_d
    move-exception v1

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v1

    .line 9757
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v1

    .line 9758
    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public moveAppToken(ILandroid/os/IBinder;)V
    .registers 10
    .parameter "index"
    .parameter "token"

    .prologue
    .line 3104
    const-string v3, "android.permission.MANAGE_APP_TOKENS"

    const-string v4, "moveAppToken()"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 3106
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3109
    :cond_12
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 3112
    :try_start_15
    invoke-virtual {p0, p2}, Lcom/android/server/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/WindowManagerService$AppWindowToken;

    move-result-object v2

    .line 3113
    .local v2, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-eqz v2, :cond_23

    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4d

    .line 3114
    :cond_23
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempting to reorder token that doesn\'t exist: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3116
    monitor-exit v3

    .line 3137
    :goto_4c
    return-void

    .line 3118
    :cond_4d
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v4, p1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3122
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3125
    .local v0, origId:J
    invoke-direct {p0, v2}, Lcom/android/server/WindowManagerService;->tmpRemoveAppWindowsLocked(Lcom/android/server/WindowManagerService$WindowToken;)Z

    move-result v4

    if-eqz v4, :cond_6d

    .line 3128
    invoke-direct {p0, p1}, Lcom/android/server/WindowManagerService;->findWindowOffsetLocked(I)I

    move-result v4

    invoke-direct {p0, v4, v2}, Lcom/android/server/WindowManagerService;->reAddAppWindowsLocked(ILcom/android/server/WindowManagerService$WindowToken;)I

    .line 3131
    const/4 v4, 0x3

    invoke-direct {p0, v4}, Lcom/android/server/WindowManagerService;->updateFocusedWindowLocked(I)Z

    .line 3132
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 3133
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 3135
    :cond_6d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3136
    monitor-exit v3

    goto :goto_4c

    .end local v0           #origId:J
    .end local v2           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :catchall_72
    move-exception v4

    monitor-exit v3
    :try_end_74
    .catchall {:try_start_15 .. :try_end_74} :catchall_72

    throw v4
.end method

.method public moveAppTokensToBottom(Ljava/util/List;)V
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3207
    .local p1, tokens:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    const-string v6, "android.permission.MANAGE_APP_TOKENS"

    const-string v7, "moveAppTokensToBottom()"

    invoke-virtual {p0, v6, v7}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_12

    .line 3209
    new-instance v6, Ljava/lang/SecurityException;

    const-string v7, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3212
    :cond_12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3213
    .local v2, origId:J
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v7

    .line 3214
    :try_start_19
    invoke-direct {p0, p1}, Lcom/android/server/WindowManagerService;->removeAppTokensLocked(Ljava/util/List;)V

    .line 3215
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 3216
    .local v0, N:I
    const/4 v4, 0x0

    .line 3217
    .local v4, pos:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_22
    if-ge v1, v0, :cond_3a

    .line 3218
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IBinder;

    invoke-virtual {p0, v6}, Lcom/android/server/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/WindowManagerService$AppWindowToken;

    move-result-object v5

    .line 3219
    .local v5, wt:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-eqz v5, :cond_37

    .line 3220
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v6, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3221
    add-int/lit8 v4, v4, 0x1

    .line 3217
    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 3224
    .end local v5           #wt:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_3a
    const/4 v6, 0x0

    invoke-direct {p0, p1, v6}, Lcom/android/server/WindowManagerService;->moveAppWindowsLocked(Ljava/util/List;I)V

    .line 3225
    monitor-exit v7
    :try_end_3f
    .catchall {:try_start_19 .. :try_end_3f} :catchall_43

    .line 3226
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3227
    return-void

    .line 3225
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v4           #pos:I
    :catchall_43
    move-exception v6

    :try_start_44
    monitor-exit v7
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw v6
.end method

.method public moveAppTokensToTop(Ljava/util/List;)V
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3186
    .local p1, tokens:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    const-string v5, "android.permission.MANAGE_APP_TOKENS"

    const-string v6, "moveAppTokensToTop()"

    invoke-virtual {p0, v5, v6}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_12

    .line 3188
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3191
    :cond_12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3192
    .local v2, origId:J
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 3193
    :try_start_19
    invoke-direct {p0, p1}, Lcom/android/server/WindowManagerService;->removeAppTokensLocked(Ljava/util/List;)V

    .line 3194
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 3195
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_21
    if-ge v1, v0, :cond_37

    .line 3196
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/IBinder;

    invoke-virtual {p0, v5}, Lcom/android/server/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/WindowManagerService$AppWindowToken;

    move-result-object v4

    .line 3197
    .local v4, wt:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-eqz v4, :cond_34

    .line 3198
    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3195
    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 3201
    .end local v4           #wt:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_37
    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {p0, p1, v5}, Lcom/android/server/WindowManagerService;->moveAppWindowsLocked(Ljava/util/List;I)V

    .line 3202
    monitor-exit v6
    :try_end_41
    .catchall {:try_start_19 .. :try_end_41} :catchall_45

    .line 3203
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3204
    return-void

    .line 3202
    .end local v0           #N:I
    .end local v1           #i:I
    :catchall_45
    move-exception v5

    :try_start_46
    monitor-exit v6
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw v5
.end method

.method moveInputMethodDialogsLocked(I)V
    .registers 9
    .parameter "pos"

    .prologue
    .line 1118
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    .line 1120
    .local v1, dialogs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/WindowManagerService$WindowState;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1122
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_7
    if-ge v2, v0, :cond_16

    .line 1123
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/WindowManagerService$WindowState;

    invoke-direct {p0, p1, v6}, Lcom/android/server/WindowManagerService;->tmpRemoveWindowLocked(ILcom/android/server/WindowManagerService$WindowState;)I

    move-result p1

    .line 1122
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1130
    :cond_16
    if-ltz p1, :cond_44

    .line 1131
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mInputMethodTarget:Lcom/android/server/WindowManagerService$WindowState;

    iget-object v3, v6, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 1132
    .local v3, targetAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge p1, v6, :cond_32

    .line 1133
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$WindowState;

    .line 1134
    .local v5, wp:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mInputMethodWindow:Lcom/android/server/WindowManagerService$WindowState;

    if-ne v5, v6, :cond_32

    .line 1135
    add-int/lit8 p1, p1, 0x1

    .line 1139
    .end local v5           #wp:Lcom/android/server/WindowManagerService$WindowState;
    :cond_32
    const/4 v2, 0x0

    :goto_33
    if-ge v2, v0, :cond_56

    .line 1140
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/WindowManagerService$WindowState;

    .line 1141
    .local v4, win:Lcom/android/server/WindowManagerService$WindowState;
    iput-object v3, v4, Lcom/android/server/WindowManagerService$WindowState;->mTargetAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 1142
    invoke-direct {p0, p1, v4}, Lcom/android/server/WindowManagerService;->reAddWindowLocked(ILcom/android/server/WindowManagerService$WindowState;)I

    move-result p1

    .line 1139
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .line 1150
    .end local v3           #targetAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;
    .end local v4           #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_44
    const/4 v2, 0x0

    :goto_45
    if-ge v2, v0, :cond_56

    .line 1151
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/WindowManagerService$WindowState;

    .line 1152
    .restart local v4       #win:Lcom/android/server/WindowManagerService$WindowState;
    const/4 v6, 0x0

    iput-object v6, v4, Lcom/android/server/WindowManagerService$WindowState;->mTargetAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 1153
    invoke-direct {p0, v4}, Lcom/android/server/WindowManagerService;->reAddWindowToListInOrderLocked(Lcom/android/server/WindowManagerService$WindowState;)V

    .line 1150
    add-int/lit8 v2, v2, 0x1

    goto :goto_45

    .line 1159
    .end local v4           #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_56
    return-void
.end method

.method moveInputMethodWindowsIfNeededLocked(Z)Z
    .registers 15
    .parameter "needAssignLayers"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 1162
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mInputMethodWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 1163
    .local v6, imWin:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1164
    .local v0, DN:I
    if-nez v6, :cond_12

    if-nez v0, :cond_12

    move v8, v9

    .line 1257
    :goto_11
    return v8

    .line 1168
    :cond_12
    invoke-virtual {p0, v11}, Lcom/android/server/WindowManagerService;->findDesiredInputMethodWindowIndexLocked(Z)I

    move-result v5

    .line 1169
    .local v5, imPos:I
    if-ltz v5, :cond_9b

    .line 1175
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1176
    .local v1, N:I
    if-ge v5, v1, :cond_67

    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/WindowManagerService$WindowState;

    move-object v4, v8

    .line 1181
    .local v4, firstImWin:Lcom/android/server/WindowManagerService$WindowState;
    :goto_29
    if-eqz v6, :cond_69

    move-object v2, v6

    .line 1183
    .local v2, baseImWin:Lcom/android/server/WindowManagerService$WindowState;
    :goto_2c
    iget-object v8, v2, Lcom/android/server/WindowManagerService$WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_41

    .line 1184
    iget-object v8, v2, Lcom/android/server/WindowManagerService$WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/WindowManagerService$WindowState;

    .line 1185
    .local v3, cw:Lcom/android/server/WindowManagerService$WindowState;
    iget v8, v3, Lcom/android/server/WindowManagerService$WindowState;->mSubLayer:I

    if-gez v8, :cond_41

    move-object v2, v3

    .line 1188
    .end local v3           #cw:Lcom/android/server/WindowManagerService$WindowState;
    :cond_41
    if-ne v4, v2, :cond_79

    .line 1191
    add-int/lit8 v7, v5, 0x1

    .line 1192
    .local v7, pos:I
    :goto_45
    if-ge v7, v1, :cond_53

    .line 1193
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/WindowManagerService$WindowState;

    iget-boolean v8, v8, Lcom/android/server/WindowManagerService$WindowState;->mIsImWindow:Z

    if-nez v8, :cond_73

    .line 1198
    :cond_53
    add-int/lit8 v7, v7, 0x1

    .line 1200
    :goto_55
    if-ge v7, v1, :cond_63

    .line 1201
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/WindowManagerService$WindowState;

    iget-boolean v8, v8, Lcom/android/server/WindowManagerService$WindowState;->mIsImWindow:Z

    if-eqz v8, :cond_76

    .line 1206
    :cond_63
    if-lt v7, v1, :cond_79

    move v8, v9

    .line 1208
    goto :goto_11

    .end local v2           #baseImWin:Lcom/android/server/WindowManagerService$WindowState;
    .end local v4           #firstImWin:Lcom/android/server/WindowManagerService$WindowState;
    .end local v7           #pos:I
    :cond_67
    move-object v4, v12

    .line 1176
    goto :goto_29

    .line 1181
    .restart local v4       #firstImWin:Lcom/android/server/WindowManagerService$WindowState;
    :cond_69
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/WindowManagerService$WindowState;

    move-object v2, v8

    goto :goto_2c

    .line 1196
    .restart local v2       #baseImWin:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v7       #pos:I
    :cond_73
    add-int/lit8 v7, v7, 0x1

    goto :goto_45

    .line 1204
    :cond_76
    add-int/lit8 v7, v7, 0x1

    goto :goto_55

    .line 1212
    .end local v7           #pos:I
    :cond_79
    if-eqz v6, :cond_97

    .line 1217
    invoke-direct {p0, v5, v6}, Lcom/android/server/WindowManagerService;->tmpRemoveWindowLocked(ILcom/android/server/WindowManagerService$WindowState;)I

    move-result v5

    .line 1222
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mInputMethodTarget:Lcom/android/server/WindowManagerService$WindowState;

    iget-object v8, v8, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iput-object v8, v6, Lcom/android/server/WindowManagerService$WindowState;->mTargetAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 1223
    invoke-direct {p0, v5, v6}, Lcom/android/server/WindowManagerService;->reAddWindowLocked(ILcom/android/server/WindowManagerService$WindowState;)I

    .line 1228
    if-lez v0, :cond_8f

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p0, v8}, Lcom/android/server/WindowManagerService;->moveInputMethodDialogsLocked(I)V

    .line 1253
    .end local v1           #N:I
    .end local v2           #baseImWin:Lcom/android/server/WindowManagerService$WindowState;
    .end local v4           #firstImWin:Lcom/android/server/WindowManagerService$WindowState;
    :cond_8f
    :goto_8f
    if-eqz p1, :cond_94

    .line 1254
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->assignLayersLocked()V

    :cond_94
    move v8, v11

    .line 1257
    goto/16 :goto_11

    .line 1230
    .restart local v1       #N:I
    .restart local v2       #baseImWin:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v4       #firstImWin:Lcom/android/server/WindowManagerService$WindowState;
    :cond_97
    invoke-virtual {p0, v5}, Lcom/android/server/WindowManagerService;->moveInputMethodDialogsLocked(I)V

    goto :goto_8f

    .line 1237
    .end local v1           #N:I
    .end local v2           #baseImWin:Lcom/android/server/WindowManagerService$WindowState;
    .end local v4           #firstImWin:Lcom/android/server/WindowManagerService$WindowState;
    :cond_9b
    if-eqz v6, :cond_ab

    .line 1239
    invoke-direct {p0, v9, v6}, Lcom/android/server/WindowManagerService;->tmpRemoveWindowLocked(ILcom/android/server/WindowManagerService$WindowState;)I

    .line 1240
    iput-object v12, v6, Lcom/android/server/WindowManagerService$WindowState;->mTargetAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 1241
    invoke-direct {p0, v6}, Lcom/android/server/WindowManagerService;->reAddWindowToListInOrderLocked(Lcom/android/server/WindowManagerService$WindowState;)V

    .line 1246
    if-lez v0, :cond_8f

    invoke-virtual {p0, v10}, Lcom/android/server/WindowManagerService;->moveInputMethodDialogsLocked(I)V

    goto :goto_8f

    .line 1248
    :cond_ab
    invoke-virtual {p0, v10}, Lcom/android/server/WindowManagerService;->moveInputMethodDialogsLocked(I)V

    goto :goto_8f
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 675
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/IWindowManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v1

    return v1

    .line 676
    :catch_5
    move-exception v0

    .line 679
    .local v0, e:Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_11

    .line 680
    const-string v1, "WindowManager"

    const-string v2, "Window Manager Crash"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 682
    :cond_11
    throw v0
.end method

.method public openSession(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;)Landroid/view/IWindowSession;
    .registers 5
    .parameter "client"
    .parameter "inputContext"

    .prologue
    .line 8306
    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null client"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8307
    :cond_a
    if-nez p2, :cond_14

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null inputContext"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8308
    :cond_14
    new-instance v0, Lcom/android/server/WindowManagerService$Session;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/WindowManagerService$Session;-><init>(Lcom/android/server/WindowManagerService;Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;)V

    return-object v0
.end method

.method public pauseKeyDispatching(Landroid/os/IBinder;)V
    .registers 5
    .parameter "_token"

    .prologue
    .line 4622
    const-string v1, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "pauseKeyDispatching()"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 4624
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4627
    :cond_12
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 4628
    :try_start_15
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/WindowManagerService$WindowToken;

    .line 4629
    .local v0, token:Lcom/android/server/WindowManagerService$WindowToken;
    if-eqz v0, :cond_24

    .line 4630
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    invoke-virtual {v2, v0}, Lcom/android/server/WindowManagerService$KeyWaiter;->pauseDispatchingLocked(Lcom/android/server/WindowManagerService$WindowToken;)V

    .line 4632
    :cond_24
    monitor-exit v1

    .line 4633
    return-void

    .line 4632
    .end local v0           #token:Lcom/android/server/WindowManagerService$WindowToken;
    :catchall_26
    move-exception v2

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_15 .. :try_end_28} :catchall_26

    throw v2
.end method

.method public performEnableScreen()V
    .registers 12

    .prologue
    const/4 v10, 0x0

    .line 3416
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 3417
    :try_start_4
    iget-boolean v7, p0, Lcom/android/server/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v7, :cond_a

    .line 3418
    monitor-exit v6

    .line 3462
    :goto_9
    return-void

    .line 3420
    :cond_a
    iget-boolean v7, p0, Lcom/android/server/WindowManagerService;->mSystemBooted:Z

    if-nez v7, :cond_13

    .line 3421
    monitor-exit v6

    goto :goto_9

    .line 3455
    :catchall_10
    move-exception v7

    monitor-exit v6
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_10

    throw v7

    .line 3426
    :cond_13
    :try_start_13
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3427
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1a
    if-ge v3, v0, :cond_35

    .line 3428
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$WindowState;

    .line 3429
    .local v5, w:Lcom/android/server/WindowManagerService$WindowState;
    invoke-virtual {v5}, Lcom/android/server/WindowManagerService$WindowState;->isVisibleLw()Z

    move-result v7

    if-eqz v7, :cond_32

    invoke-virtual {v5}, Lcom/android/server/WindowManagerService$WindowState;->isDisplayedLw()Z

    move-result v7

    if-nez v7, :cond_32

    .line 3430
    monitor-exit v6

    goto :goto_9

    .line 3427
    :cond_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 3434
    .end local v5           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_35
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/WindowManagerService;->mDisplayEnabled:Z
    :try_end_38
    .catchall {:try_start_13 .. :try_end_38} :catchall_10

    .line 3443
    :try_start_38
    const-string v7, "SurfaceFlinger"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 3444
    .local v4, surfaceFlinger:Landroid/os/IBinder;
    if-eqz v4, :cond_52

    .line 3446
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3447
    .local v1, data:Landroid/os/Parcel;
    const-string v7, "android.ui.ISurfaceComposer"

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3448
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface {v4, v7, v1, v8, v9}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3450
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    :try_end_52
    .catchall {:try_start_38 .. :try_end_52} :catchall_10
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_52} :catch_62

    .line 3455
    .end local v1           #data:Landroid/os/Parcel;
    .end local v4           #surfaceFlinger:Landroid/os/IBinder;
    :cond_52
    :goto_52
    :try_start_52
    monitor-exit v6
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_10

    .line 3457
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy;->enableScreenAfterBoot()V

    .line 3460
    const/16 v6, -0x3e8

    iget v7, p0, Lcom/android/server/WindowManagerService;->mLastRotationFlags:I

    or-int/lit8 v7, v7, 0x1

    invoke-virtual {p0, v6, v10, v7}, Lcom/android/server/WindowManagerService;->setRotationUnchecked(IZI)V

    goto :goto_9

    .line 3452
    :catch_62
    move-exception v7

    move-object v2, v7

    .line 3453
    .local v2, ex:Landroid/os/RemoteException;
    :try_start_64
    const-string v7, "WindowManager"

    const-string v8, "Boot completed: SurfaceFlinger is dead!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b
    .catchall {:try_start_64 .. :try_end_6b} :catchall_10

    goto :goto_52
.end method

.method public prepareAppTransition(I)V
    .registers 7
    .parameter "transit"

    .prologue
    .line 2446
    const-string v0, "android.permission.MANAGE_APP_TOKENS"

    const-string v1, "prepareAppTransition()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 2448
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2451
    :cond_12
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 2455
    :try_start_15
    iget-boolean v1, p0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    if-nez v1, :cond_4b

    .line 2456
    iget v1, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    if-nez v1, :cond_4d

    .line 2457
    iput p1, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    .line 2467
    :cond_1f
    :goto_1f
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/WindowManagerService;->mAppTransitionReady:Z

    .line 2468
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/WindowManagerService;->mAppTransitionTimeout:Z

    .line 2469
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/WindowManagerService;->mStartingIconInTransition:Z

    .line 2470
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/WindowManagerService;->mSkipAppTransitionAnimation:Z

    .line 2471
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lcom/android/server/WindowManagerService$H;->removeMessages(I)V

    .line 2476
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/WindowManagerService;->APP_TRANSITION_TIMEOUT_SENT:Z

    .line 2479
    sget-boolean v1, Lcom/android/server/WindowManagerService;->allowFreeze:Z

    if-eqz v1, :cond_4b

    .line 2480
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Lcom/android/server/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/WindowManagerService;->APP_TRANSITION_TIMEOUT_SENT:Z

    .line 2484
    :cond_4b
    monitor-exit v0

    .line 2485
    return-void

    .line 2458
    :cond_4d
    const/16 v1, 0x8

    if-ne p1, v1, :cond_5d

    iget v1, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_5d

    .line 2461
    iput p1, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    goto :goto_1f

    .line 2484
    :catchall_5a
    move-exception v1

    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_15 .. :try_end_5c} :catchall_5a

    throw v1

    .line 2462
    :cond_5d
    const/4 v1, 0x6

    if-ne p1, v1, :cond_1f

    :try_start_60
    iget v1, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1f

    .line 2465
    iput p1, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I
    :try_end_67
    .catchall {:try_start_60 .. :try_end_67} :catchall_5a

    goto :goto_1f
.end method

.method reclaimSomeSurfaceMemoryLocked(Lcom/android/server/WindowManagerService$WindowState;Ljava/lang/String;)V
    .registers 17
    .parameter "win"
    .parameter "operation"

    .prologue
    .line 9300
    iget-object v8, p1, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    .line 9302
    .local v8, surface:Landroid/view/Surface;
    const/16 v10, 0x7918

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {p1}, Lcom/android/server/WindowManagerService$WindowState;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    iget-object v13, p1, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    iget v13, v13, Lcom/android/server/WindowManagerService$Session;->mPid:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    aput-object p2, v11, v12

    invoke-static {v10, v11}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 9305
    iget-object v10, p0, Lcom/android/server/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    if-nez v10, :cond_2a

    .line 9306
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/android/server/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    .line 9309
    :cond_2a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 9314
    .local v1, callingIdentity:J
    :try_start_2e
    iget-object v10, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 9315
    .local v0, N:I
    const/4 v5, 0x0

    .line 9316
    .local v5, leakedSurface:Z
    const-string v10, "WindowManager"

    const-string v11, "Out of memory for surface!  Looking for leaks..."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9317
    const/4 v3, 0x0

    .local v3, i:I
    :goto_3d
    if-ge v3, v0, :cond_fa

    .line 9318
    iget-object v10, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/WindowManagerService$WindowState;

    .line 9319
    .local v9, ws:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v10, v9, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v10, :cond_b3

    .line 9320
    iget-object v10, p0, Lcom/android/server/WindowManagerService;->mSessions:Ljava/util/HashSet;

    iget-object v11, v9, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    invoke-virtual {v10, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b6

    .line 9321
    const-string v10, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "LEAKED SURFACE (session doesn\'t exist): "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " surface="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v9, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " token="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p1, Lcom/android/server/WindowManagerService$WindowState;->mToken:Lcom/android/server/WindowManagerService$WindowToken;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " pid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v9, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    iget v12, v12, Lcom/android/server/WindowManagerService$Session;->mPid:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " uid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v9, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    iget v12, v12, Lcom/android/server/WindowManagerService$Session;->mUid:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9326
    iget-object v10, v9, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v10}, Landroid/view/Surface;->clear()V

    .line 9327
    const/4 v10, 0x0

    iput-object v10, v9, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    .line 9328
    iget-object v10, p0, Lcom/android/server/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9329
    add-int/lit8 v3, v3, -0x1

    .line 9330
    add-int/lit8 v0, v0, -0x1

    .line 9331
    const/4 v5, 0x1

    .line 9317
    :cond_b3
    :goto_b3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3d

    .line 9332
    :cond_b6
    iget-object v10, p1, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v10, :cond_b3

    iget-object v10, p1, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iget-boolean v10, v10, Lcom/android/server/WindowManagerService$AppWindowToken;->clientHidden:Z

    if-eqz v10, :cond_b3

    .line 9333
    const-string v10, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "LEAKED SURFACE (app token hidden): "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " surface="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v9, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " token="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p1, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9336
    iget-object v10, v9, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v10}, Landroid/view/Surface;->clear()V

    .line 9337
    const/4 v10, 0x0

    iput-object v10, v9, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    .line 9338
    const/4 v5, 0x1

    goto :goto_b3

    .line 9343
    .end local v9           #ws:Lcom/android/server/WindowManagerService$WindowState;
    :cond_fa
    const/4 v4, 0x0

    .line 9344
    .local v4, killedApps:Z
    if-nez v5, :cond_148

    .line 9345
    const-string v10, "WindowManager"

    const-string v11, "No leaked surfaces; killing applicatons!"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9346
    new-instance v6, Landroid/util/SparseIntArray;

    invoke-direct {v6}, Landroid/util/SparseIntArray;-><init>()V

    .line 9347
    .local v6, pidCandidates:Landroid/util/SparseIntArray;
    const/4 v3, 0x0

    :goto_10a
    if-ge v3, v0, :cond_126

    .line 9348
    iget-object v10, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/WindowManagerService$WindowState;

    .line 9349
    .restart local v9       #ws:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v10, v9, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v10, :cond_123

    .line 9350
    iget-object v10, v9, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    iget v10, v10, Lcom/android/server/WindowManagerService$Session;->mPid:I

    iget-object v11, v9, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    iget v11, v11, Lcom/android/server/WindowManagerService$Session;->mPid:I

    invoke-virtual {v6, v10, v11}, Landroid/util/SparseIntArray;->append(II)V

    .line 9347
    :cond_123
    add-int/lit8 v3, v3, 0x1

    goto :goto_10a

    .line 9353
    .end local v9           #ws:Lcom/android/server/WindowManagerService$WindowState;
    :cond_126
    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v10

    if-lez v10, :cond_148

    .line 9354
    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v10

    new-array v7, v10, [I

    .line 9355
    .local v7, pids:[I
    const/4 v3, 0x0

    :goto_133
    array-length v10, v7

    if-ge v3, v10, :cond_13f

    .line 9356
    invoke-virtual {v6, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v10

    aput v10, v7, v3
    :try_end_13c
    .catchall {:try_start_2e .. :try_end_13c} :catchall_164

    .line 9355
    add-int/lit8 v3, v3, 0x1

    goto :goto_133

    .line 9359
    :cond_13f
    :try_start_13f
    iget-object v10, p0, Lcom/android/server/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v10, v7}, Landroid/app/IActivityManager;->killPidsForMemory([I)Z
    :try_end_144
    .catchall {:try_start_13f .. :try_end_144} :catchall_164
    .catch Landroid/os/RemoteException; {:try_start_13f .. :try_end_144} :catch_16b

    move-result v10

    if-eqz v10, :cond_148

    .line 9360
    const/4 v4, 0x1

    .line 9367
    .end local v6           #pidCandidates:Landroid/util/SparseIntArray;
    .end local v7           #pids:[I
    :cond_148
    :goto_148
    if-nez v5, :cond_14c

    if-eqz v4, :cond_160

    .line 9370
    :cond_14c
    :try_start_14c
    const-string v10, "WindowManager"

    const-string v11, "Looks like we have reclaimed some memory, clearing surface for retry."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9371
    if-eqz v8, :cond_15b

    .line 9372
    invoke-virtual {v8}, Landroid/view/Surface;->clear()V

    .line 9373
    const/4 v10, 0x0

    iput-object v10, p1, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;
    :try_end_15b
    .catchall {:try_start_14c .. :try_end_15b} :catchall_164

    .line 9377
    :cond_15b
    :try_start_15b
    iget-object v10, p1, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v10}, Landroid/view/IWindow;->dispatchGetNewSurface()V
    :try_end_160
    .catchall {:try_start_15b .. :try_end_160} :catchall_164
    .catch Landroid/os/RemoteException; {:try_start_15b .. :try_end_160} :catch_169

    .line 9382
    :cond_160
    :goto_160
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9384
    return-void

    .line 9382
    .end local v0           #N:I
    .end local v3           #i:I
    .end local v4           #killedApps:Z
    .end local v5           #leakedSurface:Z
    :catchall_164
    move-exception v10

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v10

    .line 9378
    .restart local v0       #N:I
    .restart local v3       #i:I
    .restart local v4       #killedApps:Z
    .restart local v5       #leakedSurface:Z
    :catch_169
    move-exception v10

    goto :goto_160

    .line 9362
    .restart local v6       #pidCandidates:Landroid/util/SparseIntArray;
    .restart local v7       #pids:[I
    :catch_16b
    move-exception v10

    goto :goto_148
.end method

.method public reenableKeyguard(Landroid/os/IBinder;)V
    .registers 5
    .parameter "token"

    .prologue
    .line 3242
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.DISABLE_KEYGUARD"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_12

    .line 3244
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires DISABLE_KEYGUARD permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3246
    :cond_12
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mKeyguardDisabled:Landroid/os/TokenWatcher;

    monitor-enter v1

    .line 3247
    :try_start_15
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mKeyguardDisabled:Landroid/os/TokenWatcher;

    invoke-virtual {v2, p1}, Landroid/os/TokenWatcher;->release(Landroid/os/IBinder;)V

    .line 3249
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mKeyguardDisabled:Landroid/os/TokenWatcher;

    invoke-virtual {v2}, Landroid/os/TokenWatcher;->isAcquired()Z

    move-result v2

    if-nez v2, :cond_3c

    .line 3252
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/WindowManagerService;->mWaitingUntilKeyguardReenabled:Z

    .line 3253
    :goto_25
    iget-boolean v2, p0, Lcom/android/server/WindowManagerService;->mWaitingUntilKeyguardReenabled:Z
    :try_end_27
    .catchall {:try_start_15 .. :try_end_27} :catchall_39

    if-eqz v2, :cond_3c

    .line 3255
    :try_start_29
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mKeyguardDisabled:Landroid/os/TokenWatcher;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_39
    .catch Ljava/lang/InterruptedException; {:try_start_29 .. :try_end_2e} :catch_2f

    goto :goto_25

    .line 3256
    :catch_2f
    move-exception v2

    move-object v0, v2

    .line 3257
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_31
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_25

    .line 3261
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_39
    move-exception v2

    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_31 .. :try_end_3b} :catchall_39

    throw v2

    :cond_3c
    :try_start_3c
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_39

    .line 3262
    return-void
.end method

.method public relayoutWindow(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/Surface;)I
    .registers 37
    .parameter "session"
    .parameter "client"
    .parameter "attrs"
    .parameter "requestedWidth"
    .parameter "requestedHeight"
    .parameter "viewVisibility"
    .parameter "insetsPending"
    .parameter "outFrame"
    .parameter "outContentInsets"
    .parameter "outVisibleInsets"
    .parameter "outSurface"

    .prologue
    .line 1662
    const/4 v7, 0x0

    .line 1664
    .local v7, displayed:Z
    const/4 v13, 0x0

    .line 1665
    .local v13, newConfig:Landroid/content/res/Configuration;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    .line 1667
    .local v15, origId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 1668
    :try_start_d
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/WindowManagerService;->windowForClientLocked(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;)Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v20

    .line 1669
    .local v20, win:Lcom/android/server/WindowManagerService$WindowState;
    if-nez v20, :cond_19

    .line 1670
    const/16 v22, 0x0

    monitor-exit v21

    move/from16 v21, v22

    .line 1846
    :goto_18
    return v21

    .line 1672
    :cond_19
    move/from16 v0, p4

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mRequestedWidth:I

    .line 1673
    move/from16 v0, p5

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mRequestedHeight:I

    .line 1675
    if-eqz p3, :cond_34

    .line 1676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->adjustWindowParamsLw(Landroid/view/WindowManager$LayoutParams;)V

    .line 1679
    :cond_34
    const/4 v6, 0x0

    .line 1680
    .local v6, attrChanges:I
    const/4 v9, 0x0

    .line 1681
    .local v9, flagChanges:I
    if-eqz p3, :cond_5f

    .line 1682
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v23, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v24, v0

    xor-int v9, v23, v24

    move v0, v9

    move-object/from16 v1, v22

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1683
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    move-result v6

    .line 1691
    :cond_5f
    move v0, v6

    and-int/lit16 v0, v0, 0x80

    move/from16 v22, v0

    if-eqz v22, :cond_72

    .line 1692
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mAlpha:F

    .line 1695
    :cond_72
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v22, v0

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0x4000

    move/from16 v22, v0

    if-eqz v22, :cond_26d

    const/16 v22, 0x1

    move/from16 v17, v22

    .line 1698
    .local v17, scaledWindow:Z
    :goto_8a
    if-eqz v17, :cond_d4

    .line 1701
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, p4

    if-eq v0, v1, :cond_273

    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v22, v22, v23

    :goto_aa
    move/from16 v0, v22

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mHScale:F

    .line 1703
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, p5

    if-eq v0, v1, :cond_277

    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, p5

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v22, v22, v23

    :goto_ce
    move/from16 v0, v22

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mVScale:F

    .line 1707
    :cond_d4
    const v22, 0x20008

    and-int v22, v22, v9

    if-eqz v22, :cond_27b

    const/16 v22, 0x1

    move/from16 v11, v22

    .line 1711
    .local v11, imMayMove:Z
    :goto_df
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mViewVisibility:I

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, p6

    if-ne v0, v1, :cond_f7

    and-int/lit8 v22, v9, 0x8

    if-nez v22, :cond_f7

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mRelayoutCalled:Z

    move/from16 v22, v0

    if-nez v22, :cond_281

    :cond_f7
    const/16 v22, 0x1

    move/from16 v10, v22

    .line 1715
    .local v10, focusMayChange:Z
    :goto_fb
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mRelayoutCalled:Z

    .line 1716
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mViewVisibility:I

    move v14, v0

    .line 1717
    .local v14, oldVisibility:I
    move/from16 v0, p6

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mViewVisibility:I

    .line 1718
    if-nez p6, :cond_2da

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v22, v0

    if-eqz v22, :cond_126

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->clientHidden:Z

    move/from16 v22, v0

    if-nez v22, :cond_2da

    .line 1720
    :cond_126
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/WindowManagerService$WindowState;->isVisibleLw()Z

    move-result v22

    if-nez v22, :cond_287

    const/16 v22, 0x1

    move/from16 v7, v22

    .line 1721
    :goto_130
    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mExiting:Z

    move/from16 v22, v0

    if-eqz v22, :cond_148

    .line 1722
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mExiting:Z

    .line 1723
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    .line 1725
    :cond_148
    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDestroying:Z

    move/from16 v22, v0

    if-eqz v22, :cond_165

    .line 1726
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mDestroying:Z

    .line 1727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1729
    :cond_165
    const/16 v22, 0x8

    move v0, v14

    move/from16 v1, v22

    if-ne v0, v1, :cond_174

    .line 1730
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mEnterAnimationPending:Z

    .line 1732
    :cond_174
    if-eqz v7, :cond_19d

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object/from16 v22, v0

    if-eqz v22, :cond_19d

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDrawPending:Z

    move/from16 v22, v0

    if-nez v22, :cond_19d

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mCommitDrawPending:Z

    move/from16 v22, v0

    if-nez v22, :cond_19d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    move/from16 v22, v0

    if-nez v22, :cond_19d

    .line 1734
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/WindowManagerService;->applyEnterAnimationLocked(Lcom/android/server/WindowManagerService$WindowState;)V

    .line 1736
    :cond_19d
    and-int/lit8 v22, v6, 0x8

    if-eqz v22, :cond_1a5

    .line 1738
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/WindowManagerService$WindowState;->destroySurfaceLocked()V
    :try_end_1a4
    .catchall {:try_start_d .. :try_end_1a4} :catchall_342

    .line 1739
    const/4 v7, 0x1

    .line 1742
    :cond_1a5
    :try_start_1a5
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/WindowManagerService$WindowState;->createSurfaceLocked()Landroid/view/Surface;

    move-result-object v18

    .line 1743
    .local v18, surface:Landroid/view/Surface;
    if-eqz v18, :cond_28d

    .line 1744
    move-object/from16 v0, p11

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/Surface;->copyFrom(Landroid/view/Surface;)V
    :try_end_1b2
    .catchall {:try_start_1a5 .. :try_end_1b2} :catchall_342
    .catch Ljava/lang/Exception; {:try_start_1a5 .. :try_end_1b2} :catch_292

    .line 1755
    :goto_1b2
    if-eqz v7, :cond_1b5

    .line 1756
    const/4 v10, 0x1

    .line 1758
    :cond_1b5
    :try_start_1b5
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v22, v0

    const/16 v23, 0x7db

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1d8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mInputMethodWindow:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v22, v0

    if-nez v22, :cond_1d8

    .line 1760
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mInputMethodWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 1761
    const/4 v11, 0x1

    .line 1795
    .end local v18           #surface:Landroid/view/Surface;
    :cond_1d8
    :goto_1d8
    if-eqz v10, :cond_1e7

    .line 1797
    const/16 v22, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/WindowManagerService;->updateFocusedWindowLocked(I)Z

    move-result v22

    if-eqz v22, :cond_1e7

    .line 1798
    const/4 v11, 0x0

    .line 1805
    :cond_1e7
    const/4 v5, 0x0

    .line 1807
    .local v5, assignLayers:Z
    if-eqz v11, :cond_1f7

    .line 1808
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService;->moveInputMethodWindowsIfNeededLocked(Z)Z

    move-result v22

    if-eqz v22, :cond_1f7

    .line 1809
    const/4 v5, 0x1

    .line 1813
    :cond_1f7
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 1814
    move/from16 v0, p7

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mGivenInsetsPending:Z

    .line 1815
    if-eqz v5, :cond_20a

    .line 1816
    invoke-direct/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->assignLayersLocked()V

    .line 1818
    :cond_20a
    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService;->updateOrientationFromAppTokensLocked(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;

    move-result-object v13

    .line 1819
    invoke-direct/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 1820
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v22, v0

    if-eqz v22, :cond_22c

    .line 1821
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/WindowManagerService$AppWindowToken;->updateReportedVisibilityLocked()V

    .line 1823
    :cond_22c
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, p8

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1824
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, p9

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1825
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, p10

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1837
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mInTouchMode:Z

    move v12, v0

    .line 1838
    .local v12, inTouchMode:Z
    monitor-exit v21
    :try_end_259
    .catchall {:try_start_1b5 .. :try_end_259} :catchall_342

    .line 1840
    if-eqz v13, :cond_25e

    .line 1841
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->sendNewConfiguration()V

    .line 1844
    :cond_25e
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1846
    if-eqz v12, :cond_36c

    const/16 v21, 0x1

    :goto_265
    if-eqz v7, :cond_370

    const/16 v22, 0x2

    :goto_269
    or-int v21, v21, v22

    goto/16 :goto_18

    .line 1695
    .end local v5           #assignLayers:Z
    .end local v10           #focusMayChange:Z
    .end local v11           #imMayMove:Z
    .end local v12           #inTouchMode:Z
    .end local v14           #oldVisibility:I
    .end local v17           #scaledWindow:Z
    :cond_26d
    const/16 v22, 0x0

    move/from16 v17, v22

    goto/16 :goto_8a

    .line 1701
    .restart local v17       #scaledWindow:Z
    :cond_273
    const/high16 v22, 0x3f80

    goto/16 :goto_aa

    .line 1703
    :cond_277
    const/high16 v22, 0x3f80

    goto/16 :goto_ce

    .line 1707
    :cond_27b
    const/16 v22, 0x0

    move/from16 v11, v22

    goto/16 :goto_df

    .line 1711
    .restart local v11       #imMayMove:Z
    :cond_281
    const/16 v22, 0x0

    move/from16 v10, v22

    goto/16 :goto_fb

    .line 1720
    .restart local v10       #focusMayChange:Z
    .restart local v14       #oldVisibility:I
    :cond_287
    const/16 v22, 0x0

    move/from16 v7, v22

    goto/16 :goto_130

    .line 1746
    .restart local v18       #surface:Landroid/view/Surface;
    :cond_28d
    :try_start_28d
    invoke-virtual/range {p11 .. p11}, Landroid/view/Surface;->clear()V
    :try_end_290
    .catchall {:try_start_28d .. :try_end_290} :catchall_342
    .catch Ljava/lang/Exception; {:try_start_28d .. :try_end_290} :catch_292

    goto/16 :goto_1b2

    .line 1748
    .end local v18           #surface:Landroid/view/Surface;
    :catch_292
    move-exception v22

    move-object/from16 v8, v22

    .line 1749
    .local v8, e:Ljava/lang/Exception;
    :try_start_295
    const-string v22, "WindowManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Exception thrown when creating surface for client "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " ("

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ")"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object v2, v8

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1752
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1753
    const/16 v22, 0x0

    monitor-exit v21

    move/from16 v21, v22

    goto/16 :goto_18

    .line 1764
    .end local v8           #e:Ljava/lang/Exception;
    :cond_2da
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mEnterAnimationPending:Z

    .line 1765
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object/from16 v22, v0

    if-eqz v22, :cond_33d

    .line 1768
    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mExiting:Z

    move/from16 v22, v0

    if-nez v22, :cond_33d

    .line 1771
    const/16 v19, 0x2

    .line 1772
    .local v19, transit:I
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/WindowManagerService$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v22, v0

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_308

    .line 1773
    const/16 v19, 0x5

    .line 1775
    :cond_308
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/WindowManagerService$WindowState;->isWinVisibleLw()Z

    move-result v22

    if-eqz v22, :cond_345

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v19

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/WindowManagerService;->applyAnimationLocked(Lcom/android/server/WindowManagerService$WindowState;IZ)Z

    move-result v22

    if-eqz v22, :cond_345

    .line 1777
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mExiting:Z

    .line 1778
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/WindowManagerService$KeyWaiter;->finishedKey(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;ZI)Landroid/view/MotionEvent;

    .line 1792
    .end local v19           #transit:I
    :cond_33d
    :goto_33d
    invoke-virtual/range {p11 .. p11}, Landroid/view/Surface;->clear()V

    goto/16 :goto_1d8

    .line 1838
    .end local v6           #attrChanges:I
    .end local v9           #flagChanges:I
    .end local v10           #focusMayChange:Z
    .end local v11           #imMayMove:Z
    .end local v14           #oldVisibility:I
    .end local v17           #scaledWindow:Z
    .end local v20           #win:Lcom/android/server/WindowManagerService$WindowState;
    :catchall_342
    move-exception v22

    monitor-exit v21
    :try_end_344
    .catchall {:try_start_295 .. :try_end_344} :catchall_342

    throw v22

    .line 1780
    .restart local v6       #attrChanges:I
    .restart local v9       #flagChanges:I
    .restart local v10       #focusMayChange:Z
    .restart local v11       #imMayMove:Z
    .restart local v14       #oldVisibility:I
    .restart local v17       #scaledWindow:Z
    .restart local v19       #transit:I
    .restart local v20       #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_345
    :try_start_345
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/WindowManagerService$WindowState;->isAnimating()Z

    move-result v22

    if-eqz v22, :cond_354

    .line 1783
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mExiting:Z

    goto :goto_33d

    .line 1785
    :cond_354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mInputMethodWindow:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_368

    .line 1786
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mInputMethodWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 1788
    :cond_368
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/WindowManagerService$WindowState;->destroySurfaceLocked()V
    :try_end_36b
    .catchall {:try_start_345 .. :try_end_36b} :catchall_342

    goto :goto_33d

    .line 1846
    .end local v19           #transit:I
    .restart local v5       #assignLayers:Z
    .restart local v12       #inTouchMode:Z
    :cond_36c
    const/16 v21, 0x0

    goto/16 :goto_265

    :cond_370
    const/16 v22, 0x0

    goto/16 :goto_269
.end method

.method public removeAppToken(Landroid/os/IBinder;)V
    .registers 15
    .parameter "token"

    .prologue
    .line 2936
    const-string v0, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "removeAppToken()"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 2938
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2941
    :cond_12
    const/4 v1, 0x0

    .line 2942
    .local v1, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    const/4 v11, 0x0

    .line 2943
    .local v11, startingToken:Lcom/android/server/WindowManagerService$AppWindowToken;
    const/4 v7, 0x0

    .line 2945
    .local v7, delayed:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 2946
    .local v9, origId:J
    iget-object v12, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v12

    .line 2947
    :try_start_1c
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/WindowManagerService$WindowToken;

    .line 2948
    .local v6, basewtoken:Lcom/android/server/WindowManagerService$WindowToken;
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mTokenList:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2949
    if-eqz v6, :cond_97

    iget-object v1, v6, Lcom/android/server/WindowManagerService$WindowToken;->appWindowToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v1, :cond_97

    .line 2951
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/WindowManagerService;->setTokenVisibilityLocked(Lcom/android/server/WindowManagerService$AppWindowToken;Landroid/view/WindowManager$LayoutParams;ZIZ)Z

    move-result v7

    .line 2952
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->inPendingTransaction:Z

    .line 2953
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2954
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 2955
    const/4 v7, 0x1

    .line 2964
    :cond_49
    :goto_49
    if-eqz v7, :cond_50

    .line 2966
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2968
    :cond_50
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2969
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->removed:Z

    .line 2970
    iget-object v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->startingData:Lcom/android/server/WindowManagerService$StartingData;

    if-eqz v0, :cond_5d

    .line 2971
    move-object v11, v1

    .line 2973
    :cond_5d
    const/4 v0, 0x1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/WindowManagerService;->unsetAppFreezingScreenLocked(Lcom/android/server/WindowManagerService$AppWindowToken;ZZ)V

    .line 2974
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mFocusedApp:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-ne v0, v1, :cond_72

    .line 2976
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/WindowManagerService;->mFocusedApp:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 2977
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/WindowManagerService;->updateFocusedWindowLocked(I)Z

    .line 2978
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    invoke-virtual {v0}, Lcom/android/server/WindowManagerService$KeyWaiter;->tickle()V

    .line 2984
    :cond_72
    :goto_72
    if-nez v7, :cond_79

    if-eqz v1, :cond_79

    .line 2985
    invoke-virtual {v1}, Lcom/android/server/WindowManagerService$AppWindowToken;->updateReportedVisibilityLocked()V

    .line 2987
    :cond_79
    monitor-exit v12
    :try_end_7a
    .catchall {:try_start_1c .. :try_end_7a} :catchall_b0

    .line 2988
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2990
    if-eqz v11, :cond_8b

    .line 2993
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v11}, Lcom/android/server/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 2994
    .local v8, m:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    invoke-virtual {v0, v8}, Lcom/android/server/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 2996
    .end local v8           #m:Landroid/os/Message;
    :cond_8b
    return-void

    .line 2956
    :cond_8c
    :try_start_8c
    iget v0, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    if-eqz v0, :cond_49

    .line 2957
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2958
    const/4 v7, 0x1

    goto :goto_49

    .line 2981
    :cond_97
    const-string v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to remove non-existing app token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_72

    .line 2987
    .end local v6           #basewtoken:Lcom/android/server/WindowManagerService$WindowToken;
    :catchall_b0
    move-exception v0

    monitor-exit v12
    :try_end_b2
    .catchall {:try_start_8c .. :try_end_b2} :catchall_b0

    throw v0
.end method

.method public removeWindow(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;)V
    .registers 6
    .parameter "session"
    .parameter "client"

    .prologue
    .line 1460
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1461
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/WindowManagerService;->windowForClientLocked(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;)Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v0

    .line 1462
    .local v0, win:Lcom/android/server/WindowManagerService$WindowState;
    if-nez v0, :cond_b

    .line 1463
    monitor-exit v1

    .line 1467
    :goto_a
    return-void

    .line 1465
    :cond_b
    invoke-virtual {p0, p1, v0}, Lcom/android/server/WindowManagerService;->removeWindowLocked(Lcom/android/server/WindowManagerService$Session;Lcom/android/server/WindowManagerService$WindowState;)V

    .line 1466
    monitor-exit v1

    goto :goto_a

    .end local v0           #win:Lcom/android/server/WindowManagerService$WindowState;
    :catchall_10
    move-exception v2

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v2
.end method

.method public removeWindowLocked(Lcom/android/server/WindowManagerService$Session;Lcom/android/server/WindowManagerService$WindowState;)V
    .registers 11
    .parameter "session"
    .parameter "win"

    .prologue
    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 1477
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1489
    .local v0, origId:J
    const/4 v3, 0x0

    .line 1494
    .local v3, wasVisible:Z
    iget-object v4, p2, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v4, :cond_4b

    iget-boolean v4, p0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    if-nez v4, :cond_4b

    .line 1497
    invoke-virtual {p2}, Lcom/android/server/WindowManagerService$WindowState;->isWinVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 1499
    const/4 v2, 0x2

    .line 1500
    .local v2, transit:I
    invoke-virtual {p2}, Lcom/android/server/WindowManagerService$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v4, v6, :cond_20

    .line 1501
    const/4 v2, 0x5

    .line 1504
    :cond_20
    invoke-direct {p0, p2, v2, v7}, Lcom/android/server/WindowManagerService;->applyAnimationLocked(Lcom/android/server/WindowManagerService$WindowState;IZ)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 1505
    iput-boolean v5, p2, Lcom/android/server/WindowManagerService$WindowState;->mExiting:Z

    .line 1508
    .end local v2           #transit:I
    :cond_28
    iget-boolean v4, p2, Lcom/android/server/WindowManagerService$WindowState;->mExiting:Z

    if-nez v4, :cond_32

    invoke-virtual {p2}, Lcom/android/server/WindowManagerService$WindowState;->isAnimating()Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 1511
    :cond_32
    iput-boolean v5, p2, Lcom/android/server/WindowManagerService$WindowState;->mExiting:Z

    .line 1512
    iput-boolean v5, p2, Lcom/android/server/WindowManagerService$WindowState;->mRemoveOnExit:Z

    .line 1513
    iput-boolean v5, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 1514
    invoke-direct {p0, v6}, Lcom/android/server/WindowManagerService;->updateFocusedWindowLocked(I)Z

    .line 1515
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 1516
    iget-object v4, p2, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v4, :cond_47

    .line 1517
    iget-object v4, p2, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    invoke-virtual {v4}, Lcom/android/server/WindowManagerService$AppWindowToken;->updateReportedVisibilityLocked()V

    .line 1520
    :cond_47
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1534
    :goto_4a
    return-void

    .line 1525
    :cond_4b
    invoke-direct {p0, p1, p2}, Lcom/android/server/WindowManagerService;->removeWindowInnerLocked(Lcom/android/server/WindowManagerService$Session;Lcom/android/server/WindowManagerService$WindowState;)V

    .line 1528
    if-eqz v3, :cond_65

    invoke-virtual {p0}, Lcom/android/server/WindowManagerService;->computeForcedAppOrientationLocked()I

    move-result v4

    iget v5, p0, Lcom/android/server/WindowManagerService;->mForcedAppOrientation:I

    if-eq v4, v5, :cond_65

    .line 1530
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    const/16 v6, 0x12

    invoke-virtual {v5, v6}, Lcom/android/server/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 1532
    :cond_65
    invoke-direct {p0, v7}, Lcom/android/server/WindowManagerService;->updateFocusedWindowLocked(I)Z

    .line 1533
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_4a
.end method

.method public removeWindowToken(Landroid/os/IBinder;)V
    .registers 16
    .parameter "token"

    .prologue
    .line 2111
    const-string v8, "android.permission.MANAGE_APP_TOKENS"

    const-string v9, "removeWindowToken()"

    invoke-virtual {p0, v8, v9}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_12

    .line 2113
    new-instance v8, Ljava/lang/SecurityException;

    const-string v9, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v8, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2116
    :cond_12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2117
    .local v4, origId:J
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v8

    .line 2118
    :try_start_19
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v9, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/WindowManagerService$WindowToken;

    .line 2119
    .local v7, wtoken:Lcom/android/server/WindowManagerService$WindowToken;
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mTokenList:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2120
    if-eqz v7, :cond_7b

    .line 2121
    const/4 v2, 0x0

    .line 2122
    .local v2, delayed:Z
    iget-boolean v9, v7, Lcom/android/server/WindowManagerService$WindowToken;->hidden:Z

    if-nez v9, :cond_76

    .line 2123
    const/4 v9, 0x1

    iput-boolean v9, v7, Lcom/android/server/WindowManagerService$WindowToken;->hidden:Z

    .line 2125
    iget-object v9, v7, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2126
    .local v0, N:I
    const/4 v1, 0x0

    .line 2128
    .local v1, changed:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_38
    if-ge v3, v0, :cond_63

    .line 2129
    iget-object v9, v7, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/WindowManagerService$WindowState;

    .line 2131
    .local v6, win:Lcom/android/server/WindowManagerService$WindowState;
    invoke-virtual {v6}, Lcom/android/server/WindowManagerService$WindowState;->isAnimating()Z

    move-result v9

    if-eqz v9, :cond_49

    .line 2132
    const/4 v2, 0x1

    .line 2135
    :cond_49
    invoke-virtual {v6}, Lcom/android/server/WindowManagerService$WindowState;->isVisibleNow()Z

    move-result v9

    if-eqz v9, :cond_60

    .line 2136
    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-direct {p0, v6, v9, v10}, Lcom/android/server/WindowManagerService;->applyAnimationLocked(Lcom/android/server/WindowManagerService$WindowState;IZ)Z

    .line 2138
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    iget-object v10, v6, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    iget-object v11, v6, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/android/server/WindowManagerService$KeyWaiter;->finishedKey(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;ZI)Landroid/view/MotionEvent;

    .line 2140
    const/4 v1, 0x1

    .line 2128
    :cond_60
    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    .line 2144
    .end local v6           #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_63
    if-eqz v1, :cond_6f

    .line 2145
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 2146
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 2147
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/server/WindowManagerService;->updateFocusedWindowLocked(I)Z

    .line 2150
    :cond_6f
    if-eqz v2, :cond_76

    .line 2151
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2158
    .end local v0           #N:I
    .end local v1           #changed:Z
    .end local v2           #delayed:Z
    .end local v3           #i:I
    :cond_76
    :goto_76
    monitor-exit v8
    :try_end_77
    .catchall {:try_start_19 .. :try_end_77} :catchall_94

    .line 2159
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2160
    return-void

    .line 2156
    :cond_7b
    :try_start_7b
    const-string v9, "WindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Attempted to remove non-existing token: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_76

    .line 2158
    .end local v7           #wtoken:Lcom/android/server/WindowManagerService$WindowToken;
    :catchall_94
    move-exception v9

    monitor-exit v8
    :try_end_96
    .catchall {:try_start_7b .. :try_end_96} :catchall_94

    throw v9
.end method

.method requestAnimationLocked(J)V
    .registers 6
    .parameter "delay"

    .prologue
    .line 9270
    iget-boolean v0, p0, Lcom/android/server/WindowManagerService;->mAnimationPending:Z

    if-nez v0, :cond_13

    .line 9271
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/WindowManagerService;->mAnimationPending:Z

    .line 9272
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/server/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 9274
    :cond_13
    return-void
.end method

.method public resumeKeyDispatching(Landroid/os/IBinder;)V
    .registers 5
    .parameter "_token"

    .prologue
    .line 4636
    const-string v1, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "resumeKeyDispatching()"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 4638
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4641
    :cond_12
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 4642
    :try_start_15
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/WindowManagerService$WindowToken;

    .line 4643
    .local v0, token:Lcom/android/server/WindowManagerService$WindowToken;
    if-eqz v0, :cond_24

    .line 4644
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    invoke-virtual {v2, v0}, Lcom/android/server/WindowManagerService$KeyWaiter;->resumeDispatchingLocked(Lcom/android/server/WindowManagerService$WindowToken;)V

    .line 4646
    :cond_24
    monitor-exit v1

    .line 4647
    return-void

    .line 4646
    .end local v0           #token:Lcom/android/server/WindowManagerService$WindowToken;
    :catchall_26
    move-exception v2

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_15 .. :try_end_28} :catchall_26

    throw v2
.end method

.method sendNewConfiguration()V
    .registers 3

    .prologue
    .line 3923
    :try_start_0
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    .line 3926
    :goto_6
    return-void

    .line 3924
    :catch_7
    move-exception v0

    goto :goto_6
.end method

.method public setAnimationScale(IF)V
    .registers 5
    .parameter "which"
    .parameter "scale"

    .prologue
    .line 3294
    const-string v0, "android.permission.SET_ANIMATION_SCALE"

    const-string v1, "setAnimationScale()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 3296
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_ANIMATION_SCALE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3299
    :cond_12
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_2b

    const/4 p2, 0x0

    .line 3301
    :cond_18
    :goto_18
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    .line 3302
    packed-switch p1, :pswitch_data_42

    .line 3308
    :goto_1f
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3309
    return-void

    .line 3300
    :cond_2b
    const/high16 v0, 0x41a0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_18

    const/high16 p2, 0x41a0

    goto :goto_18

    .line 3303
    :pswitch_34
    invoke-static {p2}, Lcom/android/server/WindowManagerService;->fixScale(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/WindowManagerService;->mWindowAnimationScale:F

    goto :goto_1f

    .line 3304
    :pswitch_3b
    invoke-static {p2}, Lcom/android/server/WindowManagerService;->fixScale(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/WindowManagerService;->mTransitionAnimationScale:F

    goto :goto_1f

    .line 3302
    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_34
        :pswitch_3b
    .end packed-switch
.end method

.method public setAnimationScales([F)V
    .registers 5
    .parameter "scales"

    .prologue
    const/4 v2, 0x1

    .line 3312
    const-string v0, "android.permission.SET_ANIMATION_SCALE"

    const-string v1, "setAnimationScale()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 3314
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_ANIMATION_SCALE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3317
    :cond_13
    if-eqz p1, :cond_2d

    .line 3318
    array-length v0, p1

    if-lt v0, v2, :cond_21

    .line 3319
    const/4 v0, 0x0

    aget v0, p1, v0

    invoke-static {v0}, Lcom/android/server/WindowManagerService;->fixScale(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/WindowManagerService;->mWindowAnimationScale:F

    .line 3321
    :cond_21
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2d

    .line 3322
    aget v0, p1, v2

    invoke-static {v0}, Lcom/android/server/WindowManagerService;->fixScale(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/WindowManagerService;->mTransitionAnimationScale:F

    .line 3327
    :cond_2d
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3328
    return-void
.end method

.method public setAppGroupId(Landroid/os/IBinder;I)V
    .registers 8
    .parameter "token"
    .parameter "groupId"

    .prologue
    .line 2193
    const-string v1, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "setAppStartingIcon()"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 2195
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2198
    :cond_12
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 2199
    :try_start_15
    invoke-virtual {p0, p1}, Lcom/android/server/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/WindowManagerService$AppWindowToken;

    move-result-object v0

    .line 2200
    .local v0, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-nez v0, :cond_35

    .line 2201
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to set group id of non-existing app token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2202
    monitor-exit v1

    .line 2206
    :goto_34
    return-void

    .line 2204
    :cond_35
    iput p2, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->groupId:I

    .line 2205
    monitor-exit v1

    goto :goto_34

    .end local v0           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :catchall_39
    move-exception v2

    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_15 .. :try_end_3b} :catchall_39

    throw v2
.end method

.method public setAppOrientation(Landroid/view/IApplicationToken;I)V
    .registers 8
    .parameter "token"
    .parameter "requestedOrientation"

    .prologue
    .line 2385
    const-string v1, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "setAppOrientation()"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 2387
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2390
    :cond_12
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 2391
    :try_start_15
    invoke-interface {p1}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/WindowManagerService$AppWindowToken;

    move-result-object v0

    .line 2392
    .local v0, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-nez v0, :cond_39

    .line 2393
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to set orientation of non-existing app token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2394
    monitor-exit v1

    .line 2399
    :goto_38
    return-void

    .line 2397
    :cond_39
    iput p2, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->requestedOrientation:I

    .line 2398
    monitor-exit v1

    goto :goto_38

    .end local v0           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :catchall_3d
    move-exception v2

    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_15 .. :try_end_3f} :catchall_3d

    throw v2
.end method

.method public setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILjava/lang/CharSequence;IILandroid/os/IBinder;Z)V
    .registers 24
    .parameter "token"
    .parameter "pkg"
    .parameter "theme"
    .parameter "nonLocalizedLabel"
    .parameter "labelRes"
    .parameter "icon"
    .parameter "transferFrom"
    .parameter "createIfNeeded"

    .prologue
    .line 2512
    const-string v2, "android.permission.MANAGE_APP_TOKENS"

    const-string v3, "setAppStartingIcon()"

    invoke-virtual {p0, v2, v3}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 2514
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2517
    :cond_12
    iget-object v14, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v14

    .line 2522
    :try_start_15
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/WindowManagerService$AppWindowToken;

    move-result-object v13

    .line 2523
    .local v13, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-nez v13, :cond_38

    .line 2524
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to set icon of non-existing app token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2525
    monitor-exit v14

    .line 2643
    :goto_37
    return-void

    .line 2531
    :cond_38
    iget-boolean v2, p0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    if-eqz v2, :cond_41

    .line 2532
    monitor-exit v14

    goto :goto_37

    .line 2642
    .end local v13           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :catchall_3e
    move-exception v2

    monitor-exit v14
    :try_end_40
    .catchall {:try_start_15 .. :try_end_40} :catchall_3e

    throw v2

    .line 2535
    .restart local v13       #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_41
    :try_start_41
    iget-object v2, v13, Lcom/android/server/WindowManagerService$AppWindowToken;->startingData:Lcom/android/server/WindowManagerService$StartingData;

    if-eqz v2, :cond_47

    .line 2536
    monitor-exit v14

    goto :goto_37

    .line 2539
    :cond_47
    if-eqz p7, :cond_106

    .line 2540
    move-object v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/WindowManagerService$AppWindowToken;

    move-result-object v12

    .line 2541
    .local v12, ttoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-eqz v12, :cond_106

    .line 2542
    iget-object v11, v12, Lcom/android/server/WindowManagerService$AppWindowToken;->startingWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 2543
    .local v11, startingWindow:Lcom/android/server/WindowManagerService$WindowState;
    if-eqz v11, :cond_e9

    .line 2544
    iget-boolean v2, p0, Lcom/android/server/WindowManagerService;->mStartingIconInTransition:Z

    if-eqz v2, :cond_5d

    .line 2548
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/WindowManagerService;->mSkipAppTransitionAnimation:Z

    .line 2553
    :cond_5d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 2557
    .local v9, origId:J
    iget-object v2, v12, Lcom/android/server/WindowManagerService$AppWindowToken;->startingData:Lcom/android/server/WindowManagerService$StartingData;

    iput-object v2, v13, Lcom/android/server/WindowManagerService$AppWindowToken;->startingData:Lcom/android/server/WindowManagerService$StartingData;

    .line 2558
    iget-object v2, v12, Lcom/android/server/WindowManagerService$AppWindowToken;->startingView:Landroid/view/View;

    iput-object v2, v13, Lcom/android/server/WindowManagerService$AppWindowToken;->startingView:Landroid/view/View;

    .line 2559
    iput-object v11, v13, Lcom/android/server/WindowManagerService$AppWindowToken;->startingWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 2560
    const/4 v2, 0x0

    iput-object v2, v12, Lcom/android/server/WindowManagerService$AppWindowToken;->startingData:Lcom/android/server/WindowManagerService$StartingData;

    .line 2561
    const/4 v2, 0x0

    iput-object v2, v12, Lcom/android/server/WindowManagerService$AppWindowToken;->startingView:Landroid/view/View;

    .line 2562
    const/4 v2, 0x0

    iput-object v2, v12, Lcom/android/server/WindowManagerService$AppWindowToken;->startingWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 2563
    const/4 v2, 0x1

    iput-boolean v2, v12, Lcom/android/server/WindowManagerService$AppWindowToken;->startingMoved:Z

    .line 2564
    iput-object v13, v11, Lcom/android/server/WindowManagerService$WindowState;->mToken:Lcom/android/server/WindowManagerService$WindowToken;

    .line 2565
    iput-object v13, v11, Lcom/android/server/WindowManagerService$WindowState;->mRootToken:Lcom/android/server/WindowManagerService$WindowToken;

    .line 2566
    iput-object v13, v11, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 2567
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2568
    iget-object v2, v12, Lcom/android/server/WindowManagerService$AppWindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2569
    iget-object v2, v12, Lcom/android/server/WindowManagerService$AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2570
    const/4 v2, 0x1

    invoke-direct {p0, v11, v2}, Lcom/android/server/WindowManagerService;->addWindowToListInOrderLocked(Lcom/android/server/WindowManagerService$WindowState;Z)V

    .line 2571
    iget-object v2, v13, Lcom/android/server/WindowManagerService$AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2578
    iget-boolean v2, v12, Lcom/android/server/WindowManagerService$AppWindowToken;->allDrawn:Z

    if-eqz v2, :cond_9c

    .line 2579
    const/4 v2, 0x1

    iput-boolean v2, v13, Lcom/android/server/WindowManagerService$AppWindowToken;->allDrawn:Z

    .line 2581
    :cond_9c
    iget-boolean v2, v12, Lcom/android/server/WindowManagerService$AppWindowToken;->firstWindowDrawn:Z

    if-eqz v2, :cond_a3

    .line 2582
    const/4 v2, 0x1

    iput-boolean v2, v13, Lcom/android/server/WindowManagerService$AppWindowToken;->firstWindowDrawn:Z

    .line 2584
    :cond_a3
    iget-boolean v2, v12, Lcom/android/server/WindowManagerService$AppWindowToken;->hidden:Z

    if-nez v2, :cond_b0

    .line 2585
    const/4 v2, 0x0

    iput-boolean v2, v13, Lcom/android/server/WindowManagerService$AppWindowToken;->hidden:Z

    .line 2586
    const/4 v2, 0x0

    iput-boolean v2, v13, Lcom/android/server/WindowManagerService$AppWindowToken;->hiddenRequested:Z

    .line 2587
    const/4 v2, 0x0

    iput-boolean v2, v13, Lcom/android/server/WindowManagerService$AppWindowToken;->willBeHidden:Z

    .line 2589
    :cond_b0
    iget-boolean v2, v13, Lcom/android/server/WindowManagerService$AppWindowToken;->clientHidden:Z

    iget-boolean v3, v12, Lcom/android/server/WindowManagerService$AppWindowToken;->clientHidden:Z

    if-eq v2, v3, :cond_bd

    .line 2590
    iget-boolean v2, v12, Lcom/android/server/WindowManagerService$AppWindowToken;->clientHidden:Z

    iput-boolean v2, v13, Lcom/android/server/WindowManagerService$AppWindowToken;->clientHidden:Z

    .line 2591
    invoke-virtual {v13}, Lcom/android/server/WindowManagerService$AppWindowToken;->sendAppVisibilityToClients()V

    .line 2593
    :cond_bd
    iget-object v2, v12, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_d9

    .line 2594
    iget-object v2, v12, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    iput-object v2, v13, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    .line 2595
    iget-boolean v2, v12, Lcom/android/server/WindowManagerService$AppWindowToken;->animating:Z

    iput-boolean v2, v13, Lcom/android/server/WindowManagerService$AppWindowToken;->animating:Z

    .line 2596
    iget v2, v12, Lcom/android/server/WindowManagerService$AppWindowToken;->animLayerAdjustment:I

    iput v2, v13, Lcom/android/server/WindowManagerService$AppWindowToken;->animLayerAdjustment:I

    .line 2597
    const/4 v2, 0x0

    iput-object v2, v12, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    .line 2598
    const/4 v2, 0x0

    iput v2, v12, Lcom/android/server/WindowManagerService$AppWindowToken;->animLayerAdjustment:I

    .line 2599
    invoke-virtual {v13}, Lcom/android/server/WindowManagerService$AppWindowToken;->updateLayers()V

    .line 2600
    invoke-virtual {v12}, Lcom/android/server/WindowManagerService$AppWindowToken;->updateLayers()V

    .line 2603
    :cond_d9
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/android/server/WindowManagerService;->updateFocusedWindowLocked(I)Z

    .line 2604
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 2605
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 2606
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2607
    monitor-exit v14

    goto/16 :goto_37

    .line 2608
    .end local v9           #origId:J
    :cond_e9
    iget-object v2, v12, Lcom/android/server/WindowManagerService$AppWindowToken;->startingData:Lcom/android/server/WindowManagerService$StartingData;

    if-eqz v2, :cond_106

    .line 2614
    iget-object v2, v12, Lcom/android/server/WindowManagerService$AppWindowToken;->startingData:Lcom/android/server/WindowManagerService$StartingData;

    iput-object v2, v13, Lcom/android/server/WindowManagerService$AppWindowToken;->startingData:Lcom/android/server/WindowManagerService$StartingData;

    .line 2615
    const/4 v2, 0x0

    iput-object v2, v12, Lcom/android/server/WindowManagerService$AppWindowToken;->startingData:Lcom/android/server/WindowManagerService$StartingData;

    .line 2616
    const/4 v2, 0x1

    iput-boolean v2, v12, Lcom/android/server/WindowManagerService$AppWindowToken;->startingMoved:Z

    .line 2617
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v13}, Lcom/android/server/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 2621
    .local v8, m:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    invoke-virtual {v2, v8}, Lcom/android/server/WindowManagerService$H;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 2622
    monitor-exit v14

    goto/16 :goto_37

    .line 2629
    .end local v8           #m:Landroid/os/Message;
    .end local v11           #startingWindow:Lcom/android/server/WindowManagerService$WindowState;
    .end local v12           #ttoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_106
    if-nez p8, :cond_10b

    .line 2630
    monitor-exit v14

    goto/16 :goto_37

    .line 2633
    :cond_10b
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/WindowManagerService;->mStartingIconInTransition:Z

    .line 2634
    new-instance v2, Lcom/android/server/WindowManagerService$StartingData;

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/WindowManagerService$StartingData;-><init>(Ljava/lang/String;ILjava/lang/CharSequence;II)V

    iput-object v2, v13, Lcom/android/server/WindowManagerService$AppWindowToken;->startingData:Lcom/android/server/WindowManagerService$StartingData;

    .line 2637
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v13}, Lcom/android/server/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 2641
    .restart local v8       #m:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    invoke-virtual {v2, v8}, Lcom/android/server/WindowManagerService$H;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 2642
    monitor-exit v14
    :try_end_12c
    .catchall {:try_start_41 .. :try_end_12c} :catchall_3e

    goto/16 :goto_37
.end method

.method public setAppVisibility(Landroid/os/IBinder;Z)V
    .registers 12
    .parameter "token"
    .parameter "visible"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2757
    const-string v0, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "setAppVisibility()"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 2759
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2764
    :cond_14
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v8

    .line 2765
    :try_start_17
    invoke-virtual {p0, p1}, Lcom/android/server/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/WindowManagerService$AppWindowToken;

    move-result-object v1

    .line 2766
    .local v1, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-nez v1, :cond_37

    .line 2767
    const-string v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to set visibility of non-existing app token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2768
    monitor-exit v8

    .line 2822
    :goto_36
    return-void

    .line 2782
    :cond_37
    iget-boolean v0, p0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    if-nez v0, :cond_81

    iget v0, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    if-eqz v0, :cond_81

    .line 2784
    iget-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->hiddenRequested:Z

    if-eq v0, p2, :cond_48

    .line 2785
    monitor-exit v8

    goto :goto_36

    .line 2821
    .end local v1           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :catchall_45
    move-exception v0

    monitor-exit v8
    :try_end_47
    .catchall {:try_start_17 .. :try_end_47} :catchall_45

    throw v0

    .line 2787
    .restart local v1       #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_48
    if-nez p2, :cond_79

    move v0, v4

    :goto_4b
    :try_start_4b
    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->hiddenRequested:Z

    .line 2791
    invoke-virtual {v1}, Lcom/android/server/WindowManagerService$AppWindowToken;->setDummyAnimation()V

    .line 2792
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2793
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2794
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->inPendingTransaction:Z

    .line 2795
    if-eqz p2, :cond_7b

    .line 2796
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2797
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->allDrawn:Z

    .line 2798
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->startingDisplayed:Z

    .line 2799
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->startingMoved:Z

    .line 2801
    iget-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->clientHidden:Z

    if-eqz v0, :cond_77

    .line 2808
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->clientHidden:Z

    .line 2809
    invoke-virtual {v1}, Lcom/android/server/WindowManagerService$AppWindowToken;->sendAppVisibilityToClients()V

    .line 2814
    :cond_77
    :goto_77
    monitor-exit v8

    goto :goto_36

    :cond_79
    move v0, v3

    .line 2787
    goto :goto_4b

    .line 2812
    :cond_7b
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_77

    .line 2817
    :cond_81
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 2818
    .local v6, origId:J
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/WindowManagerService;->setTokenVisibilityLocked(Lcom/android/server/WindowManagerService$AppWindowToken;Landroid/view/WindowManager$LayoutParams;ZIZ)Z

    .line 2819
    invoke-virtual {v1}, Lcom/android/server/WindowManagerService$AppWindowToken;->updateReportedVisibilityLocked()V

    .line 2820
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2821
    monitor-exit v8
    :try_end_94
    .catchall {:try_start_4b .. :try_end_94} :catchall_45

    goto :goto_36
.end method

.method public setAppWillBeHidden(Landroid/os/IBinder;)V
    .registers 7
    .parameter "token"

    .prologue
    .line 2646
    const-string v1, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "setAppWillBeHidden()"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 2648
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2653
    :cond_12
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 2654
    :try_start_15
    invoke-virtual {p0, p1}, Lcom/android/server/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/WindowManagerService$AppWindowToken;

    move-result-object v0

    .line 2655
    .local v0, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-nez v0, :cond_35

    .line 2656
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to set will be hidden of non-existing app token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2657
    monitor-exit v1

    .line 2661
    :goto_34
    return-void

    .line 2659
    :cond_35
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->willBeHidden:Z

    .line 2660
    monitor-exit v1

    goto :goto_34

    .end local v0           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :catchall_3a
    move-exception v2

    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_15 .. :try_end_3c} :catchall_3a

    throw v2
.end method

.method public setEventDispatching(Z)V
    .registers 4
    .parameter "enabled"

    .prologue
    .line 4650
    const-string v0, "android.permission.MANAGE_APP_TOKENS"

    const-string v1, "resumeKeyDispatching()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 4652
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4655
    :cond_12
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 4656
    :try_start_15
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    invoke-virtual {v1, p1}, Lcom/android/server/WindowManagerService$KeyWaiter;->setEventDispatchingLocked(Z)V

    .line 4657
    monitor-exit v0

    .line 4658
    return-void

    .line 4657
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public setFocusedApp(Landroid/os/IBinder;Z)V
    .registers 11
    .parameter "token"
    .parameter "moveFocusNow"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2413
    const-string v4, "android.permission.MANAGE_APP_TOKENS"

    const-string v5, "setFocusedApp()"

    invoke-virtual {p0, v4, v5}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_14

    .line 2415
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2418
    :cond_14
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 2419
    const/4 v0, 0x0

    .line 2420
    .local v0, changed:Z
    if-nez p1, :cond_3a

    .line 2422
    :try_start_1a
    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mFocusedApp:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v5, :cond_38

    move v0, v7

    .line 2423
    :goto_1f
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/WindowManagerService;->mFocusedApp:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 2424
    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    invoke-virtual {v5}, Lcom/android/server/WindowManagerService$KeyWaiter;->tickle()V

    .line 2437
    :goto_27
    if-eqz p2, :cond_36

    if-eqz v0, :cond_36

    .line 2438
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2439
    .local v2, origId:J
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/android/server/WindowManagerService;->updateFocusedWindowLocked(I)Z

    .line 2440
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2442
    .end local v2           #origId:J
    :cond_36
    monitor-exit v4

    .line 2443
    :goto_37
    return-void

    :cond_38
    move v0, v6

    .line 2422
    goto :goto_1f

    .line 2426
    :cond_3a
    invoke-virtual {p0, p1}, Lcom/android/server/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/WindowManagerService$AppWindowToken;

    move-result-object v1

    .line 2427
    .local v1, newFocus:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-nez v1, :cond_5d

    .line 2428
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Attempted to set focus to non-existing app token: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2429
    monitor-exit v4

    goto :goto_37

    .line 2442
    .end local v1           #newFocus:Lcom/android/server/WindowManagerService$AppWindowToken;
    :catchall_5a
    move-exception v5

    monitor-exit v4
    :try_end_5c
    .catchall {:try_start_1a .. :try_end_5c} :catchall_5a

    throw v5

    .line 2431
    .restart local v1       #newFocus:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_5d
    :try_start_5d
    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mFocusedApp:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eq v5, v1, :cond_6a

    move v0, v7

    .line 2432
    :goto_62
    iput-object v1, p0, Lcom/android/server/WindowManagerService;->mFocusedApp:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 2434
    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    invoke-virtual {v5}, Lcom/android/server/WindowManagerService$KeyWaiter;->tickle()V
    :try_end_69
    .catchall {:try_start_5d .. :try_end_69} :catchall_5a

    goto :goto_27

    :cond_6a
    move v0, v6

    .line 2431
    goto :goto_62
.end method

.method public setInTouchMode(Z)V
    .registers 4
    .parameter "mode"

    .prologue
    .line 3465
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 3466
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/WindowManagerService;->mInTouchMode:Z

    .line 3467
    monitor-exit v0

    .line 3468
    return-void

    .line 3467
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method setInputMethodAnimLayerAdjustment(I)V
    .registers 7
    .parameter "adj"

    .prologue
    .line 1053
    iput p1, p0, Lcom/android/server/WindowManagerService;->mInputMethodAnimLayerAdjustment:I

    .line 1054
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mInputMethodWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 1055
    .local v2, imw:Lcom/android/server/WindowManagerService$WindowState;
    if-eqz v2, :cond_23

    .line 1056
    iget v4, v2, Lcom/android/server/WindowManagerService$WindowState;->mLayer:I

    add-int/2addr v4, p1

    iput v4, v2, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    .line 1059
    iget-object v4, v2, Lcom/android/server/WindowManagerService$WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1060
    .local v3, wi:I
    :goto_11
    if-lez v3, :cond_23

    .line 1061
    add-int/lit8 v3, v3, -0x1

    .line 1062
    iget-object v4, v2, Lcom/android/server/WindowManagerService$WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/WindowManagerService$WindowState;

    .line 1063
    .local v0, cw:Lcom/android/server/WindowManagerService$WindowState;
    iget v4, v0, Lcom/android/server/WindowManagerService$WindowState;->mLayer:I

    add-int/2addr v4, p1

    iput v4, v0, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    goto :goto_11

    .line 1068
    .end local v0           #cw:Lcom/android/server/WindowManagerService$WindowState;
    .end local v3           #wi:I
    :cond_23
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1069
    .local v1, di:I
    :goto_29
    if-lez v1, :cond_3b

    .line 1070
    add-int/lit8 v1, v1, -0x1

    .line 1071
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #imw:Lcom/android/server/WindowManagerService$WindowState;
    check-cast v2, Lcom/android/server/WindowManagerService$WindowState;

    .line 1072
    .restart local v2       #imw:Lcom/android/server/WindowManagerService$WindowState;
    iget v4, v2, Lcom/android/server/WindowManagerService$WindowState;->mLayer:I

    add-int/2addr v4, p1

    iput v4, v2, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    goto :goto_29

    .line 1076
    :cond_3b
    return-void
.end method

.method setInsetsWindow(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 11
    .parameter "session"
    .parameter "client"
    .parameter "touchableInsets"
    .parameter "contentInsets"
    .parameter "visibleInsets"

    .prologue
    .line 1627
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1629
    .local v0, origId:J
    :try_start_4
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_2a

    .line 1630
    :try_start_7
    invoke-virtual {p0, p1, p2}, Lcom/android/server/WindowManagerService;->windowForClientLocked(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;)Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v2

    .line 1631
    .local v2, w:Lcom/android/server/WindowManagerService$WindowState;
    if-eqz v2, :cond_22

    .line 1632
    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/android/server/WindowManagerService$WindowState;->mGivenInsetsPending:Z

    .line 1633
    iget-object v4, v2, Lcom/android/server/WindowManagerService$WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1634
    iget-object v4, v2, Lcom/android/server/WindowManagerService$WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, p5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1635
    iput p3, v2, Lcom/android/server/WindowManagerService$WindowState;->mTouchableInsets:I

    .line 1636
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 1637
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 1639
    :cond_22
    monitor-exit v3
    :try_end_23
    .catchall {:try_start_7 .. :try_end_23} :catchall_27

    .line 1641
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1643
    return-void

    .line 1639
    .end local v2           #w:Lcom/android/server/WindowManagerService$WindowState;
    :catchall_27
    move-exception v4

    :try_start_28
    monitor-exit v3
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    :try_start_29
    throw v4
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_2a

    .line 1641
    :catchall_2a
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setKeyBlocking(Z)V
    .registers 2
    .parameter "mlock"

    .prologue
    .line 9770
    iput-boolean p1, p0, Lcom/android/server/WindowManagerService;->mKeyBlocking:Z

    .line 9771
    return-void
.end method

.method public setLockScreen(Z)V
    .registers 2
    .parameter "mlock"

    .prologue
    .line 9766
    iput-boolean p1, p0, Lcom/android/server/WindowManagerService;->mLockScreenIsOn:Z

    .line 9767
    return-void
.end method

.method public setPreventFreezeTimeout(Z)V
    .registers 5
    .parameter "set"

    .prologue
    .line 9869
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreventFreezeTimeout set = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9870
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/WindowManagerService;->allowFreeze:Z

    .line 9872
    if-eqz p1, :cond_20

    .line 9873
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/WindowManagerService;->allowFreeze:Z

    .line 9874
    :cond_20
    return-void
.end method

.method public setRotation(IZI)V
    .registers 6
    .parameter "rotation"
    .parameter "alwaysSendConfiguration"
    .parameter "animFlags"

    .prologue
    .line 3472
    const-string v0, "android.permission.SET_ORIENTATION"

    const-string v1, "setRotation()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 3474
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_ORIENTATION permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3478
    :cond_12
    iput-boolean p2, p0, Lcom/android/server/WindowManagerService;->lastAlwaysSend:Z

    .line 3480
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/WindowManagerService;->setRotationUnchecked(IZI)V

    .line 3481
    return-void
.end method

.method public setRotationUnchecked(IZI)V
    .registers 9
    .parameter "rotation"
    .parameter "alwaysSendConfiguration"
    .parameter "animFlags"

    .prologue
    .line 3488
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3490
    .local v1, origId:J
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 3491
    :try_start_7
    invoke-virtual {p0, p1, p3}, Lcom/android/server/WindowManagerService;->setRotationUncheckedLocked(II)Z

    move-result v0

    .line 3496
    .local v0, changed:Z
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_1f

    .line 3498
    if-eqz v0, :cond_25

    .line 3499
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService;->sendNewConfiguration()V

    .line 3500
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 3501
    const/4 v4, 0x1

    :try_start_15
    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 3502
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 3503
    monitor-exit v3
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_22

    .line 3509
    :cond_1b
    :goto_1b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3510
    return-void

    .line 3496
    .end local v0           #changed:Z
    :catchall_1f
    move-exception v4

    :try_start_20
    monitor-exit v3
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v4

    .line 3503
    .restart local v0       #changed:Z
    :catchall_22
    move-exception v4

    :try_start_23
    monitor-exit v3
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v4

    .line 3504
    :cond_25
    if-eqz p2, :cond_1b

    .line 3506
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService;->sendNewConfiguration()V

    goto :goto_1b
.end method

.method public setRotationUncheckedLocked(II)Z
    .registers 16
    .parameter "rotation"
    .parameter "animFlags"

    .prologue
    const/16 v12, 0xd

    const-wide/16 v10, 0x7d0

    const/16 v9, 0xb

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3514
    const/16 v3, -0x3e8

    if-ne p1, v3, :cond_110

    .line 3515
    iget p1, p0, Lcom/android/server/WindowManagerService;->mRequestedRotation:I

    .line 3521
    :goto_e
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget v4, p0, Lcom/android/server/WindowManagerService;->mForcedAppOrientation:I

    iget v5, p0, Lcom/android/server/WindowManagerService;->mRotation:I

    iget-boolean v6, p0, Lcom/android/server/WindowManagerService;->mDisplayEnabled:Z

    invoke-interface {v3, v4, v5, v6}, Landroid/view/WindowManagerPolicy;->rotationForOrientationLw(IIZ)I

    move-result p1

    .line 3524
    iget-boolean v3, p0, Lcom/android/server/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v3, :cond_116

    iget v3, p0, Lcom/android/server/WindowManagerService;->mRotation:I

    if-eq v3, p1, :cond_116

    move v0, v8

    .line 3535
    .local v0, changed:Z
    :goto_23
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService;->getStateorientationChangeComplete()Z

    move-result v3

    if-nez v3, :cond_a2

    .line 3540
    if-eqz v0, :cond_a1

    .line 3544
    sget-boolean v3, Lcom/android/server/WindowManagerService;->WINDOW_FREEZE_TIMEOUT_SENT:Z

    if-eqz v3, :cond_48

    .line 3546
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    invoke-virtual {v3, v9}, Lcom/android/server/WindowManagerService$H;->removeMessages(I)V

    .line 3547
    sput-boolean v7, Lcom/android/server/WindowManagerService;->WINDOW_FREEZE_TIMEOUT_SENT:Z

    .line 3548
    sget-boolean v3, Lcom/android/server/WindowManagerService;->allowFreeze:Z

    if-eqz v3, :cond_48

    .line 3549
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    invoke-virtual {v4, v9}, Lcom/android/server/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4, v10, v11}, Lcom/android/server/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v3

    sput-boolean v3, Lcom/android/server/WindowManagerService;->WINDOW_FREEZE_TIMEOUT_SENT:Z

    .line 3553
    :cond_48
    sget-boolean v3, Lcom/android/server/WindowManagerService;->FORCE_GC_SENT:Z

    if-eqz v3, :cond_67

    .line 3555
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    const/16 v4, 0xf

    invoke-virtual {v3, v4}, Lcom/android/server/WindowManagerService$H;->removeMessages(I)V

    .line 3556
    sget-boolean v3, Lcom/android/server/WindowManagerService;->allowFreeze:Z

    if-eqz v3, :cond_67

    .line 3557
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    const/16 v5, 0xf

    invoke-virtual {v4, v5}, Lcom/android/server/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4, v10, v11}, Lcom/android/server/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v3

    sput-boolean v3, Lcom/android/server/WindowManagerService;->FORCE_GC_SENT:Z

    .line 3560
    :cond_67
    sget-boolean v3, Lcom/android/server/WindowManagerService;->APP_TRANSITION_TIMEOUT_SENT:Z

    if-eqz v3, :cond_84

    .line 3562
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    invoke-virtual {v3, v12}, Lcom/android/server/WindowManagerService$H;->removeMessages(I)V

    .line 3563
    sget-boolean v3, Lcom/android/server/WindowManagerService;->allowFreeze:Z

    if-eqz v3, :cond_84

    .line 3564
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    invoke-virtual {v4, v12}, Lcom/android/server/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x1388

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v3

    sput-boolean v3, Lcom/android/server/WindowManagerService;->APP_TRANSITION_TIMEOUT_SENT:Z

    .line 3567
    :cond_84
    sget-boolean v3, Lcom/android/server/WindowManagerService;->ORIENTATION_CHECK_GURAD_SENT:Z

    if-eqz v3, :cond_a1

    .line 3569
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    const/16 v4, 0x14

    invoke-virtual {v3, v4}, Lcom/android/server/WindowManagerService$H;->removeMessages(I)V

    .line 3573
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    const/16 v5, 0x14

    invoke-virtual {v4, v5}, Lcom/android/server/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x157c

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v3

    sput-boolean v3, Lcom/android/server/WindowManagerService;->ORIENTATION_CHECK_GURAD_SENT:Z

    .line 3585
    :cond_a1
    const/4 v0, 0x0

    .line 3591
    :cond_a2
    if-eqz v0, :cond_131

    .line 3597
    iput p1, p0, Lcom/android/server/WindowManagerService;->mRotation:I

    .line 3598
    iput-boolean v8, p0, Lcom/android/server/WindowManagerService;->mWindowsFreezingScreen:Z

    .line 3599
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    invoke-virtual {v3, v9}, Lcom/android/server/WindowManagerService$H;->removeMessages(I)V

    .line 3603
    sput-boolean v7, Lcom/android/server/WindowManagerService;->WINDOW_FREEZE_TIMEOUT_SENT:Z

    .line 3606
    sget-boolean v3, Lcom/android/server/WindowManagerService;->allowFreeze:Z

    if-eqz v3, :cond_c1

    .line 3607
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    invoke-virtual {v4, v9}, Lcom/android/server/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4, v10, v11}, Lcom/android/server/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v3

    sput-boolean v3, Lcom/android/server/WindowManagerService;->WINDOW_FREEZE_TIMEOUT_SENT:Z

    .line 3611
    :cond_c1
    invoke-virtual {p0, v7}, Lcom/android/server/WindowManagerService;->setStateorientationChangeComplete(Z)V

    .line 3613
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->startFreezingDisplayLocked()V

    .line 3614
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting rotation to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", animFlags="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3615
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mQueue:Lcom/android/server/WindowManagerService$KeyQ;

    invoke-virtual {v3, p1}, Lcom/android/server/WindowManagerService$KeyQ;->setOrientation(I)V

    .line 3616
    iget-boolean v3, p0, Lcom/android/server/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v3, :cond_f5

    .line 3617
    invoke-static {v7, p1, p2}, Landroid/view/Surface;->setOrientation(III)V

    .line 3619
    :cond_f5
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int v1, v3, v8

    .local v1, i:I
    :goto_fd
    if-ltz v1, :cond_119

    .line 3620
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/WindowManagerService$WindowState;

    .line 3621
    .local v2, w:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v3, v2, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v3, :cond_10d

    .line 3622
    iput-boolean v8, v2, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    .line 3619
    :cond_10d
    add-int/lit8 v1, v1, -0x1

    goto :goto_fd

    .line 3517
    .end local v0           #changed:Z
    .end local v1           #i:I
    .end local v2           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_110
    iput p1, p0, Lcom/android/server/WindowManagerService;->mRequestedRotation:I

    .line 3518
    iput p2, p0, Lcom/android/server/WindowManagerService;->mLastRotationFlags:I

    goto/16 :goto_e

    :cond_116
    move v0, v7

    .line 3524
    goto/16 :goto_23

    .line 3625
    .restart local v0       #changed:Z
    .restart local v1       #i:I
    :cond_119
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int v1, v3, v8

    :goto_121
    if-ltz v1, :cond_131

    .line 3627
    :try_start_123
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/IRotationWatcher;

    invoke-interface {v3, p1}, Landroid/view/IRotationWatcher;->onRotationChanged(I)V
    :try_end_12e
    .catch Landroid/os/RemoteException; {:try_start_123 .. :try_end_12e} :catch_132

    .line 3625
    :goto_12e
    add-int/lit8 v1, v1, -0x1

    goto :goto_121

    .line 3633
    .end local v1           #i:I
    :cond_131
    return v0

    .line 3628
    .restart local v1       #i:I
    :catch_132
    move-exception v3

    goto :goto_12e
.end method

.method public setStateorientationChangeComplete(Z)V
    .registers 2
    .parameter "set"

    .prologue
    .line 9863
    return-void
.end method

.method setTokenVisibilityLocked(Lcom/android/server/WindowManagerService$AppWindowToken;Landroid/view/WindowManager$LayoutParams;ZIZ)Z
    .registers 23
    .parameter "wtoken"
    .parameter "lp"
    .parameter "visible"
    .parameter "transit"
    .parameter "performLayout"

    .prologue
    .line 2665
    const/4 v7, 0x0

    .line 2667
    .local v7, delayed:Z
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->clientHidden:Z

    move v12, v0

    move v0, v12

    move/from16 v1, p3

    if-ne v0, v1, :cond_16

    .line 2668
    if-nez p3, :cond_71

    const/4 v12, 0x1

    :goto_e
    move v0, v12

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->clientHidden:Z

    .line 2669
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/WindowManagerService$AppWindowToken;->sendAppVisibilityToClients()V

    .line 2672
    :cond_16
    const/4 v12, 0x0

    move v0, v12

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->willBeHidden:Z

    .line 2673
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->hidden:Z

    move v12, v0

    move v0, v12

    move/from16 v1, p3

    if-ne v0, v1, :cond_e1

    .line 2674
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    move-object v12, v0

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 2675
    .local v5, N:I
    const/4 v6, 0x0

    .line 2680
    .local v6, changed:Z
    const/4 v9, 0x0

    .line 2682
    .local v9, runningAppAnimation:Z
    if-eqz p4, :cond_59

    .line 2683
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    move-object v12, v0

    sget-object v13, Lcom/android/server/WindowManagerService;->sDummyAnimation:Landroid/view/animation/Animation;

    if-ne v12, v13, :cond_42

    .line 2684
    const/4 v12, 0x0

    move-object v0, v12

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    .line 2686
    :cond_42
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    move/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/WindowManagerService;->applyAnimationLocked(Lcom/android/server/WindowManagerService$AppWindowToken;Landroid/view/WindowManager$LayoutParams;IZ)Z

    .line 2687
    const/4 v6, 0x1

    .line 2688
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    move-object v12, v0

    if-eqz v12, :cond_59

    .line 2689
    const/4 v9, 0x1

    move v7, v9

    .line 2693
    :cond_59
    const/4 v8, 0x0

    .local v8, i:I
    :goto_5a
    if-ge v8, v5, :cond_b3

    .line 2694
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    move-object v12, v0

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/WindowManagerService$WindowState;

    .line 2695
    .local v11, win:Lcom/android/server/WindowManagerService$WindowState;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingWindow:Lcom/android/server/WindowManagerService$WindowState;

    move-object v12, v0

    if-ne v11, v12, :cond_73

    .line 2693
    :cond_6e
    :goto_6e
    add-int/lit8 v8, v8, 0x1

    goto :goto_5a

    .line 2668
    .end local v5           #N:I
    .end local v6           #changed:Z
    .end local v8           #i:I
    .end local v9           #runningAppAnimation:Z
    .end local v11           #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_71
    const/4 v12, 0x0

    goto :goto_e

    .line 2699
    .restart local v5       #N:I
    .restart local v6       #changed:Z
    .restart local v8       #i:I
    .restart local v9       #runningAppAnimation:Z
    .restart local v11       #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_73
    invoke-virtual {v11}, Lcom/android/server/WindowManagerService$WindowState;->isAnimating()Z

    move-result v12

    if-eqz v12, :cond_7a

    .line 2700
    const/4 v7, 0x1

    .line 2705
    :cond_7a
    if-eqz p3, :cond_90

    .line 2706
    invoke-virtual {v11}, Lcom/android/server/WindowManagerService$WindowState;->isVisibleNow()Z

    move-result v12

    if-nez v12, :cond_6e

    .line 2707
    if-nez v9, :cond_8e

    .line 2708
    const/4 v12, 0x1

    const/4 v13, 0x1

    move-object/from16 v0, p0

    move-object v1, v11

    move v2, v12

    move v3, v13

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/WindowManagerService;->applyAnimationLocked(Lcom/android/server/WindowManagerService$WindowState;IZ)Z

    .line 2711
    :cond_8e
    const/4 v6, 0x1

    goto :goto_6e

    .line 2713
    :cond_90
    invoke-virtual {v11}, Lcom/android/server/WindowManagerService$WindowState;->isVisibleNow()Z

    move-result v12

    if-eqz v12, :cond_6e

    .line 2714
    if-nez v9, :cond_a2

    .line 2715
    const/4 v12, 0x2

    const/4 v13, 0x0

    move-object/from16 v0, p0

    move-object v1, v11

    move v2, v12

    move v3, v13

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/WindowManagerService;->applyAnimationLocked(Lcom/android/server/WindowManagerService$WindowState;IZ)Z

    .line 2718
    :cond_a2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    move-object v12, v0

    iget-object v13, v11, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    iget-object v14, v11, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Lcom/android/server/WindowManagerService$KeyWaiter;->finishedKey(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;ZI)Landroid/view/MotionEvent;

    .line 2720
    const/4 v6, 0x1

    goto :goto_6e

    .line 2724
    .end local v11           #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_b3
    if-nez p3, :cond_ea

    const/4 v12, 0x1

    :goto_b6
    move v0, v12

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->hiddenRequested:Z

    move v0, v12

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->hidden:Z

    .line 2725
    if-nez p3, :cond_ec

    .line 2726
    const/4 v12, 0x1

    const/4 v13, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move v3, v13

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/WindowManagerService;->unsetAppFreezingScreenLocked(Lcom/android/server/WindowManagerService$AppWindowToken;ZZ)V

    .line 2742
    :cond_cd
    :goto_cd
    if-eqz v6, :cond_e1

    if-eqz p5, :cond_e1

    .line 2743
    const/4 v12, 0x1

    move v0, v12

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 2744
    const/4 v12, 0x3

    move-object/from16 v0, p0

    move v1, v12

    invoke-direct {v0, v1}, Lcom/android/server/WindowManagerService;->updateFocusedWindowLocked(I)Z

    .line 2745
    invoke-direct/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 2749
    .end local v5           #N:I
    .end local v6           #changed:Z
    .end local v8           #i:I
    .end local v9           #runningAppAnimation:Z
    :cond_e1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    move-object v12, v0

    if-eqz v12, :cond_e9

    .line 2750
    const/4 v7, 0x1

    .line 2753
    :cond_e9
    return v7

    .line 2724
    .restart local v5       #N:I
    .restart local v6       #changed:Z
    .restart local v8       #i:I
    .restart local v9       #runningAppAnimation:Z
    :cond_ea
    const/4 v12, 0x0

    goto :goto_b6

    .line 2730
    :cond_ec
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingWindow:Lcom/android/server/WindowManagerService$WindowState;

    move-object v10, v0

    .line 2731
    .local v10, swin:Lcom/android/server/WindowManagerService$WindowState;
    if-eqz v10, :cond_cd

    iget-boolean v12, v10, Lcom/android/server/WindowManagerService$WindowState;->mDrawPending:Z

    if-nez v12, :cond_fb

    iget-boolean v12, v10, Lcom/android/server/WindowManagerService$WindowState;->mCommitDrawPending:Z

    if-eqz v12, :cond_cd

    .line 2733
    :cond_fb
    const/4 v12, 0x0

    iput-boolean v12, v10, Lcom/android/server/WindowManagerService$WindowState;->mPolicyVisibility:Z

    .line 2734
    const/4 v12, 0x0

    iput-boolean v12, v10, Lcom/android/server/WindowManagerService$WindowState;->mPolicyVisibilityAfterAnim:Z

    goto :goto_cd
.end method

.method public setTouchBlocking(Z)V
    .registers 5
    .parameter "mlock"

    .prologue
    .line 4095
    iput-boolean p1, p0, Lcom/android/server/WindowManagerService;->mTouchBlocking:Z

    .line 4096
    const-string v0, "nodebug"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WindowManagerService>setTouchBlocking "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/WindowManagerService;->mTouchBlocking:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4097
    return-void
.end method

.method public setVibrationFeedback(Z)V
    .registers 2
    .parameter "mfeedback"

    .prologue
    .line 9775
    iput-boolean p1, p0, Lcom/android/server/WindowManagerService;->mVibrationFeedback:Z

    .line 9776
    return-void
.end method

.method showSurfaceRobustlyLocked(Lcom/android/server/WindowManagerService$WindowState;)Z
    .registers 6
    .parameter "win"

    .prologue
    .line 9286
    :try_start_0
    iget-object v1, p1, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v1, :cond_9

    .line 9287
    iget-object v1, p1, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->show()V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_9} :catch_b

    .line 9289
    :cond_9
    const/4 v1, 0x1

    .line 9296
    :goto_a
    return v1

    .line 9290
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 9291
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure showing surface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9294
    const-string v1, "show"

    invoke-virtual {p0, p1, v1}, Lcom/android/server/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/WindowManagerService$WindowState;Ljava/lang/String;)V

    .line 9296
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public startAppFreezingScreen(Landroid/os/IBinder;I)V
    .registers 10
    .parameter "token"
    .parameter "configChanges"

    .prologue
    .line 2894
    const-string v3, "android.permission.MANAGE_APP_TOKENS"

    const-string v4, "setAppFreezingScreen()"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 2896
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2899
    :cond_12
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 2900
    if-nez p2, :cond_1d

    :try_start_17
    iget-boolean v4, p0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    if-nez v4, :cond_1d

    .line 2902
    monitor-exit v3

    .line 2914
    :goto_1c
    return-void

    .line 2905
    :cond_1d
    invoke-virtual {p0, p1}, Lcom/android/server/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/WindowManagerService$AppWindowToken;

    move-result-object v2

    .line 2906
    .local v2, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-eqz v2, :cond_27

    iget-object v4, v2, Lcom/android/server/WindowManagerService$AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    if-nez v4, :cond_44

    .line 2907
    :cond_27
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempted to freeze screen with non-existing app token: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2908
    monitor-exit v3

    goto :goto_1c

    .line 2913
    .end local v2           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :catchall_41
    move-exception v4

    monitor-exit v3
    :try_end_43
    .catchall {:try_start_17 .. :try_end_43} :catchall_41

    throw v4

    .line 2910
    .restart local v2       #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_44
    :try_start_44
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2911
    .local v0, origId:J
    invoke-virtual {p0, v2, p2}, Lcom/android/server/WindowManagerService;->startAppFreezingScreenLocked(Lcom/android/server/WindowManagerService$AppWindowToken;I)V

    .line 2912
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2913
    monitor-exit v3
    :try_end_4f
    .catchall {:try_start_44 .. :try_end_4f} :catchall_41

    goto :goto_1c
.end method

.method public startAppFreezingScreenLocked(Lcom/android/server/WindowManagerService$AppWindowToken;I)V
    .registers 11
    .parameter "wtoken"
    .parameter "configChanges"

    .prologue
    const/16 v5, 0x11

    const/4 v7, 0x1

    .line 2867
    iget-boolean v3, p1, Lcom/android/server/WindowManagerService$AppWindowToken;->hiddenRequested:Z

    if-nez v3, :cond_46

    .line 2868
    iget-boolean v3, p1, Lcom/android/server/WindowManagerService$AppWindowToken;->freezingScreen:Z

    if-nez v3, :cond_30

    .line 2869
    iput-boolean v7, p1, Lcom/android/server/WindowManagerService$AppWindowToken;->freezingScreen:Z

    .line 2870
    iget v3, p0, Lcom/android/server/WindowManagerService;->mAppsFreezingScreen:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/WindowManagerService;->mAppsFreezingScreen:I

    .line 2871
    iget v3, p0, Lcom/android/server/WindowManagerService;->mAppsFreezingScreen:I

    if-ne v3, v7, :cond_30

    .line 2872
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->startFreezingDisplayLocked()V

    .line 2873
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    invoke-virtual {v3, v5}, Lcom/android/server/WindowManagerService$H;->removeMessages(I)V

    .line 2879
    sget-boolean v3, Lcom/android/server/WindowManagerService;->allowFreeze:Z

    if-eqz v3, :cond_30

    .line 2880
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    invoke-virtual {v4, v5}, Lcom/android/server/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x1388

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2885
    :cond_30
    iget-object v3, p1, Lcom/android/server/WindowManagerService$AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2886
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_37
    if-ge v1, v0, :cond_46

    .line 2887
    iget-object v3, p1, Lcom/android/server/WindowManagerService$AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/WindowManagerService$WindowState;

    .line 2888
    .local v2, w:Lcom/android/server/WindowManagerService$WindowState;
    iput-boolean v7, v2, Lcom/android/server/WindowManagerService$WindowState;->mAppFreezing:Z

    .line 2886
    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    .line 2891
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_46
    return-void
.end method

.method public startViewServer(I)Z
    .registers 8
    .parameter "port"

    .prologue
    const/4 v3, 0x0

    const-string v5, "WindowManager"

    const-string v4, "View server did not start"

    .line 3681
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->isSystemSecure()Z

    move-result v1

    if-eqz v1, :cond_d

    move v1, v3

    .line 3710
    :goto_c
    return v1

    .line 3685
    :cond_d
    const-string v1, "android.permission.DUMP"

    const-string v2, "startViewServer"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_19

    move v1, v3

    .line 3686
    goto :goto_c

    .line 3689
    :cond_19
    const/16 v1, 0x400

    if-ge p1, v1, :cond_1f

    move v1, v3

    .line 3690
    goto :goto_c

    .line 3693
    :cond_1f
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mViewServer:Lcom/android/server/ViewServer;

    if-eqz v1, :cond_3d

    .line 3694
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mViewServer:Lcom/android/server/ViewServer;

    invoke-virtual {v1}, Lcom/android/server/ViewServer;->isRunning()Z

    move-result v1

    if-nez v1, :cond_3b

    .line 3696
    :try_start_2b
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mViewServer:Lcom/android/server/ViewServer;

    invoke-virtual {v1}, Lcom/android/server/ViewServer;->start()Z
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_30} :catch_32

    move-result v1

    goto :goto_c

    .line 3697
    :catch_32
    move-exception v1

    move-object v0, v1

    .line 3698
    .local v0, e:Ljava/io/IOException;
    const-string v1, "WindowManager"

    const-string v1, "View server did not start"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #e:Ljava/io/IOException;
    :cond_3b
    move v1, v3

    .line 3701
    goto :goto_c

    .line 3705
    :cond_3d
    :try_start_3d
    new-instance v1, Lcom/android/server/ViewServer;

    invoke-direct {v1, p0, p1}, Lcom/android/server/ViewServer;-><init>(Lcom/android/server/WindowManagerService;I)V

    iput-object v1, p0, Lcom/android/server/WindowManagerService;->mViewServer:Lcom/android/server/ViewServer;

    .line 3706
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mViewServer:Lcom/android/server/ViewServer;

    invoke-virtual {v1}, Lcom/android/server/ViewServer;->start()Z
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_49} :catch_4b

    move-result v1

    goto :goto_c

    .line 3707
    :catch_4b
    move-exception v1

    move-object v0, v1

    .line 3708
    .restart local v0       #e:Ljava/io/IOException;
    const-string v1, "WindowManager"

    const-string v1, "View server did not start"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 3710
    goto :goto_c
.end method

.method public stopAppFreezingScreen(Landroid/os/IBinder;Z)V
    .registers 8
    .parameter "token"
    .parameter "force"

    .prologue
    .line 2917
    const-string v3, "android.permission.MANAGE_APP_TOKENS"

    const-string v4, "setAppFreezingScreen()"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 2919
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2922
    :cond_12
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 2923
    :try_start_15
    invoke-virtual {p0, p1}, Lcom/android/server/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/WindowManagerService$AppWindowToken;

    move-result-object v2

    .line 2924
    .local v2, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-eqz v2, :cond_1f

    iget-object v4, v2, Lcom/android/server/WindowManagerService$AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    if-nez v4, :cond_21

    .line 2925
    :cond_1f
    monitor-exit v3

    .line 2933
    :goto_20
    return-void

    .line 2927
    :cond_21
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2930
    .local v0, origId:J
    const/4 v4, 0x1

    invoke-virtual {p0, v2, v4, p2}, Lcom/android/server/WindowManagerService;->unsetAppFreezingScreenLocked(Lcom/android/server/WindowManagerService$AppWindowToken;ZZ)V

    .line 2931
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2932
    monitor-exit v3

    goto :goto_20

    .end local v0           #origId:J
    .end local v2           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :catchall_2e
    move-exception v4

    monitor-exit v3
    :try_end_30
    .catchall {:try_start_15 .. :try_end_30} :catchall_2e

    throw v4
.end method

.method public stopViewServer()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 3727
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->isSystemSecure()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v2

    .line 3738
    :goto_8
    return v0

    .line 3731
    :cond_9
    const-string v0, "android.permission.DUMP"

    const-string v1, "stopViewServer"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    move v0, v2

    .line 3732
    goto :goto_8

    .line 3735
    :cond_15
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mViewServer:Lcom/android/server/ViewServer;

    if-eqz v0, :cond_20

    .line 3736
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mViewServer:Lcom/android/server/ViewServer;

    invoke-virtual {v0}, Lcom/android/server/ViewServer;->stop()Z

    move-result v0

    goto :goto_8

    :cond_20
    move v0, v2

    .line 3738
    goto :goto_8
.end method

.method public systemReady()V
    .registers 2

    .prologue
    .line 5712
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->systemReady()V

    .line 5713
    return-void
.end method

.method unsetAppFreezingScreenLocked(Lcom/android/server/WindowManagerService$AppWindowToken;ZZ)V
    .registers 11
    .parameter "wtoken"
    .parameter "unfreezeSurfaceNow"
    .parameter "force"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2826
    iget-boolean v4, p1, Lcom/android/server/WindowManagerService$AppWindowToken;->freezingScreen:Z

    if-eqz v4, :cond_4b

    .line 2829
    iget-object v4, p1, Lcom/android/server/WindowManagerService$AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2830
    .local v0, N:I
    const/4 v2, 0x0

    .line 2831
    .local v2, unfrozeWindows:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_e
    if-ge v1, v0, :cond_2c

    .line 2832
    iget-object v4, p1, Lcom/android/server/WindowManagerService$AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/WindowManagerService$WindowState;

    .line 2833
    .local v3, w:Lcom/android/server/WindowManagerService$WindowState;
    iget-boolean v4, v3, Lcom/android/server/WindowManagerService$WindowState;->mAppFreezing:Z

    if-eqz v4, :cond_29

    .line 2834
    iput-boolean v6, v3, Lcom/android/server/WindowManagerService$WindowState;->mAppFreezing:Z

    .line 2835
    iget-object v4, v3, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v4, :cond_28

    iget-boolean v4, v3, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    if-nez v4, :cond_28

    .line 2836
    iput-boolean v5, v3, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    .line 2838
    :cond_28
    const/4 v2, 0x1

    .line 2831
    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 2841
    .end local v3           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_2c
    if-nez p3, :cond_30

    if-eqz v2, :cond_37

    .line 2843
    :cond_30
    iput-boolean v6, p1, Lcom/android/server/WindowManagerService$AppWindowToken;->freezingScreen:Z

    .line 2844
    iget v4, p0, Lcom/android/server/WindowManagerService;->mAppsFreezingScreen:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/android/server/WindowManagerService;->mAppsFreezingScreen:I

    .line 2846
    :cond_37
    if-eqz p2, :cond_4b

    .line 2847
    if-eqz v2, :cond_40

    .line 2848
    iput-boolean v5, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 2849
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 2851
    :cond_40
    iget v4, p0, Lcom/android/server/WindowManagerService;->mAppsFreezingScreen:I

    if-nez v4, :cond_4b

    iget-boolean v4, p0, Lcom/android/server/WindowManagerService;->mWindowsFreezingScreen:Z

    if-nez v4, :cond_4b

    .line 2852
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->stopFreezingDisplayLocked()V

    .line 2856
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #unfrozeWindows:Z
    :cond_4b
    return-void
.end method

.method public updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;
    .registers 8
    .parameter "currentConfig"
    .parameter "freezeThisOneIfNeeded"

    .prologue
    .line 2293
    const-string v3, "android.permission.MANAGE_APP_TOKENS"

    const-string v4, "updateOrientationFromAppTokens()"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 2295
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2299
    :cond_12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2300
    .local v1, ident:J
    invoke-virtual {p0, p1, p2}, Lcom/android/server/WindowManagerService;->updateOrientationFromAppTokensUnchecked(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;

    move-result-object v0

    .line 2302
    .local v0, config:Landroid/content/res/Configuration;
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2303
    return-object v0
.end method

.method updateOrientationFromAppTokensLocked(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;
    .registers 11
    .parameter "appConfig"
    .parameter "freezeThisOneIfNeeded"

    .prologue
    .line 2328
    const/4 v0, 0x0

    .line 2329
    .local v0, changed:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2331
    .local v1, ident:J
    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService;->computeForcedAppOrientationLocked()I

    move-result v3

    .line 2333
    .local v3, req:I
    iget v5, p0, Lcom/android/server/WindowManagerService;->mForcedAppOrientation:I

    if-eq v3, v5, :cond_15

    .line 2334
    const/4 v0, 0x1

    .line 2335
    iput v3, p0, Lcom/android/server/WindowManagerService;->mForcedAppOrientation:I

    .line 2338
    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v5, v3}, Landroid/view/WindowManagerPolicy;->setCurrentOrientationLw(I)V

    .line 2341
    :cond_15
    if-eqz v0, :cond_38

    .line 2342
    const/16 v5, -0x3e8

    iget v6, p0, Lcom/android/server/WindowManagerService;->mLastRotationFlags:I

    and-int/lit8 v6, v6, -0x2

    invoke-virtual {p0, v5, v6}, Lcom/android/server/WindowManagerService;->setRotationUncheckedLocked(II)Z

    move-result v0

    .line 2345
    if-eqz v0, :cond_38

    .line 2346
    if-eqz p2, :cond_30

    .line 2347
    invoke-virtual {p0, p2}, Lcom/android/server/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/WindowManagerService$AppWindowToken;

    move-result-object v4

    .line 2349
    .local v4, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-eqz v4, :cond_30

    .line 2350
    const/16 v5, 0x80

    invoke-virtual {p0, v4, v5}, Lcom/android/server/WindowManagerService;->startAppFreezingScreenLocked(Lcom/android/server/WindowManagerService$AppWindowToken;I)V

    .line 2354
    .end local v4           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_30
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService;->computeNewConfigurationLocked()Landroid/content/res/Configuration;
    :try_end_33
    .catchall {:try_start_5 .. :try_end_33} :catchall_71

    move-result-object v5

    .line 2370
    :goto_34
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2373
    :goto_37
    return-object v5

    .line 2360
    :cond_38
    if-eqz p1, :cond_76

    .line 2361
    :try_start_3a
    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v5}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 2362
    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, v5}, Lcom/android/server/WindowManagerService;->computeNewConfigurationLocked(Landroid/content/res/Configuration;)Z

    move-result v5

    if-eqz v5, :cond_76

    .line 2363
    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v5}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v5

    if-eqz v5, :cond_76

    .line 2364
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Config changed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2365
    new-instance v5, Landroid/content/res/Configuration;

    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v5, v6}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V
    :try_end_70
    .catchall {:try_start_3a .. :try_end_70} :catchall_71

    goto :goto_34

    .line 2370
    .end local v3           #req:I
    :catchall_71
    move-exception v5

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .restart local v3       #req:I
    :cond_76
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2373
    const/4 v5, 0x0

    goto :goto_37
.end method

.method updateOrientationFromAppTokensUnchecked(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;
    .registers 6
    .parameter "currentConfig"
    .parameter "freezeThisOneIfNeeded"

    .prologue
    .line 2309
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 2310
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/WindowManagerService;->updateOrientationFromAppTokensLocked(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;

    move-result-object v0

    .line 2311
    .local v0, config:Landroid/content/res/Configuration;
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_11

    .line 2312
    if-eqz v0, :cond_10

    .line 2313
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 2314
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 2316
    :cond_10
    return-object v0

    .line 2311
    .end local v0           #config:Landroid/content/res/Configuration;
    :catchall_11
    move-exception v2

    :try_start_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v2
.end method

.method public validateAppTokens(Ljava/util/List;)V
    .registers 9
    .parameter "tokens"

    .prologue
    const/4 v4, 0x1

    const-string v6, "WindowManager"

    const-string v5, " @ "

    .line 2038
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    sub-int v1, v3, v4

    .line 2039
    .local v1, v:I
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int v0, v3, v4

    .line 2040
    .local v0, m:I
    :goto_13
    if-ltz v1, :cond_6f

    if-ltz v0, :cond_6f

    .line 2041
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 2042
    .local v2, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    iget-boolean v3, v2, Lcom/android/server/WindowManagerService$AppWindowToken;->removed:Z

    if-eqz v3, :cond_26

    .line 2043
    add-int/lit8 v0, v0, -0x1

    .line 2044
    goto :goto_13

    .line 2046
    :cond_26
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/WindowManagerService$AppWindowToken;->token:Landroid/os/IBinder;

    if-eq v3, v4, :cond_6a

    .line 2047
    const-string v3, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tokens out of sync: external is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " @ "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", internal is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/WindowManagerService$AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " @ "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2050
    :cond_6a
    add-int/lit8 v1, v1, -0x1

    .line 2051
    add-int/lit8 v0, v0, -0x1

    .line 2052
    goto :goto_13

    .line 2053
    .end local v2           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_6f
    :goto_6f
    if-ltz v1, :cond_9a

    .line 2054
    const-string v3, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "External token not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " @ "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2055
    add-int/lit8 v1, v1, -0x1

    goto :goto_6f

    .line 2057
    :cond_9a
    :goto_9a
    if-ltz v0, :cond_cf

    .line 2058
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 2059
    .restart local v2       #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    iget-boolean v3, v2, Lcom/android/server/WindowManagerService$AppWindowToken;->removed:Z

    if-nez v3, :cond_cc

    .line 2060
    const-string v3, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid internal token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/WindowManagerService$AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " @ "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2062
    :cond_cc
    add-int/lit8 v0, v0, -0x1

    .line 2063
    goto :goto_9a

    .line 2064
    .end local v2           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_cf
    return-void
.end method

.method viewServerListWindows(Ljava/net/Socket;)Z
    .registers 13
    .parameter "client"

    .prologue
    .line 3770
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->isSystemSecure()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 3771
    const/4 v9, 0x0

    .line 3813
    :goto_7
    return v9

    .line 3774
    :cond_8
    const/4 v6, 0x1

    .line 3777
    .local v6, result:Z
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v9

    .line 3778
    :try_start_c
    iget-object v10, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v8, v10, [Ljava/lang/Object;

    .line 3780
    .local v8, windows:[Ljava/lang/Object;
    iget-object v10, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    .line 3781
    monitor-exit v9
    :try_end_1b
    .catchall {:try_start_c .. :try_end_1b} :catchall_55

    .line 3783
    const/4 v4, 0x0

    .line 3787
    .local v4, out:Ljava/io/BufferedWriter;
    :try_start_1c
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 3788
    .local v0, clientStream:Ljava/io/OutputStream;
    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v9, Ljava/io/OutputStreamWriter;

    invoke-direct {v9, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v10, 0x2000

    invoke-direct {v5, v9, v10}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_2c
    .catchall {:try_start_1c .. :try_end_2c} :catchall_74
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_2c} :catch_68

    .line 3790
    .end local v4           #out:Ljava/io/BufferedWriter;
    .local v5, out:Ljava/io/BufferedWriter;
    :try_start_2c
    array-length v1, v8

    .line 3791
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2e
    if-ge v3, v1, :cond_58

    .line 3792
    aget-object v7, v8, v3

    check-cast v7, Lcom/android/server/WindowManagerService$WindowState;

    .line 3793
    .local v7, w:Lcom/android/server/WindowManagerService$WindowState;
    invoke-static {v7}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 3794
    const/16 v9, 0x20

    invoke-virtual {v5, v9}, Ljava/io/BufferedWriter;->write(I)V

    .line 3795
    iget-object v9, v7, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v9}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 3796
    const/16 v9, 0xa

    invoke-virtual {v5, v9}, Ljava/io/BufferedWriter;->write(I)V
    :try_end_52
    .catchall {:try_start_2c .. :try_end_52} :catchall_81
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_52} :catch_84

    .line 3791
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    .line 3781
    .end local v0           #clientStream:Ljava/io/OutputStream;
    .end local v1           #count:I
    .end local v3           #i:I
    .end local v5           #out:Ljava/io/BufferedWriter;
    .end local v7           #w:Lcom/android/server/WindowManagerService$WindowState;
    .end local v8           #windows:[Ljava/lang/Object;
    :catchall_55
    move-exception v10

    :try_start_56
    monitor-exit v9
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    throw v10

    .line 3799
    .restart local v0       #clientStream:Ljava/io/OutputStream;
    .restart local v1       #count:I
    .restart local v3       #i:I
    .restart local v5       #out:Ljava/io/BufferedWriter;
    .restart local v8       #windows:[Ljava/lang/Object;
    :cond_58
    :try_start_58
    const-string v9, "DONE.\n"

    invoke-virtual {v5, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 3800
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->flush()V
    :try_end_60
    .catchall {:try_start_58 .. :try_end_60} :catchall_81
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_60} :catch_84

    .line 3804
    if-eqz v5, :cond_65

    .line 3806
    :try_start_62
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_7e

    :cond_65
    :goto_65
    move-object v4, v5

    .end local v0           #clientStream:Ljava/io/OutputStream;
    .end local v1           #count:I
    .end local v3           #i:I
    .end local v5           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :cond_66
    :goto_66
    move v9, v6

    .line 3813
    goto :goto_7

    .line 3801
    :catch_68
    move-exception v9

    move-object v2, v9

    .line 3802
    .local v2, e:Ljava/lang/Exception;
    :goto_6a
    const/4 v6, 0x0

    .line 3804
    if-eqz v4, :cond_66

    .line 3806
    :try_start_6d
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_71

    goto :goto_66

    .line 3807
    :catch_71
    move-exception v2

    .line 3808
    .local v2, e:Ljava/io/IOException;
    const/4 v6, 0x0

    goto :goto_66

    .line 3804
    .end local v2           #e:Ljava/io/IOException;
    :catchall_74
    move-exception v9

    :goto_75
    if-eqz v4, :cond_7a

    .line 3806
    :try_start_77
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7a} :catch_7b

    .line 3804
    :cond_7a
    :goto_7a
    throw v9

    .line 3807
    :catch_7b
    move-exception v2

    .line 3808
    .restart local v2       #e:Ljava/io/IOException;
    const/4 v6, 0x0

    goto :goto_7a

    .line 3807
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v0       #clientStream:Ljava/io/OutputStream;
    .restart local v1       #count:I
    .restart local v3       #i:I
    .restart local v5       #out:Ljava/io/BufferedWriter;
    :catch_7e
    move-exception v2

    .line 3808
    .restart local v2       #e:Ljava/io/IOException;
    const/4 v6, 0x0

    goto :goto_65

    .line 3804
    .end local v1           #count:I
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #i:I
    :catchall_81
    move-exception v9

    move-object v4, v5

    .end local v5           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    goto :goto_75

    .line 3801
    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v5       #out:Ljava/io/BufferedWriter;
    :catch_84
    move-exception v9

    move-object v2, v9

    move-object v4, v5

    .end local v5           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    goto :goto_6a
.end method

.method viewServerWindowCommand(Ljava/net/Socket;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 16
    .parameter "client"
    .parameter "command"
    .parameter "parameters"

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x0

    .line 3837
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->isSystemSecure()Z

    move-result v9

    if-eqz v9, :cond_a

    move v9, v10

    .line 3894
    :goto_9
    return v9

    .line 3841
    :cond_a
    const/4 v7, 0x1

    .line 3842
    .local v7, success:Z
    const/4 v2, 0x0

    .line 3843
    .local v2, data:Landroid/os/Parcel;
    const/4 v6, 0x0

    .line 3848
    .local v6, reply:Landroid/os/Parcel;
    const/16 v9, 0x20

    :try_start_f
    invoke-virtual {p3, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 3849
    .local v5, index:I
    if-ne v5, v11, :cond_19

    .line 3850
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    .line 3852
    :cond_19
    const/4 v9, 0x0

    invoke-virtual {p3, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 3853
    .local v1, code:Ljava/lang/String;
    const-string v9, "ffffffff"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_45

    move v4, v11

    .line 3856
    .local v4, hashCode:I
    :goto_27
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v5, v9, :cond_4d

    .line 3857
    add-int/lit8 v9, v5, 0x1

    invoke-virtual {p3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    .line 3862
    :goto_33
    invoke-direct {p0, v4}, Lcom/android/server/WindowManagerService;->findWindow(I)Lcom/android/server/WindowManagerService$WindowState;
    :try_end_36
    .catchall {:try_start_f .. :try_end_36} :catchall_b6
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_36} :catch_89

    move-result-object v8

    .line 3863
    .local v8, window:Lcom/android/server/WindowManagerService$WindowState;
    if-nez v8, :cond_50

    .line 3886
    if-eqz v2, :cond_3e

    .line 3887
    #Replaced unresolvable odex instruction with a throw
    throw v2
    #invoke-virtual-quick {v2}, vtable@0x49

    .line 3889
    :cond_3e
    if-eqz v6, :cond_43

    .line 3890
    #Replaced unresolvable odex instruction with a throw
    throw v6
    #invoke-virtual-quick {v6}, vtable@0x49

    :cond_43
    move v9, v10

    .line 3864
    goto :goto_9

    .line 3853
    .end local v4           #hashCode:I
    .end local v8           #window:Lcom/android/server/WindowManagerService$WindowState;
    :cond_45
    const/16 v9, 0x10

    :try_start_47
    invoke-static {v1, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v9

    move v4, v9

    goto :goto_27

    .line 3859
    .restart local v4       #hashCode:I
    :cond_4d
    const-string p3, ""

    goto :goto_33

    .line 3867
    .restart local v8       #window:Lcom/android/server/WindowManagerService$WindowState;
    :cond_50
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3868
    const-string v9, "android.view.IWindow"

    invoke-virtual {v2, v9}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3869
    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3870
    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3871
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 3872
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->fromSocket(Ljava/net/Socket;)Landroid/os/ParcelFileDescriptor;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v2, v10}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3874
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    .line 3876
    iget-object v9, v8, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v9}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3878
    .local v0, binder:Landroid/os/IBinder;
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-interface {v0, v9, v2, v6, v10}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3880
    invoke-virtual {v6}, Landroid/os/Parcel;->readException()V
    :try_end_7d
    .catchall {:try_start_47 .. :try_end_7d} :catchall_b6
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_7d} :catch_89

    .line 3886
    if-eqz v2, :cond_82

    .line 3887
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3889
    :cond_82
    if-eqz v6, :cond_87

    .line 3890
    .end local v0           #binder:Landroid/os/IBinder;
    .end local v1           #code:Ljava/lang/String;
    .end local v4           #hashCode:I
    .end local v5           #index:I
    .end local v8           #window:Lcom/android/server/WindowManagerService$WindowState;
    :goto_84
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    :cond_87
    move v9, v7

    .line 3894
    goto :goto_9

    .line 3882
    :catch_89
    move-exception v9

    move-object v3, v9

    .line 3883
    .local v3, e:Ljava/lang/Exception;
    :try_start_8b
    const-string v9, "WindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not send command "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " with parameters "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ad
    .catchall {:try_start_8b .. :try_end_ad} :catchall_b6

    .line 3884
    const/4 v7, 0x0

    .line 3886
    if-eqz v2, :cond_b3

    .line 3887
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3889
    :cond_b3
    if-eqz v6, :cond_87

    goto :goto_84

    .line 3886
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_b6
    move-exception v9

    if-eqz v2, :cond_bc

    .line 3887
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3889
    :cond_bc
    if-eqz v6, :cond_c1

    .line 3890
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 3886
    :cond_c1
    throw v9
.end method

.method public watchRotation(Landroid/view/IRotationWatcher;)I
    .registers 7
    .parameter "watcher"

    .prologue
    .line 3641
    invoke-interface {p1}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 3642
    .local v1, watcherBinder:Landroid/os/IBinder;
    new-instance v0, Lcom/android/server/WindowManagerService$3;

    invoke-direct {v0, p0, v1}, Lcom/android/server/WindowManagerService$3;-><init>(Lcom/android/server/WindowManagerService;Landroid/os/IBinder;)V

    .line 3658
    .local v0, dr:Landroid/os/IBinder$DeathRecipient;
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 3660
    :try_start_c
    invoke-interface {p1}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v0, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 3661
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_1d
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_19} :catch_20

    .line 3666
    :goto_19
    :try_start_19
    iget v3, p0, Lcom/android/server/WindowManagerService;->mRotation:I

    monitor-exit v2

    return v3

    .line 3667
    :catchall_1d
    move-exception v3

    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_1d

    throw v3

    .line 3662
    :catch_20
    move-exception v3

    goto :goto_19
.end method

.method final windowForClientLocked(Lcom/android/server/WindowManagerService$Session;Landroid/os/IBinder;)Lcom/android/server/WindowManagerService$WindowState;
    .registers 10
    .parameter "session"
    .parameter "client"

    .prologue
    const/4 v4, 0x0

    const-string v6, "WindowManager"

    const-string v5, "Requested window "

    .line 8339
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WindowManagerService$WindowState;

    .line 8342
    .local v1, win:Lcom/android/server/WindowManagerService$WindowState;
    if-nez v1, :cond_34

    .line 8343
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 8344
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v2, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested window "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v4

    .line 8354
    .end local v0           #ex:Ljava/lang/RuntimeException;
    :goto_33
    return-object v2

    .line 8347
    :cond_34
    if-eqz p1, :cond_6f

    iget-object v2, v1, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    if-eq v2, p1, :cond_6f

    .line 8348
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 8349
    .restart local v0       #ex:Ljava/lang/RuntimeException;
    const-string v2, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested window "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is in session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v4

    .line 8351
    goto :goto_33

    .end local v0           #ex:Ljava/lang/RuntimeException;
    :cond_6f
    move-object v2, v1

    .line 8354
    goto :goto_33
.end method

.method final windowForClientLocked(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;)Lcom/android/server/WindowManagerService$WindowState;
    .registers 4
    .parameter "session"
    .parameter "client"

    .prologue
    .line 8335
    invoke-interface {p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/WindowManagerService;->windowForClientLocked(Lcom/android/server/WindowManagerService$Session;Landroid/os/IBinder;)Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v0

    return-object v0
.end method
