.class public Lcom/android/internal/policy/impl/PhoneWindowManager;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/PhoneWindowManager$PassHeadsetKey;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;
    }
.end annotation


# static fields
.field static final APPLICATION_LAYER:I = 0x1

.field static final APPLICATION_MEDIA_OVERLAY_SUBLAYER:I = -0x1

.field static final APPLICATION_MEDIA_SUBLAYER:I = -0x2

.field static final APPLICATION_PANEL_SUBLAYER:I = 0x1

.field static final APPLICATION_SUB_PANEL_SUBLAYER:I = 0x2

.field static final DEBUG:Z = false

.field static final DEBUG_LAYOUT:Z = false

.field static final DEFAULT_ACCELEROMETER_ROTATION:I = 0x0

.field static final DEFAULT_ENDCALL_BEHAVIOR:I = 0x2

.field static final ENDCALL_HOME:I = 0x1

.field static final ENDCALL_SLEEPS:I = 0x2

.field private static final HOME_KEY_EXCEPTION_LIST:[Ljava/lang/String; = null

.field static final INPUT_METHOD_DIALOG_LAYER:I = 0xb

.field static final INPUT_METHOD_LAYER:I = 0xa

.field static final KEYBOARD_ALWAYS_HIDDEN:Z = false

.field static final KEYGUARD_DIALOG_LAYER:I = 0xd

.field static final KEYGUARD_LAYER:I = 0xc

.field private static final LONG_PRESS_VIBE_PATTERN:[J = null

.field static final PHONE_LAYER:I = 0x2

.field private static final PRESS_VIBE_PATTERN:[J = null

.field static final PRINT_ANIM:Z = false

.field static final PRIORITY_PHONE_LAYER:I = 0x7

.field static final SEARCH_BAR_LAYER:I = 0x3

.field static final SHOW_PROCESSES_ON_ALT_MENU:Z = false

.field static final SHOW_STARTING_ANIMATIONS:Z = true

.field static final SLIDE_TOUCH_EVENT_SIZE_LIMIT:F = 0.6f

.field static final STATUS_BAR_LAYER:I = 0x6

.field static final STATUS_BAR_PANEL_LAYER:I = 0x4

.field static final SYSTEM_ALERT_LAYER:I = 0x8

.field public static final SYSTEM_DIALOG_REASON_GLOBAL_ACTIONS:Ljava/lang/String; = "globalactions"

.field public static final SYSTEM_DIALOG_REASON_KEY:Ljava/lang/String; = "reason"

.field public static final SYSTEM_DIALOG_REASON_RECENT_APPS:Ljava/lang/String; = "recentapps"

.field static final SYSTEM_ERROR_LAYER:I = 0x9

.field static final SYSTEM_OVERLAY_LAYER:I = 0xe

.field static final TAG:Ljava/lang/String; = "WindowManager"

.field static final TOAST_LAYER:I = 0x5

.field private static final WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

.field static final localLOGV:Z

.field static final mTmpContentFrame:Landroid/graphics/Rect;

.field static final mTmpDisplayFrame:Landroid/graphics/Rect;

.field static final mTmpParentFrame:Landroid/graphics/Rect;

.field static final mTmpVisibleFrame:Landroid/graphics/Rect;


# instance fields
.field WAKESD_Pressed:Z

.field downkeypressed_before:Z

.field mAccelerometerDefault:I

.field mBroadcastDone:Landroid/content/BroadcastReceiver;

.field mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

.field mConsumeSearchKeyUp:Z

.field mContentBottom:I

.field mContentLeft:I

.field mContentRight:I

.field mContentTop:I

.field mContext:Landroid/content/Context;

.field mCurBottom:I

.field mCurLeft:I

.field mCurRight:I

.field mCurTop:I

.field mCurrentAppOrientation:I

.field mDockBottom:I

.field mDockLayer:I

.field mDockLeft:I

.field mDockRight:I

.field mDockTop:I

.field mECBMEndPressed:Z

.field mEnableShiftMenuBugReports:Z

.field mEndCallLongPress:Ljava/lang/Runnable;

.field mEndcallBehavior:I

.field private mEnteringSleep:Z

.field mFancyRotationAnimation:I

.field mForceStatusBar:Z

.field mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;

.field mH:I

.field mHandler:Landroid/os/Handler;

.field mHasSoftInput:Z

.field mHideKeyguard:Z

.field mHomeIntent:Landroid/content/Intent;

.field mHomeLongPress:Ljava/lang/Runnable;

.field mHomePressed:Z

.field mKEY_PRESS_TEST:I

.field mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

.field mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

.field mLandscapeRotation:I

.field mLastPowerKeyTime:J

.field mLidOpen:Z

.field final mLock:Ljava/lang/Object;

.field mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

.field mOrientationSensorEnabled:Z

.field mPortraitRotation:I

.field mPowerManager:Landroid/os/LocalPowerManager;

.field mRecentAppsDialog:Lcom/android/internal/policy/impl/RecentApplicationsDialog;

.field mSafeMode:Z

.field mScreenOn:Z

.field mSearchKeyPressed:Z

.field mSensorRotation:I

.field mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

.field mShouldTurnOffOnKeyUp:Z

.field mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

.field mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

.field mVibrator:Landroid/os/Vibrator;

.field mW:I

.field mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x4

    .line 158
    new-array v0, v3, [J

    fill-array-data v0, :array_78

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->LONG_PRESS_VIBE_PATTERN:[J

    .line 161
    new-array v0, v3, [J

    fill-array-data v0, :array_8c

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->PRESS_VIBE_PATTERN:[J

    .line 164
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.lge.hiddenmenu.device_test.KeyCompassTest"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.lge.hiddenmenu.device_test.touch_test.TouchKeyTest"

    aput-object v2, v0, v1

    const-string v1, "com.lge.hiddenmenu.device_test.QwertyTest"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "com.lge.hiddenmenu.device_test.sound_test.RingTest_Auto"

    aput-object v2, v0, v1

    const-string v1, "com.lge.hiddenmenu.device_test.VibratorTest"

    aput-object v1, v0, v3

    const/4 v1, 0x5

    const-string v2, "com.lge.ExternalMemoryTest.ExternalMemoryTest"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.lge.hiddenmenu.device_test.touch_test.BlockTouchTest"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.lge.hiddenmenu.device_test.sound_test.Loopback_Auto"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.lge.hiddenmenu.device_test.MotionSensorTest"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.lge.hiddenmenu.device_test.ALCProximityTest"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.android.camera.Camera"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.android.camera.VideoCamera"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->HOME_KEY_EXCEPTION_LIST:[Ljava/lang/String;

    .line 224
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    .line 225
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 226
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpContentFrame:Landroid/graphics/Rect;

    .line 227
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    .line 807
    new-array v0, v4, [I

    fill-array-data v0, :array_a0

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    return-void

    .line 158
    :array_78
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 161
    :array_8c
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x29t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 807
    :array_a0
    .array-data 0x4
        0xd3t 0x7t 0x0t 0x0t
        0xdat 0x7t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    .line 187
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    .line 190
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 191
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    .line 199
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSensorRotation:I

    .line 200
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOn:Z

    .line 201
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    .line 202
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    .line 204
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAccelerometerDefault:I

    .line 205
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    .line 242
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .line 243
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .line 246
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKEY_PRESS_TEST:I

    .line 411
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$1;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEndCallLongPress:Ljava/lang/Runnable;

    .line 441
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$2;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeLongPress:Ljava/lang/Runnable;

    .line 1566
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->downkeypressed_before:Z

    .line 1567
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->WAKESD_Pressed:Z

    .line 1569
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastPowerKeyTime:J

    .line 1570
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnteringSleep:Z

    .line 2177
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$4;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$4;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastDone:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static getAudioInterface()Landroid/media/IAudioService;
    .registers 1

    .prologue
    .line 800
    const-string v0, "audio"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    return-object v0
.end method

.method static getPhoneInterface()Lcom/android/internal/telephony/ITelephony;
    .registers 1

    .prologue
    .line 796
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method static isAVKey(I)Z
    .registers 3
    .parameter "code"

    .prologue
    const/16 v1, 0x58

    .line 1551
    const/16 v0, 0x55

    if-eq p0, v0, :cond_16

    const/16 v0, 0x56

    if-eq p0, v0, :cond_16

    const/16 v0, 0x57

    if-eq p0, v0, :cond_16

    if-eq p0, v1, :cond_16

    if-eq p0, v1, :cond_16

    const/16 v0, 0x5a

    if-ne p0, v0, :cond_18

    .line 1557
    :cond_16
    const/4 v0, 0x1

    .line 1559
    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method static isMediaKey(I)Z
    .registers 3
    .parameter "code"

    .prologue
    const/16 v1, 0x58

    .line 1536
    const/16 v0, 0x4f

    if-eq p0, v0, :cond_1a

    const/16 v0, 0x55

    if-eq p0, v0, :cond_1a

    const/16 v0, 0x56

    if-eq p0, v0, :cond_1a

    const/16 v0, 0x57

    if-eq p0, v0, :cond_1a

    if-eq p0, v1, :cond_1a

    if-eq p0, v1, :cond_1a

    const/16 v0, 0x5a

    if-ne p0, v0, :cond_1c

    .line 1543
    :cond_1a
    const/4 v0, 0x1

    .line 1545
    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method private isPowerKey(I)Z
    .registers 3
    .parameter "keycode"

    .prologue
    .line 1593
    const/4 v0, 0x0

    return v0
.end method

.method private isSlideWakeKey(I)Z
    .registers 6
    .parameter "keycode"

    .prologue
    .line 1573
    const/4 v0, 0x0

    .line 1575
    .local v0, result:Z
    const/16 v1, 0xc9

    if-ne p1, v1, :cond_1e

    .line 1577
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSlideWakeKey keycode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    const/4 v0, 0x1

    .line 1581
    :cond_1e
    const/4 v1, 0x0

    return v1
.end method

.method private isTopActivity(Ljava/lang/String;)Z
    .registers 10
    .parameter "className"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 816
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/app/IActivityManager;->getTasks(IILandroid/app/IThumbnailReceiver;)Ljava/util/List;

    move-result-object v1

    .line 817
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-nez v1, :cond_11

    move v2, v6

    .line 832
    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :goto_10
    return v2

    .line 820
    .restart local v1       #list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_11
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 821
    .local v0, info:Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v0, :cond_1e

    iget-object v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-nez v2, :cond_20

    :cond_1e
    move v2, v6

    .line 822
    goto :goto_10

    .line 826
    :cond_20
    iget-object v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_29} :catch_2e

    move-result v2

    if-eqz v2, :cond_2f

    move v2, v7

    .line 827
    goto :goto_10

    .line 829
    .end local v0           #info:Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :catch_2e
    move-exception v2

    :cond_2f
    move v2, v6

    .line 832
    goto :goto_10
.end method

.method private is_PowerKeyIntervalOk()Z
    .registers 3

    .prologue
    .line 1613
    const/4 v0, 0x0

    .line 1617
    .local v0, interval:Z
    const/4 v0, 0x1

    .line 1621
    const/4 v1, 0x1

    return v1
.end method

.method private is_ingEnteringSleep()Z
    .registers 2

    .prologue
    .line 1600
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnteringSleep:Z

    return v0
.end method

.method static sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .parameter "context"
    .parameter "reason"

    .prologue
    .line 2268
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2270
    :try_start_6
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_d} :catch_e

    .line 2274
    :cond_d
    :goto_d
    return-void

    .line 2271
    :catch_e
    move-exception v0

    goto :goto_d
.end method

.method private set_ingEnteringSleep(Z)V
    .registers 2
    .parameter "set"

    .prologue
    .line 1607
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnteringSleep:Z

    .line 1609
    return-void
.end method


# virtual methods
.method public addStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILjava/lang/CharSequence;II)Landroid/view/View;
    .registers 21
    .parameter "appToken"
    .parameter "packageName"
    .parameter "theme"
    .parameter "nonLocalizedLabel"
    .parameter "labelRes"
    .parameter "icon"

    .prologue
    .line 634
    if-nez p2, :cond_4

    .line 635
    const/4 v11, 0x0

    .line 720
    :goto_3
    return-object v11

    .line 638
    :cond_4
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 639
    .local v3, context:Landroid/content/Context;
    const/4 v7, 0x0

    .line 642
    .local v7, setTheme:Z
    if-nez p3, :cond_b

    if-eqz p5, :cond_1d

    .line 644
    :cond_b
    const/4 v11, 0x0

    :try_start_c
    move-object v0, v3

    move-object/from16 v1, p2

    move v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    .line 645
    if-eqz p3, :cond_1d

    .line 646
    move-object v0, v3

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/Context;->setTheme(I)V
    :try_end_1c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_1c} :catch_cc

    .line 647
    const/4 v7, 0x1

    .line 653
    :cond_1d
    :goto_1d
    if-nez v7, :cond_25

    .line 654
    const v11, 0x1030005

    invoke-virtual {v3, v11}, Landroid/content/Context;->setTheme(I)V

    .line 657
    :cond_25
    invoke-static {v3}, Lcom/android/internal/policy/PolicyManager;->makeNewWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v9

    .line 658
    .local v9, win:Landroid/view/Window;
    invoke-virtual {v9}, Landroid/view/Window;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v11

    const/16 v12, 0xc

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    if-eqz v11, :cond_38

    .line 660
    const/4 v11, 0x0

    goto :goto_3

    .line 663
    :cond_38
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 664
    .local v6, r:Landroid/content/res/Resources;
    move-object v0, v6

    move/from16 v1, p5

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 666
    const/4 v11, 0x3

    invoke-virtual {v9, v11}, Landroid/view/Window;->setType(I)V

    .line 672
    const v11, 0x20018

    const v12, 0x20018

    invoke-virtual {v9, v11, v12}, Landroid/view/Window;->setFlags(II)V

    .line 680
    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-virtual {v9, v11, v12}, Landroid/view/Window;->setLayout(II)V

    .line 683
    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 684
    .local v5, params:Landroid/view/WindowManager$LayoutParams;
    iput-object p1, v5, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 685
    move-object/from16 v0, p2

    move-object v1, v5

    iput-object v0, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 686
    invoke-virtual {v9}, Landroid/view/Window;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v11

    const/16 v12, 0x8

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    iput v11, v5, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 688
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Starting "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v0, v11

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 691
    :try_start_8b
    const-string v11, "window"

    invoke-virtual {v3, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowManagerImpl;

    .line 693
    .local v10, wm:Landroid/view/WindowManagerImpl;
    invoke-virtual {v9}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v8

    .line 695
    .local v8, view:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/Window;->isFloating()Z

    move-result v11

    if-eqz v11, :cond_a0

    .line 702
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 710
    :cond_a0
    invoke-virtual {v10, v8, v5}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 714
    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    :try_end_a6
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_8b .. :try_end_a6} :catch_af

    move-result-object v11

    if-eqz v11, :cond_ac

    move-object v11, v8

    goto/16 :goto_3

    :cond_ac
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 715
    .end local v8           #view:Landroid/view/View;
    .end local v10           #wm:Landroid/view/WindowManagerImpl;
    :catch_af
    move-exception v11

    move-object v4, v11

    .line 717
    .local v4, e:Landroid/view/WindowManager$BadTokenException;
    const-string v11, "WindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " already running, starting window not displayed"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 649
    .end local v4           #e:Landroid/view/WindowManager$BadTokenException;
    .end local v5           #params:Landroid/view/WindowManager$LayoutParams;
    .end local v6           #r:Landroid/content/res/Resources;
    .end local v9           #win:Landroid/view/Window;
    :catch_cc
    move-exception v11

    goto/16 :goto_1d
.end method

.method public adjustConfigurationLw(Landroid/content/res/Configuration;)V
    .registers 6
    .parameter "config"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 549
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readLidState()V

    .line 550
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpen:Z

    .line 551
    .local v0, lidOpen:Z
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    invoke-interface {v1, v0}, Landroid/os/LocalPowerManager;->setKeyboardVisibility(Z)V

    .line 552
    if-nez v0, :cond_12

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    if-eqz v1, :cond_1b

    :cond_12
    move v1, v2

    :goto_13
    iput v1, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 555
    if-eqz v0, :cond_1d

    move v1, v2

    :goto_18
    iput v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 558
    return-void

    :cond_1b
    move v1, v3

    .line 552
    goto :goto_13

    :cond_1d
    move v1, v3

    .line 555
    goto :goto_18
.end method

.method public adjustWindowParamsLw(Landroid/view/WindowManager$LayoutParams;)V
    .registers 3
    .parameter "attrs"

    .prologue
    .line 526
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    packed-switch v0, :pswitch_data_e

    .line 534
    :goto_5
    return-void

    .line 530
    :pswitch_6
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x18

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_5

    .line 526
    nop

    :pswitch_data_e
    .packed-switch 0x7d5
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method public animatingWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .registers 3
    .parameter "win"
    .parameter "attrs"

    .prologue
    .line 1358
    return-void
.end method

.method public beginAnimationLw(II)V
    .registers 3
    .parameter "displayWidth"
    .parameter "displayHeight"

    .prologue
    .line 1353
    return-void
.end method

.method public beginLayoutLw(II)V
    .registers 8
    .parameter "displayWidth"
    .parameter "displayHeight"

    .prologue
    const/4 v4, 0x0

    .line 1054
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mW:I

    .line 1055
    iput p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mH:I

    .line 1056
    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    .line 1057
    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    .line 1058
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    .line 1059
    iput p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    iput p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    .line 1060
    const/high16 v3, 0x1000

    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    .line 1062
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 1063
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBar:Z

    .line 1064
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideKeyguard:Z

    .line 1067
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_65

    .line 1068
    sget-object v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    .line 1069
    .local v1, pf:Landroid/graphics/Rect;
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 1070
    .local v0, df:Landroid/graphics/Rect;
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    .line 1071
    .local v2, vf:Landroid/graphics/Rect;
    iput v4, v2, Landroid/graphics/Rect;->left:I

    iput v4, v0, Landroid/graphics/Rect;->left:I

    iput v4, v1, Landroid/graphics/Rect;->left:I

    .line 1072
    iput v4, v2, Landroid/graphics/Rect;->top:I

    iput v4, v0, Landroid/graphics/Rect;->top:I

    iput v4, v1, Landroid/graphics/Rect;->top:I

    .line 1073
    iput p1, v2, Landroid/graphics/Rect;->right:I

    iput p1, v0, Landroid/graphics/Rect;->right:I

    iput p1, v1, Landroid/graphics/Rect;->right:I

    .line 1074
    iput p2, v2, Landroid/graphics/Rect;->bottom:I

    iput p2, v0, Landroid/graphics/Rect;->bottom:I

    iput p2, v1, Landroid/graphics/Rect;->bottom:I

    .line 1076
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3, v1, v0, v2, v2}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1077
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_65

    .line 1080
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    .line 1086
    .end local v0           #df:Landroid/graphics/Rect;
    .end local v1           #pf:Landroid/graphics/Rect;
    .end local v2           #vf:Landroid/graphics/Rect;
    :cond_65
    return-void
.end method

.method public checkAddPermission(Landroid/view/WindowManager$LayoutParams;)I
    .registers 6
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    .line 490
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 492
    .local v1, type:I
    const/16 v2, 0x7d0

    if-lt v1, v2, :cond_b

    const/16 v2, 0xbb7

    if-le v1, v2, :cond_d

    :cond_b
    move v2, v3

    .line 522
    :goto_c
    return v2

    .line 496
    :cond_d
    const/4 v0, 0x0

    .line 497
    .local v0, permission:Ljava/lang/String;
    packed-switch v1, :pswitch_data_24

    .line 514
    :pswitch_11
    const-string v0, "android.permission.INTERNAL_SYSTEM_WINDOW"

    .line 516
    :goto_13
    :pswitch_13
    if-eqz v0, :cond_22

    .line 517
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_22

    .line 519
    const/4 v2, -0x8

    goto :goto_c

    .line 511
    :pswitch_1f
    const-string v0, "android.permission.SYSTEM_ALERT_WINDOW"

    .line 512
    goto :goto_13

    :cond_22
    move v2, v3

    .line 522
    goto :goto_c

    .line 497
    :pswitch_data_24
    .packed-switch 0x7d2
        :pswitch_1f
        :pswitch_1f
        :pswitch_11
        :pswitch_13
        :pswitch_1f
        :pswitch_1f
        :pswitch_11
        :pswitch_11
        :pswitch_1f
        :pswitch_13
    .end packed-switch
.end method

.method public detectSafeMode()Z
    .registers 6

    .prologue
    .line 2319
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/16 v3, 0x52

    invoke-interface {v2, v3}, Landroid/view/IWindowManager;->getKeycodeState(I)I

    move-result v1

    .line 2320
    .local v1, menuState:I
    if-lez v1, :cond_34

    const/4 v2, 0x1

    :goto_b
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeMode:Z

    .line 2321
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Menu key state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " safeMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2322
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeMode:Z
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_33} :catch_36

    return v2

    .line 2320
    :cond_34
    const/4 v2, 0x0

    goto :goto_b

    .line 2323
    .end local v1           #menuState:I
    :catch_36
    move-exception v2

    move-object v0, v2

    .line 2325
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "window manager dead"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public enableKeyguard(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 2234
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->setKeyguardEnabled(Z)V

    .line 2235
    return-void
.end method

.method public enableScreenAfterBoot()V
    .registers 2

    .prologue
    .line 2352
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readLidState()V

    .line 2353
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(I)V

    .line 2354
    return-void
.end method

.method public exitKeyguardSecurely(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V
    .registers 3
    .parameter "callback"

    .prologue
    .line 2239
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->verifyUnlock(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V

    .line 2240
    return-void
.end method

.method public finishAnimationLw()Z
    .registers 2

    .prologue
    .line 1362
    const/4 v0, 0x0

    return v0
.end method

.method public finishLayoutLw()Z
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 1300
    const/4 v0, 0x0

    .line 1301
    .local v0, changed:Z
    const/4 v2, 0x0

    .line 1302
    .local v2, hiding:Z
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_12

    .line 1305
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBar:Z

    if-eqz v5, :cond_35

    .line 1307
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5, v6}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v5

    or-int/2addr v0, v5

    .line 1328
    :cond_12
    :goto_12
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_21

    .line 1330
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideKeyguard:Z

    if-eqz v5, :cond_5c

    .line 1331
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5, v6}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v5

    or-int/2addr v0, v5

    .line 1337
    :cond_21
    :goto_21
    if-eqz v0, :cond_34

    if-eqz v2, :cond_34

    .line 1338
    const-string v5, "statusbar"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IStatusBar$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IStatusBar;

    move-result-object v4

    .line 1339
    .local v4, sbs:Landroid/app/IStatusBar;
    if-eqz v4, :cond_34

    .line 1342
    :try_start_31
    invoke-interface {v4}, Landroid/app/IStatusBar;->deactivate()V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_34} :catch_64

    .line 1348
    .end local v4           #sbs:Landroid/app/IStatusBar;
    :cond_34
    :goto_34
    return v0

    .line 1308
    :cond_35
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_12

    .line 1312
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 1314
    .local v3, lp:Landroid/view/WindowManager$LayoutParams;
    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_51

    move v1, v6

    .line 1316
    .local v1, hideStatusBar:Z
    :goto_46
    if-eqz v1, :cond_54

    .line 1318
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5, v6}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v5

    or-int/2addr v0, v5

    .line 1319
    const/4 v2, 0x1

    goto :goto_12

    .line 1314
    .end local v1           #hideStatusBar:Z
    :cond_51
    const/4 v5, 0x0

    move v1, v5

    goto :goto_46

    .line 1322
    .restart local v1       #hideStatusBar:Z
    :cond_54
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5, v6}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v5

    or-int/2addr v0, v5

    goto :goto_12

    .line 1333
    .end local v1           #hideStatusBar:Z
    .end local v3           #lp:Landroid/view/WindowManager$LayoutParams;
    :cond_5c
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5, v6}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v5

    or-int/2addr v0, v5

    goto :goto_21

    .line 1343
    .restart local v4       #sbs:Landroid/app/IStatusBar;
    :catch_64
    move-exception v5

    goto :goto_34
