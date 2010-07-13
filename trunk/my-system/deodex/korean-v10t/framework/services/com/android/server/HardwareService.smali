.class public Lcom/android/server/HardwareService;
.super Landroid/os/IHardwareService$Stub;
.source "HardwareService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/HardwareService$Death;,
        Lcom/android/server/HardwareService$VibrateThread;
    }
.end annotation


# static fields
.field static final LIGHT_FLASH_NONE:I = 0x0

.field static final LIGHT_FLASH_TIMED:I = 0x1

.field static final LIGHT_ID_ATTENTION:I = 0x5

.field static final LIGHT_ID_BACKLIGHT:I = 0x0

.field static final LIGHT_ID_BATTERY:I = 0x3

.field static final LIGHT_ID_BUTTONS:I = 0x2

.field static final LIGHT_ID_KEYBOARD:I = 0x1

.field static final LIGHT_ID_NOTIFICATIONS:I = 0x4

.field private static final TAG:Ljava/lang/String; = "HardwareService"


# instance fields
.field private mAttentionLightOn:Z

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mContext:Landroid/content/Context;

.field volatile mDeath:Lcom/android/server/HardwareService$Death;

.field private mH:Landroid/os/Handler;

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mNativePointer:I

.field private mPulsing:Z

.field volatile mThread:Lcom/android/server/HardwareService$VibrateThread;

.field volatile mToken:Landroid/os/IBinder;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 56
    invoke-direct {p0}, Landroid/os/IHardwareService$Stub;-><init>()V

    .line 329
    new-instance v2, Lcom/android/server/HardwareService$1;

    invoke-direct {v2, p0}, Lcom/android/server/HardwareService$1;-><init>(Lcom/android/server/HardwareService;)V

    iput-object v2, p0, Lcom/android/server/HardwareService;->mH:Landroid/os/Handler;

    .line 456
    new-instance v2, Lcom/android/server/HardwareService$2;

    invoke-direct {v2, p0}, Lcom/android/server/HardwareService$2;-><init>(Lcom/android/server/HardwareService;)V

    iput-object v2, p0, Lcom/android/server/HardwareService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 59
    invoke-static {}, Lcom/android/server/HardwareService;->vibratorOff()V

    .line 61
    invoke-static {}, Lcom/android/server/HardwareService;->init_native()I

    move-result v2

    iput v2, p0, Lcom/android/server/HardwareService;->mNativePointer:I

    .line 63
    iput-object p1, p0, Lcom/android/server/HardwareService;->mContext:Landroid/content/Context;

    .line 64
    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 66
    .local v1, pm:Landroid/os/PowerManager;
    const-string v2, "HardwareService"

    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/HardwareService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 67
    iget-object v2, p0, Lcom/android/server/HardwareService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 69
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/HardwareService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 71
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 72
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    iget-object v2, p0, Lcom/android/server/HardwareService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/HardwareService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/android/server/HardwareService;->mPulsing:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/HardwareService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/android/server/HardwareService;->mPulsing:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/HardwareService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/android/server/HardwareService;->mNativePointer:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/HardwareService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/android/server/HardwareService;->mAttentionLightOn:Z

    return v0
.end method

.method static synthetic access$300(IIIIII)V
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 40
    invoke-static/range {p0 .. p5}, Lcom/android/server/HardwareService;->setLight_native(IIIIII)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/HardwareService;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/server/HardwareService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/HardwareService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/server/HardwareService;->doCancelVibrate()V

    return-void
.end method

