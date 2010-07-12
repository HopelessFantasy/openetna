.class public Landroid/media/AudioManager;
.super Ljava/lang/Object;
.source "AudioManager.java"


# static fields
.field public static final ACTION_AUDIO_BECOMING_NOISY:Ljava/lang/String; = "android.media.AUDIO_BECOMING_NOISY"

.field public static final ADJUST_LOWER:I = -0x1

.field public static final ADJUST_RAISE:I = 0x1

.field public static final ADJUST_SAME:I = 0x0

.field private static DEBUG:Z = false

.field public static final DEFAULT_STREAM_VOLUME:[I = null

.field public static final EXTRA_RINGER_MODE:Ljava/lang/String; = "android.media.EXTRA_RINGER_MODE"

.field public static final EXTRA_VIBRATE_SETTING:Ljava/lang/String; = "android.media.EXTRA_VIBRATE_SETTING"

.field public static final EXTRA_VIBRATE_TYPE:Ljava/lang/String; = "android.media.EXTRA_VIBRATE_TYPE"

.field public static final EXTRA_VOLUME_STREAM_TYPE:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_TYPE"

.field public static final EXTRA_VOLUME_STREAM_VALUE:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_VALUE"

.field public static final FLAG_ALLOW_RINGER_MODES:I = 0x2

.field public static final FLAG_PLAY_SOUND:I = 0x4

.field public static final FLAG_REMOVE_SOUND_AND_VIBRATE:I = 0x8

.field public static final FLAG_SHOW_UI:I = 0x1

.field public static final FLAG_VIBRATE:I = 0x10

.field public static final FX_FOCUS_NAVIGATION_DOWN:I = 0x2

.field public static final FX_FOCUS_NAVIGATION_LEFT:I = 0x3

.field public static final FX_FOCUS_NAVIGATION_RIGHT:I = 0x4

.field public static final FX_FOCUS_NAVIGATION_UP:I = 0x1

.field public static final FX_KEYPRESS_DELETE:I = 0x7

.field public static final FX_KEYPRESS_RETURN:I = 0x8

.field public static final FX_KEYPRESS_SPACEBAR:I = 0x6

.field public static final FX_KEYPRESS_STANDARD:I = 0x5

.field public static final FX_KEY_CLICK:I = 0x0

.field public static final MAX_STREAM_VOLUME:[I = null

.field public static final MODE_CURRENT:I = -0x1

.field public static final MODE_INVALID:I = -0x2

.field public static final MODE_IN_CALL:I = 0x2

.field public static final MODE_NORMAL:I = 0x0

.field public static final MODE_RINGTONE:I = 0x1

.field public static final NUM_SOUND_EFFECTS:I = 0x9

.field public static final NUM_STREAMS:I = 0x5

.field public static final RINGER_MODE_CHANGED_ACTION:Ljava/lang/String; = "android.media.RINGER_MODE_CHANGED"

.field public static final RINGER_MODE_NORMAL:I = 0x2

.field public static final RINGER_MODE_SILENT:I = 0x0

.field public static final RINGER_MODE_VIBRATE:I = 0x1

.field public static final ROUTE_ALL:I = -0x1

.field public static final ROUTE_BLUETOOTH:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_BLUETOOTH_A2DP:I = 0x10

.field public static final ROUTE_BLUETOOTH_SCO:I = 0x4

.field public static final ROUTE_DUALMIC_HANDSET:I = 0x20

.field public static final ROUTE_DUALMIC_SPEAKER:I = 0x40

.field public static final ROUTE_EARPIECE:I = 0x1

.field public static final ROUTE_FMRADIO:I = 0x400

.field public static final ROUTE_HEADSET:I = 0x8

.field public static final ROUTE_RECORDER:I = 0x800

.field public static final ROUTE_SPEAKER:I = 0x2

.field public static final ROUTE_TTY_DEVICE_FULL:I = 0x80

.field public static final ROUTE_TTY_DEVICE_HCO:I = 0x100

.field public static final ROUTE_TTY_DEVICE_VCO:I = 0x200

.field public static final STREAM_ALARM:I = 0x4

.field public static final STREAM_BLUETOOTH_SCO:I = 0x6

.field public static final STREAM_MUSIC:I = 0x3

.field public static final STREAM_NOTIFICATION:I = 0x5

.field public static final STREAM_RING:I = 0x2

.field public static final STREAM_SYSTEM:I = 0x1

.field public static final STREAM_VOICE_CALL:I = 0x0

.field private static TAG:Ljava/lang/String; = null

.field public static final USE_DEFAULT_STREAM_TYPE:I = -0x80000000

.field public static final VIBRATE_SETTING_CHANGED_ACTION:Ljava/lang/String; = "android.media.VIBRATE_SETTING_CHANGED"

.field public static final VIBRATE_SETTING_OFF:I = 0x0

.field public static final VIBRATE_SETTING_ON:I = 0x1

.field public static final VIBRATE_SETTING_ONLY_SILENT:I = 0x2

.field public static final VIBRATE_TYPE_NOTIFICATION:I = 0x1

.field public static final VIBRATE_TYPE_RINGER:I = 0x0

.field public static final VOLUME_CHANGED_ACTION:Ljava/lang/String; = "android.media.VOLUME_CHANGED_ACTION"

.field private static localLOGV:Z

.field private static sService:Landroid/media/IAudioService;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mICallBack:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x7

    const/4 v1, 0x0

    .line 45
    const-string v0, "AudioManager"

    sput-object v0, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    .line 46
    sput-boolean v1, Landroid/media/AudioManager;->DEBUG:Z

    .line 47
    sget-boolean v0, Landroid/media/AudioManager;->DEBUG:Z

    if-nez v0, :cond_1e

    move v0, v1

    :goto_d
    sput-boolean v0, Landroid/media/AudioManager;->localLOGV:Z

    .line 154
    new-array v0, v2, [I

    fill-array-data v0, :array_20

    sput-object v0, Landroid/media/AudioManager;->MAX_STREAM_VOLUME:[I

    .line 165
    new-array v0, v2, [I

    fill-array-data v0, :array_32

    sput-object v0, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    return-void

    .line 47
    :cond_1e
    const/4 v0, 0x1

    goto :goto_d

    .line 154
    :array_20
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
    .end array-data

    .line 165
    :array_32
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1213
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    .line 337
    iput-object p1, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    .line 338
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/AudioManager;->mHandler:Landroid/os/Handler;

    .line 339
    return-void
.end method

.method private getRoutingP(I)I
    .registers 6
    .parameter "mode"

    .prologue
    .line 1232
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1234
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->getRouting(I)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v2

    .line 1237
    :goto_8
    return v2

    .line 1235
    :catch_9
    move-exception v0

    .line 1236
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in getRouting"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1237
    const/4 v2, -0x1

    goto :goto_8
.end method

.method private static getService()Landroid/media/IAudioService;
    .registers 2

    .prologue
    .line 343
    sget-object v1, Landroid/media/AudioManager;->sService:Landroid/media/IAudioService;

    if-eqz v1, :cond_7

    .line 344
    sget-object v1, Landroid/media/AudioManager;->sService:Landroid/media/IAudioService;

    .line 348
    :goto_6
    return-object v1

    .line 346
    :cond_7
    const-string v1, "audio"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 347
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1

    sput-object v1, Landroid/media/AudioManager;->sService:Landroid/media/IAudioService;

    .line 348
    sget-object v1, Landroid/media/AudioManager;->sService:Landroid/media/IAudioService;

    goto :goto_6
.end method

.method private querySoundEffectsEnabled()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1164
    iget-object v0, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sound_effects_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    move v0, v2

    goto :goto_10
.end method

.method private setRoutingP(III)V
    .registers 8
    .parameter "mode"
    .parameter "routes"
    .parameter "mask"

    .prologue
    .line 1219
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1221
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1, p1, p2, p3}, Landroid/media/IAudioService;->setRouting(III)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 1225
    :goto_7
    return-void

    .line 1222
    :catch_8
    move-exception v0

    .line 1223
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setRouting"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method


# virtual methods
.method public adjustStreamVolume(III)V
    .registers 8
    .parameter "streamType"
    .parameter "direction"
    .parameter "flags"

    .prologue
    .line 365
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 367
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1, p1, p2, p3}, Landroid/media/IAudioService;->adjustStreamVolume(III)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 371
    :goto_7
    return-void

    .line 368
    :catch_8
    move-exception v0

    .line 369
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in adjustStreamVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public adjustSuggestedStreamVolume(III)V
    .registers 8
    .parameter "direction"
    .parameter "suggestedStreamType"
    .parameter "flags"

    .prologue
    .line 411
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 413
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1, p1, p2, p3}, Landroid/media/IAudioService;->adjustSuggestedStreamVolume(III)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 417
    :goto_7
    return-void

    .line 414
    :catch_8
    move-exception v0

    .line 415
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in adjustVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public adjustVolume(II)V
    .registers 7
    .parameter "direction"
    .parameter "flags"

    .prologue
    .line 388
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 390
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1, p1, p2}, Landroid/media/IAudioService;->adjustVolume(II)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 394
    :goto_7
    return-void

    .line 391
    :catch_8
    move-exception v0

    .line 392
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in adjustVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public getMode()I
    .registers 5

    .prologue
    .line 866
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 868
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1}, Landroid/media/IAudioService;->getMode()I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v2

    .line 871
    :goto_8
    return v2

    .line 869
    :catch_9
    move-exception v0

    .line 870
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in getMode"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 871
    const/4 v2, -0x2

    goto :goto_8