.end method

.method public getContentInsetHintLw(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;)V
    .registers 9
    .parameter "attrs"
    .parameter "contentInset"

    .prologue
    .line 1041
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1043
    .local v0, fl:I
    const v1, 0x10500

    and-int/2addr v1, v0

    const v2, 0x10100

    if-ne v1, v2, :cond_1d

    .line 1046
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mW:I

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mH:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    sub-int/2addr v4, v5

    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1050
    :goto_1c
    return-void

    .line 1048
    :cond_1d
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_1c
.end method

.method goHome()Z
    .registers 15

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 2390
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->stopAppSwitches()V

    .line 2391
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows()V

    .line 2392
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;[Landroid/net/Uri;ILandroid/os/IBinder;Ljava/lang/String;IZZ)I
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_29} :catch_2e

    move-result v11

    .line 2396
    .local v11, result:I
    if-ne v11, v13, :cond_2f

    move v0, v12

    .line 2403
    .end local v11           #result:I
    :goto_2d
    return v0

    .line 2399
    :catch_2e
    move-exception v0

    :cond_2f
    move v0, v13

    .line 2403
    goto :goto_2d
.end method

.method handleVolumeKey(II)V
    .registers 8
    .parameter "stream"
    .parameter "keycode"

    .prologue
    const-string v3, "WindowManager"

    .line 1505
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getAudioInterface()Landroid/media/IAudioService;

    move-result-object v0

    .line 1506
    .local v0, audio:Landroid/media/IAudioService;
    if-nez v0, :cond_10

    .line 1508
    const-string v2, "WindowManager"

    const-string v2, "handleVolumeKey: couldn\'t get IAudioService reference"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    :goto_f
    return-void

    .line 1515
    :cond_10
    :try_start_10
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1517
    const/16 v2, 0x18

    if-ne p2, v2, :cond_24

    const/4 v2, 0x1

    :goto_1a
    const/4 v3, 0x0

    invoke-interface {v0, p1, v2, v3}, Landroid/media/IAudioService;->adjustStreamVolume(III)V
    :try_end_1e
    .catchall {:try_start_10 .. :try_end_1e} :catchall_46
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1e} :catch_26

    .line 1525
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_f

    .line 1517
    :cond_24
    const/4 v2, -0x1

    goto :goto_1a

    .line 1522
    :catch_26
    move-exception v2

    move-object v1, v2

    .line 1523
    .local v1, e:Landroid/os/RemoteException;
    :try_start_28
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IAudioService.adjustStreamVolume() threw RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catchall {:try_start_28 .. :try_end_40} :catchall_46

    .line 1525
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_f

    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_46
    move-exception v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v2