.method private doCancelVibrate()V
    .registers 4

    .prologue
    .line 347
    monitor-enter p0

    .line 348
    :try_start_1
    iget-object v0, p0, Lcom/android/server/HardwareService;->mThread:Lcom/android/server/HardwareService$VibrateThread;

    if-eqz v0, :cond_16

    .line 349
    iget-object v0, p0, Lcom/android/server/HardwareService;->mThread:Lcom/android/server/HardwareService$VibrateThread;

    monitor-enter v0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_1e

    .line 350
    :try_start_8
    iget-object v1, p0, Lcom/android/server/HardwareService;->mThread:Lcom/android/server/HardwareService$VibrateThread;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/HardwareService$VibrateThread;->mDone:Z

    .line 351
    iget-object v1, p0, Lcom/android/server/HardwareService;->mThread:Lcom/android/server/HardwareService$VibrateThread;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 352
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_1b

    .line 353
    const/4 v0, 0x0

    :try_start_14
    iput-object v0, p0, Lcom/android/server/HardwareService;->mThread:Lcom/android/server/HardwareService$VibrateThread;

    .line 355
    :cond_16
    invoke-static {}, Lcom/android/server/HardwareService;->vibratorOff()V

    .line 356
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_1e

    .line 357
    return-void

    .line 352
    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    :try_start_1d
    throw v1

    .line 356
    :catchall_1e
    move-exception v0

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_1e

    throw v0
.end method

.method static native enable_ButtonLed(Z)V
.end method

.method private static native finalize_native(I)V
.end method

.method private static native init_native()I
.end method