.end method

.method public getRingerMode()I
    .registers 5

    .prologue
    .line 427
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 429
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1}, Landroid/media/IAudioService;->getRingerMode()I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v2

    .line 432
    :goto_8
    return v2

    .line 430
    :catch_9
    move-exception v0

    .line 431
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in getRingerMode"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 432
    const/4 v2, 0x2

    goto :goto_8
.end method

.method public getRouting(I)I
    .registers 6
    .parameter "mode"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 992
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 994
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->getRouting(I)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v2

    .line 997
    :goto_8
    return v2

    .line 995
    :catch_9
    move-exception v0

    .line 996
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in getRouting"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 997
    const/4 v2, -0x1

    goto :goto_8
.end method

.method public getStreamMaxVolume(I)I
    .registers 6
    .parameter "streamType"

    .prologue
    .line 444
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 446
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->getStreamMaxVolume(I)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v2

    .line 449
    :goto_8
    return v2

    .line 447
    :catch_9
    move-exception v0

    .line 448
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in getStreamMaxVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 449
    const/4 v2, 0x0

    goto :goto_8
.end method

.method public getStreamVolume(I)I
    .registers 6
    .parameter "streamType"

    .prologue
    .line 462
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 464
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->getStreamVolume(I)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v2

    .line 467
    :goto_8
    return v2

    .line 465
    :catch_9
    move-exception v0

    .line 466
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in getStreamVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 467
    const/4 v2, 0x0

    goto :goto_8
