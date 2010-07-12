.class public Landroid/media/AudioService;
.super Landroid/media/IAudioService$Stub;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioService$SettingsObserver;,
        Landroid/media/AudioService$AudioHandler;,
        Landroid/media/AudioService$AudioSystemThread;,
        Landroid/media/AudioService$VolumeStreamState;
    }
.end annotation


# static fields
.field private static final MSG_MEDIA_SERVER_DIED:I = 0x5

.field private static final MSG_MEDIA_SERVER_STARTED:I = 0x6

.field private static final MSG_PERSIST_AUDIO_ROUTING:I = 0x8

.field private static final MSG_PERSIST_RINGER_MODE:I = 0x3

.field private static final MSG_PERSIST_VIBRATE_SETTING:I = 0x4

.field private static final MSG_PERSIST_VOLUME:I = 0x1

.field private static final MSG_PLAY_SOUND_EFFECT:I = 0x7

.field private static final MSG_SET_SYSTEM_VOLUME:I = 0x0

.field private static final NUM_SOUNDPOOL_CHANNELS:I = 0x4

.field private static final PERSIST_DELAY:I = 0xbb8

.field private static final SENDMSG_NOOP:I = 0x1

.field private static final SENDMSG_QUEUE:I = 0x2

.field private static final SENDMSG_REPLACE:I = 0x0

.field private static final SHARED_MSG:I = -0x1

.field private static final SOUND_EFFECTS_PATH:Ljava/lang/String; = "/media/audio/ui/"