.method private isAll0([J)Z
    .registers 8
    .parameter "pattern"

    .prologue
    .line 91
    array-length v0, p1

    .line 92
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v0, :cond_11

    .line 93
    aget-wide v2, p1, v1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_e

    .line 94
    const/4 v2, 0x0

    .line 97
    :goto_d
    return v2

    .line 92
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 97
    :cond_11
    const/4 v2, 0x1

    goto :goto_d
.end method

.method static native setALCMode_native(Z)V
.end method

.method private static native setLight_native(IIIIII)V
.end method

.method static native vibratorOff()V
.end method

.method static native vibratorOn(J)V
.end method


# virtual methods
.method public cancelVibrate()V
    .registers 6

    .prologue
    .line 160
    iget-object v2, p0, Lcom/android/server/HardwareService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.VIBRATE"

    const-string v4, "cancelVibrate"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 167
    .local v0, identity:J
    :try_start_d
    invoke-direct {p0}, Lcom/android/server/HardwareService;->doCancelVibrate()V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_14

    .line 170
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 172
    return-void

    .line 170
    :catchall_14
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public enableButtonLed(Z)V
    .registers 2
    .parameter "on"

    .prologue
    .line 307
    invoke-static {p1}, Lcom/android/server/HardwareService;->enable_ButtonLed(Z)V

    .line 308
    return-void
.end method

.method public enableCameraFlash(I)V
    .registers 2
    .parameter "milliseconds"

    .prologue
    .line 203
    invoke-static {p1}, Landroid/os/Hardware;->enableCameraFlash(I)V

    .line 204
    return-void
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 77
    iget v0, p0, Lcom/android/server/HardwareService;->mNativePointer:I

    invoke-static {v0}, Lcom/android/server/HardwareService;->finalize_native(I)V

    .line 78
    invoke-super {p0}, Landroid/os/IHardwareService$Stub;->finalize()V

    .line 79
    return-void
.end method

.method public getFlashlightEnabled()Z
    .registers 2

    .prologue
    .line 175
    invoke-static {}, Landroid/os/Hardware;->getFlashlightEnabled()Z

    move-result v0

    return v0
.end method

.method public pulseBreathingLight()V
    .registers 7

    .prologue
    .line 313
    monitor-enter p0

    .line 320
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/HardwareService;->mAttentionLightOn:Z

    if-nez v0, :cond_26

    iget-boolean v0, p0, Lcom/android/server/HardwareService;->mPulsing:Z

    if-nez v0, :cond_26

    .line 321
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/HardwareService;->mPulsing:Z

    .line 322
    iget v0, p0, Lcom/android/server/HardwareService;->mNativePointer:I

    const/4 v1, 0x5

    const v2, -0xefeff0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/server/HardwareService;->setLight_native(IIIIII)V

    .line 324
    iget-object v0, p0, Lcom/android/server/HardwareService;->mH:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/HardwareService;->mH:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 326
    :cond_26
    monitor-exit p0

    .line 327
    return-void

    .line 326
    :catchall_28
    move-exception v0

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_28

    throw v0
.end method

.method public setALCMode(Z)V
    .registers 2
    .parameter "on"

    .prologue
    .line 295
    invoke-static {p1}, Lcom/android/server/HardwareService;->setALCMode_native(Z)V

    .line 296
    return-void
.end method

.method public setAttentionLight(Z)V
    .registers 8
    .parameter "on"

    .prologue
    const/4 v2, 0x0

    .line 277
    monitor-enter p0

    .line 278
    :try_start_2
    iput-boolean p1, p0, Lcom/android/server/HardwareService;->mAttentionLightOn:Z

    .line 279
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/HardwareService;->mPulsing:Z

    .line 280
    iget v0, p0, Lcom/android/server/HardwareService;->mNativePointer:I

    const/4 v1, 0x5

    if-eqz p1, :cond_d

    const/4 v2, -0x1

    :cond_d
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/server/HardwareService;->setLight_native(IIIIII)V

    .line 282
    monitor-exit p0

    .line 283
    return-void

    .line 282
    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_2 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public setBacklight_byID(II)V
    .registers 9
    .parameter "brightness"
    .parameter "ID"

    .prologue
    .line 233
    const/4 v1, 0x0

    .line 237
    .local v1, id:I
    const/16 v4, 0x14

    invoke-static {p1, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 240
    invoke-virtual {p0, p2, p1}, Lcom/android/server/HardwareService;->setLightBrightness_UNCHECKED(II)V

    .line 243
    if-nez p2, :cond_18

    .line 245
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 247
    .local v2, identity:J
    :try_start_10
    iget-object v4, p0, Lcom/android/server/HardwareService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v4, p1}, Lcom/android/internal/app/IBatteryStats;->noteScreenBrightness(I)V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_23
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_19

    .line 251
    :goto_15
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 254
    .end local v2           #identity:J
    :cond_18
    return-void

    .line 248
    .restart local v2       #identity:J
    :catch_19
    move-exception v4

    move-object v0, v4

    .line 249
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1b
    const-string v4, "HardwareService"

    const-string v5, "RemoteException calling noteScreenBrightness on BatteryStatsService"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_23

    goto :goto_15

    .line 251
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_23
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public setBacklights(I)V
    .registers 7
    .parameter "brightness"

    .prologue
    .line 216
    const/16 v3, 0x14

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 217
    const/4 v3, 0x0

    invoke-virtual {p0, v3, p1}, Lcom/android/server/HardwareService;->setLightBrightness_UNCHECKED(II)V

    .line 218
    const/4 v3, 0x1

    invoke-virtual {p0, v3, p1}, Lcom/android/server/HardwareService;->setLightBrightness_UNCHECKED(II)V

    .line 219
    const/4 v3, 0x2

    invoke-virtual {p0, v3, p1}, Lcom/android/server/HardwareService;->setLightBrightness_UNCHECKED(II)V

    .line 220
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 222
    .local v1, identity:J
    :try_start_16
    iget-object v3, p0, Lcom/android/server/HardwareService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3, p1}, Lcom/android/internal/app/IBatteryStats;->noteScreenBrightness(I)V
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_29
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1b} :catch_1f

    .line 226
    :goto_1b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 228
    return-void

    .line 223
    :catch_1f
    move-exception v3

    move-object v0, v3

    .line 224
    .local v0, e:Landroid/os/RemoteException;
    :try_start_21
    const-string v3, "HardwareService"

    const-string v4, "RemoteException calling noteScreenBrightness on BatteryStatsService"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_29

    goto :goto_1b

    .line 226
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_29
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setFlashlightEnabled(Z)V
    .registers 2
    .parameter "on"

    .prologue
    .line 189
    invoke-static {p1}, Landroid/os/Hardware;->setFlashlightEnabled(Z)V

    .line 190
    return-void