.end method

.method public getVibrateSetting(I)I
    .registers 6
    .parameter "vibrateType"

    .prologue
    .line 605
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 607
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->getVibrateSetting(I)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v2

    .line 610
    :goto_8
    return v2

    .line 608
    :catch_9
    move-exception v0

    .line 609
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in getVibrateSetting"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 610
    const/4 v2, 0x0

    goto :goto_8
.end method

.method public isBluetoothA2dpOn()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 765
    invoke-direct {p0, v1}, Landroid/media/AudioManager;->getRoutingP(I)I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_b

    move v0, v1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public isBluetoothScoOn()Z
    .registers 2

    .prologue
    .line 721
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/media/AudioManager;->getRoutingP(I)I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_b

    const/4 v0, 0x0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public isDualMicrophoneOn()Z
    .registers 2

    .prologue
    .line 696
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/media/AudioManager;->getRoutingP(I)I

    move-result v0

    and-int/lit8 v0, v0, 0x60

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isMicrophoneMute()Z
    .registers 5

    .prologue
    .line 834
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 836
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1}, Landroid/media/IAudioService;->isMicrophoneMute()Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v2

    .line 839
    :goto_8
    return v2

    .line 837
    :catch_9
    move-exception v0

    .line 838
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in isMicrophoneMute"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 839
    const/4 v2, 0x0

    goto :goto_8