.field private static final SOUND_EFFECT_FILES:[Ljava/lang/String; = null

.field private static final SOUND_EFFECT_VOLUME:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "AudioService"

.field private static isFmRadioOn:Z


# instance fields
.field private SOUND_EFFECT_FILES_MAP:[[I

.field private mAudioHandler:Landroid/media/AudioService$AudioHandler;

.field private mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

.field private mAudioSystemThread:Landroid/media/AudioService$AudioSystemThread;

.field private mBluetoothA2dpIsConnected:Z

.field private mBluetoothScoIsConnected:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mDualMicIsOn:Z

.field private mHeadsetIsConnected:Z

.field private mMediaServerOk:Z

.field private mMicMute:Z

.field private mMode:I

.field private mMuteAffectedStreams:I

.field private mRingerMode:I

.field private mRingerModeAffectedStreams:I

.field private mRoutes:[I

.field private mSettingsLock:Ljava/lang/Object;

.field private mSettingsObserver:Landroid/media/AudioService$SettingsObserver;

.field private mSoundEffectsLock:Ljava/lang/Object;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSpeakerIsOn:Z

.field private mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

.field private mVibrateSetting:I

.field private mVolumePanel:Landroid/view/VolumePanel;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 121
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Effect_Tick.ogg"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "KeypressStandard.ogg"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "KeypressSpacebar.ogg"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "KeypressDelete.ogg"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "KeypressReturn.ogg"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/AudioService;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .parameter "context"

    .prologue
    const/4 v2, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 192
    invoke-direct {p0}, Landroid/media/IAudioService$Stub;-><init>()V

    .line 102
    new-array v0, v2, [I

    iput-object v0, p0, Landroid/media/AudioService;->mRoutes:[I

    .line 103
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    .line 112
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    .line 132
    const/16 v0, 0x9

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_ae

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_b6

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_be

    aput-object v1, v0, v3

    new-array v1, v3, [I

    fill-array-data v1, :array_c6

    aput-object v1, v0, v2

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_ce

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_d6

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_de

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_e6

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_ee

    aput-object v2, v0, v1

    iput-object v0, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    .line 144
    new-instance v0, Landroid/media/AudioService$1;

    invoke-direct {v0, p0}, Landroid/media/AudioService$1;-><init>(Landroid/media/AudioService;)V

    iput-object v0, p0, Landroid/media/AudioService;->mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

    .line 193
    iput-object p1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    .line 194
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 195
    new-instance v0, Landroid/view/VolumePanel;

    invoke-direct {v0, p1, p0}, Landroid/view/VolumePanel;-><init>(Landroid/content/Context;Landroid/media/AudioService;)V

    iput-object v0, p0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;

    .line 196
    new-instance v0, Landroid/media/AudioService$SettingsObserver;

    invoke-direct {v0, p0}, Landroid/media/AudioService$SettingsObserver;-><init>(Landroid/media/AudioService;)V

    iput-object v0, p0, Landroid/media/AudioService;->mSettingsObserver:Landroid/media/AudioService$SettingsObserver;

    .line 198
    invoke-direct {p0}, Landroid/media/AudioService;->createAudioSystemThread()V

    .line 199
    invoke-direct {p0}, Landroid/media/AudioService;->createStreamStates()V

    .line 200
    invoke-direct {p0}, Landroid/media/AudioService;->readPersistedSettings()V

    .line 201
    invoke-direct {p0}, Landroid/media/AudioService;->initializeAudioRoutings()V

    .line 202
    invoke-direct {p0}, Landroid/media/AudioService;->readAudioSettings()V

    .line 203
    iput-boolean v5, p0, Landroid/media/AudioService;->mMediaServerOk:Z

    .line 204
    iget-object v0, p0, Landroid/media/AudioService;->mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

    invoke-static {v0}, Landroid/media/AudioSystem;->setErrorCallback(Landroid/media/AudioSystem$ErrorCallback;)V

    .line 205
    iget-object v0, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "sound_effects_enabled"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v5, :cond_ac

    .line 206
    invoke-virtual {p0}, Landroid/media/AudioService;->loadSoundEffects()Z

    .line 207
    iput-boolean v4, p0, Landroid/media/AudioService;->mSpeakerIsOn:Z

    .line 208
    iput-boolean v4, p0, Landroid/media/AudioService;->mBluetoothScoIsConnected:Z

    .line 209
    iput-boolean v4, p0, Landroid/media/AudioService;->mHeadsetIsConnected:Z

    .line 210
    iput-boolean v4, p0, Landroid/media/AudioService;->mBluetoothA2dpIsConnected:Z

    .line 212
    :cond_ac
    return-void

    .line 132
    nop

    :array_ae
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_b6
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_be
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_c6
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_ce
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_d6
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_de
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_e6
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_ee
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method static synthetic access$000(Landroid/media/AudioService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Landroid/media/AudioService;->mMediaServerOk:Z

    return v0
.end method

.method static synthetic access$002(Landroid/media/AudioService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Landroid/media/AudioService;->mMediaServerOk:Z

    return p1
.end method

.method static synthetic access$100(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    return-object v0
.end method

.method static synthetic access$102(Landroid/media/AudioService;Landroid/media/AudioService$AudioHandler;)Landroid/media/AudioService$AudioHandler;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    return-object p1
.end method

.method static synthetic access$1200(Landroid/media/AudioService;)Landroid/content/ContentResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/media/AudioService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    return v0
.end method

.method static synthetic access$1900(Landroid/media/AudioService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Landroid/media/AudioService;->mVibrateSetting:I

    return v0
.end method

.method static synthetic access$200(Landroid/os/Handler;IIIIILjava/lang/Object;I)V
    .registers 8
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"

    .prologue
    .line 59
    invoke-static/range {p0 .. p7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$2000(Landroid/media/AudioService;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2100(Landroid/media/AudioService;)Landroid/media/SoundPool;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$2200(Landroid/media/AudioService;)[[I
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    return-object v0
.end method

.method static synthetic access$2300()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 59
    sget-object v0, Landroid/media/AudioService;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500(Landroid/media/AudioService;)[I
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Landroid/media/AudioService;->mRoutes:[I

    return-object v0
.end method

.method static synthetic access$2600(I)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    invoke-static {p0}, Landroid/media/AudioService;->getMsgBase(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Landroid/media/AudioService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/media/AudioService;->applyAudioSettings()V

    return-void
.end method

.method static synthetic access$2800(Landroid/media/AudioService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/media/AudioService;->storeAudioRoutings()V

    return-void
.end method

.method static synthetic access$2900(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    return-object v0
.end method

.method static synthetic access$3000()Z
    .registers 1

    .prologue
    .line 59
    sget-boolean v0, Landroid/media/AudioService;->isFmRadioOn:Z

    return v0
.end method

.method static synthetic access$3102(Landroid/media/AudioService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    return p1
.end method

.method static synthetic access$3200(Landroid/media/AudioService;IZ)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    return-void
.end method

.method private applyAudioSettings()V
    .registers 5

    .prologue
    .line 357
    iget-object v1, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 358
    :try_start_3
    iget-boolean v2, p0, Landroid/media/AudioService;->mMicMute:Z

    invoke-static {v2}, Landroid/media/AudioSystem;->muteMicrophone(Z)I

    .line 359
    iget v2, p0, Landroid/media/AudioService;->mMode:I

    invoke-static {v2}, Landroid/media/AudioSystem;->setMode(I)I

    .line 360
    const/4 v0, 0x0

    .local v0, mode:I
    :goto_e
    const/4 v2, 0x3

    if-ge v0, v2, :cond_1c

    .line 361
    iget-object v2, p0, Landroid/media/AudioService;->mRoutes:[I

    aget v2, v2, v0

    const/4 v3, -0x1

    invoke-static {v0, v2, v3}, Landroid/media/AudioSystem;->setRouting(III)I

    .line 360
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 363
    :cond_1c
    monitor-exit v1

    .line 364
    return-void

    .line 363
    .end local v0           #mode:I
    :catchall_1e
    move-exception v2

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v2
.end method

.method private broadcastRingerMode()V
    .registers 6

    .prologue
    .line 1192
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 1193
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1194
    .local v0, broadcast:Landroid/content/Intent;
    const-string v3, "android.media.EXTRA_RINGER_MODE"

    iget v4, p0, Landroid/media/AudioService;->mRingerMode:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1195
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1196
    .local v1, origCallerIdentityToken:J
    iget-object v3, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1197
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1199
    .end local v0           #broadcast:Landroid/content/Intent;
    .end local v1           #origCallerIdentityToken:J
    :cond_20
    return-void
.end method

.method private broadcastVibrateSetting(I)V
    .registers 5
    .parameter "vibrateType"

    .prologue
    .line 1203
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1204
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.VIBRATE_SETTING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1205
    .local v0, broadcast:Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_VIBRATE_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1206
    const-string v1, "android.media.EXTRA_VIBRATE_SETTING"

    invoke-virtual {p0, p1}, Landroid/media/AudioService;->getVibrateSetting(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1207
    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1209
    .end local v0           #broadcast:Landroid/content/Intent;
    :cond_20
    return-void
.end method

.method private checkForRingerModeChange(II)Z
    .registers 9
    .parameter "oldIndex"
    .parameter "direction"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 1108
    const/4 v0, 0x1

    .line 1109
    .local v0, adjustVolumeIndex:Z
    iget v1, p0, Landroid/media/AudioService;->mRingerMode:I

    .line 1111
    .local v1, newRingerMode:I
    iget v2, p0, Landroid/media/AudioService;->mRingerMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_18

    if-ne p1, v4, :cond_18

    if-ne p2, v5, :cond_18

    .line 1113
    const/4 v1, 0x1

    .line 1125
    :cond_f
    :goto_f
    iget v2, p0, Landroid/media/AudioService;->mRingerMode:I

    if-eq v1, v2, :cond_17

    .line 1126
    invoke-virtual {p0, v1}, Landroid/media/AudioService;->setRingerMode(I)V

    .line 1133
    const/4 v0, 0x0

    .line 1136
    :cond_17
    return v0

    .line 1114
    :cond_18
    iget v2, p0, Landroid/media/AudioService;->mRingerMode:I

    if-ne v2, v4, :cond_24

    .line 1115
    if-ne p2, v4, :cond_20

    .line 1116
    const/4 v1, 0x2

    goto :goto_f

    .line 1117
    :cond_20
    if-ne p2, v5, :cond_f

    .line 1118
    const/4 v1, 0x0

    goto :goto_f

    .line 1120
    :cond_24
    if-ne p2, v4, :cond_f

    iget v2, p0, Landroid/media/AudioService;->mRingerMode:I

    if-nez v2, :cond_f

    .line 1122
    const/4 v1, 0x1

    goto :goto_f
.end method

.method private createAudioSystemThread()V
    .registers 2

    .prologue
    .line 215
    new-instance v0, Landroid/media/AudioService$AudioSystemThread;

    invoke-direct {v0, p0}, Landroid/media/AudioService$AudioSystemThread;-><init>(Landroid/media/AudioService;)V

    iput-object v0, p0, Landroid/media/AudioService;->mAudioSystemThread:Landroid/media/AudioService$AudioSystemThread;

    .line 216
    iget-object v0, p0, Landroid/media/AudioService;->mAudioSystemThread:Landroid/media/AudioService$AudioSystemThread;

    invoke-virtual {v0}, Landroid/media/AudioService$AudioSystemThread;->start()V

    .line 217
    invoke-direct {p0}, Landroid/media/AudioService;->waitForAudioHandlerCreation()V

    .line 218
    return-void
.end method

.method private createStreamStates()V
    .registers 14

    .prologue
    const/4 v5, 0x0

    const/4 v12, 0x6

    const/4 v2, 0x0

    .line 235
    sget-object v0, Landroid/media/AudioManager;->MAX_STREAM_VOLUME:[I

    aget v0, v0, v2

    invoke-static {v2, v0}, Landroid/media/AudioService;->createVolumeLevels(II)[I

    move-result-object v11

    .line 237
    .local v11, volumeLevelsPhone:[I
    sget-object v0, Landroid/media/AudioManager;->MAX_STREAM_VOLUME:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-static {v2, v0}, Landroid/media/AudioService;->createVolumeLevels(II)[I

    move-result-object v9

    .line 239
    .local v9, volumeLevelsCoarse:[I
    sget-object v0, Landroid/media/AudioManager;->MAX_STREAM_VOLUME:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    invoke-static {v2, v0}, Landroid/media/AudioService;->createVolumeLevels(II)[I

    move-result-object v10

    .line 241
    .local v10, volumeLevelsFine:[I
    sget-object v0, Landroid/media/AudioManager;->MAX_STREAM_VOLUME:[I

    aget v0, v0, v12

    invoke-static {v2, v0}, Landroid/media/AudioService;->createVolumeLevels(II)[I

    move-result-object v8

    .line 245
    .local v8, volumeLevelsBtPhone:[I
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v6

    .line 246
    .local v6, numStreamTypes:I
    new-array v7, v6, [Landroid/media/AudioService$VolumeStreamState;

    iput-object v7, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    .line 248
    .local v7, streams:[Landroid/media/AudioService$VolumeStreamState;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2e
    if-ge v3, v6, :cond_58

    .line 251
    sparse-switch v3, :sswitch_data_5a

    .line 266
    move-object v4, v9

    .line 270
    .local v4, levels:[I
    :goto_34
    if-ne v3, v12, :cond_4b

    .line 271
    new-instance v0, Landroid/media/AudioService$VolumeStreamState;

    sget-object v1, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    aget v2, v1, v3

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioService$VolumeStreamState;-><init>(Landroid/media/AudioService;II[ILandroid/media/AudioService$1;)V

    aput-object v0, v7, v3

    .line 248
    :goto_42
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    .line 254
    .end local v4           #levels:[I
    :sswitch_45
    move-object v4, v10

    .line 255
    .restart local v4       #levels:[I
    goto :goto_34

    .line 258
    .end local v4           #levels:[I
    :sswitch_47
    move-object v4, v11

    .line 259
    .restart local v4       #levels:[I
    goto :goto_34

    .line 262
    .end local v4           #levels:[I
    :sswitch_49
    move-object v4, v8

    .line 263
    .restart local v4       #levels:[I
    goto :goto_34

    .line 273
    :cond_4b
    new-instance v0, Landroid/media/AudioService$VolumeStreamState;

    sget-object v1, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    aget-object v2, v1, v3

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioService$VolumeStreamState;-><init>(Landroid/media/AudioService;Ljava/lang/String;I[ILandroid/media/AudioService$1;)V

    aput-object v0, v7, v3

    goto :goto_42

    .line 276
    .end local v4           #levels:[I
    :cond_58
    return-void

    .line 251
    nop

    :sswitch_data_5a
    .sparse-switch
        0x0 -> :sswitch_47
        0x3 -> :sswitch_45
        0x6 -> :sswitch_49
    .end sparse-switch
.end method

.method private static createVolumeLevels(II)[I
    .registers 13
    .parameter "offset"
    .parameter "numlevels"

    .prologue
    .line 279
    const-wide/high16 v0, 0x3ff0

    .line 280
    .local v0, curve:D
    add-int v8, p1, p0

    new-array v7, v8, [I

    .line 281
    .local v7, volumes:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_7
    if-ge v2, p0, :cond_f

    .line 282
    const/4 v8, 0x0

    aput v8, v7, v2

    .line 281
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 285
    :cond_f
    const-wide/16 v5, 0x0

    .line 286
    .local v5, val:D
    const/4 v8, 0x1

    sub-int v8, p1, v8

    int-to-double v8, v8

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    .line 287
    .local v3, max:D
    const/4 v2, 0x0

    :goto_1a
    if-ge v2, p1, :cond_2e

    .line 288
    int-to-double v8, v2

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    div-double v5, v8, v3

    .line 289
    add-int v8, p0, v2

    const-wide/high16 v9, 0x4059

    mul-double/2addr v9, v5

    double-to-int v9, v9

    aput v9, v7, v8

    .line 287
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 291
    :cond_2e
    return-object v7
.end method

.method private ensureValidDirection(I)V
    .registers 5
    .parameter "direction"

    .prologue
    .line 1148
    const/4 v0, -0x1

    if-lt p1, v0, :cond_6

    const/4 v0, 0x1

    if-le p1, v0, :cond_1f

    .line 1149
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad direction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1151
    :cond_1f
    return-void
.end method

.method private ensureValidStreamType(I)V
    .registers 5
    .parameter "streamType"

    .prologue
    .line 1154
    if-ltz p1, :cond_7

    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    array-length v0, v0

    if-lt p1, v0, :cond_20

    .line 1155
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad stream type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1157
    :cond_20
    return-void
.end method

.method private getActiveStreamType(I)I
    .registers 10
    .parameter "suggestedStreamType"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 1160
    const/4 v1, 0x0

    .line 1162
    .local v1, isOffhook:Z
    :try_start_4
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 1163
    .local v2, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_14

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_13} :catch_1e

    move-result v1

    .line 1168
    .end local v2           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_14
    :goto_14
    invoke-virtual {p0, v5}, Landroid/media/AudioService;->getRouting(I)I

    move-result v3

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_28

    .line 1170
    const/4 v3, 0x6

    .line 1186
    :goto_1d
    return v3

    .line 1164
    :catch_1e
    move-exception v3

    move-object v0, v3

    .line 1165
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "AudioService"

    const-string v4, "Couldn\'t connect to phone service"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14

    .line 1171
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_28
    if-nez v1, :cond_2e

    iget v3, p0, Landroid/media/AudioService;->mMode:I

    if-ne v3, v5, :cond_30

    :cond_2e
    move v3, v6

    .line 1173
    goto :goto_1d

    .line 1174
    :cond_30
    invoke-static {}, Landroid/media/AudioSystem;->isMusicActive()Z

    move-result v3

    if-eqz v3, :cond_38

    move v3, v7

    .line 1176
    goto :goto_1d

    .line 1178
    :cond_38
    invoke-virtual {p0, v6}, Landroid/media/AudioService;->getRouting(I)I

    move-result v3

    const/16 v4, 0x400

    if-ne v3, v4, :cond_42

    move v3, v7

    .line 1179
    goto :goto_1d

    .line 1181
    :cond_42
    const/high16 v3, -0x8000

    if-ne p1, v3, :cond_48

    move v3, v5

    .line 1183
    goto :goto_1d

    :cond_48
    move v3, p1

    .line 1186
    goto :goto_1d
.end method

.method private static getMsg(II)I
    .registers 4
    .parameter "baseMsg"
    .parameter "streamType"

    .prologue
    .line 1213
    const v0, 0xffff

    and-int/2addr v0, p0

    shl-int/lit8 v1, p1, 0x10

    or-int/2addr v0, v1

    return v0
.end method

.method private static getMsgBase(I)I
    .registers 2
    .parameter "msg"

    .prologue
    .line 1217
    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method

.method public static getValueForVibrateSetting(III)I
    .registers 5
    .parameter "existingValue"
    .parameter "vibrateType"
    .parameter "vibrateSetting"

    .prologue
    .line 649
    const/4 v0, 0x3

    mul-int/lit8 v1, p1, 0x2

    shl-int/2addr v0, v1

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr p0, v0

    .line 652
    and-int/lit8 v0, p2, 0x3

    mul-int/lit8 v1, p1, 0x2

    shl-int/2addr v0, v1

    or-int/2addr p0, v0

    .line 654
    return p0
.end method

.method private initializeAudioRoutings()V
    .registers 8

    .prologue
    .line 320
    iget-object v1, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 327
    :try_start_3
    iget-object v2, p0, Landroid/media/AudioService;->mRoutes:[I

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "mode_normal"

    const/4 v6, 0x2

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    aput v4, v2, v3

    .line 328
    iget-object v2, p0, Landroid/media/AudioService;->mRoutes:[I

    const/4 v3, 0x1

    iget-object v4, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "mode_ringtone"

    const/4 v6, 0x2

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    aput v4, v2, v3

    .line 329
    iget-object v2, p0, Landroid/media/AudioService;->mRoutes:[I

    const/4 v3, 0x2

    iget-object v4, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "mode_in_call"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    aput v4, v2, v3

    .line 332
    const/4 v0, 0x0

    .local v0, mode:I
    :goto_2e
    const/4 v2, 0x3

    if-ge v0, v2, :cond_3c

    .line 333
    iget-object v2, p0, Landroid/media/AudioService;->mRoutes:[I

    aget v2, v2, v0

    const/4 v3, -0x1

    invoke-static {v0, v2, v3}, Landroid/media/AudioSystem;->setRouting(III)I

    .line 332
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 335
    :cond_3c
    monitor-exit v1

    .line 336
    return-void

    .line 335
    .end local v0           #mode:I
    :catchall_3e
    move-exception v2

    monitor-exit v1
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_3e

    throw v2
.end method

.method private readAudioSettings()V
    .registers 5

    .prologue
    .line 347
    iget-object v1, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 348
    :try_start_3
    invoke-static {}, Landroid/media/AudioSystem;->isMicrophoneMuted()Z

    move-result v2

    iput-boolean v2, p0, Landroid/media/AudioService;->mMicMute:Z

    .line 349
    invoke-static {}, Landroid/media/AudioSystem;->getMode()I

    move-result v2

    iput v2, p0, Landroid/media/AudioService;->mMode:I

    .line 350
    const/4 v0, 0x0

    .local v0, mode:I
    :goto_10
    const/4 v2, 0x3

    if-ge v0, v2, :cond_1e

    .line 351
    iget-object v2, p0, Landroid/media/AudioService;->mRoutes:[I

    invoke-static {v0}, Landroid/media/AudioSystem;->getRouting(I)I

    move-result v3

    aput v3, v2, v0

    .line 350
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 353
    :cond_1e
    monitor-exit v1

    .line 354
    return-void

    .line 353
    .end local v0           #mode:I
    :catchall_20
    move-exception v2

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v2
.end method

.method private readPersistedSettings()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 295
    iget-object v0, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 297
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "mode_ringer"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/media/AudioService;->mRingerMode:I

    .line 299
    const-string v1, "vibrate_on"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/media/AudioService;->mVibrateSetting:I

    .line 301
    const-string v1, "mode_ringer_streams_affected"

    const/16 v2, 0x26

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    .line 305
    const-string v1, "mute_streams_affected"

    const/16 v2, 0xe

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/media/AudioService;->mMuteAffectedStreams:I

    .line 312
    invoke-direct {p0}, Landroid/media/AudioService;->broadcastRingerMode()V

    .line 315
    invoke-direct {p0, v3}, Landroid/media/AudioService;->broadcastVibrateSetting(I)V

    .line 316
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/media/AudioService;->broadcastVibrateSetting(I)V

    .line 317
    return-void
.end method

.method private static sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V
    .registers 12
    .parameter "handler"
    .parameter "baseMsg"
    .parameter "streamType"
    .parameter "existingMsgPolicy"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"
    .parameter "delay"

    .prologue
    .line 1222
    const/4 v1, -0x1

    if-ne p2, v1, :cond_12

    move v0, p1

    .line 1224
    .local v0, msg:I
    :goto_4
    if-nez p3, :cond_18

    .line 1225
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1230
    :cond_9
    invoke-virtual {p0, v0, p4, p5, p6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p7

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1232
    :goto_11
    return-void

    .line 1222
    .end local v0           #msg:I
    :cond_12
    invoke-static {p1, p2}, Landroid/media/AudioService;->getMsg(II)I

    move-result v1

    move v0, v1

    goto :goto_4

    .line 1226
    .restart local v0       #msg:I
    :cond_18
    const/4 v1, 0x1

    if-ne p3, v1, :cond_9

    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_11
.end method

.method private sendVolumeUpdate(I)V
    .registers 5
    .parameter "streamType"

    .prologue
    .line 466
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 467
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 468
    const-string v1, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {p0, p1}, Landroid/media/AudioService;->getStreamVolume(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 471
    const/4 v1, 0x6

    if-ne p1, v1, :cond_1d

    .line 472
    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 474
    :cond_1d
    return-void
.end method

.method private setRingerModeInt(IZ)V
    .registers 13
    .parameter "ringerMode"
    .parameter "persist"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 567
    iput p1, p0, Landroid/media/AudioService;->mRingerMode:I

    .line 570
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v8

    .line 571
    .local v8, numStreamTypes:I
    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    .line 572
    sub-int v9, v8, v2

    .local v9, streamType:I
    :goto_f
    if-ltz v9, :cond_42

    .line 573
    invoke-virtual {p0, v9}, Landroid/media/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 572
    :goto_17
    add-int/lit8 v9, v9, -0x1

    goto :goto_f

    .line 575
    :cond_1a
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, v9

    invoke-static {v0}, Landroid/media/AudioService$VolumeStreamState;->access$700(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v0

    invoke-direct {p0, v9, v0, v3, v3}, Landroid/media/AudioService;->setStreamVolumeInt(IIZZ)V

    goto :goto_17

    .line 579
    .end local v9           #streamType:I
    :cond_26
    sub-int v9, v8, v2

    .restart local v9       #streamType:I
    :goto_28
    if-ltz v9, :cond_42

    .line 580
    invoke-virtual {p0, v9}, Landroid/media/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 582
    invoke-direct {p0, v9, v3, v3, v3}, Landroid/media/AudioService;->setStreamVolumeInt(IIZZ)V

    .line 579
    :goto_33
    add-int/lit8 v9, v9, -0x1

    goto :goto_28

    .line 587
    :cond_36
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, v9

    invoke-static {v0}, Landroid/media/AudioService$VolumeStreamState;->access$700(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v0

    invoke-direct {p0, v9, v0, v3, v3}, Landroid/media/AudioService;->setStreamVolumeInt(IIZZ)V

    goto :goto_33

    .line 594
    :cond_42
    if-eqz p2, :cond_50

    .line 595
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x3

    const/4 v2, -0x1

    const/4 v6, 0x0

    const/16 v7, 0xbb8

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    .line 598
    :cond_50
    return-void
.end method

.method private setStreamVolumeInt(IIZZ)V
    .registers 13
    .parameter "streamType"
    .parameter "index"
    .parameter "force"
    .parameter "lastAudible"

    .prologue
    const/4 v1, 0x0

    .line 512
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v6, v0, p1

    .line 513
    .local v6, streamState:Landroid/media/AudioService$VolumeStreamState;
    invoke-virtual {v6, p2, p4}, Landroid/media/AudioService$VolumeStreamState;->setIndex(IZ)Z

    move-result v0

    if-nez v0, :cond_d

    if-eqz p3, :cond_1d

    .line 516
    :cond_d
    invoke-static {v6}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v0

    if-nez v0, :cond_1d

    .line 517
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v3, 0x1

    move v2, p1

    move v4, v1

    move v5, v1

    move v7, v1

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    .line 521
    :cond_1d
    return-void
.end method

.method private storeAudioRoutings()V
    .registers 6

    .prologue
    .line 339
    iget-object v0, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 340
    :try_start_3
    iget-object v1, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "mode_normal"

    iget-object v3, p0, Landroid/media/AudioService;->mRoutes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 341
    iget-object v1, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "mode_ringtone"

    iget-object v3, p0, Landroid/media/AudioService;->mRoutes:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 342
    iget-object v1, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "mode_in_call"

    iget-object v3, p0, Landroid/media/AudioService;->mRoutes:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 343
    monitor-exit v0

    .line 344
    return-void

    .line 343
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method private syncRingerAndNotificationStreamVolume(IIZ)V
    .registers 9
    .parameter "streamType"
    .parameter "index"
    .parameter "force"

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x1

    .line 486
    iget-object v1, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "notifications_use_ring_volume"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_19

    move v0, v3

    .line 488
    .local v0, notificationsUseRingVolume:Z
    :goto_d
    if-eqz v0, :cond_18

    .line 489
    if-ne p1, v4, :cond_12

    .line 491
    const/4 p1, 0x2

    .line 493
    :cond_12
    const/4 v1, 0x2

    if-ne p1, v1, :cond_18

    .line 495
    invoke-direct {p0, v4, p2, p3, v3}, Landroid/media/AudioService;->setStreamVolumeInt(IIZZ)V

    .line 498
    :cond_18
    return-void

    .line 486
    .end local v0           #notificationsUseRingVolume:Z
    :cond_19
    const/4 v1, 0x0

    move v0, v1

    goto :goto_d
.end method

.method private waitForAudioHandlerCreation()V
    .registers 4

    .prologue
    .line 222
    monitor-enter p0

    .line 223
    :goto_1
    :try_start_1
    iget-object v1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_12

    if-nez v1, :cond_15

    .line 226
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_12
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9

    goto :goto_1

    .line 227
    :catch_9
    move-exception v0

    .line 228
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_a
    const-string v1, "AudioService"

    const-string v2, "Interrupted while waiting on volume handler."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 231
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_12
    move-exception v1

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_12

    throw v1

    :cond_15
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_12

    .line 232
    return-void
.end method


# virtual methods
.method public adjustStreamVolume(III)V
    .registers 27
    .parameter "streamType"
    .parameter "direction"
    .parameter "flags"

    .prologue
    .line 390
    const/16 v22, 0x0

    .line 391
    .local v22, ttyStateFullOrVco:Z
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/media/AudioService;->ensureValidDirection(I)V

    .line 392
    invoke-direct/range {p0 .. p1}, Landroid/media/AudioService;->ensureValidStreamType(I)V

    .line 396
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/AudioService;->mHeadsetIsConnected:Z

    move v3, v0

    if-eqz v3, :cond_2d

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService;->mRoutes:[I

    move-object v3, v0

    const/4 v4, 0x2

    aget v3, v3, v4

    const/16 v4, 0x80

    if-eq v3, v4, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService;->mRoutes:[I

    move-object v3, v0

    const/4 v4, 0x2

    aget v3, v3, v4

    const/16 v4, 0x200

    if-ne v3, v4, :cond_2d

    .line 399
    :cond_2b
    const/16 v22, 0x1

    .line 402
    :cond_2d
    if-nez v22, :cond_d7

    .line 403
    const-string v3, "AudioService"

    const-string v4, "Setting the volume changes normally"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    move-object v3, v0

    const-string v4, "notifications_use_ring_volume"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_d8

    const/4 v3, 0x1

    move/from16 v20, v3

    .line 406
    .local v20, notificationsUseRingVolume:Z
    :goto_48
    if-eqz v20, :cond_52

    const/4 v3, 0x5

    move/from16 v0, p1

    move v1, v3

    if-ne v0, v1, :cond_52

    .line 408
    const/16 p1, 0x2

    .line 411
    :cond_52
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    move-object v3, v0

    aget-object v9, v3, p1

    .line 412
    .local v9, streamState:Landroid/media/AudioService$VolumeStreamState;
    invoke-static {v9}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v21

    .line 413
    .local v21, oldIndex:I
    const/16 v18, 0x1

    .line 417
    .local v18, adjustVolume:Z
    and-int/lit8 v3, p3, 0x2

    if-nez v3, :cond_69

    const/4 v3, 0x2

    move/from16 v0, p1

    move v1, v3

    if-ne v0, v1, :cond_73

    .line 421
    :cond_69
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Landroid/media/AudioService;->checkForRingerModeChange(II)Z

    move-result v18

    .line 424
    :cond_73
    if-eqz v18, :cond_c7

    move-object v0, v9

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/media/AudioService$VolumeStreamState;->adjustIndex(I)Z

    move-result v3

    if-eqz v3, :cond_c7

    .line 426
    if-eqz v20, :cond_dd

    const/4 v3, 0x2

    move/from16 v0, p1

    move v1, v3

    if-ne v0, v1, :cond_dd

    const/4 v3, 0x1

    move/from16 v19, v3

    .line 428
    .local v19, alsoUpdateNotificationVolume:Z
    :goto_89
    if-eqz v19, :cond_99

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    move-object v3, v0

    const/4 v4, 0x5

    aget-object v3, v3, v4

    move-object v0, v3

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/media/AudioService$VolumeStreamState;->adjustIndex(I)Z

    .line 434
    :cond_99
    invoke-static {v9}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v3

    if-nez v3, :cond_c7

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    move-object v3, v0

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move/from16 v5, p1

    invoke-static/range {v3 .. v10}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    .line 438
    if-eqz v19, :cond_c7

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    move-object v10, v0

    const/4 v11, 0x0

    const/4 v12, 0x5

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    move-object v3, v0

    const/4 v4, 0x5

    aget-object v16, v3, v4

    const/16 v17, 0x0

    invoke-static/range {v10 .. v17}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    .line 446
    .end local v19           #alsoUpdateNotificationVolume:Z
    :cond_c7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;

    move-object v3, v0

    move-object v0, v3

    move/from16 v1, p1

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/view/VolumePanel;->postVolumeChanged(II)V

    .line 448
    invoke-direct/range {p0 .. p1}, Landroid/media/AudioService;->sendVolumeUpdate(I)V

    .line 450
    .end local v9           #streamState:Landroid/media/AudioService$VolumeStreamState;
    .end local v18           #adjustVolume:Z
    .end local v20           #notificationsUseRingVolume:Z
    .end local v21           #oldIndex:I
    :cond_d7
    return-void

    .line 404
    :cond_d8
    const/4 v3, 0x0

    move/from16 v20, v3

    goto/16 :goto_48

    .line 426
    .restart local v9       #streamState:Landroid/media/AudioService$VolumeStreamState;
    .restart local v18       #adjustVolume:Z
    .restart local v20       #notificationsUseRingVolume:Z
    .restart local v21       #oldIndex:I
    :cond_dd
    const/4 v3, 0x0

    move/from16 v19, v3

    goto :goto_89
.end method

.method public adjustSuggestedStreamVolume(III)V
    .registers 6
    .parameter "direction"
    .parameter "suggestedStreamType"
    .parameter "flags"

    .prologue
    .line 378
    invoke-direct {p0, p2}, Landroid/media/AudioService;->getActiveStreamType(I)I

    move-result v0

    .line 381
    .local v0, streamType:I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_d

    and-int/lit8 v1, p3, 0x4

    if-eqz v1, :cond_d

    .line 382
    and-int/lit8 p3, p3, -0x5

    .line 385
    :cond_d
    invoke-virtual {p0, v0, p1, p3}, Landroid/media/AudioService;->adjustStreamVolume(III)V

    .line 386
    return-void
.end method

.method public adjustVolume(II)V
    .registers 4
    .parameter "direction"
    .parameter "flags"

    .prologue
    .line 372
    const/high16 v0, -0x8000

    invoke-virtual {p0, p1, v0, p2}, Landroid/media/AudioService;->adjustSuggestedStreamVolume(III)V

    .line 373
    return-void
.end method

.method checkAudioSettingsPermission(Ljava/lang/String;)Z
    .registers 5
    .parameter "method"

    .prologue
    .line 1235
    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_AUDIO_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_c

    .line 1237
    const/4 v1, 0x1

    .line 1243
    :goto_b
    return v1

    .line 1239
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Audio Settings Permission Denial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1242
    .local v0, msg:Ljava/lang/String;
    const-string v1, "AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public getMode()I
    .registers 2

    .prologue
    .line 697
    iget v0, p0, Landroid/media/AudioService;->mMode:I

    return v0
.end method

.method public getRingerMode()I
    .registers 2

    .prologue
    .line 553
    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    return v0
.end method

.method public getRouting(I)I
    .registers 3
    .parameter "mode"

    .prologue
    .line 957
    iget-object v0, p0, Landroid/media/AudioService;->mRoutes:[I

    aget v0, v0, p1

    return v0
.end method

.method public getStreamMaxVolume(I)I
    .registers 3
    .parameter "streamType"

    .prologue
    .line 547
    invoke-direct {p0, p1}, Landroid/media/AudioService;->ensureValidStreamType(I)V

    .line 548
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v0

    return v0
.end method

.method public getStreamVolume(I)I
    .registers 3
    .parameter "streamType"

    .prologue
    .line 541
    invoke-direct {p0, p1}, Landroid/media/AudioService;->ensureValidStreamType(I)V

    .line 542
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-static {v0}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v0

    return v0
.end method

.method public getVibrateSetting(I)I
    .registers 4
    .parameter "vibrateType"

    .prologue
    .line 624
    iget v0, p0, Landroid/media/AudioService;->mVibrateSetting:I

    mul-int/lit8 v1, p1, 0x2

    shr-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public isMicrophoneMute()Z
    .registers 2

    .prologue
    .line 674
    iget-boolean v0, p0, Landroid/media/AudioService;->mMicMute:Z

    return v0
.end method

.method public isMusicActive()Z
    .registers 2

    .prologue
    .line 962
    invoke-static {}, Landroid/media/AudioSystem;->isMusicActive()Z

    move-result v0

    return v0
.end method

.method public isStreamAffectedByMute(I)Z
    .registers 5
    .parameter "streamType"

    .prologue
    const/4 v2, 0x1

    .line 1144
    iget v0, p0, Landroid/media/AudioService;->mMuteAffectedStreams:I

    shl-int v1, v2, p1

    and-int/2addr v0, v1

    if-eqz v0, :cond_a

    move v0, v2

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isStreamAffectedByRingerMode(I)Z
    .registers 5
    .parameter "streamType"

    .prologue
    const/4 v2, 0x1

    .line 1140
    iget v0, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    shl-int v1, v2, p1

    and-int/2addr v0, v1

    if-eqz v0, :cond_a

    move v0, v2

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public loadSoundEffects()Z
    .registers 14

    .prologue
    const/4 v12, -0x1

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 987
    iget-object v5, p0, Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    monitor-enter v5

    .line 988
    :try_start_6
    new-instance v6, Landroid/media/SoundPool;

    const/4 v7, 0x4

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v6, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    .line 989
    iget-object v6, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    if-nez v6, :cond_17

    .line 990
    monitor-exit v5

    move v5, v10

    .line 1026
    :goto_16
    return v5

    .line 998
    :cond_17
    sget-object v6, Landroid/media/AudioService;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    array-length v6, v6

    new-array v3, v6, [I

    .line 999
    .local v3, poolId:[I
    const/4 v1, 0x0

    .local v1, fileIdx:I
    :goto_1d
    sget-object v6, Landroid/media/AudioService;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    array-length v6, v6

    if-ge v1, v6, :cond_28

    .line 1000
    const/4 v6, -0x1

    aput v6, v3, v1

    .line 999
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 1007
    :cond_28
    const/4 v0, 0x0

    .local v0, effect:I
    :goto_29
    const/16 v6, 0x9

    if-ge v0, v6, :cond_b0

    .line 1009
    iget-object v6, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v6, v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    if-nez v6, :cond_39

    .line 1007
    :cond_36
    :goto_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 1012
    :cond_39
    iget-object v6, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v6, v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aget v6, v3, v6

    if-ne v6, v12, :cond_9f

    .line 1013
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/media/audio/ui/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/media/AudioService;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    iget-object v8, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v8, v8, v0

    const/4 v9, 0x0

    aget v8, v8, v9

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1014
    .local v2, filePath:Ljava/lang/String;
    iget-object v6, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v7}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v4

    .line 1015
    .local v4, sampleId:I
    iget-object v6, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v6, v6, v0

    const/4 v7, 0x1

    aput v4, v6, v7

    .line 1016
    iget-object v6, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v6, v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v4, v3, v6

    .line 1017
    if-gtz v4, :cond_36

    .line 1018
    const-string v6, "AudioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Soundpool could not load file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    .line 1024
    .end local v0           #effect:I
    .end local v1           #fileIdx:I
    .end local v2           #filePath:Ljava/lang/String;
    .end local v3           #poolId:[I
    .end local v4           #sampleId:I
    :catchall_9c
    move-exception v6

    monitor-exit v5
    :try_end_9e
    .catchall {:try_start_6 .. :try_end_9e} :catchall_9c

    throw v6

    .line 1021
    .restart local v0       #effect:I
    .restart local v1       #fileIdx:I
    .restart local v3       #poolId:[I
    :cond_9f
    :try_start_9f
    iget-object v6, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v6, v6, v0

    const/4 v7, 0x1

    iget-object v8, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v8, v8, v0

    const/4 v9, 0x0

    aget v8, v8, v9

    aget v8, v3, v8

    aput v8, v6, v7

    goto :goto_36

    .line 1024
    :cond_b0
    monitor-exit v5
    :try_end_b1
    .catchall {:try_start_9f .. :try_end_b1} :catchall_9c

    move v5, v11

    .line 1026
    goto/16 :goto_16
.end method

.method public playSoundEffect(I)V
    .registers 10
    .parameter "effectType"

    .prologue
    .line 972
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x7

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/16 v5, 0x3e8

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v4, p1

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    .line 974
    return-void
.end method

.method public playSoundEffectVolume(IF)V
    .registers 11
    .parameter "effectType"
    .parameter "volume"

    .prologue
    .line 978
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x7

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/high16 v4, 0x447a

    mul-float/2addr v4, p2

    float-to-int v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v4, p1

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    .line 980
    return-void
.end method

.method public reloadAudioSettings()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 1061
    invoke-direct {p0}, Landroid/media/AudioService;->readPersistedSettings()V

    .line 1064
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v2

    .line 1065
    .local v2, numStreamTypes:I
    const/4 v6, 0x0

    .local v6, streamType:I
    :goto_9
    if-ge v6, v2, :cond_a2

    .line 1066
    iget-object v7, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v5, v7, v6

    .line 1069
    .local v5, streamState:Landroid/media/AudioService$VolumeStreamState;
    const/4 v7, 0x6

    if-eq v6, v7, :cond_51

    .line 1070
    sget-object v7, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    aget-object v3, v7, v6

    .line 1071
    .local v3, settingName:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_last_audible"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1073
    .local v1, lastAudibleSettingName:Ljava/lang/String;
    iget-object v7, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v8, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    aget v8, v8, v6

    invoke-static {v7, v3, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-static {v5, v7}, Landroid/media/AudioService$VolumeStreamState;->access$800(Landroid/media/AudioService$VolumeStreamState;I)I

    move-result v7

    invoke-static {v5, v7}, Landroid/media/AudioService$VolumeStreamState;->access$502(Landroid/media/AudioService$VolumeStreamState;I)I

    .line 1076
    iget-object v7, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v5}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v8

    if-lez v8, :cond_86

    invoke-static {v5}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v8

    :goto_46
    invoke-static {v7, v1, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-static {v5, v7}, Landroid/media/AudioService$VolumeStreamState;->access$800(Landroid/media/AudioService$VolumeStreamState;I)I

    move-result v7

    invoke-static {v5, v7}, Landroid/media/AudioService$VolumeStreamState;->access$702(Landroid/media/AudioService$VolumeStreamState;I)I

    .line 1081
    .end local v1           #lastAudibleSettingName:Ljava/lang/String;
    .end local v3           #settingName:Ljava/lang/String;
    :cond_51
    invoke-static {v5}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v7

    if-eqz v7, :cond_8b

    invoke-virtual {p0, v6}, Landroid/media/AudioService;->isStreamAffectedByMute(I)Z

    move-result v7

    if-nez v7, :cond_8b

    .line 1082
    invoke-static {v5}, Landroid/media/AudioService$VolumeStreamState;->access$900(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1083
    .local v4, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_66
    if-ge v0, v4, :cond_8b

    .line 1084
    invoke-static {v5}, Landroid/media/AudioService$VolumeStreamState;->access$900(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->access$1002(Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;I)I

    .line 1085
    invoke-static {v5}, Landroid/media/AudioService$VolumeStreamState;->access$900(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    invoke-virtual {v7, v9}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mute(Z)V

    .line 1083
    add-int/lit8 v0, v0, 0x1

    goto :goto_66

    .line 1076
    .end local v0           #i:I
    .end local v4           #size:I
    .restart local v1       #lastAudibleSettingName:Ljava/lang/String;
    .restart local v3       #settingName:Ljava/lang/String;
    :cond_86
    sget-object v8, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    aget v8, v8, v6

    goto :goto_46

    .line 1089
    .end local v1           #lastAudibleSettingName:Ljava/lang/String;
    .end local v3           #settingName:Ljava/lang/String;
    :cond_8b
    invoke-static {v5}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v7

    if-nez v7, :cond_9e

    .line 1090
    invoke-static {v5}, Landroid/media/AudioService$VolumeStreamState;->access$1100(Landroid/media/AudioService$VolumeStreamState;)[I

    move-result-object v7

    invoke-static {v5}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v8

    aget v7, v7, v8

    invoke-static {v6, v7}, Landroid/media/AudioSystem;->setVolume(II)I

    .line 1065
    :cond_9e
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_9

    .line 1095
    .end local v5           #streamState:Landroid/media/AudioService$VolumeStreamState;
    :cond_a2
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerMode()I

    move-result v7

    invoke-direct {p0, v7, v9}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    .line 1096
    return-void
.end method

.method public setMicrophoneMute(Z)V
    .registers 4
    .parameter "on"

    .prologue
    .line 659
    const-string v0, "setMicrophoneMute()"

    invoke-virtual {p0, v0}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 670
    :goto_8
    return-void

    .line 662
    :cond_9
    iget-object v0, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 665
    :try_start_c
    iget-boolean v1, p0, Landroid/media/AudioService;->mMicMute:Z

    if-ne p1, v1, :cond_12

    if-nez p1, :cond_17

    .line 666
    :cond_12
    invoke-static {p1}, Landroid/media/AudioSystem;->muteMicrophone(Z)I

    .line 667
    iput-boolean p1, p0, Landroid/media/AudioService;->mMicMute:Z

    .line 669
    :cond_17
    monitor-exit v0

    goto :goto_8

    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_c .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public setMode(I)V
    .registers 7
    .parameter "mode"

    .prologue
    .line 679
    const-string v2, "setMode()"

    invoke-virtual {p0, v2}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 693
    :goto_8
    return-void

    .line 682
    :cond_9
    iget-object v2, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 683
    :try_start_c
    iget v3, p0, Landroid/media/AudioService;->mMode:I

    if-eq p1, v3, :cond_18

    .line 684
    invoke-static {p1}, Landroid/media/AudioSystem;->setMode(I)I

    move-result v3

    if-nez v3, :cond_18

    .line 685
    iput p1, p0, Landroid/media/AudioService;->mMode:I

    .line 688
    :cond_18
    const/high16 v3, -0x8000

    invoke-direct {p0, v3}, Landroid/media/AudioService;->getActiveStreamType(I)I

    move-result v1

    .line 689
    .local v1, streamType:I
    iget-object v3, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v3, v3, v1

    invoke-static {v3}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v0

    .line 690
    .local v0, index:I
    const/4 v3, 0x1

    invoke-direct {p0, v1, v0, v3}, Landroid/media/AudioService;->syncRingerAndNotificationStreamVolume(IIZ)V

    .line 691
    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-direct {p0, v1, v0, v3, v4}, Landroid/media/AudioService;->setStreamVolumeInt(IIZZ)V

    .line 692
    monitor-exit v2

    goto :goto_8

    .end local v0           #index:I
    .end local v1           #streamType:I
    :catchall_31
    move-exception v3

    monitor-exit v2
    :try_end_33
    .catchall {:try_start_c .. :try_end_33} :catchall_31

    throw v3
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 967
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    return-void
.end method

.method public setRingerMode(I)V
    .registers 3
    .parameter "ringerMode"

    .prologue
    .line 558
    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    if-eq p1, v0, :cond_b

    .line 559
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    .line 562
    invoke-direct {p0}, Landroid/media/AudioService;->broadcastRingerMode()V

    .line 564
    :cond_b
    return-void
.end method

.method public setRouting(III)V
    .registers 14
    .parameter "mode"
    .parameter "routes"
    .parameter "mask"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 702
    const/4 v0, 0x0

    .line 703
    .local v0, incallMask:I
    const/4 v3, 0x0

    .line 704
    .local v3, ringtoneMask:I
    const/4 v2, 0x0

    .line 706
    .local v2, normalMask:I
    const-string v5, "setRouting()"

    invoke-virtual {p0, v5}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 953
    :goto_d
    return-void

    .line 710
    :cond_e
    const/16 v5, 0x400

    if-ne p2, v5, :cond_5a

    .line 712
    sput-boolean v7, Landroid/media/AudioService;->isFmRadioOn:Z

    .line 719
    :goto_14
    iget-object v5, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v5

    .line 732
    const/4 v6, -0x2

    if-ne p1, v6, :cond_55

    .line 733
    sparse-switch p3, :sswitch_data_296

    .line 929
    :cond_1d
    :goto_1d
    if-eqz v0, :cond_28

    .line 930
    const/4 v6, 0x2

    :try_start_20
    iget-object v7, p0, Landroid/media/AudioService;->mRoutes:[I

    const/4 v8, 0x2

    aget v7, v7, v8

    invoke-static {v6, v7, v0}, Landroid/media/AudioSystem;->setRouting(III)I

    .line 935
    :cond_28
    if-eqz v3, :cond_33

    .line 936
    const/4 v6, 0x1

    iget-object v7, p0, Landroid/media/AudioService;->mRoutes:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    invoke-static {v6, v7, v3}, Landroid/media/AudioSystem;->setRouting(III)I

    .line 941
    :cond_33
    if-eqz v2, :cond_3e

    .line 942
    const/4 v6, 0x0

    iget-object v7, p0, Landroid/media/AudioService;->mRoutes:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    invoke-static {v6, v7, v2}, Landroid/media/AudioSystem;->setRouting(III)I

    .line 947
    :cond_3e
    const/high16 v6, -0x8000

    invoke-direct {p0, v6}, Landroid/media/AudioService;->getActiveStreamType(I)I

    move-result v4

    .line 948
    .local v4, streamType:I
    iget-object v6, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v6, v6, v4

    invoke-static {v6}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v1

    .line 949
    .local v1, index:I
    const/4 v6, 0x1

    invoke-direct {p0, v4, v1, v6}, Landroid/media/AudioService;->syncRingerAndNotificationStreamVolume(IIZ)V

    .line 950
    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-direct {p0, v4, v1, v6, v7}, Landroid/media/AudioService;->setStreamVolumeInt(IIZZ)V

    .line 952
    .end local v1           #index:I
    .end local v4           #streamType:I
    :cond_55
    monitor-exit v5

    goto :goto_d

    :catchall_57
    move-exception v6

    monitor-exit v5
    :try_end_59
    .catchall {:try_start_20 .. :try_end_59} :catchall_57

    throw v6

    .line 716
    :cond_5a
    sput-boolean v8, Landroid/media/AudioService;->isFmRadioOn:Z

    goto :goto_14

    .line 736
    :sswitch_5d
    if-eqz p2, :cond_6f

    .line 737
    :try_start_5f
    iget-object v6, p0, Landroid/media/AudioService;->mRoutes:[I

    const/4 v7, 0x0

    iget-object v8, p0, Landroid/media/AudioService;->mRoutes:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    and-int/lit8 v8, v8, 0x10

    or-int/2addr v8, p3

    aput v8, v6, v7

    .line 754
    :goto_6c
    const/16 v2, -0x11

    .line 755
    goto :goto_1d

    .line 746
    :cond_6f
    iget-object v6, p0, Landroid/media/AudioService;->mRoutes:[I

    const/4 v7, 0x0

    iget-object v8, p0, Landroid/media/AudioService;->mRoutes:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    and-int/lit8 v8, v8, 0x10

    aput v8, v6, v7

    .line 748
    iget-boolean v6, p0, Landroid/media/AudioService;->mHeadsetIsConnected:Z

    if-eqz v6, :cond_89

    .line 749
    iget-object v6, p0, Landroid/media/AudioService;->mRoutes:[I

    const/4 v7, 0x0

    aget v8, v6, v7

    or-int/lit8 v8, v8, 0x8

    aput v8, v6, v7

    goto :goto_6c

    .line 751
    :cond_89
    iget-object v6, p0, Landroid/media/AudioService;->mRoutes:[I

    const/4 v7, 0x0

    aget v8, v6, v7

    or-int/lit8 v8, v8, 0x1

    aput v8, v6, v7

    goto :goto_6c

    .line 759
    :sswitch_93
    if-eqz p2, :cond_a5

    iget-boolean v6, p0, Landroid/media/AudioService;->mSpeakerIsOn:Z

    if-nez v6, :cond_a5

    .line 760
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/media/AudioService;->mSpeakerIsOn:Z

    .line 761
    iget-object v6, p0, Landroid/media/AudioService;->mRoutes:[I

    const/4 v7, 0x2

    const/4 v8, 0x2

    aput v8, v6, v7

    .line 762
    const/4 v0, -0x1

    goto/16 :goto_1d

    .line 763
    :cond_a5
    if-nez p2, :cond_1d

    iget-boolean v6, p0, Landroid/media/AudioService;->mSpeakerIsOn:Z

    if-eqz v6, :cond_1d

    .line 764
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/media/AudioService;->mSpeakerIsOn:Z

    .line 765
    iget-boolean v6, p0, Landroid/media/AudioService;->mBluetoothScoIsConnected:Z

    if-eqz v6, :cond_bb

    .line 766
    iget-object v6, p0, Landroid/media/AudioService;->mRoutes:[I

    const/4 v7, 0x2

    const/4 v8, 0x4

    aput v8, v6, v7

    .line 772
    :goto_b8
    const/4 v0, -0x1

    goto/16 :goto_1d

    .line 767
    :cond_bb
    iget-boolean v6, p0, Landroid/media/AudioService;->mHeadsetIsConnected:Z

    if-eqz v6, :cond_c7

    .line 768
    iget-object v6, p0, Landroid/media/AudioService;->mRoutes:[I

    const/4 v7, 0x2

    const/16 v8, 0x8

    aput v8, v6, v7

    goto :goto_b8

    .line 770
    :cond_c7
    iget-object v6, p0, Landroid/media/AudioService;->mRoutes:[I

    const/4 v7, 0x2

    const/4 v8, 0x1

    aput v8, v6, v7

    goto :goto_b8

    .line 778
    :sswitch_ce
    if-eqz p2, :cond_e4

    .line 779
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/media/AudioService;->mDualMicIsOn:Z

    .line 780
    const/16 v6, 0x40

    if-ne p3, v6, :cond_e2

    move v6, v7

    :goto_d8
    iput-boolean v6, p0, Landroid/media/AudioService;->mSpeakerIsOn:Z

    .line 781
    iget-object v6, p0, Landroid/media/AudioService;->mRoutes:[I

    const/4 v7, 0x2

    aput p2, v6, v7

    .line 782
    const/4 v0, -0x1

    goto/16 :goto_1d

    :cond_e2
    move v6, v8

    .line 780
    goto :goto_d8

    .line 783
    :cond_e4
    iget-boolean v6, p0, Landroid/media/AudioService;->mDualMicIsOn:Z

    if-eqz v6, :cond_1d

    .line 784
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/media/AudioService;->mDualMicIsOn:Z

    .line 785
    iget-boolean v6, p0, Landroid/media/AudioService;->mBluetoothScoIsConnected:Z

    if-eqz v6, :cond_f8

    .line 786
    iget-object v6, p0, Landroid/media/AudioService;->mRoutes:[I

    const/4 v7, 0x2

    const/4 v8, 0x4

    aput v8, v6, v7

    .line 794
    :goto_f5
    const/4 v0, -0x1

    goto/16 :goto_1d

    .line 787
    :cond_f8
    iget-boolean v6, p0, Landroid/media/AudioService;->mHeadsetIsConnected:Z

    if-eqz v6, :cond_104

    .line 788
    iget-object v6, p0, Landroid/media/AudioService;->mRoutes:[I

    const/4 v7, 0x2

    const/16 v8, 0x8

    aput v8, v6, v7

    goto :goto_f5

    .line 789
    :cond_104
    iget-boolean v6, p0, Landroid/media/AudioService;->mSpeakerIsOn:Z

    if-eqz v6, :cond_10f

    .line 790
    iget-object v6, p0, Landroid/media/AudioService;->mRoutes:[I

    const/4 v7, 0x2

    const/4 v8, 0x2

    aput v8, v6, v7

    goto :goto_f5

    .line 792
    :cond_10f
    iget-object v6, p0, Landroid/media/AudioService;->mRoutes:[I

    const/4 v7, 0x2

    const/4 v8, 0x1

    aput v8, v6, v7

    goto :goto_f5

    .line 800
    :sswitch_116
    if-eqz p2, :cond_148

    iget-boolean v6, p0, Landroid/media/AudioService;->mBluetoothScoIsConnected:Z

    if-nez v6, :cond_148

    .line 801
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/media/AudioService;->mBluetoothScoIsConnected:Z

    .line 802
    iget-object v6, p0, Landroid/media/AudioService;->mRoutes:[I

    const/4 v7, 0x2

    const/4 v8, 0x4

    aput v8, v6, v7

    .line 803
    iget-object v6, p0, Landroid/media/AudioService;->mRoutes:[I

    const/4 v7, 0x1

    iget-object v8, p0, Landroid/media/AudioService;->mRoutes:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    and-int/lit8 v8, v8, 0x10

    or-int/lit8 v8, v8, 0x4

    aput v8, v6, v7

    .line 805
    iget-object v6, p0, Landroid/media/AudioService;->mRoutes:[I

    const/4 v7, 0x0

    iget-object v8, p0, Landroid/media/AudioService;->mRoutes:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    and-int/lit8 v8, v8, 0x10

    or-int/lit8 v8, v8, 0x4

    aput v8, v6, v7

    .line 807
    const/4 v0, -0x1

    .line 810
    const/16 v3, -0x11

    .line 811
    const/16 v2, -0x11

    goto/16 :goto_1d

    .line 812
    :cond_148
    if-nez p2, :cond_1d

    iget-boolean v6, p0, Landroid/media/AudioService;->mBluetoothScoIsConnected:Z

    if-eqz v6, :cond_1d

    .line 813
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/media/AudioService;->mBluetoothScoIsConnected:Z

    .line 814
    iget-boolean v6, p0, Landroid/media/AudioService;->mHeadsetIsConnected:Z

    if-eqz v6, :cond_17f

    .line 815
    iget-object v6, p0, Landroid/media/AudioService;->mRoutes:[I

    const/4 v7, 0x2

    const/16 v8, 0x8

    aput v8, v6, v7

    .line 816
    iget-object v6, p0, Landroid/media/AudioService;->mRoutes:[I

    const/4 v7, 0x1

    iget-object v8, p0, Landroid/media/AudioService;->mRoutes:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    and-int/lit8 v8, v8, 0x10

    or-int/lit8 v8, v8, 0xa

    aput v8, v6, v7

    .line 818
    iget-object v6, p0, Landroid/media/AudioService;->mRoutes:[I

    const/4 v7, 0x0

    iget-object v8, p0, Landroid/media/AudioService;->mRoutes:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    and-int/lit8 v8, v8, 0x10

    or-int/lit8 v8, v8, 0x8

    aput v8, v6, v7

    .line 843
    :goto_178
    const/4 v0, -0x1

    .line 846
    const/16 v3, -0x11

    .line 847
    const/16 v2, -0x11

    goto/16 :goto_1d

    .line 821
    :cond_17f
    iget-boolean v6, p0, Landroid/media/AudioService;->mDualMicIsOn:Z

    if-eqz v6, :cond_1b3

    .line 822
    iget-boolean v6, p0, Landroid/media/AudioService;->mSpeakerIsOn:Z

    if-eqz v6, :cond_1ab

    .line 823
    iget-object v6, p0, Landroid/media/AudioService;->mRoutes:[I

    const/4 v7, 0x2

    const/16 v8, 0x40

    aput v8, v6, v7

    .line 837
    :goto_18e
    iget-object v6, p0, Landroid/media/AudioService;->mRoutes:[I

    const/4 v7, 0x1

    iget-object v8, p0, Landroid/media/AudioService;->mRoutes:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    and-int/lit8 v8, v8, 0x10

    or-int/lit8 v8, v8, 0x2

    aput v8, v6, v7

    .line 839
    iget-object v6, p0, Landroid/media/AudioService;->mRoutes:[I

    const/4 v7, 0x0

    iget-object v8, p0, Landroid/media/AudioService;->mRoutes:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    and-int/lit8 v8, v8, 0x10

    or-int/lit8 v8, v8, 0x2

    aput v8, v6, v7

    goto :goto_178

    .line 825
    :cond_1ab
    iget-object v6, p0, Landroid/media/AudioService;->mRoutes:[I

    const/4 v7, 0x2

    const/16 v8, 0x20

    aput v8, v6, v7

    goto :goto_18e

    .line 827
    :cond_1b3
    iget-boolean v6, p0, Landroid/media/AudioService;->mSpeakerIsOn:Z

    if-eqz v6, :cond_1be

    .line 828
    iget-object v6, p0, Landroid/media/AudioService;->mRoutes:[I

    const/4 v7, 0x2

    const/4 v8, 0x2

    aput v8, v6, v7

    goto :goto_18e

    .line 830
    :cond_1be
    iget-object v6, p0, Landroid/media/AudioService;->mRoutes:[I

    const/4 v7, 0x2

    const/4 v8, 0x1

    aput v8, v6, v7

    goto :goto_18e

    .line 856
    :sswitch_1c5
    if-eqz p2, :cond_1fa

    iget-boolean v6, p0, Landroid/media/AudioService;->mHeadsetIsConnected:Z

    if-nez v6, :cond_1fa

    .line 857
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/media/AudioService;->mHeadsetIsConnected:Z

    .line 859
    iget-boolean v6, p0, Landroid/media/AudioService;->mBluetoothScoIsConnected:Z

    if-nez v6, :cond_1d

    .line 860
    iget-object v6, p0, Landroid/media/AudioService;->mRoutes:[I

    const/4 v7, 0x2

    aput p3, v6, v7

    .line 861
    iget-object v6, p0, Landroid/media/AudioService;->mRoutes:[I

    const/4 v7, 0x1

    iget-object v8, p0, Landroid/media/AudioService;->mRoutes:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    and-int/lit8 v8, v8, 0x10

    or-int/lit8 v9, p3, 0x2

    or-int/2addr v8, v9

    aput v8, v6, v7

    .line 863
    iget-object v6, p0, Landroid/media/AudioService;->mRoutes:[I

    const/4 v7, 0x0

    iget-object v8, p0, Landroid/media/AudioService;->mRoutes:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    and-int/lit8 v8, v8, 0x10

    or-int/2addr v8, p3

    aput v8, v6, v7

    .line 865
    const/4 v0, -0x1

    .line 868
    const/16 v3, -0x11

    .line 869
    const/16 v2, -0x11

    goto/16 :goto_1d

    .line 871
    :cond_1fa
    if-nez p2, :cond_1d

    iget-boolean v6, p0, Landroid/media/AudioService;->mHeadsetIsConnected:Z

    if-eqz v6, :cond_1d

    .line 872
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/media/AudioService;->mHeadsetIsConnected:Z

    .line 874
    iget-boolean v6, p0, Landroid/media/AudioService;->mBluetoothScoIsConnected:Z

    if-nez v6, :cond_1d

    .line 875
    iget-boolean v6, p0, Landroid/media/AudioService;->mDualMicIsOn:Z

    if-eqz v6, :cond_241

    .line 876
    iget-boolean v6, p0, Landroid/media/AudioService;->mSpeakerIsOn:Z

    if-eqz v6, :cond_239

    .line 877
    iget-object v6, p0, Landroid/media/AudioService;->mRoutes:[I

    const/4 v7, 0x2

    const/16 v8, 0x40

    aput v8, v6, v7

    .line 891
    :goto_216
    iget-object v6, p0, Landroid/media/AudioService;->mRoutes:[I

    const/4 v7, 0x1

    iget-object v8, p0, Landroid/media/AudioService;->mRoutes:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    and-int/lit8 v8, v8, 0x10

    or-int/lit8 v8, v8, 0x2

    aput v8, v6, v7

    .line 893
    iget-object v6, p0, Landroid/media/AudioService;->mRoutes:[I

    const/4 v7, 0x0

    iget-object v8, p0, Landroid/media/AudioService;->mRoutes:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    and-int/lit8 v8, v8, 0x10

    or-int/lit8 v8, v8, 0x2

    aput v8, v6, v7

    .line 897
    const/4 v0, -0x1

    .line 900
    const/16 v3, -0x11

    .line 901
    const/16 v2, -0x11

    goto/16 :goto_1d

    .line 879
    :cond_239
    iget-object v6, p0, Landroid/media/AudioService;->mRoutes:[I

    const/4 v7, 0x2

    const/16 v8, 0x20

    aput v8, v6, v7

    goto :goto_216

    .line 881
    :cond_241
    iget-boolean v6, p0, Landroid/media/AudioService;->mSpeakerIsOn:Z

    if-eqz v6, :cond_24c

    .line 882
    iget-object v6, p0, Landroid/media/AudioService;->mRoutes:[I

    const/4 v7, 0x2

    const/4 v8, 0x2

    aput v8, v6, v7

    goto :goto_216

    .line 884
    :cond_24c
    iget-object v6, p0, Landroid/media/AudioService;->mRoutes:[I

    const/4 v7, 0x2

    const/4 v8, 0x1

    aput v8, v6, v7

    goto :goto_216

    .line 908
    :sswitch_253
    if-eqz p2, :cond_274

    iget-boolean v6, p0, Landroid/media/AudioService;->mBluetoothA2dpIsConnected:Z

    if-nez v6, :cond_274

    .line 909
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/media/AudioService;->mBluetoothA2dpIsConnected:Z

    .line 910
    iget-object v6, p0, Landroid/media/AudioService;->mRoutes:[I

    const/4 v7, 0x1

    aget v8, v6, v7

    or-int/lit8 v8, v8, 0x10

    aput v8, v6, v7

    .line 911
    iget-object v6, p0, Landroid/media/AudioService;->mRoutes:[I

    const/4 v7, 0x0

    aget v8, v6, v7

    or-int/lit8 v8, v8, 0x10

    aput v8, v6, v7

    .line 914
    const/16 v3, 0x10

    .line 915
    const/16 v2, 0x10

    goto/16 :goto_1d

    .line 916
    :cond_274
    if-nez p2, :cond_1d

    iget-boolean v6, p0, Landroid/media/AudioService;->mBluetoothA2dpIsConnected:Z

    if-eqz v6, :cond_1d

    .line 917
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/media/AudioService;->mBluetoothA2dpIsConnected:Z

    .line 918
    iget-object v6, p0, Landroid/media/AudioService;->mRoutes:[I

    const/4 v7, 0x1

    aget v8, v6, v7

    and-int/lit8 v8, v8, -0x11

    aput v8, v6, v7

    .line 919
    iget-object v6, p0, Landroid/media/AudioService;->mRoutes:[I

    const/4 v7, 0x0

    aget v8, v6, v7

    and-int/lit8 v8, v8, -0x11

    aput v8, v6, v7
    :try_end_28f
    .catchall {:try_start_5f .. :try_end_28f} :catchall_57

    .line 922
    const/16 v3, 0x10

    .line 923
    const/16 v2, 0x10

    goto/16 :goto_1d

    .line 733
    nop

    :sswitch_data_296
    .sparse-switch
        0x2 -> :sswitch_93
        0x4 -> :sswitch_116
        0x8 -> :sswitch_1c5
        0x10 -> :sswitch_253
        0x20 -> :sswitch_ce
        0x40 -> :sswitch_ce
        0x80 -> :sswitch_1c5
        0x100 -> :sswitch_1c5
        0x200 -> :sswitch_1c5
        0x400 -> :sswitch_5d
    .end sparse-switch
.end method

.method public setStreamMute(IZLandroid/os/IBinder;)V
    .registers 5
    .parameter "streamType"
    .parameter "state"
    .parameter "cb"

    .prologue
    .line 534
    invoke-virtual {p0, p1}, Landroid/media/AudioService;->isStreamAffectedByMute(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 535
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0, p3, p2}, Landroid/media/AudioService$VolumeStreamState;->mute(Landroid/os/IBinder;Z)V

    .line 537
    :cond_d
    return-void
.end method

.method public setStreamSolo(IZLandroid/os/IBinder;)V
    .registers 6
    .parameter "streamType"
    .parameter "state"
    .parameter "cb"

    .prologue
    .line 525
    const/4 v0, 0x0

    .local v0, stream:I
    :goto_1
    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    array-length v1, v1

    if-ge v0, v1, :cond_19

    .line 526
    invoke-virtual {p0, v0}, Landroid/media/AudioService;->isStreamAffectedByMute(I)Z

    move-result v1

    if-eqz v1, :cond_e

    if-ne v0, p1, :cond_11

    .line 525
    :cond_e
    :goto_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 528
    :cond_11
    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, v0

    invoke-virtual {v1, p3, p2}, Landroid/media/AudioService$VolumeStreamState;->mute(Landroid/os/IBinder;Z)V

    goto :goto_e

    .line 530
    :cond_19
    return-void
.end method

.method public setStreamVolume(III)V
    .registers 6
    .parameter "streamType"
    .parameter "index"
    .parameter "flags"

    .prologue
    const/4 v1, 0x0

    .line 454
    invoke-direct {p0, p1}, Landroid/media/AudioService;->ensureValidStreamType(I)V

    .line 455
    invoke-direct {p0, p1, p2, v1}, Landroid/media/AudioService;->syncRingerAndNotificationStreamVolume(IIZ)V

    .line 457
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v1, v0}, Landroid/media/AudioService;->setStreamVolumeInt(IIZZ)V

    .line 460
    iget-object v0, p0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;

    invoke-virtual {v0, p1, p3}, Landroid/view/VolumePanel;->postVolumeChanged(II)V

    .line 462
    invoke-direct {p0, p1}, Landroid/media/AudioService;->sendVolumeUpdate(I)V

    .line 463
    return-void
.end method

.method public setVibrateSetting(II)V
    .registers 11
    .parameter "vibrateType"
    .parameter "vibrateSetting"

    .prologue
    const/4 v4, 0x0

    .line 630
    iget v0, p0, Landroid/media/AudioService;->mVibrateSetting:I

    invoke-static {v0, p1, p2}, Landroid/media/AudioService;->getValueForVibrateSetting(III)I

    move-result v0

    iput v0, p0, Landroid/media/AudioService;->mVibrateSetting:I

    .line 633
    invoke-direct {p0, p1}, Landroid/media/AudioService;->broadcastVibrateSetting(I)V

    .line 637
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x4

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v6, 0x0

    move v5, v4

    move v7, v4

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    .line 639
    return-void
.end method

.method public shouldVibrate(I)Z
    .registers 5
    .parameter "vibrateType"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 603
    invoke-virtual {p0, p1}, Landroid/media/AudioService;->getVibrateSetting(I)I

    move-result v0

    packed-switch v0, :pswitch_data_26

    :cond_9
    move v0, v2

    .line 618
    :goto_a
    return v0

    .line 606
    :pswitch_b
    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    if-eqz v0, :cond_11

    move v0, v1

    goto :goto_a

    :cond_11
    move v0, v2

    goto :goto_a

    .line 609
    :pswitch_13
    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    if-ne v0, v1, :cond_19

    move v0, v1

    goto :goto_a

    :cond_19
    move v0, v2

    goto :goto_a

    .line 613
    :pswitch_1b
    if-nez p1, :cond_9

    .line 614
    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    if-ne v0, v1, :cond_23

    move v0, v1

    goto :goto_a

    :cond_23
    move v0, v2

    goto :goto_a

    .line 603
    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_b
        :pswitch_13
    .end packed-switch
.end method

.method public unloadSoundEffects()V
    .registers 8

    .prologue
    .line 1035
    iget-object v3, p0, Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1036
    :try_start_3
    iget-object v4, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    if-nez v4, :cond_9

    .line 1037
    monitor-exit v3

    .line 1056
    :goto_8
    return-void

    .line 1039
    :cond_9
    sget-object v4, Landroid/media/AudioService;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    array-length v4, v4

    new-array v2, v4, [I

    .line 1040
    .local v2, poolId:[I
    const/4 v1, 0x0

    .local v1, fileIdx:I
    :goto_f
    sget-object v4, Landroid/media/AudioService;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_1a

    .line 1041
    const/4 v4, 0x0

    aput v4, v2, v1

    .line 1040
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1044
    :cond_1a
    const/4 v0, 0x0

    .local v0, effect:I
    :goto_1b
    const/16 v4, 0x9

    if-ge v0, v4, :cond_58

    .line 1045
    iget-object v4, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v4, v4, v0

    const/4 v5, 0x1

    aget v4, v4, v5

    if-gtz v4, :cond_2b

    .line 1044
    :cond_28
    :goto_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 1048
    :cond_2b
    iget-object v4, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v4, v4, v0

    const/4 v5, 0x0

    aget v4, v4, v5

    aget v4, v2, v4

    if-nez v4, :cond_28

    .line 1049
    iget-object v4, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    iget-object v5, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v5, v5, v0

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/media/SoundPool;->unload(I)Z

    .line 1050
    iget-object v4, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v4, v4, v0

    const/4 v5, 0x1

    const/4 v6, -0x1

    aput v6, v4, v5

    .line 1051
    iget-object v4, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v4, v4, v0

    const/4 v5, 0x0

    aget v4, v4, v5

    const/4 v5, -0x1

    aput v5, v2, v4

    goto :goto_28

    .line 1055
    .end local v0           #effect:I
    .end local v1           #fileIdx:I
    .end local v2           #poolId:[I
    :catchall_55
    move-exception v4

    monitor-exit v3
    :try_end_57
    .catchall {:try_start_3 .. :try_end_57} :catchall_55

    throw v4

    .line 1054
    .restart local v0       #effect:I
    .restart local v1       #fileIdx:I
    .restart local v2       #poolId:[I
    :cond_58
    const/4 v4, 0x0

    :try_start_59
    iput-object v4, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    .line 1055
    monitor-exit v3
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_55

    goto :goto_8
.end method