.end method

.method setLightBrightness_UNCHECKED(II)V
    .registers 9
    .parameter "light"
    .parameter "brightness"

    .prologue
    const/4 v3, 0x0

    .line 262
    and-int/lit16 v2, p2, 0xff

    .line 263
    .local v2, b:I
    const/high16 v0, -0x100

    shl-int/lit8 v1, v2, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x8

    or-int/2addr v0, v1

    or-int/2addr v2, v0

    .line 264
    iget v0, p0, Lcom/android/server/HardwareService;->mNativePointer:I

    move v1, p1

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Lcom/android/server/HardwareService;->setLight_native(IIIIII)V

    .line 265
    return-void
.end method

.method setLightColor_UNCHECKED(II)V
    .registers 9
    .parameter "light"
    .parameter "color"

    .prologue
    const/4 v3, 0x0

    .line 268
    iget v0, p0, Lcom/android/server/HardwareService;->mNativePointer:I

    move v1, p1

    move v2, p2

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Lcom/android/server/HardwareService;->setLight_native(IIIIII)V

    .line 269
    return-void
.end method

.method setLightFlashing_UNCHECKED(IIIII)V
    .registers 12
    .parameter "light"
    .parameter "color"
    .parameter "mode"
    .parameter "onMS"
    .parameter "offMS"

    .prologue
    .line 272
    iget v0, p0, Lcom/android/server/HardwareService;->mNativePointer:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/server/HardwareService;->setLight_native(IIIIII)V

    .line 273
    return-void
.end method

.method setLightOff_UNCHECKED(I)V
    .registers 8
    .parameter "light"

    .prologue
    const/4 v2, 0x0

    .line 258
    iget v0, p0, Lcom/android/server/HardwareService;->mNativePointer:I

    move v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-static/range {v0 .. v5}, Lcom/android/server/HardwareService;->setLight_native(IIIIII)V

    .line 259
    return-void
.end method

.method public vibrate(J)V
    .registers 5
    .parameter "milliseconds"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/server/HardwareService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.VIBRATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_12

    .line 84
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires VIBRATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_12
    invoke-direct {p0}, Lcom/android/server/HardwareService;->doCancelVibrate()V

    .line 87
    invoke-static {p1, p2}, Lcom/android/server/HardwareService;->vibratorOn(J)V

    .line 88
    return-void
.end method