.end method

.method public isMusicActive()Z
    .registers 5

    .prologue
    .line 1007
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1009
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1}, Landroid/media/IAudioService;->isMusicActive()Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v2

    .line 1012
    :goto_8
    return v2

    .line 1010
    :catch_9
    move-exception v0

    .line 1011
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in isMusicActive"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1012
    const/4 v2, 0x0

    goto :goto_8
.end method

.method public isSpeakerphoneOn()Z
    .registers 2

    .prologue
    .line 670
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/media/AudioManager;->getRoutingP(I)I

    move-result v0

    and-int/lit8 v0, v0, 0x42

    if-nez v0, :cond_b

    const/4 v0, 0x0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public isWiredHeadsetOn()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 809
    invoke-direct {p0, v1}, Landroid/media/AudioManager;->getRoutingP(I)I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_b

    move v0, v1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public loadSoundEffects()V
    .registers 6

    .prologue
    .line 1173
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1175
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1}, Landroid/media/IAudioService;->loadSoundEffects()Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 1179
    :goto_7
    return-void

    .line 1176
    :catch_8
    move-exception v0

    .line 1177
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in loadSoundEffects"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public playSoundEffect(I)V
    .registers 7
    .parameter "effectType"

    .prologue
    .line 1106
    if-ltz p1, :cond_6

    const/16 v2, 0x9

    if-lt p1, v2, :cond_7

    .line 1124
    :cond_6
    :goto_6
    return-void

    .line 1110
    :cond_7
    invoke-direct {p0}, Landroid/media/AudioManager;->querySoundEffectsEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1114
    invoke-virtual {p0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    if-eqz v2, :cond_6

    .line 1118
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1120
    .local v1, service:Landroid/media/IAudioService;
    :try_start_17
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->playSoundEffect(I)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1a} :catch_1b

    goto :goto_6

    .line 1121
    :catch_1b
    move-exception v0

    .line 1122
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in playSoundEffect"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method public playSoundEffect(IF)V
    .registers 8
    .parameter "effectType"
    .parameter "volume"

    .prologue
    .line 1143
    if-ltz p1, :cond_6

    const/16 v2, 0x9

    if-lt p1, v2, :cond_7

    .line 1158
    :cond_6
    :goto_6
    return-void

    .line 1147
    :cond_7
    invoke-virtual {p0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    if-eqz v2, :cond_6

    .line 1152
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1154
    .local v1, service:Landroid/media/IAudioService;
    :try_start_11
    invoke-interface {v1, p1, p2}, Landroid/media/IAudioService;->playSoundEffectVolume(IF)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_14} :catch_15

    goto :goto_6

    .line 1155
    :catch_15
    move-exception v0

    .line 1156
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in playSoundEffect"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method public reloadAudioSettings()V
    .registers 6

    .prologue
    .line 1202
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1204
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1}, Landroid/media/IAudioService;->reloadAudioSettings()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 1208
    :goto_7
    return-void

    .line 1205
    :catch_8
    move-exception v0

    .line 1206
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in reloadAudioSettings"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public setBluetoothA2dpOn(Z)V
    .registers 5
    .parameter "on"

    .prologue
    const/16 v2, 0x10

    .line 733
    const/4 v0, -0x2

    if-eqz p1, :cond_a

    move v1, v2

    :goto_6
    invoke-direct {p0, v0, v1, v2}, Landroid/media/AudioManager;->setRoutingP(III)V

    .line 734
    return-void

    .line 733
    :cond_a
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setBluetoothIncRing(Z)V
    .registers 7
    .parameter "on"

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    const/16 v2, -0x11

    const/4 v1, 0x2

    .line 745
    if-eqz p1, :cond_12

    .line 746
    invoke-virtual {p0, v3, v1, v2}, Landroid/media/AudioManager;->setRouting(III)V

    .line 747
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/media/AudioManager;->setRouting(III)V

    .line 748
    invoke-virtual {p0, v1, v3, v4}, Landroid/media/AudioManager;->setRouting(III)V

    .line 754
    :goto_11
    return-void

    .line 751
    :cond_12
    invoke-virtual {p0, v3, v1, v2}, Landroid/media/AudioManager;->setRouting(III)V

    .line 752
    const/4 v0, 0x4

    invoke-virtual {p0, v1, v0, v4}, Landroid/media/AudioManager;->setRouting(III)V

    goto :goto_11