.end method

.method public inKeyguardRestrictedKeyInputMode()Z
    .registers 2

    .prologue
    .line 2249
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isInputRestricted()Z

    move-result v0

    return v0
.end method

.method public init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/os/LocalPowerManager;)V
    .registers 9
    .parameter "context"
    .parameter "windowManager"
    .parameter "powerManager"

    .prologue
    .line 467
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 468
    iput-object p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    .line 469
    iput-object p3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    .line 470
    new-instance v2, Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-direct {v2, p1, p0, p3}, Lcom/android/internal/policy/impl/KeyguardViewMediator;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/os/LocalPowerManager;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    .line 471
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    .line 472
    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    .line 473
    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/os/Handler;)V

    .line 474
    .local v1, settingsObserver:Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;
    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;->observe()V

    .line 475
    new-instance v2, Lcom/android/internal/policy/impl/ShortcutManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p1, v3}, Lcom/android/internal/policy/impl/ShortcutManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

    .line 476
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/ShortcutManager;->observe()V

    .line 477
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    .line 478
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 479
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    const/high16 v3, 0x1020

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 481
    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 482
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v2, 0x1

    const-string v3, "PhoneWindowManager.mBroadcastWakeLock"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 484
    const-string v2, "1"

    const-string v3, "ro.debuggable"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    .line 485
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mECBMEndPressed:Z

    .line 486
    return-void
.end method