.method public vibratePattern([JILandroid/os/IBinder;)V
    .registers 12
    .parameter "pattern"
    .parameter "repeat"
    .parameter "token"

    .prologue
    .line 101
    iget-object v5, p0, Lcom/android/server/HardwareService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.VIBRATE"

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_12

    .line 103
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "Requires VIBRATE permission"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 106
    :cond_12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 118
    .local v2, identity:J
    if-eqz p1, :cond_26

    :try_start_18
    array-length v5, p1

    if-eqz v5, :cond_26

    invoke-direct {p0, p1}, Lcom/android/server/HardwareService;->isAll0([J)Z

    move-result v5

    if-nez v5, :cond_26

    array-length v5, p1
    :try_end_22
    .catchall {:try_start_18 .. :try_end_22} :catchall_67

    if-ge p2, v5, :cond_26

    if-nez p3, :cond_2a

    .line 155
    :cond_26
    :goto_26
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 157
    return-void

    .line 124
    :cond_2a
    :try_start_2a
    monitor-enter p0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_67

    .line 125
    :try_start_2b
    new-instance v0, Lcom/android/server/HardwareService$Death;

    invoke-direct {v0, p0, p3}, Lcom/android/server/HardwareService$Death;-><init>(Lcom/android/server/HardwareService;Landroid/os/IBinder;)V
    :try_end_30
    .catchall {:try_start_2b .. :try_end_30} :catchall_64

    .line 127
    .local v0, death:Lcom/android/server/HardwareService$Death;
    const/4 v5, 0x0

    :try_start_31
    invoke-interface {p3, v0, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_64
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_34} :catch_6c

    .line 132
    :try_start_34
    iget-object v4, p0, Lcom/android/server/HardwareService;->mThread:Lcom/android/server/HardwareService$VibrateThread;

    .line 134
    .local v4, oldThread:Ljava/lang/Thread;
    if-eqz v4, :cond_46

    .line 136
    iget-object v5, p0, Lcom/android/server/HardwareService;->mThread:Lcom/android/server/HardwareService$VibrateThread;

    monitor-enter v5
    :try_end_3b
    .catchall {:try_start_34 .. :try_end_3b} :catchall_64

    .line 137
    :try_start_3b
    iget-object v6, p0, Lcom/android/server/HardwareService;->mThread:Lcom/android/server/HardwareService$VibrateThread;

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/android/server/HardwareService$VibrateThread;->mDone:Z

    .line 138
    iget-object v6, p0, Lcom/android/server/HardwareService;->mThread:Lcom/android/server/HardwareService$VibrateThread;

    invoke-virtual {v6}, Ljava/lang/Object;->notify()V

    .line 139
    monitor-exit v5
    :try_end_46
    .catchall {:try_start_3b .. :try_end_46} :catchall_6f

    .line 142
    :cond_46
    :try_start_46
    iget-object v5, p0, Lcom/android/server/HardwareService;->mDeath:Lcom/android/server/HardwareService$Death;

    if-eqz v5, :cond_52

    .line 143
    iget-object v5, p0, Lcom/android/server/HardwareService;->mToken:Landroid/os/IBinder;

    iget-object v6, p0, Lcom/android/server/HardwareService;->mDeath:Lcom/android/server/HardwareService$Death;

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 146
    :cond_52
    iput-object v0, p0, Lcom/android/server/HardwareService;->mDeath:Lcom/android/server/HardwareService$Death;

    .line 147
    iput-object p3, p0, Lcom/android/server/HardwareService;->mToken:Landroid/os/IBinder;

    .line 150
    new-instance v5, Lcom/android/server/HardwareService$VibrateThread;

    invoke-direct {v5, p0, p1, p2}, Lcom/android/server/HardwareService$VibrateThread;-><init>(Lcom/android/server/HardwareService;[JI)V

    iput-object v5, p0, Lcom/android/server/HardwareService;->mThread:Lcom/android/server/HardwareService$VibrateThread;

    .line 151
    iget-object v5, p0, Lcom/android/server/HardwareService;->mThread:Lcom/android/server/HardwareService$VibrateThread;

    invoke-virtual {v5}, Lcom/android/server/HardwareService$VibrateThread;->start()V

    .line 152
    monitor-exit p0

    goto :goto_26

    .end local v0           #death:Lcom/android/server/HardwareService$Death;
    .end local v4           #oldThread:Ljava/lang/Thread;
    :catchall_64
    move-exception v5

    monitor-exit p0
    :try_end_66
    .catchall {:try_start_46 .. :try_end_66} :catchall_64

    :try_start_66
    throw v5
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_67

    .line 155
    :catchall_67
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 128
    .restart local v0       #death:Lcom/android/server/HardwareService$Death;
    :catch_6c
    move-exception v1

    .line 129
    .local v1, e:Landroid/os/RemoteException;
    :try_start_6d
    monitor-exit p0
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_64

    goto :goto_26

    .line 139
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v4       #oldThread:Ljava/lang/Thread;
    :catchall_6f
    move-exception v6

    :try_start_70
    monitor-exit v5
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_6f

    :try_start_71
    throw v6
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_64
.end method