.end method

.method public setBluetoothScoOn(Z)V
    .registers 5
    .parameter "on"

    .prologue
    const/4 v2, 0x4

    .line 711
    const/4 v0, -0x2

    if-eqz p1, :cond_9

    move v1, v2

    :goto_5
    invoke-direct {p0, v0, v1, v2}, Landroid/media/AudioManager;->setRoutingP(III)V

    .line 712
    return-void

    .line 711
    :cond_9
    const/4 v1, 0x0

    goto :goto_5
.end method

.method public setDualMicrophoneOn(ZZ)V
    .registers 7
    .parameter "on"
    .parameter "speaker"

    .prologue
    const/16 v3, 0x40

    const/16 v2, 0x20

    const/4 v0, 0x0

    const/4 v1, -0x2

    .line 683
    if-eqz p2, :cond_f

    .line 684
    if-eqz p1, :cond_b

    move v0, v3

    :cond_b
    invoke-direct {p0, v1, v0, v3}, Landroid/media/AudioManager;->setRoutingP(III)V

    .line 688
    :goto_e
    return-void

    .line 686
    :cond_f
    if-eqz p1, :cond_12

    move v0, v2

    :cond_12
    invoke-direct {p0, v1, v0, v2}, Landroid/media/AudioManager;->setRoutingP(III)V

    goto :goto_e
.end method