.method public interceptKeyTi(Landroid/view/WindowManagerPolicy$WindowState;IIZI)Z
    .registers 26
    .parameter "win"
    .parameter "code"
    .parameter "metaKeys"
    .parameter "down"
    .parameter "repeatCount"

    .prologue
    .line 838
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardOn()Z

    move-result v10

    .line 848
    .local v10, keyguardOn:Z
    const/16 v16, 0x3

    move/from16 v0, p2

    move/from16 v1, v16

    if-ne v0, v1, :cond_1d

    if-nez p4, :cond_1d

    .line 849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeLongPress:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 854
    :cond_1d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    move/from16 v16, v0

    if-eqz v16, :cond_98

    .line 858
    const/16 v16, 0x3

    move/from16 v0, p2

    move/from16 v1, v16

    if-ne v0, v1, :cond_79

    .line 859
    if-nez p4, :cond_79

    .line 860
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    .line 863
    const/4 v7, 0x0

    .local v7, i:I
    :goto_38
    sget-object v16, Lcom/android/internal/policy/impl/PhoneWindowManager;->HOME_KEY_EXCEPTION_LIST:[Ljava/lang/String;

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move v0, v7

    move/from16 v1, v16

    if-ge v0, v1, :cond_65

    .line 864
    sget-object v16, Lcom/android/internal/policy/impl/PhoneWindowManager;->HOME_KEY_EXCEPTION_LIST:[Ljava/lang/String;

    aget-object v16, v16, v7

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isTopActivity(Ljava/lang/String;)Z

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_62

    .line 865
    const-string v16, "WindowManager"

    const-string v17, "Top activity is in home key exception list."

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    const/16 v16, 0x0

    .line 1004
    .end local v7           #i:I
    :goto_61
    return v16

    .line 863
    .restart local v7       #i:I
    :cond_62
    add-int/lit8 v7, v7, 0x1

    goto :goto_38

    .line 873
    :cond_65
    const/4 v8, 0x0

    .line 875
    .local v8, incomingRinging:Z
    :try_start_66
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getPhoneInterface()Lcom/android/internal/telephony/ITelephony;

    move-result-object v11

    .line 876
    .local v11, phoneServ:Lcom/android/internal/telephony/ITelephony;
    if-eqz v11, :cond_7c

    .line 877
    invoke-interface {v11}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z
    :try_end_6f
    .catch Landroid/os/RemoteException; {:try_start_66 .. :try_end_6f} :catch_84

    move-result v8

    .line 885
    .end local v11           #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :goto_70
    if-eqz v8, :cond_94

    .line 886
    const-string v16, "WindowManager"

    const-string v17, "Ignoring HOME; there\'s a ringing incoming call."

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    .end local v7           #i:I
    .end local v8           #incomingRinging:Z
    :cond_79
    :goto_79
    const/16 v16, 0x1

    goto :goto_61

    .line 879
    .restart local v7       #i:I
    .restart local v8       #incomingRinging:Z
    .restart local v11       #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :cond_7c
    :try_start_7c
    const-string v16, "WindowManager"

    const-string v17, "Unable to find ITelephony interface"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_83
    .catch Landroid/os/RemoteException; {:try_start_7c .. :try_end_83} :catch_84

    goto :goto_70

    .line 881
    .end local v11           #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :catch_84
    move-exception v16

    move-object/from16 v6, v16

    .line 882
    .local v6, ex:Landroid/os/RemoteException;
    const-string v16, "WindowManager"

    const-string v17, "RemoteException from getPhoneInterface()"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v6

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_70

    .line 888
    .end local v6           #ex:Landroid/os/RemoteException;
    :cond_94
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->launchHomeFromHotKey()V

    goto :goto_79

    .line 900
    .end local v7           #i:I
    .end local v8           #incomingRinging:Z
    :cond_98
    const/16 v16, 0x3

    move/from16 v0, p2

    move/from16 v1, v16

    if-ne v0, v1, :cond_ff

    .line 904
    if-eqz p1, :cond_bd

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v16

    move-object/from16 v3, v16

    .line 905
    .local v3, attrs:Landroid/view/WindowManager$LayoutParams;
    :goto_a8
    if-eqz v3, :cond_da

    .line 906
    iget v14, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 907
    .local v14, type:I
    const/16 v16, 0x7d4

    move v0, v14

    move/from16 v1, v16

    if-eq v0, v1, :cond_ba

    const/16 v16, 0x7d9

    move v0, v14

    move/from16 v1, v16

    if-ne v0, v1, :cond_c2

    .line 910
    :cond_ba
    const/16 v16, 0x0

    goto :goto_61

    .line 904
    .end local v3           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v14           #type:I
    :cond_bd
    const/16 v16, 0x0

    move-object/from16 v3, v16

    goto :goto_a8

    .line 912
    .restart local v3       #attrs:Landroid/view/WindowManager$LayoutParams;
    .restart local v14       #type:I
    :cond_c2
    sget-object v16, Lcom/android/internal/policy/impl/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    move-object/from16 v0, v16

    array-length v0, v0

    move v15, v0

    .line 913
    .local v15, typeCount:I
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_c9
    if-ge v7, v15, :cond_da

    .line 914
    sget-object v16, Lcom/android/internal/policy/impl/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    aget v16, v16, v7

    move v0, v14

    move/from16 v1, v16

    if-ne v0, v1, :cond_d7

    .line 916
    const/16 v16, 0x1

    goto :goto_61

    .line 913
    :cond_d7
    add-int/lit8 v7, v7, 0x1

    goto :goto_c9

    .line 921
    .end local v7           #i:I
    .end local v14           #type:I
    .end local v15           #typeCount:I
    :cond_da
    if-eqz p4, :cond_fb

    if-nez p5, :cond_fb

    .line 922
    if-nez v10, :cond_f3

    .line 923
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeLongPress:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v18

    invoke-virtual/range {v16 .. v19}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 925
    :cond_f3
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    .line 927
    :cond_fb
    const/16 v16, 0x1

    goto/16 :goto_61

    .line 928
    .end local v3           #attrs:Landroid/view/WindowManager$LayoutParams;
    :cond_ff
    const/16 v16, 0x52

    move/from16 v0, p2

    move/from16 v1, v16

    if-ne v0, v1, :cond_13c

    .line 930
    const/4 v4, 0x1

    .line 932
    .local v4, chordBug:I
    if-eqz p4, :cond_177

    if-nez p5, :cond_177

    .line 933
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    move/from16 v16, v0

    if-eqz v16, :cond_177

    and-int/lit8 v16, p3, 0x1

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_177

    .line 934
    new-instance v9, Landroid/content/Intent;

    const-string v16, "android.intent.action.BUG_REPORT"

    move-object v0, v9

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 935
    .local v9, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object v1, v9

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 936
    const/16 v16, 0x1

    goto/16 :goto_61

    .line 954
    .end local v4           #chordBug:I
    .end local v9           #intent:Landroid/content/Intent;
    :cond_13c
    const/16 v16, 0x53

    move/from16 v0, p2

    move/from16 v1, v16

    if-ne v0, v1, :cond_163

    .line 955
    if-eqz p4, :cond_155

    .line 959
    const-string v16, "statusbar"

    invoke-static/range {v16 .. v16}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/app/IStatusBar$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IStatusBar;

    move-result-object v12

    .line 960
    .local v12, sbs:Landroid/app/IStatusBar;
    if-eqz v12, :cond_155

    .line 962
    :try_start_152
    invoke-interface {v12}, Landroid/app/IStatusBar;->toggle()V
    :try_end_155
    .catch Landroid/os/RemoteException; {:try_start_152 .. :try_end_155} :catch_159

    .line 969
    .end local v12           #sbs:Landroid/app/IStatusBar;
    :cond_155
    const/16 v16, 0x1

    goto/16 :goto_61

    .line 963
    .restart local v12       #sbs:Landroid/app/IStatusBar;
    :catch_159
    move-exception v5

    .line 965
    .local v5, e:Landroid/os/RemoteException;
    new-instance v16, Ljava/lang/RuntimeException;

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v16

    .line 970
    .end local v5           #e:Landroid/os/RemoteException;
    .end local v12           #sbs:Landroid/app/IStatusBar;
    :cond_163
    const/16 v16, 0x54

    move/from16 v0, p2

    move/from16 v1, v16

    if-ne v0, v1, :cond_177

    .line 971
    if-eqz p4, :cond_1b7

    .line 972
    if-nez p5, :cond_177

    .line 973
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchKeyPressed:Z

    .line 987
    :cond_177
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchKeyPressed:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1d3

    .line 988
    if-eqz p4, :cond_1d3

    if-nez p5, :cond_1d3

    if-nez v10, :cond_1d3

    .line 989
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/ShortcutManager;->getIntent(II)Landroid/content/Intent;

    move-result-object v13

    .line 990
    .local v13, shortcutIntent:Landroid/content/Intent;
    if-eqz v13, :cond_1d3

    .line 991
    const/high16 v16, 0x1000

    move-object v0, v13

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 992
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 998
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    .line 999
    const/16 v16, 0x1

    goto/16 :goto_61

    .line 976
    .end local v13           #shortcutIntent:Landroid/content/Intent;
    :cond_1b7
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchKeyPressed:Z

    .line 978
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    move/from16 v16, v0

    if-eqz v16, :cond_177

    .line 980
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    .line 981
    const/16 v16, 0x1

    goto/16 :goto_61

    .line 1004
    :cond_1d3
    const/16 v16, 0x0

    goto/16 :goto_61
.end method

.method public interceptKeyTq(Landroid/view/RawInputEvent;Z)I
    .registers 35
    .parameter "event"
    .parameter "screenIsOn"

    .prologue
    .line 1642
    const/16 v28, 0x1

    .line 1643
    .local v28, result:I
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isWakeKeyTq(Landroid/view/RawInputEvent;)Z

    move-result v23

    .line 1644
    .local v23, isWakeKey:Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardIsShowingTq()Z

    move-result v24

    .line 1650
    .local v24, keyguardShowing:Z
    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/RawInputEvent;->type:I

    move/from16 v31, v0

    .line 1651
    .local v31, type:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/RawInputEvent;->keycode:I

    move v9, v0

    .line 1652
    .local v9, code:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/RawInputEvent;->value:I

    move v4, v0

    if-eqz v4, :cond_139

    const/4 v4, 0x1

    move v12, v4

    .line 1654
    .local v12, down:Z
    :goto_1e
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->is_PowerKeyIntervalOk()Z

    move-result v4

    if-nez v4, :cond_35

    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/RawInputEvent;->type:I

    move v4, v0

    const/4 v5, 0x1

    if-ne v4, v5, :cond_c0

    move-object/from16 v0, p0

    move v1, v9

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isSlideWakeKey(I)Z

    move-result v4

    if-eqz v4, :cond_c0

    .line 1658
    :cond_35
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->set_ingEnteringSleep(Z)V

    .line 1661
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-wide v0, v4

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastPowerKeyTime:J

    .line 1673
    move-object/from16 v0, p0

    move v1, v9

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isSlideWakeKey(I)Z

    move-result v4

    if-eqz v4, :cond_c0

    .line 1677
    if-eqz v12, :cond_158

    .line 1679
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SlideDown Key screenIsOn = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    if-nez p2, :cond_151

    .line 1687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    move-object v4, v0

    invoke-interface {v4}, Landroid/os/LocalPowerManager;->getRotationUpOnce()Z

    move-result v4

    if-nez v4, :cond_b6

    .line 1689
    const/16 v26, 0x0

    .line 1690
    .local v26, once:Z
    const/4 v11, 0x0

    .line 1691
    .local v11, CallState:I
    const-string v4, "WindowManager"

    const-string v5, "Start Set Proxmity SlideUp"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1693
    :try_start_82
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getPhoneInterface()Lcom/android/internal/telephony/ITelephony;

    move-result-object v27

    .line 1694
    .local v27, phoneServ:Lcom/android/internal/telephony/ITelephony;
    if-eqz v27, :cond_13d

    .line 1695
    invoke-interface/range {v27 .. v27}, Lcom/android/internal/telephony/ITelephony;->getCallState()I
    :try_end_8b
    .catch Landroid/os/RemoteException; {:try_start_82 .. :try_end_8b} :catch_146

    move-result v11

    .line 1702
    .end local v27           #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :goto_8c
    if-eqz v11, :cond_90

    .line 1705
    const/16 v26, 0x1

    .line 1712
    :cond_90
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/os/LocalPowerManager;->setRotationUpOnce(Z)V

    .line 1713
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "End Set Proxmity SlideUp once = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1715
    .end local v11           #CallState:I
    .end local v26           #once:Z
    :cond_b6
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->WAKESD_Pressed:Z

    .line 1717
    or-int/lit8 v28, v28, 0x2

    .line 1718
    and-int/lit8 v28, v28, -0x2

    .line 1786
    :cond_c0
    :goto_c0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/RawInputEvent;->type:I

    move v4, v0

    const/4 v5, 0x1

    if-ne v4, v5, :cond_197

    move-object/from16 v0, p0

    move v1, v9

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isPowerKey(I)Z

    move-result v4

    if-eqz v4, :cond_197

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->downkeypressed_before:Z

    move v4, v0

    if-nez v4, :cond_de

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->is_ingEnteringSleep()Z

    move-result v4

    if-eqz v4, :cond_197

    .line 1791
    :cond_de
    if-eqz v12, :cond_18f

    .line 1792
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->downkeypressed_before:Z

    .line 1796
    :goto_e6
    and-int/lit8 v28, v28, -0x3

    .line 1798
    and-int/lit8 v28, v28, -0x2

    .line 1883
    :cond_ea
    :goto_ea
    const/4 v4, 0x1

    move/from16 v0, v31

    move v1, v4

    if-ne v0, v1, :cond_136

    .line 1902
    if-nez v23, :cond_fd

    const/4 v4, 0x6

    if-eq v9, v4, :cond_fd

    const/16 v4, 0x52

    if-eq v9, v4, :cond_fd

    const/16 v4, 0x4f

    if-ne v9, v4, :cond_ff

    .line 1906
    :cond_fd
    or-int/lit8 v28, v28, 0x8

    .line 1909
    :cond_ff
    const/16 v4, 0x18

    if-eq v9, v4, :cond_107

    const/16 v4, 0x19

    if-ne v9, v4, :cond_114

    :cond_107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    move-object v4, v0

    invoke-interface {v4}, Landroid/os/LocalPowerManager;->get_userMakeSleep()Z

    move-result v4

    if-eqz v4, :cond_114

    .line 1910
    and-int/lit8 v28, v28, -0x9

    .line 1914
    :cond_114
    move-object/from16 v0, p0

    move v1, v9

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isPowerKey(I)Z

    move-result v4

    if-eqz v4, :cond_287

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->downkeypressed_before:Z

    move v4, v0

    if-nez v4, :cond_12a

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->is_ingEnteringSleep()Z

    move-result v4

    if-eqz v4, :cond_287

    .line 1918
    :cond_12a
    if-eqz v12, :cond_27f

    .line 1919
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->downkeypressed_before:Z

    .line 1923
    :goto_132
    and-int/lit8 v28, v28, -0x3

    .line 1925
    and-int/lit8 v28, v28, -0x2

    :cond_136
    :goto_136
    move/from16 v29, v28

    .line 2157
    .end local v28           #result:I
    .local v29, result:I
    :goto_138
    return v29

    .line 1652
    .end local v12           #down:Z
    .end local v29           #result:I
    .restart local v28       #result:I
    :cond_139
    const/4 v4, 0x0

    move v12, v4

    goto/16 :goto_1e

    .line 1697
    .restart local v11       #CallState:I
    .restart local v12       #down:Z
    .restart local v26       #once:Z
    .restart local v27       #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :cond_13d
    :try_start_13d
    const-string v4, "WindowManager"

    const-string v5, "Unable to find ITelephony interface"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_144
    .catch Landroid/os/RemoteException; {:try_start_13d .. :try_end_144} :catch_146

    goto/16 :goto_8c

    .line 1699
    .end local v27           #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :catch_146
    move-exception v4

    move-object v15, v4

    .line 1700
    .local v15, ex:Landroid/os/RemoteException;
    const-string v4, "WindowManager"

    const-string v5, "RemoteException from getPhoneInterface()"

    invoke-static {v4, v5, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8c

    .line 1723
    .end local v11           #CallState:I
    .end local v15           #ex:Landroid/os/RemoteException;
    .end local v26           #once:Z
    :cond_151
    and-int/lit8 v28, v28, -0x3

    .line 1725
    and-int/lit8 v28, v28, -0x2

    move/from16 v29, v28

    .line 1726
    .end local v28           #result:I
    .restart local v29       #result:I
    goto :goto_138

    .line 1732
    .end local v29           #result:I
    .restart local v28       #result:I
    :cond_158
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SlideUp Key WAKESD_Pressed = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->WAKESD_Pressed:Z

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->WAKESD_Pressed:Z

    move v4, v0

    if-eqz v4, :cond_188

    .line 1735
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->WAKESD_Pressed:Z

    .line 1740
    or-int/lit8 v28, v28, 0x2

    .line 1741
    and-int/lit8 v28, v28, -0x2

    goto/16 :goto_c0

    .line 1745
    :cond_188
    and-int/lit8 v28, v28, -0x3

    .line 1747
    and-int/lit8 v28, v28, -0x2

    move/from16 v29, v28

    .line 1748
    .end local v28           #result:I
    .restart local v29       #result:I
    goto :goto_138

    .line 1794
    .end local v29           #result:I
    .restart local v28       #result:I
    :cond_18f
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->downkeypressed_before:Z

    goto/16 :goto_e6

    .line 1804
    :cond_197
    if-eqz v24, :cond_239

    .line 1805
    if-eqz p2, :cond_1ab

    .line 1808
    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/RawInputEvent;->keycode:I

    move v4, v0

    const/16 v5, 0x52

    if-ne v4, v5, :cond_1a7

    .line 1809
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->wakeUpModem()V

    .line 1812
    :cond_1a7
    or-int/lit8 v28, v28, 0x1

    goto/16 :goto_ea

    .line 1815
    :cond_1ab
    and-int/lit8 v28, v28, -0x2

    .line 1817
    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/RawInputEvent;->type:I

    move v4, v0

    const/4 v5, 0x1

    if-ne v4, v5, :cond_21a

    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/RawInputEvent;->value:I

    move v4, v0

    if-eqz v4, :cond_21a

    const/4 v4, 0x1

    move/from16 v22, v4

    .line 1820
    .local v22, isKeyDown:Z
    :goto_1bf
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object v4, v0

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/media/AudioManager;

    .line 1821
    .local v25, mAudioManager:Landroid/media/AudioManager;
    const/16 v21, 0x0

    .line 1822
    .local v21, isFMRadioEnabled:Z
    if-eqz v25, :cond_1df

    .line 1825
    const/4 v4, 0x0

    move-object/from16 v0, v25

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getRouting(I)I

    move-result v4

    const/16 v5, 0x400

    if-ne v4, v5, :cond_21e

    const/4 v4, 0x1

    move/from16 v21, v4

    .line 1828
    :cond_1df
    :goto_1df
    if-eqz v23, :cond_ea

    if-eqz v22, :cond_ea

    .line 1833
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object v4, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/RawInputEvent;->keycode:I

    move v5, v0

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->onWakeKeyWhenKeyguardShowingTq(I)Z

    move-result v4

    if-nez v4, :cond_ea

    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/RawInputEvent;->keycode:I

    move v4, v0

    const/16 v5, 0x19

    if-eq v4, v5, :cond_205

    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/RawInputEvent;->keycode:I

    move v4, v0

    const/16 v5, 0x18

    if-ne v4, v5, :cond_ea

    .line 1836
    :cond_205
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isInCall()Z

    move-result v4

    if-eqz v4, :cond_222

    .line 1839
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/RawInputEvent;->keycode:I

    move v5, v0

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->handleVolumeKey(II)V

    goto/16 :goto_ea

    .line 1817
    .end local v21           #isFMRadioEnabled:Z
    .end local v22           #isKeyDown:Z
    .end local v25           #mAudioManager:Landroid/media/AudioManager;
    :cond_21a
    const/4 v4, 0x0

    move/from16 v22, v4

    goto :goto_1bf

    .line 1825
    .restart local v21       #isFMRadioEnabled:Z
    .restart local v22       #isKeyDown:Z
    .restart local v25       #mAudioManager:Landroid/media/AudioManager;
    :cond_21e
    const/4 v4, 0x0

    move/from16 v21, v4

    goto :goto_1df

    .line 1840
    :cond_222
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isMusicActive()Z

    move-result v4

    if-nez v4, :cond_22a

    if-eqz v21, :cond_ea

    .line 1843
    :cond_22a
    const/4 v4, 0x3

    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/RawInputEvent;->keycode:I

    move v5, v0

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->handleVolumeKey(II)V

    goto/16 :goto_ea

    .line 1849
    .end local v21           #isFMRadioEnabled:Z
    .end local v22           #isKeyDown:Z
    .end local v25           #mAudioManager:Landroid/media/AudioManager;
    :cond_239
    if-nez p2, :cond_ea

    .line 1856
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isInCall()Z

    move-result v4

    if-eqz v4, :cond_26a

    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/RawInputEvent;->type:I

    move v4, v0

    const/4 v5, 0x1

    if-ne v4, v5, :cond_26a

    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/RawInputEvent;->keycode:I

    move v4, v0

    const/16 v5, 0x19

    if-eq v4, v5, :cond_25b

    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/RawInputEvent;->keycode:I

    move v4, v0

    const/16 v5, 0x18

    if-ne v4, v5, :cond_26a

    .line 1859
    :cond_25b
    and-int/lit8 v28, v28, -0x2

    .line 1860
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/RawInputEvent;->keycode:I

    move v5, v0

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->handleVolumeKey(II)V

    .line 1863
    :cond_26a
    if-eqz v23, :cond_272

    .line 1866
    or-int/lit8 v28, v28, 0x2

    .line 1867
    and-int/lit8 v28, v28, -0x2

    goto/16 :goto_ea

    .line 1872
    :cond_272
    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/RawInputEvent;->keycode:I

    move v4, v0

    const/4 v5, 0x6

    if-eq v4, v5, :cond_ea

    .line 1873
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->wakeUpModem()V

    goto/16 :goto_ea

    .line 1921
    :cond_27f
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->downkeypressed_before:Z

    goto/16 :goto_132

    .line 1930
    :cond_287
    const/4 v4, 0x6

    if-ne v9, v4, :cond_4c0

    .line 1931
    const-string v4, "ril.cdma.inecmmode"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    .line 1932
    .local v19, inECBM:Z
    const-string v4, "PhoneWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "inECBM: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1933
    if-eqz v12, :cond_3d6

    .line 1934
    if-nez v19, :cond_2b6

    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mECBMEndPressed:Z

    .line 1935
    :cond_2b6
    const-string v4, "WindowManager"

    const-string v5, "End Key Down"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1936
    const/16 v17, 0x0

    .line 1954
    .local v17, hungUp:Z
    if-nez v17, :cond_2c7

    if-eqz p2, :cond_2c7

    if-eqz v19, :cond_331

    if-nez v24, :cond_331

    .line 1955
    :cond_2c7
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShouldTurnOffOnKeyUp:Z

    .line 1993
    :goto_2cd
    if-nez v19, :cond_2d1

    if-eqz v17, :cond_381

    :cond_2d1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mECBMEndPressed:Z

    move v4, v0

    if-nez v4, :cond_381

    if-nez v24, :cond_381

    .line 1994
    and-int/lit8 v28, v28, -0x2

    .line 1999
    :goto_2dc
    if-eqz v19, :cond_136

    if-nez v24, :cond_136

    .line 2001
    const-string v4, "WindowManager"

    const-string v5, "End key up in ECBM_MODE"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2002
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mECBMEndPressed:Z

    move v4, v0

    if-nez v4, :cond_3c7

    .line 2003
    const-string v4, "WindowManager"

    const-string v5, "!mECBMEndPressed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2004
    new-instance v14, Landroid/content/Intent;

    const-string v4, "android.intent.action.ECBMDialog"

    invoke-direct {v14, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2005
    .local v14, ecbmAlarm:Landroid/content/Intent;
    const/high16 v4, 0x1000

    invoke-virtual {v14, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2007
    :try_start_301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-virtual {v4, v14}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2008
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mECBMEndPressed:Z
    :try_end_30f
    .catch Landroid/content/ActivityNotFoundException; {:try_start_301 .. :try_end_30f} :catch_311

    goto/16 :goto_136

    .line 2009
    :catch_311
    move-exception v4

    move-object v13, v4

    .line 2010
    .local v13, e:Landroid/content/ActivityNotFoundException;
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to find activity for intent"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v14}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_136

    .line 1959
    .end local v13           #e:Landroid/content/ActivityNotFoundException;
    .end local v14           #ecbmAlarm:Landroid/content/Intent;
    :cond_331
    if-eqz v24, :cond_366

    if-eqz p2, :cond_366

    .line 1961
    const/16 v20, 0x0

    .line 1963
    .local v20, inLockScreen:Z
    :try_start_337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    move-object v4, v0

    invoke-interface {v4}, Landroid/view/IWindowManager;->getLockScreen()Z
    :try_end_33f
    .catch Landroid/os/RemoteException; {:try_start_337 .. :try_end_33f} :catch_582

    move-result v20

    .line 1967
    :goto_340
    if-eqz v20, :cond_34b

    .line 1969
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShouldTurnOffOnKeyUp:Z

    .line 1972
    or-int/lit8 v28, v28, 0x1

    goto :goto_2cd

    .line 1976
    :cond_34b
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShouldTurnOffOnKeyUp:Z

    .line 1977
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEndCallLongPress:Ljava/lang/Runnable;

    move-object v5, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1979
    and-int/lit8 v28, v28, -0x2

    goto/16 :goto_2cd

    .line 1986
    .end local v20           #inLockScreen:Z
    :cond_366
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShouldTurnOffOnKeyUp:Z

    .line 1987
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEndCallLongPress:Ljava/lang/Runnable;

    move-object v5, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1989
    and-int/lit8 v28, v28, -0x2

    goto/16 :goto_2cd

    .line 1996
    :cond_381
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "End Key down: inECBM: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " hungup "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "mECBMEndPressed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mECBMEndPressed:Z

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " keyguardShowing: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2dc

    .line 2013
    :cond_3c7
    const-string v4, "WindowManager"

    const-string v5, "mECBMEndPressed"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2014
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mECBMEndPressed:Z

    goto/16 :goto_136

    .line 2018
    .end local v17           #hungUp:Z
    :cond_3d6
    const-string v4, "WindowManager"

    const-string v5, "End Key Up"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2019
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEndCallLongPress:Ljava/lang/Runnable;

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2020
    if-eqz v19, :cond_3ee

    if-eqz v24, :cond_136

    .line 2021
    :cond_3ee
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShouldTurnOffOnKeyUp:Z

    move v4, v0

    if-eqz v4, :cond_136

    .line 2022
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShouldTurnOffOnKeyUp:Z

    .line 2023
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEndcallBehavior:I

    move v4, v0

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_441

    const/4 v4, 0x1

    move/from16 v16, v4

    .line 2024
    .local v16, gohome:Z
    :goto_407
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEndcallBehavior:I

    move v4, v0

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_445

    const/4 v4, 0x1

    move/from16 v30, v4

    .line 2026
    .local v30, sleeps:Z
    :goto_413
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKEY_PRESS_TEST:I

    .line 2027
    const/16 v18, 0x0

    .local v18, i:I
    :goto_41b
    sget-object v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->HOME_KEY_EXCEPTION_LIST:[Ljava/lang/String;

    array-length v4, v4

    move/from16 v0, v18

    move v1, v4

    if-ge v0, v1, :cond_449

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKEY_PRESS_TEST:I

    move v4, v0

    if-nez v4, :cond_449

    .line 2029
    sget-object v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->HOME_KEY_EXCEPTION_LIST:[Ljava/lang/String;

    aget-object v4, v4, v18

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isTopActivity(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_43e

    .line 2030
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKEY_PRESS_TEST:I

    .line 2027
    :cond_43e
    add-int/lit8 v18, v18, 0x1

    goto :goto_41b

    .line 2023
    .end local v16           #gohome:Z
    .end local v18           #i:I
    .end local v30           #sleeps:Z
    :cond_441
    const/4 v4, 0x0

    move/from16 v16, v4

    goto :goto_407

    .line 2024
    .restart local v16       #gohome:Z
    :cond_445
    const/4 v4, 0x0

    move/from16 v30, v4

    goto :goto_413

    .line 2034
    .restart local v18       #i:I
    .restart local v30       #sleeps:Z
    :cond_449
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKEY_PRESS_TEST:I

    move v4, v0

    if-nez v4, :cond_4b6

    .line 2036
    if-nez v24, :cond_460

    if-eqz v30, :cond_456

    if-eqz v16, :cond_460

    :cond_456
    if-eqz v16, :cond_4b2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->goHome()Z

    move-result v4

    if-nez v4, :cond_4b2

    if-eqz v30, :cond_4b2

    .line 2041
    :cond_460
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "I\'m tired mEndcallBehavior=0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEndcallBehavior:I

    move v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2043
    and-int/lit8 v28, v28, -0x3

    .line 2045
    or-int/lit8 v28, v28, 0x4

    .line 2046
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->set_ingEnteringSleep(Z)V

    .line 2047
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-wide v0, v4

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastPowerKeyTime:J

    .line 2048
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mLastPowerKeyTime = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastPowerKeyTime:J

    move-wide v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2050
    :cond_4b2
    and-int/lit8 v28, v28, -0x2

    goto/16 :goto_136

    .line 2061
    :cond_4b6
    if-eqz p2, :cond_4bc

    .line 2063
    or-int/lit8 v28, v28, 0x1

    goto/16 :goto_136

    .line 2066
    :cond_4bc
    and-int/lit8 v28, v28, -0x2

    goto/16 :goto_136

    .line 2073
    .end local v16           #gohome:Z
    .end local v18           #i:I
    .end local v19           #inECBM:Z
    .end local v30           #sleeps:Z
    :cond_4c0
    invoke-static {v9}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isMediaKey(I)Z

    move-result v4

    if-eqz v4, :cond_517

    .line 2077
    and-int/lit8 v4, v28, 0x1

    if-nez v4, :cond_136

    .line 2079
    invoke-static {v9}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAVKey(I)Z

    move-result v4

    if-eqz v4, :cond_4e0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isInCall()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4e0

    .line 2080
    const-string v4, "WindowManager"

    const-string v5, "ignore PassHeadsetKey"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_136

    .line 2087
    :cond_4e0
    const-string v4, "WindowManager"

    const-string v5, "PassHeadsetKey"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2088
    new-instance v3, Landroid/view/KeyEvent;

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/view/RawInputEvent;->when:J

    move-wide v4, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/view/RawInputEvent;->when:J

    move-wide v6, v0

    if-eqz v12, :cond_515

    const/4 v8, 0x0

    :goto_4f6
    const/4 v10, 0x0

    invoke-direct/range {v3 .. v10}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 2091
    .local v3, keyEvent:Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2092
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object v4, v0

    new-instance v5, Lcom/android/internal/policy/impl/PhoneWindowManager$PassHeadsetKey;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v3

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager$PassHeadsetKey;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/KeyEvent;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_136

    .line 2088
    .end local v3           #keyEvent:Landroid/view/KeyEvent;
    :cond_515
    const/4 v8, 0x1

    goto :goto_4f6

    .line 2095
    :cond_517
    const/4 v4, 0x5

    if-ne v9, v4, :cond_54a

    .line 2103
    if-eqz v12, :cond_136

    .line 2105
    :try_start_51c
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getPhoneInterface()Lcom/android/internal/telephony/ITelephony;

    move-result-object v27

    .line 2106
    .restart local v27       #phoneServ:Lcom/android/internal/telephony/ITelephony;
    if-eqz v27, :cond_536

    .line 2107
    invoke-interface/range {v27 .. v27}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v4

    if-eqz v4, :cond_136

    .line 2108
    const-string v4, "WindowManager"

    const-string v5, "interceptKeyTq: CALL key-down while ringing: Answer the call!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2110
    invoke-interface/range {v27 .. v27}, Lcom/android/internal/telephony/ITelephony;->answerRingingCall()V

    .line 2114
    and-int/lit8 v28, v28, -0x2

    goto/16 :goto_136

    .line 2117
    :cond_536
    const-string v4, "WindowManager"

    const-string v5, "CALL button: Unable to find ITelephony interface"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_53d
    .catch Landroid/os/RemoteException; {:try_start_51c .. :try_end_53d} :catch_53f

    goto/16 :goto_136

    .line 2119
    .end local v27           #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :catch_53f
    move-exception v4

    move-object v15, v4

    .line 2120
    .restart local v15       #ex:Landroid/os/RemoteException;
    const-string v4, "WindowManager"

    const-string v5, "CALL button: RemoteException from getPhoneInterface()"

    invoke-static {v4, v5, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_136

    .line 2123
    .end local v15           #ex:Landroid/os/RemoteException;
    :cond_54a
    const/16 v4, 0x18

    if-eq v9, v4, :cond_552

    const/16 v4, 0x19

    if-ne v9, v4, :cond_136

    .line 2132
    :cond_552
    if-eqz v12, :cond_136

    .line 2134
    :try_start_554
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getPhoneInterface()Lcom/android/internal/telephony/ITelephony;

    move-result-object v27

    .line 2135
    .restart local v27       #phoneServ:Lcom/android/internal/telephony/ITelephony;
    if-eqz v27, :cond_56e

    .line 2136
    invoke-interface/range {v27 .. v27}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v4

    if-eqz v4, :cond_136

    .line 2137
    const-string v4, "WindowManager"

    const-string v5, "interceptKeyTq: VOLUME key-down while ringing: Silence ringer!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2141
    invoke-interface/range {v27 .. v27}, Lcom/android/internal/telephony/ITelephony;->silenceRinger()V

    .line 2145
    and-int/lit8 v28, v28, -0x2

    goto/16 :goto_136

    .line 2148
    :cond_56e
    const-string v4, "WindowManager"

    const-string v5, "VOLUME button: Unable to find ITelephony interface"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_575
    .catch Landroid/os/RemoteException; {:try_start_554 .. :try_end_575} :catch_577

    goto/16 :goto_136

    .line 2150
    .end local v27           #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :catch_577
    move-exception v4

    move-object v15, v4

    .line 2151
    .restart local v15       #ex:Landroid/os/RemoteException;
    const-string v4, "WindowManager"

    const-string v5, "VOLUME button: RemoteException from getPhoneInterface()"

    invoke-static {v4, v5, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_136

    .line 1964
    .end local v15           #ex:Landroid/os/RemoteException;
    .restart local v17       #hungUp:Z
    .restart local v19       #inECBM:Z
    .restart local v20       #inLockScreen:Z
    :catch_582
    move-exception v4

    goto/16 :goto_340
.end method

.method public isAppSwitchKeyTqTiLwLi(I)Z
    .registers 3
    .parameter "keycode"

    .prologue
    .line 1446
    const/4 v0, 0x3

    if-eq p1, v0, :cond_a

    const/4 v0, 0x6

    if-eq p1, v0, :cond_a

    const/16 v0, 0xc9

    if-ne p1, v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isCheekPressedAgainstScreen(Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "ev"

    .prologue
    const/4 v4, 0x1

    const v3, 0x3f19999a

    .line 561
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSize()F

    move-result v2

    cmpl-float v2, v2, v3

    if-lez v2, :cond_e

    move v2, v4

    .line 570
    :goto_d
    return v2

    .line 564
    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v1

    .line 565
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_13
    if-ge v0, v1, :cond_22

    .line 566
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getHistoricalSize(I)F

    move-result v2

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1f

    move v2, v4

    .line 567
    goto :goto_d

    .line 565
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 570
    :cond_22
    const/4 v2, 0x0

    goto :goto_d
.end method

.method isDeviceProvisioned()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 434
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    move v0, v2

    goto :goto_10
.end method

.method isInCall()Z
    .registers 7

    .prologue
    const/4 v4, 0x0

    const-string v5, "WindowManager"

    .line 1468
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getPhoneInterface()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1469
    .local v1, phone:Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_12

    .line 1470
    const-string v2, "WindowManager"

    const-string v2, "couldn\'t get ITelephony reference"

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    .line 1477
    :goto_11
    return v2

    .line 1474
    :cond_12
    :try_start_12
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_17

    move-result v2

    goto :goto_11

    .line 1475
    :catch_17
    move-exception v0

    .line 1476
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ITelephony.isOffhhook threw RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    .line 1477
    goto :goto_11
.end method

.method public isMovementKeyTi(I)Z
    .registers 3
    .parameter "keycode"

    .prologue
    .line 1453
    packed-switch p1, :pswitch_data_8

    .line 1460
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 1458
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 1453
    nop

    :pswitch_data_8
    .packed-switch 0x13
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method isMusicActive()Z
    .registers 7

    .prologue
    const/4 v4, 0x0

    const-string v5, "WindowManager"

    .line 1485
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getAudioInterface()Landroid/media/IAudioService;

    move-result-object v0

    .line 1486
    .local v0, audio:Landroid/media/IAudioService;
    if-nez v0, :cond_12

    .line 1487
    const-string v2, "WindowManager"

    const-string v2, "isMusicActive: couldn\'t get IAudioService reference"

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    .line 1494
    :goto_11
    return v2

    .line 1491
    :cond_12
    :try_start_12
    invoke-interface {v0}, Landroid/media/IAudioService;->isMusicActive()Z
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_17

    move-result v2

    goto :goto_11

    .line 1492
    :catch_17
    move-exception v1

    .line 1493
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IAudioService.isMusicActive() threw RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    .line 1494
    goto :goto_11
.end method

.method public isUnlockScreenOn()Z
    .registers 2

    .prologue
    .line 1531
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v0

    return v0
.end method

.method public isWakeAbsMovementTq(IILandroid/view/RawInputEvent;)Z
    .registers 5
    .parameter "device"
    .parameter "classes"
    .parameter "event"

    .prologue
    .line 2194
    iget v0, p3, Landroid/view/RawInputEvent;->flags:I

    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected isWakeKeyTq(Landroid/view/RawInputEvent;)Z
    .registers 5
    .parameter "event"

    .prologue
    .line 2203
    iget v1, p1, Landroid/view/RawInputEvent;->keycode:I

    .line 2204
    .local v1, keycode:I
    iget v0, p1, Landroid/view/RawInputEvent;->flags:I

    .line 2205
    .local v0, flags:I
    const/16 v2, 0x110

    if-ne v1, v2, :cond_a

    .line 2206
    or-int/lit8 v0, v0, 0x1

    .line 2208
    :cond_a
    and-int/lit8 v2, v0, 0x3

    if-eqz v2, :cond_10

    const/4 v2, 0x1

    :goto_f
    return v2

    :cond_10
    const/4 v2, 0x0

    goto :goto_f
.end method

.method public isWakeRelMovementTq(IILandroid/view/RawInputEvent;)Z
    .registers 5
    .parameter "device"
    .parameter "classes"
    .parameter "event"

    .prologue
    .line 2187
    iget v0, p3, Landroid/view/RawInputEvent;->flags:I

    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public keyguardIsShowingTq()Z
    .registers 2

    .prologue
    .line 2244
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v0

    return v0
.end method

.method keyguardOn()Z
    .registers 2

    .prologue
    .line 804
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardIsShowingTq()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->inKeyguardRestrictedKeyInputMode()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method launchHomeFromHotKey()V
    .registers 3

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1038
    :goto_8
    return-void

    .line 1014
    :cond_9
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isInputRestricted()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1017
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$3;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->verifyUnlock(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V

    goto :goto_8

    .line 1032
    :cond_1c
    :try_start_1c
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->stopAppSwitches()V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_23} :catch_2e

    .line 1035
    :goto_23
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows()V

    .line 1036
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_8

    .line 1033
    :catch_2e
    move-exception v0

    goto :goto_23
.end method

.method public layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;)V
    .registers 15
    .parameter "win"
    .parameter "attrs"
    .parameter "attached"

    .prologue
    .line 1140
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne p1, v0, :cond_5

    .line 1296
    :cond_4
    :goto_4
    return-void

    .line 1151
    :cond_5
    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1152
    .local v2, fl:I
    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1154
    .local v3, sim:I
    sget-object v6, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    .line 1155
    .local v6, pf:Landroid/graphics/Rect;
    sget-object v7, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 1156
    .local v7, df:Landroid/graphics/Rect;
    sget-object v8, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpContentFrame:Landroid/graphics/Rect;

    .line 1157
    .local v8, cf:Landroid/graphics/Rect;
    sget-object v9, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    .line 1159
    .local v9, vf:Landroid/graphics/Rect;
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7db

    if-ne v0, v1, :cond_b9

    .line 1160
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    iput v0, v9, Landroid/graphics/Rect;->left:I

    iput v0, v8, Landroid/graphics/Rect;->left:I

    iput v0, v7, Landroid/graphics/Rect;->left:I

    iput v0, v6, Landroid/graphics/Rect;->left:I

    .line 1161
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iput v0, v9, Landroid/graphics/Rect;->top:I

    iput v0, v8, Landroid/graphics/Rect;->top:I

    iput v0, v7, Landroid/graphics/Rect;->top:I

    iput v0, v6, Landroid/graphics/Rect;->top:I

    .line 1162
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    iput v0, v9, Landroid/graphics/Rect;->right:I

    iput v0, v8, Landroid/graphics/Rect;->right:I

    iput v0, v7, Landroid/graphics/Rect;->right:I

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 1163
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iput v0, v9, Landroid/graphics/Rect;->bottom:I

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 1165
    const/16 v0, 0x50

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1166
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    .line 1240
    :goto_49
    and-int/lit16 v0, v2, 0x200

    if-eqz v0, :cond_69

    .line 1241
    const/16 v0, -0x2710

    iput v0, v9, Landroid/graphics/Rect;->top:I

    iput v0, v9, Landroid/graphics/Rect;->left:I

    iput v0, v8, Landroid/graphics/Rect;->top:I

    iput v0, v8, Landroid/graphics/Rect;->left:I

    iput v0, v7, Landroid/graphics/Rect;->top:I

    iput v0, v7, Landroid/graphics/Rect;->left:I

    .line 1242
    const/16 v0, 0x2710

    iput v0, v9, Landroid/graphics/Rect;->bottom:I

    iput v0, v9, Landroid/graphics/Rect;->right:I

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    iput v0, v8, Landroid/graphics/Rect;->right:I

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    iput v0, v7, Landroid/graphics/Rect;->right:I

    .line 1260
    :cond_69
    invoke-interface {p1, v6, v7, v8, v9}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1262
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_85

    .line 1263
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_1b4

    .line 1264
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBar:Z

    .line 1272
    .end local v2           #fl:I
    .end local v3           #sim:I
    :cond_7b
    :goto_7b
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x8

    and-int/2addr v0, v1

    if-eqz v0, :cond_85

    .line 1275
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideKeyguard:Z

    .line 1281
    :cond_85
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7db

    if-ne v0, v1, :cond_4

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenInsetsPendingLw()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1282
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    iget v10, v0, Landroid/graphics/Rect;->top:I

    .line 1283
    .local v10, top:I
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v0

    .line 1284
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    if-le v0, v10, :cond_a4

    .line 1285
    iput v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    .line 1287
    :cond_a4
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    iget v10, v0, Landroid/graphics/Rect;->top:I

    .line 1288
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenVisibleInsetsLw()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v0

    .line 1289
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    if-le v0, v10, :cond_4

    .line 1290
    iput v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    goto/16 :goto_4

    .line 1168
    .end local v10           #top:I
    .restart local v2       #fl:I
    .restart local v3       #sim:I
    :cond_b9
    const v0, 0x10500

    and-int/2addr v0, v2

    const v1, 0x10100

    if-ne v0, v1, :cond_11c

    .line 1175
    if-eqz p3, :cond_cd

    .line 1178
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_49

    .line 1180
    :cond_cd
    const/4 v0, 0x0

    iput v0, v7, Landroid/graphics/Rect;->left:I

    iput v0, v6, Landroid/graphics/Rect;->left:I

    .line 1181
    const/4 v0, 0x0

    iput v0, v7, Landroid/graphics/Rect;->top:I

    iput v0, v6, Landroid/graphics/Rect;->top:I

    .line 1182
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mW:I

    iput v0, v7, Landroid/graphics/Rect;->right:I

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 1183
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mH:I

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 1184
    and-int/lit16 v0, v3, 0xf0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_10b

    .line 1185
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    iput v0, v8, Landroid/graphics/Rect;->left:I

    .line 1186
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iput v0, v8, Landroid/graphics/Rect;->top:I

    .line 1187
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    iput v0, v8, Landroid/graphics/Rect;->right:I

    .line 1188
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    .line 1195
    :goto_f9
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iput v0, v9, Landroid/graphics/Rect;->left:I

    .line 1196
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iput v0, v9, Landroid/graphics/Rect;->top:I

    .line 1197
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    iput v0, v9, Landroid/graphics/Rect;->right:I

    .line 1198
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    iput v0, v9, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_49

    .line 1190
    :cond_10b
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iput v0, v8, Landroid/graphics/Rect;->left:I

    .line 1191
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v0, v8, Landroid/graphics/Rect;->top:I

    .line 1192
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iput v0, v8, Landroid/graphics/Rect;->right:I

    .line 1193
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    goto :goto_f9

    .line 1200
    :cond_11c
    and-int/lit16 v0, v2, 0x100

    if-eqz v0, :cond_150

    .line 1203
    const/4 v0, 0x0

    iput v0, v8, Landroid/graphics/Rect;->left:I

    iput v0, v7, Landroid/graphics/Rect;->left:I

    iput v0, v6, Landroid/graphics/Rect;->left:I

    .line 1204
    const/4 v0, 0x0

    iput v0, v8, Landroid/graphics/Rect;->top:I

    iput v0, v7, Landroid/graphics/Rect;->top:I

    iput v0, v6, Landroid/graphics/Rect;->top:I

    .line 1205
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mW:I

    iput v0, v8, Landroid/graphics/Rect;->right:I

    iput v0, v7, Landroid/graphics/Rect;->right:I

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 1206
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mH:I

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 1207
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iput v0, v9, Landroid/graphics/Rect;->left:I

    .line 1208
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iput v0, v9, Landroid/graphics/Rect;->top:I

    .line 1209
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    iput v0, v9, Landroid/graphics/Rect;->right:I

    .line 1210
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    iput v0, v9, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_49

    .line 1211
    :cond_150
    if-eqz p3, :cond_15b

    .line 1214
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_49

    .line 1218
    :cond_15b
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iput v0, v6, Landroid/graphics/Rect;->left:I

    .line 1219
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v0, v6, Landroid/graphics/Rect;->top:I

    .line 1220
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 1221
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 1222
    and-int/lit16 v0, v3, 0xf0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_19b

    .line 1223
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    iput v0, v8, Landroid/graphics/Rect;->left:I

    iput v0, v7, Landroid/graphics/Rect;->left:I

    .line 1224
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iput v0, v8, Landroid/graphics/Rect;->top:I

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 1225
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    iput v0, v8, Landroid/graphics/Rect;->right:I

    iput v0, v7, Landroid/graphics/Rect;->right:I

    .line 1226
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 1233
    :goto_189
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iput v0, v9, Landroid/graphics/Rect;->left:I

    .line 1234
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iput v0, v9, Landroid/graphics/Rect;->top:I

    .line 1235
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    iput v0, v9, Landroid/graphics/Rect;->right:I

    .line 1236
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    iput v0, v9, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_49

    .line 1228
    :cond_19b
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iput v0, v8, Landroid/graphics/Rect;->left:I

    iput v0, v7, Landroid/graphics/Rect;->left:I

    .line 1229
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v0, v8, Landroid/graphics/Rect;->top:I

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 1230
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iput v0, v8, Landroid/graphics/Rect;->right:I

    iput v0, v7, Landroid/graphics/Rect;->right:I

    .line 1231
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    goto :goto_189

    .line 1265
    :cond_1b4
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v0, :cond_7b

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_7b

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x63

    if-gt v0, v1, :cond_7b

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mW:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mH:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/WindowManagerPolicy$WindowState;->fillsScreenLw(IIZZ)Z

    .end local v2           #fl:I
    .end local v3           #sim:I
    move-result v0

    if-eqz v0, :cond_7b

    .line 1270
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    goto/16 :goto_7b
.end method

.method needSensorRunningLp()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 350
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_8

    move v0, v2

    .line 366
    :goto_7
    return v0

    .line 355
    :cond_8
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAccelerometerDefault:I

    if-nez v0, :cond_e

    .line 364
    const/4 v0, 0x0

    goto :goto_7

    :cond_e
    move v0, v2

    .line 366
    goto :goto_7
.end method

.method public onKeyguardShow()V
    .registers 1

    .prologue
    .line 2256
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows()V

    .line 2257
    return-void
.end method

.method public performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z
    .registers 9
    .parameter "win"
    .parameter "effectId"
    .parameter "always"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 2416
    if-nez p3, :cond_15

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "haptic_feedback_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_15

    move v0, v2

    .line 2430
    :goto_14
    return v0

    .line 2420
    :cond_15
    packed-switch p2, :pswitch_data_2c

    move v0, v2

    .line 2430
    goto :goto_14

    .line 2422
    :pswitch_1a
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    sget-object v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->LONG_PRESS_VIBE_PATTERN:[J

    invoke-virtual {v0, v1, v3}, Landroid/os/Vibrator;->vibrate([JI)V

    move v0, v4

    .line 2423
    goto :goto_14

    .line 2426
    :pswitch_23
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    sget-object v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->PRESS_VIBE_PATTERN:[J

    invoke-virtual {v0, v1, v3}, Landroid/os/Vibrator;->vibrate([JI)V

    move v0, v4

    .line 2427
    goto :goto_14

    .line 2420
    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_23
    .end packed-switch
.end method

.method public prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .registers 5
    .parameter "win"
    .parameter "attrs"

    .prologue
    const/4 v1, -0x7

    .line 752
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v0, :sswitch_data_1a

    .line 766
    :goto_6
    const/4 v0, 0x0

    :goto_7
    return v0

    .line 754
    :sswitch_8
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_e

    move v0, v1

    .line 755
    goto :goto_7

    .line 757
    :cond_e
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_6

    .line 760
    :sswitch_11
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_17

    move v0, v1

    .line 761
    goto :goto_7

    .line 763
    :cond_17
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_6

    .line 752
    :sswitch_data_1a
    .sparse-switch
        0x7d0 -> :sswitch_8
        0x7d4 -> :sswitch_11
    .end sparse-switch
.end method

.method public preprocessInputEventTq(Landroid/view/RawInputEvent;)Z
    .registers 13
    .parameter "event"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    const-string v8, "WindowManager"

    .line 1368
    const/4 v2, 0x1

    .line 1369
    .local v2, getComplete:Z
    const/4 v5, 0x0

    .line 1370
    .local v5, result:Z
    iget v6, p1, Landroid/view/RawInputEvent;->type:I

    packed-switch v6, :pswitch_data_a4

    .line 1440
    :cond_b
    :goto_b
    return v5

    .line 1372
    :pswitch_c
    iget v6, p1, Landroid/view/RawInputEvent;->keycode:I

    if-nez v6, :cond_b

    .line 1375
    iget v6, p1, Landroid/view/RawInputEvent;->value:I

    if-nez v6, :cond_74

    move v6, v9

    :goto_15
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpen:Z

    .line 1377
    :try_start_17
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v6}, Landroid/view/IWindowManager;->getStateorientationChangeComplete()Z
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1c} :catch_a1

    move-result v2

    .line 1382
    :goto_1d
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpen:Z

    if-eqz v6, :cond_5c

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    invoke-interface {v6}, Landroid/os/LocalPowerManager;->getRotationUpOnce()Z

    move-result v6

    if-nez v6, :cond_5c

    .line 1384
    const/4 v3, 0x0

    .line 1385
    .local v3, once:Z
    const/4 v0, 0x0

    .line 1386
    .local v0, CallState:I
    const-string v6, "WindowManager"

    const-string v6, "Start Set Proxmity SlideUp"

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    :try_start_32
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getPhoneInterface()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    .line 1389
    .local v4, phoneServ:Lcom/android/internal/telephony/ITelephony;
    if-eqz v4, :cond_76

    .line 1390
    invoke-interface {v4}, Lcom/android/internal/telephony/ITelephony;->getCallState()I
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_3b} :catch_7e

    move-result v0

    .line 1397
    .end local v4           #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :goto_3c
    if-eqz v0, :cond_3f

    .line 1400
    const/4 v3, 0x1

    .line 1407
    :cond_3f
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    invoke-interface {v6, v3}, Landroid/os/LocalPowerManager;->setRotationUpOnce(Z)V

    .line 1408
    const-string v6, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "End Set Proxmity SlideUp once = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    .end local v0           #CallState:I
    .end local v3           #once:Z
    :cond_5c
    invoke-virtual {p0, v9}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(I)V

    .line 1414
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardIsShowingTq()Z

    move-result v6

    if-eqz v6, :cond_88

    .line 1415
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpen:Z

    if-eqz v6, :cond_70

    .line 1418
    if-eqz v2, :cond_70

    .line 1419
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->pokeWakelock()V

    .line 1436
    :cond_70
    :goto_70
    if-eqz v2, :cond_72

    .line 1437
    :cond_72
    const/4 v5, 0x1

    goto :goto_b

    :cond_74
    move v6, v10

    .line 1375
    goto :goto_15

    .line 1392
    .restart local v0       #CallState:I
    .restart local v3       #once:Z
    .restart local v4       #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :cond_76
    :try_start_76
    const-string v6, "WindowManager"

    const-string v7, "Unable to find ITelephony interface"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7d
    .catch Landroid/os/RemoteException; {:try_start_76 .. :try_end_7d} :catch_7e

    goto :goto_3c

    .line 1394
    .end local v4           #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :catch_7e
    move-exception v6

    move-object v1, v6

    .line 1395
    .local v1, ex:Landroid/os/RemoteException;
    const-string v6, "WindowManager"

    const-string v6, "RemoteException from getPhoneInterface()"

    invoke-static {v8, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3c

    .line 1424
    .end local v0           #CallState:I
    .end local v1           #ex:Landroid/os/RemoteException;
    .end local v3           #once:Z
    :cond_88
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpen:Z

    if-eqz v6, :cond_97

    .line 1425
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    const/4 v9, 0x5

    invoke-interface {v6, v7, v8, v10, v9}, Landroid/os/LocalPowerManager;->userActivity(JZI)V

    goto :goto_70

    .line 1428
    :cond_97
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    invoke-interface {v6, v7, v8, v10, v10}, Landroid/os/LocalPowerManager;->userActivity(JZI)V

    goto :goto_70

    .line 1379
    :catch_a1
    move-exception v6

    goto/16 :goto_1d

    .line 1370
    :pswitch_data_a4
    .packed-switch 0x5
        :pswitch_c
    .end packed-switch
.end method

.method readLidState()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 538
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->getSwitchState(I)I

    move-result v0

    .line 539
    .local v0, sw:I
    if-ltz v0, :cond_f

    .line 540
    if-nez v0, :cond_10

    const/4 v1, 0x1

    :goto_d
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpen:Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_f} :catch_12

    .line 545
    .end local v0           #sw:I
    :cond_f
    :goto_f
    return-void

    .restart local v0       #sw:I
    :cond_10
    move v1, v3

    .line 540
    goto :goto_d

    .line 542
    .end local v0           #sw:I
    :catch_12
    move-exception v1

    goto :goto_f
.end method

.method public removeStartingWindow(Landroid/os/IBinder;Landroid/view/View;)V
    .registers 6
    .parameter "appToken"
    .parameter "window"

    .prologue
    .line 731
    if-eqz p2, :cond_f

    .line 732
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManagerImpl;

    .line 733
    .local v0, wm:Landroid/view/WindowManagerImpl;
    invoke-virtual {v0, p2}, Landroid/view/WindowManagerImpl;->removeView(Landroid/view/View;)V

    .line 735
    .end local v0           #wm:Landroid/view/WindowManagerImpl;
    :cond_f
    return-void
.end method

.method public removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .registers 4
    .parameter "win"

    .prologue
    const/4 v1, 0x0

    .line 771
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_8

    .line 772
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 777
    :cond_7
    :goto_7
    return-void

    .line 774
    :cond_8
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_7

    .line 775
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_7
.end method

.method public rotationForOrientationLw(IIZ)I
    .registers 10
    .parameter "orientation"
    .parameter "lastRotation"
    .parameter "displayEnabled"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2279
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    if-gez v2, :cond_22

    .line 2281
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 2283
    .local v1, d:Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_2f

    .line 2284
    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .line 2285
    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .line 2292
    .end local v1           #d:Landroid/view/Display;
    :cond_22
    :goto_22
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2293
    packed-switch p1, :pswitch_data_58

    .line 2304
    :try_start_28
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpen:Z

    if-eqz v3, :cond_3e

    .line 2305
    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_28 .. :try_end_2d} :catchall_55

    move v2, v5

    .line 2312
    :goto_2e
    return v2

    .line 2287
    .restart local v1       #d:Landroid/view/Display;
    :cond_2f
    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .line 2288
    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    goto :goto_22

    .line 2296
    .end local v1           #d:Landroid/view/Display;
    :pswitch_34
    :try_start_34
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    monitor-exit v2

    move v2, v3

    goto :goto_2e

    .line 2299
    :pswitch_39
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    monitor-exit v2

    move v2, v3

    goto :goto_2e

    .line 2307
    :cond_3e
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->useSensorForOrientationLp(I)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 2309
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->getCurrentRotation()I

    move-result v0

    .line 2310
    .local v0, curRotation:I
    if-ltz v0, :cond_50

    move v3, v0

    :goto_4d
    monitor-exit v2

    move v2, v3

    goto :goto_2e

    :cond_50
    move v3, p2

    goto :goto_4d

    .line 2312
    .end local v0           #curRotation:I
    :cond_52
    monitor-exit v2

    move v2, v4

    goto :goto_2e

    .line 2314
    :catchall_55
    move-exception v3

    monitor-exit v2
    :try_end_57
    .catchall {:try_start_34 .. :try_end_57} :catchall_55

    throw v3

    .line 2293
    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_34
        :pswitch_39
    .end packed-switch
.end method

.method public screenOnStoppedLw()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 2434
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v2

    if-nez v2, :cond_21

    .line 2435
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2437
    .local v0, curTime:J
    const-string v2, "WindowManager"

    const-string v3, "screenOnStoppedLw"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2441
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    invoke-interface {v2}, Landroid/os/LocalPowerManager;->isScreenOffwhenCall()Z

    move-result v2

    if-nez v2, :cond_21

    .line 2443
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    invoke-interface {v2, v0, v1, v4, v4}, Landroid/os/LocalPowerManager;->userActivity(JZI)V

    .line 2445
    .end local v0           #curTime:J
    :cond_21
    return-void
.end method

.method public screenTurnedOff(I)V
    .registers 4
    .parameter "why"

    .prologue
    const/4 v1, 0x0

    .line 2214
    const v0, 0x11170

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 2215
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->onScreenTurnedOff(I)V

    .line 2216
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2217
    const/4 v1, 0x0

    :try_start_10
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOn:Z

    .line 2218
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 2219
    monitor-exit v0

    .line 2220
    return-void

    .line 2219
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public screenTurnedOn()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 2224
    const v0, 0x11170

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 2225
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->onScreenTurnedOn()V

    .line 2226
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2227
    const/4 v1, 0x1

    :try_start_10
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOn:Z

    .line 2228
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 2229
    monitor-exit v0

    .line 2230
    return-void

    .line 2229
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public selectAnimationLw(Landroid/view/WindowManagerPolicy$WindowState;I)I
    .registers 4
    .parameter "win"
    .parameter "transit"

    .prologue
    .line 785
    const/4 v0, 0x5

    if-ne p2, v0, :cond_d

    .line 786
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->hasAppShownWindows()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 788
    const v0, 0x10a000c

    .line 792
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method sendCloseSystemWindows()V
    .registers 3

    .prologue
    .line 2260
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 2261
    return-void
.end method

.method sendCloseSystemWindows(Ljava/lang/String;)V
    .registers 3
    .parameter "reason"

    .prologue
    .line 2264
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 2265
    return-void
.end method

.method setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 12
    .parameter "win"
    .parameter "fl"
    .parameter "sim"
    .parameter "attached"
    .parameter "insetDecors"
    .parameter "pf"
    .parameter "df"
    .parameter "cf"
    .parameter "vf"

    .prologue
    .line 1090
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    if-le v0, v1, :cond_3c

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    if-ge v0, v1, :cond_3c

    .line 1098
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    iput v0, p9, Landroid/graphics/Rect;->left:I

    iput v0, p8, Landroid/graphics/Rect;->left:I

    iput v0, p7, Landroid/graphics/Rect;->left:I

    .line 1099
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iput v0, p9, Landroid/graphics/Rect;->top:I

    iput v0, p8, Landroid/graphics/Rect;->top:I

    iput v0, p7, Landroid/graphics/Rect;->top:I

    .line 1100
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    iput v0, p9, Landroid/graphics/Rect;->right:I

    iput v0, p8, Landroid/graphics/Rect;->right:I

    iput v0, p7, Landroid/graphics/Rect;->right:I

    .line 1101
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iput v0, p9, Landroid/graphics/Rect;->bottom:I

    iput v0, p8, Landroid/graphics/Rect;->bottom:I

    iput v0, p7, Landroid/graphics/Rect;->bottom:I

    .line 1132
    :goto_30
    and-int/lit16 v0, p2, 0x100

    if-nez v0, :cond_94

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    :goto_38
    invoke-virtual {p6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1134
    return-void

    .line 1109
    :cond_3c
    and-int/lit16 v0, p3, 0xf0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_5a

    .line 1110
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1126
    :cond_49
    :goto_49
    if-eqz p5, :cond_92

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    :goto_4f
    invoke-virtual {p7, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1127
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_30

    .line 1118
    :cond_5a
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1119
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    if-ge v0, v1, :cond_49

    .line 1120
    iget v0, p8, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    if-ge v0, v1, :cond_73

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iput v0, p8, Landroid/graphics/Rect;->left:I

    .line 1121
    :cond_73
    iget v0, p8, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    if-ge v0, v1, :cond_7d

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v0, p8, Landroid/graphics/Rect;->top:I

    .line 1122
    :cond_7d
    iget v0, p8, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    if-le v0, v1, :cond_87

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iput v0, p8, Landroid/graphics/Rect;->right:I

    .line 1123
    :cond_87
    iget v0, p8, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    if-le v0, v1, :cond_49

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v0, p8, Landroid/graphics/Rect;->bottom:I

    goto :goto_49

    :cond_92
    move-object v0, p8

    .line 1126
    goto :goto_4f

    :cond_94
    move-object v0, p7

    .line 1132
    goto :goto_38
.end method

.method public setCurrentOrientationLw(I)V
    .registers 4
    .parameter "newOrientation"

    .prologue
    .line 2407
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2408
    :try_start_3
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    if-eq p1, v1, :cond_c

    .line 2409
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    .line 2410
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 2412
    :cond_c
    monitor-exit v0

    .line 2413
    return-void

    .line 2412
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method showGlobalActionsDialog()V
    .registers 4

    .prologue
    .line 421
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;

    if-nez v1, :cond_d

    .line 422
    new-instance v1, Lcom/android/internal/policy/impl/GlobalActions;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/policy/impl/GlobalActions;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;

    .line 424
    :cond_d
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v0

    .line 425
    .local v0, keyguardShowing:Z
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isDeviceProvisioned()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/policy/impl/GlobalActions;->showDialog(ZZ)V

    .line 426
    if-eqz v0, :cond_23

    .line 429
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->pokeWakelock()V

    .line 431
    :cond_23
    return-void
.end method

.method showRecentAppsDialog()V
    .registers 3

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialog:Lcom/android/internal/policy/impl/RecentApplicationsDialog;

    if-nez v0, :cond_d

    .line 459
    new-instance v0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialog:Lcom/android/internal/policy/impl/RecentApplicationsDialog;

    .line 461
    :cond_d
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialog:Lcom/android/internal/policy/impl/RecentApplicationsDialog;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->show()V

    .line 462
    return-void
.end method

.method public subWindowTypeToLayerLw(I)I
    .registers 5
    .parameter "type"

    .prologue
    .line 612
    packed-switch p1, :pswitch_data_26

    .line 623
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown sub-window type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    const/4 v0, 0x0

    :goto_1c
    return v0

    .line 615
    :pswitch_1d
    const/4 v0, 0x1

    goto :goto_1c

    .line 617
    :pswitch_1f
    const/4 v0, -0x2

    goto :goto_1c

    .line 619
    :pswitch_21
    const/4 v0, -0x1

    goto :goto_1c

    .line 621
    :pswitch_23
    const/4 v0, 0x2

    goto :goto_1c

    .line 612
    nop

    :pswitch_data_26
    .packed-switch 0x3e8
        :pswitch_1d
        :pswitch_1f
        :pswitch_23
        :pswitch_1d
        :pswitch_21
    .end packed-switch
.end method

.method public systemReady()V
    .registers 3

    .prologue
    .line 2332
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeMode:Z

    if-eqz v0, :cond_b

    .line 2335
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->enterSafeMode()V

    .line 2338
    :cond_b
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->onSystemReady()V

    .line 2339
    const-string v0, "dev.bootcomplete"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2340
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1a} :catch_29

    .line 2341
    :try_start_1a
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 2342
    new-instance v1, Landroid/os/Vibrator;

    invoke-direct {v1}, Landroid/os/Vibrator;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    .line 2343
    monitor-exit v0

    .line 2347
    :goto_25
    return-void

    .line 2343
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_1a .. :try_end_28} :catchall_26

    :try_start_28
    throw v1
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_29} :catch_29

    .line 2344
    :catch_29
    move-exception v0

    goto :goto_25
.end method

.method updateOrientationListenerLp()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 380
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->canDetectOrientation()Z

    move-result v1

    if-nez v1, :cond_a

    .line 409
    :cond_9
    :goto_9
    return-void

    .line 389
    :cond_a
    const/4 v0, 0x1

    .line 390
    .local v0, disable:Z
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOn:Z

    if-eqz v1, :cond_24

    .line 391
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->needSensorRunningLp()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 392
    const/4 v0, 0x0

    .line 394
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    if-nez v1, :cond_24

    .line 395
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->enable()V

    .line 397
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSensorRotation:I

    .line 398
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    .line 403
    :cond_24
    if-eqz v0, :cond_9

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    if-eqz v1, :cond_9

    .line 404
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->disable()V

    .line 406
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSensorRotation:I

    .line 407
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    goto :goto_9
.end method

.method updateRotation(I)V
    .registers 6
    .parameter "animFlags"

    .prologue
    .line 2357
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpen:Z

    invoke-interface {v1, v2}, Landroid/os/LocalPowerManager;->setKeyboardVisibility(Z)V

    .line 2358
    const/4 v0, 0x0

    .line 2359
    .local v0, rotation:I
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpen:Z

    if-eqz v1, :cond_d

    .line 2361
    const/4 v0, 0x1

    .line 2366
    :cond_d
    :try_start_d
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFancyRotationAnimation:I

    or-int/2addr v3, p1

    invoke-interface {v1, v0, v2, v3}, Landroid/view/IWindowManager;->setRotation(IZI)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_16} :catch_17

    .line 2371
    :goto_16
    return-void

    .line 2368
    :catch_17
    move-exception v1

    goto :goto_16
.end method

.method useSensorForOrientationLp(I)Z
    .registers 4
    .parameter "appOrientation"

    .prologue
    const/4 v1, 0x1

    .line 333
    const/4 v0, 0x4

    if-ne p1, v0, :cond_6

    move v0, v1

    .line 341
    :goto_5
    return v0

    .line 336
    :cond_6
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAccelerometerDefault:I

    if-eqz v0, :cond_12

    const/4 v0, 0x2

    if-eq p1, v0, :cond_10

    const/4 v0, -0x1

    if-ne p1, v0, :cond_12

    :cond_10
    move v0, v1

    .line 339
    goto :goto_5

    .line 341
    :cond_12
    const/4 v0, 0x0

    goto :goto_5
.end method

.method wakeUpModem()V
    .registers 7

    .prologue
    .line 1629
    :try_start_0
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getPhoneInterface()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 1630
    .local v2, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_19

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isModemPowerSave()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1631
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1632
    .local v1, mScreenOnIntent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_19} :catch_1a

    .line 1638
    .end local v1           #mScreenOnIntent:Landroid/content/Intent;
    .end local v2           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_19
    :goto_19
    return-void

    .line 1635
    :catch_1a
    move-exception v3

    move-object v0, v3

    .line 1636
    .local v0, ex:Landroid/os/RemoteException;
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ITelephony.isPowerSave() threw RemoteException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19
.end method

.method public windowTypeToLayerLw(I)I
    .registers 6
    .parameter "type"

    .prologue
    const/4 v3, 0x1

    .line 575
    if-lt p1, v3, :cond_9

    const/16 v0, 0x63

    if-gt p1, v0, :cond_9

    move v0, v3

    .line 607
    :goto_8
    return v0

    .line 578
    :cond_9
    packed-switch p1, :pswitch_data_48

    .line 606
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown window type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 607
    goto :goto_8

    .line 580
    :pswitch_26
    const/4 v0, 0x6

    goto :goto_8

    .line 582
    :pswitch_28
    const/4 v0, 0x4

    goto :goto_8

    .line 584
    :pswitch_2a
    const/4 v0, 0x3

    goto :goto_8

    .line 586
    :pswitch_2c
    const/4 v0, 0x2

    goto :goto_8

    .line 588
    :pswitch_2e
    const/16 v0, 0xc

    goto :goto_8

    .line 590
    :pswitch_31
    const/16 v0, 0xd

    goto :goto_8

    .line 592
    :pswitch_34
    const/16 v0, 0x8

    goto :goto_8

    .line 594
    :pswitch_37
    const/16 v0, 0x9

    goto :goto_8

    .line 596
    :pswitch_3a
    const/16 v0, 0xa

    goto :goto_8

    .line 598
    :pswitch_3d
    const/16 v0, 0xb

    goto :goto_8

    .line 600
    :pswitch_40
    const/16 v0, 0xe

    goto :goto_8

    .line 602
    :pswitch_43
    const/4 v0, 0x7

    goto :goto_8

    .line 604
    :pswitch_45
    const/4 v0, 0x5

    goto :goto_8

    .line 578
    nop

    :pswitch_data_48
    .packed-switch 0x7d0
        :pswitch_26
        :pswitch_2a
        :pswitch_2c
        :pswitch_34
        :pswitch_2e
        :pswitch_45
        :pswitch_40
        :pswitch_43
        :pswitch_28
        :pswitch_31
        :pswitch_37
        :pswitch_3a
        :pswitch_3d
    .end packed-switch
.end method