.method public setFmRadioOn(Z)V
    .registers 5
    .parameter "on"

    .prologue
    const/16 v2, 0x400

    .line 645
    const/4 v0, -0x2

    if-eqz p1, :cond_a

    move v1, v2

    :goto_6
    invoke-direct {p0, v0, v1, v2}, Landroid/media/AudioManager;->setRoutingP(III)V

    .line 646
    return-void

    .line 645
    :cond_a
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setMicrophoneMute(Z)V
    .registers 6
    .parameter "on"

    .prologue
    .line 820
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 822
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->setMicrophoneMute(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 826
    :goto_7
    return-void

    .line 823
    :catch_8
    move-exception v0

    .line 824
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setMicrophoneMute"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public setMode(I)V
    .registers 6
    .parameter "mode"

    .prologue
    .line 851
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 853
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->setMode(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 857
    :goto_7
    return-void

    .line 854
    :catch_8
    move-exception v0

    .line 855
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setMode"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1031
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1033
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1, p1, p2}, Landroid/media/IAudioService;->setParameter(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 1037
    :goto_7
    return-void

    .line 1034
    :catch_8
    move-exception v0

    .line 1035
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setParameter"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public setRingerMode(I)V
    .registers 6
    .parameter "ringerMode"

    .prologue
    .line 483
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 485
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->setRingerMode(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 489
    :goto_7
    return-void

    .line 486
    :catch_8
    move-exception v0

    .line 487
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setRingerMode"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public setRouting(III)V
    .registers 8
    .parameter "mode"
    .parameter "routes"
    .parameter "mask"

    .prologue
    .line 973
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 975
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1, p1, p2, p3}, Landroid/media/IAudioService;->setRouting(III)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 979
    :goto_7
    return-void

    .line 976
    :catch_8
    move-exception v0

    .line 977
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setRouting"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public setSpeakerphoneOn(Z)V
    .registers 5
    .parameter "on"

    .prologue
    const/4 v2, 0x2

    .line 657
    invoke-virtual {p0}, Landroid/media/AudioManager;->isDualMicrophoneOn()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 658
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/media/AudioManager;->setDualMicrophoneOn(ZZ)V

    .line 662
    :goto_b
    return-void

    .line 660
    :cond_c
    const/4 v0, -0x2

    if-eqz p1, :cond_14

    move v1, v2

    :goto_10
    invoke-direct {p0, v0, v1, v2}, Landroid/media/AudioManager;->setRoutingP(III)V

    goto :goto_b

    :cond_14
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public setStreamMute(IZ)V
    .registers 7
    .parameter "streamType"
    .parameter "state"

    .prologue
    .line 554
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 556
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    iget-object v2, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    invoke-interface {v1, p1, p2, v2}, Landroid/media/IAudioService;->setStreamMute(IZLandroid/os/IBinder;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 560
    :goto_9
    return-void

    .line 557
    :catch_a
    move-exception v2

    move-object v0, v2

    .line 558
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setStreamMute"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setStreamSolo(IZ)V
    .registers 7
    .parameter "streamType"
    .parameter "state"

    .prologue
    .line 528
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 530
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    iget-object v2, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    invoke-interface {v1, p1, p2, v2}, Landroid/media/IAudioService;->setStreamSolo(IZLandroid/os/IBinder;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 534
    :goto_9
    return-void

    .line 531
    :catch_a
    move-exception v2

    move-object v0, v2

    .line 532
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setStreamSolo"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setStreamVolume(III)V
    .registers 8
    .parameter "streamType"
    .parameter "index"
    .parameter "flags"

    .prologue
    .line 502
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 504
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1, p1, p2, p3}, Landroid/media/IAudioService;->setStreamVolume(III)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 508
    :goto_7
    return-void

    .line 505
    :catch_8
    move-exception v0

    .line 506
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setStreamVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public setVibrateSetting(II)V
    .registers 7
    .parameter "vibrateType"
    .parameter "vibrateSetting"

    .prologue
    .line 628
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 630
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1, p1, p2}, Landroid/media/IAudioService;->setVibrateSetting(II)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 634
    :goto_7
    return-void

    .line 631
    :catch_8
    move-exception v0

    .line 632
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setVibrateSetting"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public setWiredHeadsetOn(Z)V
    .registers 7
    .parameter "on"

    .prologue
    const/4 v4, 0x0

    .line 779
    const/16 v0, 0x8

    .line 780
    .local v0, route:I
    if-eqz p1, :cond_16

    .line 781
    iget-object v2, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_tty_mode"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 783
    .local v1, tty_settings:I
    packed-switch v1, :pswitch_data_2c

    .line 793
    const/16 v0, 0x8

    .line 798
    .end local v1           #tty_settings:I
    :cond_16
    :goto_16
    const/4 v2, -0x2

    if-eqz p1, :cond_2a

    move v3, v0

    :goto_1a
    invoke-direct {p0, v2, v3, v0}, Landroid/media/AudioManager;->setRoutingP(III)V

    .line 799
    return-void

    .line 785
    .restart local v1       #tty_settings:I
    :pswitch_1e
    const/16 v0, 0x8

    goto :goto_16

    .line 787
    :pswitch_21
    const/16 v0, 0x80

    goto :goto_16

    .line 789
    :pswitch_24
    const/16 v0, 0x100

    goto :goto_16

    .line 791
    :pswitch_27
    const/16 v0, 0x200

    goto :goto_16

    .end local v1           #tty_settings:I
    :cond_2a
    move v3, v4

    .line 798
    goto :goto_1a

    .line 783
    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_21
        :pswitch_24
        :pswitch_27
    .end packed-switch
.end method

.method public shouldVibrate(I)Z
    .registers 6
    .parameter "vibrateType"

    .prologue
    .line 580
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 582
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->shouldVibrate(I)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v2

    .line 585
    :goto_8
    return v2

    .line 583
    :catch_9
    move-exception v0

    .line 584
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in shouldVibrate"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 585
    const/4 v2, 0x0

    goto :goto_8
.end method

.method public unloadSoundEffects()V
    .registers 6

    .prologue
    .line 1187
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1189
    .local v1, service:Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1}, Landroid/media/IAudioService;->unloadSoundEffects()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 1193
    :goto_7
    return-void

    .line 1190
    :catch_8
    move-exception v0

    .line 1191
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in unloadSoundEffects"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method
