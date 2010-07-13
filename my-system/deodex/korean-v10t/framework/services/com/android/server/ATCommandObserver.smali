.class Lcom/android/server/ATCommandObserver;
.super Landroid/os/UEventObserver;
.source "ATCommandObserver.java"


# static fields
.field private static final MPTSET_CMD1_PATH:Ljava/lang/String; = "/system/sounds/lgeAT/NoSignal_LR_128k.mp3"

.field private static final MPTSET_CMD2_PATH:Ljava/lang/String; = "/system/sounds/lgeAT/1kHz_0dB_LR_128k.mp3"

.field private static final MPTSET_CMD3_PATH:Ljava/lang/String; = "/system/sounds/lgeAT/1kHz_0dB_L128k.mp3"

.field private static final MPTSET_CMD4_PATH:Ljava/lang/String; = "/system/sounds/lgeAT/1kHz_0dB_R_128k.mp3"

.field private static final MPTSET_CMD5_PATH:Ljava/lang/String; = "/system/sounds/lgeAT/MultiSine_20-20kHz-0dBp_128k.mp3"

.field private static final TAG:Ljava/lang/String; = "AT Command Observer"

.field private static final VLCSET_NAME_PATH:Ljava/lang/String; = "/sys/class/atcmd/eve_atcmd/name"

.field private static final VLCSET_STATE_PATH:Ljava/lang/String; = "/sys/class/atcmd/eve_atcmd/state"

.field private static final VLCSET_UEVENT_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/atcmd/eve_atcmd"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioVolumeNeedsUpdate:Z

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mVolumeName:Ljava/lang/String;

.field private mVolumeState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    .line 420
    new-instance v0, Lcom/android/server/ATCommandObserver$1;

    invoke-direct {v0, p0}, Lcom/android/server/ATCommandObserver$1;-><init>(Lcom/android/server/ATCommandObserver;)V

    iput-object v0, p0, Lcom/android/server/ATCommandObserver;->mHandler:Landroid/os/Handler;

    .line 67
    iput-object p1, p0, Lcom/android/server/ATCommandObserver;->mContext:Landroid/content/Context;

    .line 69
    const-string v0, "DEVPATH=/devices/virtual/atcmd/eve_atcmd"

    invoke-virtual {p0, v0}, Lcom/android/server/ATCommandObserver;->startObserving(Ljava/lang/String;)V

    .line 71
    invoke-direct {p0}, Lcom/android/server/ATCommandObserver;->init()V

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/ATCommandObserver;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/server/ATCommandObserver;->updateAudioVolume()V

    return-void
.end method

.method private final declared-synchronized acsMode()V
    .registers 5

    .prologue
    .line 397
    monitor-enter p0

    :try_start_1
    const-string v0, "AT Command Observer"

    const-string v1, "[JY_TEST] acs test!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iget v0, p0, Lcom/android/server/ATCommandObserver;->mVolumeState:I
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_14

    packed-switch v0, :pswitch_data_30

    .line 418
    :goto_d
    monitor-exit p0

    return-void

    .line 400
    :pswitch_f
    const/4 v0, 0x0

    :try_start_10
    invoke-static {v0}, Landroid/media/AudioSystem;->setLoopbackMode(I)I
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_14

    goto :goto_d

    .line 397
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0

    .line 403
    :pswitch_17
    const/4 v0, 0x1

    :try_start_18
    invoke-static {v0}, Landroid/media/AudioSystem;->setLoopbackMode(I)I

    goto :goto_d

    .line 406
    :pswitch_1c
    iget-object v0, p0, Lcom/android/server/ATCommandObserver;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setRouting(III)V

    goto :goto_d

    .line 411
    :pswitch_26
    iget-object v0, p0, Lcom/android/server/ATCommandObserver;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setRouting(III)V
    :try_end_2e
    .catchall {:try_start_18 .. :try_end_2e} :catchall_14

    goto :goto_d

    .line 398
    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_f
        :pswitch_17
        :pswitch_1c
        :pswitch_26
    .end packed-switch
.end method

.method private final declared-synchronized fmradioTest()V
    .registers 5

    .prologue
    const-string v2, "lge.android.fmradio"

    const-string v2, "first"

    const-string v2, "lgeatcommand"

    const-string v2, "AT Command Observer"

    .line 354
    monitor-enter p0

    :try_start_9
    const-string v2, "AT Command Observer"

    const-string v3, "[JY_TEST] fmradio test!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 356
    .local v0, i:Landroid/content/Intent;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.LGE_AT_COMMAND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 357
    .local v1, j:Landroid/content/Intent;
    iget v2, p0, Lcom/android/server/ATCommandObserver;->mVolumeState:I
    :try_end_1e
    .catchall {:try_start_9 .. :try_end_1e} :catchall_37

    packed-switch v2, :pswitch_data_cc

    .line 394
    :goto_21
    monitor-exit p0

    return-void

    .line 359
    :pswitch_23
    :try_start_23
    const-string v2, "lgeatcommand"

    const-string v3, "cancel"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 360
    iget-object v2, p0, Lcom/android/server/ATCommandObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 361
    const-string v2, "AT Command Observer"

    const-string v3, "[SampleLauncher][onItemClick] LIST_ID_FM_ATCOMMAND_NUM_0"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catchall {:try_start_23 .. :try_end_36} :catchall_37

    goto :goto_21

    .line 354
    .end local v0           #i:Landroid/content/Intent;
    .end local v1           #j:Landroid/content/Intent;
    :catchall_37
    move-exception v2

    monitor-exit p0

    throw v2

    .line 364
    .restart local v0       #i:Landroid/content/Intent;
    .restart local v1       #j:Landroid/content/Intent;
    :pswitch_3a
    :try_start_3a
    const-string v2, "AT Command Observer"

    const-string v3, "[JY_TEST] fmradio test -case 1 :1"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const-string v2, "lge.android.fmradio"

    const-string v3, "lge.android.fmradio.FmRadioView"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 367
    const-string v2, "AT Command Observer"

    const-string v3, "[JY_TEST] fmradio test -case 1 :2"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    const-string v2, "lgeatcommand"

    const-string v3, "first"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    const-string v2, "AT Command Observer"

    const-string v3, "[JY_TEST] fmradio test -case 1 :3"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 371
    iget-object v2, p0, Lcom/android/server/ATCommandObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 372
    const-string v2, "AT Command Observer"

    const-string v3, "[JY_TEST] fmradio test -case 1 :4"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    const-string v2, "lgeatcommand"

    const-string v3, "first"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 374
    iget-object v2, p0, Lcom/android/server/ATCommandObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 375
    const-string v2, "AT Command Observer"

    const-string v3, "[SampleLauncher][onItemClick] LIST_ID_FM_ATCOMMAND_NUM_1"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    .line 378
    :pswitch_82
    const-string v2, "AT Command Observer"

    const-string v3, "[JY_TEST] fmradio test -case 2 :1"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    const-string v2, "lge.android.fmradio"

    const-string v3, "lge.android.fmradio.FmRadioView"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 381
    const-string v2, "AT Command Observer"

    const-string v3, "[JY_TEST] fmradio test -case 2 :2"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const-string v2, "lgeatcommand"

    const-string v3, "second"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 383
    const-string v2, "AT Command Observer"

    const-string v3, "[JY_TEST] fmradio test -case 2 :3"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 385
    iget-object v2, p0, Lcom/android/server/ATCommandObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 386
    const-string v2, "AT Command Observer"

    const-string v3, "[JY_TEST] fmradio test -case 2 :4"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    const-string v2, "lgeatcommand"

    const-string v3, "second"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 388
    iget-object v2, p0, Lcom/android/server/ATCommandObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 389
    const-string v2, "AT Command Observer"

    const-string v3, "[SampleLauncher][onItemClick] LIST_ID_FM_ATCOMMAND_NUM_2"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c9
    .catchall {:try_start_3a .. :try_end_c9} :catchall_37

    goto/16 :goto_21

    .line 357
    nop

    :pswitch_data_cc
    .packed-switch 0x0
        :pswitch_23
        :pswitch_3a
        :pswitch_82
    .end packed-switch
.end method

.method private final declared-synchronized init()V
    .registers 9

    .prologue
    const-string v6, "AT Command Observer"

    .line 86
    monitor-enter p0

    const/16 v6, 0x400

    :try_start_5
    new-array v0, v6, [C

    .line 88
    .local v0, buffer:[C
    iget-object v4, p0, Lcom/android/server/ATCommandObserver;->mVolumeName:Ljava/lang/String;

    .line 89
    .local v4, newName:Ljava/lang/String;
    iget v5, p0, Lcom/android/server/ATCommandObserver;->mVolumeState:I
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_6c

    .line 91
    .local v5, newState:I
    :try_start_b
    new-instance v2, Ljava/io/FileReader;

    const-string v6, "/sys/class/atcmd/eve_atcmd/state"

    invoke-direct {v2, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 92
    .local v2, file:Ljava/io/FileReader;
    const/4 v6, 0x0

    const/16 v7, 0x400

    invoke-virtual {v2, v0, v6, v7}, Ljava/io/FileReader;->read([CII)I

    move-result v3

    .line 93
    .local v3, len:I
    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v6, v0, v7, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 95
    new-instance v2, Ljava/io/FileReader;

    .end local v2           #file:Ljava/io/FileReader;
    const-string v6, "/sys/class/atcmd/eve_atcmd/name"

    invoke-direct {v2, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 96
    .restart local v2       #file:Ljava/io/FileReader;
    const/4 v6, 0x0

    const/16 v7, 0x400

    invoke-virtual {v2, v0, v6, v7}, Ljava/io/FileReader;->read([CII)I

    move-result v3

    .line 97
    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v6, v0, v7, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 98
    new-instance v6, Landroid/media/MediaPlayer;

    invoke-direct {v6}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v6, p0, Lcom/android/server/ATCommandObserver;->mMediaPlayer:Landroid/media/MediaPlayer;
    :try_end_4a
    .catchall {:try_start_b .. :try_end_4a} :catchall_6c
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_4a} :catch_62
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_4a} :catch_6f

    .line 105
    .end local v2           #file:Ljava/io/FileReader;
    .end local v3           #len:I
    :goto_4a
    :try_start_4a
    iget-object v6, p0, Lcom/android/server/ATCommandObserver;->mContext:Landroid/content/Context;

    const-string v7, "audio"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager;

    iput-object v6, p0, Lcom/android/server/ATCommandObserver;->mAudioManager:Landroid/media/AudioManager;

    .line 106
    const-string v6, "AT Command Observer"

    const-string v7, "AT Command UEVENT init() "

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-direct {p0, v4, v5}, Lcom/android/server/ATCommandObserver;->update(Ljava/lang/String;I)V
    :try_end_60
    .catchall {:try_start_4a .. :try_end_60} :catchall_6c

    .line 108
    monitor-exit p0

    return-void

    .line 99
    :catch_62
    move-exception v6

    move-object v1, v6

    .line 100
    .local v1, e:Ljava/io/FileNotFoundException;
    :try_start_64
    const-string v6, "AT Command Observer"

    const-string v7, "This kernel does not have wired headset support"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b
    .catchall {:try_start_64 .. :try_end_6b} :catchall_6c

    goto :goto_4a

    .line 86
    .end local v0           #buffer:[C
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .end local v4           #newName:Ljava/lang/String;
    .end local v5           #newState:I
    :catchall_6c
    move-exception v6

    monitor-exit p0

    throw v6

    .line 101
    .restart local v0       #buffer:[C
    .restart local v4       #newName:Ljava/lang/String;
    .restart local v5       #newState:I
    :catch_6f
    move-exception v6

    move-object v1, v6

    .line 102
    .local v1, e:Ljava/lang/Exception;
    :try_start_71
    const-string v6, "AT Command Observer"

    const-string v7, ""

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_78
    .catchall {:try_start_71 .. :try_end_78} :catchall_6c

    goto :goto_4a
.end method

.method private final declared-synchronized playMusic()V
    .registers 5

    .prologue
    const-string v1, "AT Command Observer"

    .line 224
    monitor-enter p0

    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/ATCommandObserver;->mAudioVolumeNeedsUpdate:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_af

    if-eqz v1, :cond_f

    .line 226
    :try_start_7
    iget v1, p0, Lcom/android/server/ATCommandObserver;->mVolumeState:I
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_af
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_9} :catch_93
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_9} :catch_113
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_9} :catch_190

    packed-switch v1, :pswitch_data_26e

    .line 331
    :goto_c
    const/4 v1, 0x0

    :try_start_d
    iput-boolean v1, p0, Lcom/android/server/ATCommandObserver;->mAudioVolumeNeedsUpdate:Z
    :try_end_f
    .catchall {:try_start_d .. :try_end_f} :catchall_af

    .line 334
    :cond_f
    monitor-exit p0

    return-void

    .line 228
    :pswitch_11
    :try_start_11
    iget-object v1, p0, Lcom/android/server/ATCommandObserver;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_32

    .line 229
    iget-object v1, p0, Lcom/android/server/ATCommandObserver;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 230
    iget-object v1, p0, Lcom/android/server/ATCommandObserver;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 232
    :cond_23
    iget-object v1, p0, Lcom/android/server/ATCommandObserver;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 233
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/ATCommandObserver;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 234
    const-string v1, "AT Command Observer"

    const-string v2, "[JY_TEST] MediaPlayer 0 : NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_32
    :pswitch_32
    iget-object v1, p0, Lcom/android/server/ATCommandObserver;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_53

    .line 238
    iget-object v1, p0, Lcom/android/server/ATCommandObserver;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_44

    .line 239
    iget-object v1, p0, Lcom/android/server/ATCommandObserver;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 241
    :cond_44
    iget-object v1, p0, Lcom/android/server/ATCommandObserver;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 242
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/ATCommandObserver;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 243
    const-string v1, "AT Command Observer"

    const-string v2, "[JY_TEST] MediaPlayer 1 : NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_53
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/android/server/ATCommandObserver;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 246
    iget-object v1, p0, Lcom/android/server/ATCommandObserver;->mMediaPlayer:Landroid/media/MediaPlayer;

    const-string v2, "/system/sounds/lgeAT/NoSignal_LR_128k.mp3"

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 247
    iget-object v1, p0, Lcom/android/server/ATCommandObserver;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 248
    iget-object v1, p0, Lcom/android/server/ATCommandObserver;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 249
    iget-object v1, p0, Lcom/android/server/ATCommandObserver;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 250
    iget-object v1, p0, Lcom/android/server/ATCommandObserver;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 251
    const-string v1, "AT Command Observer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[JY_TEST] MediaPlayer 1 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/ATCommandObserver;->mVolumeState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_91
    .catchall {:try_start_11 .. :try_end_91} :catchall_af
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_91} :catch_93
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_91} :catch_113
    .catch Ljava/lang/IllegalStateException; {:try_start_11 .. :try_end_91} :catch_190

    goto/16 :goto_c

    .line 324
    :catch_93
    move-exception v1

    move-object v0, v1

    .line 325
    .local v0, e:Ljava/io/IOException;
    :try_start_95
    const-string v1, "AT Command Observer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaPlayer IOException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ad
    .catchall {:try_start_95 .. :try_end_ad} :catchall_af

    goto/16 :goto_c

    .line 224
    .end local v0           #e:Ljava/io/IOException;
    :catchall_af
    move-exception v1

    monitor-exit p0

    throw v1

    .line 254
    :pswitch_b2
    :try_start_b2
    iget-object v1, p0, Lcom/android/server/ATCommandObserver;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_d3

    .line 255
    iget-object v1, p0, Lcom/android/server/ATCommandObserver;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_c4

    .line 256
    iget-object v1, p0, Lcom/android/server/ATCommandObserver;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 258
    :cond_c4
    iget-object v1, p0, Lcom/android/server/ATCommandObserver;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 259
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/ATCommandObserver;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 260
    const-string v1, "AT Command Observer"

    const-string v2, "[JY_TEST] MediaPlayer 2 : NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_d3
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/android/server/ATCommandObserver;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 263
    iget-object v1, p0, Lcom/android/server/ATCommandObserver;->mMediaPlayer:Landroid/media/MediaPlayer;

    const-string v2, "/system/sounds/lgeAT/1kHz_0dB_LR_128k.mp3"

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 264
    iget-object v1, p0, Lcom/android/server/ATCommandObserver;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 265
    iget-object v1, p0, Lcom/android/server/ATCommandObserver;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 266
    iget-object v1, p0, Lcom/android/server/ATCommandObserver;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 267
    iget-object v1, p0, Lcom/android/server/ATCommandObserver;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 268
    const-string v1, "AT Command Observer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[JY_TEST] MediaPlayer 2 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/ATCommandObserver;->mVolumeState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_111
    .catchall {:try_start_b2 .. :try_end_111} :catchall_af
    .catch Ljava/io/IOException; {:try_start_b2 .. :try_end_111} :catch_93
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b2 .. :try_end_111} :catch_113
    .catch Ljava/lang/IllegalStateException; {:try_start_b2 .. :try_end_111} :catch_190

    goto/16 :goto_c

    .line 326
    :catch_113
    move-exception v1

    move-object v0, v1

    .line 327
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_115
    const-string v1, "AT Command Observer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaPlayer IllegalArgumentException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12d
    .catchall {:try_start_115 .. :try_end_12d} :catchall_af

    goto/16 :goto_c

    .line 271
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :pswitch_12f
    :try_start_12f
    iget-object v1, p0, Lcom/android/server/ATCommandObserver;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_150

    .line 272
    iget-object v1, p0, Lcom/android/server/ATCommandObserver;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_141

    .line 273
    iget-object v1, p0, Lcom/android/server/ATCommandObserver;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 275
    :cond_141
    iget-object v1, p0, Lcom/android/server/ATCommandObserver;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 276
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/ATCommandObserver;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 277
    const-string v1, "AT Command Observer"

    const-string v2, "[JY_TEST] MediaPlayer 3 : NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_150
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/android/server/ATCommandObserver;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 280
    iget-object v1, p0, Lcom/android/server/ATCommandObserver;->mMediaPlayer:Landroid/media/MediaPlayer;

    const-string v2, "/system/sounds/lgeAT/1kHz_0dB_L128k.mp3"

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 281
    iget-object v1, p0, Lcom/android/server/ATCommandObserver;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 282
    iget-object v1, p0, Lcom/android/server/ATCommandObserver;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 283
    iget-object v1, p0, Lcom/android/server/ATCommandObserver;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 284
    iget-object v1, p0, Lcom/android/server/ATCommandObserver;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 285
    const-string v1, "AT Command Observer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[JY_TEST] MediaPlayer 3 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/ATCommandObserver;->mVolumeState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18e
    .catchall {:try_start_12f .. :try_end_18e} :catchall_af
    .catch Ljava/io/IOException; {:try_start_12f .. :try_end_18e} :catch_93
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12f .. :try_end_18e} :catch_113
    .catch Ljava/lang/IllegalStateException; {:try_start_12f .. :try_end_18e} :catch_190

    goto/16 :goto_c

    .line 328
    :catch_190
    move-exception v1

    move-object v0, v1

    .line 329
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_192
    const-string v1, "AT Command Observer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaPlayer IllegalStateException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1aa
    .catchall {:try_start_192 .. :try_end_1aa} :catchall_af

    goto/16 :goto_c

    .line 288
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :pswitch_1ac
    :try_start_1ac
    iget-object v1, p0, Lcom/android/server/ATCommandObserver;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1cd

    .line 289
    iget-object v1, p0, Lcom/android/server/ATCommandObserver;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1be

    .line 290
    iget-object v1, p0, Lcom/android/server/ATCommandObserver;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 292
    :cond_1be
    iget-object v1, p0, Lcom/android/server/ATCommandObserver;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 293
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/ATCommandObserver;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 294
    const-string v1, "AT Command Observer"

    const-string v2, "[JY_TEST] MediaPlayer 4 : NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_1cd
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/android/server/ATCommandObserver;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 297
    iget-object v1, p0, Lcom/android/server/ATCommandObserver;->mMediaPlayer:Landroid/media/MediaPlayer;

    const-string v2, "/system/sounds/lgeAT/1kHz_0dB_R_128k.mp3"

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 298
    iget-object v1, p0, Lcom/android/server/ATCommandObserver;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 299
    iget-object v1, p0, Lcom/android/server/ATCommandObserver;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 300
    iget-object v1, p0, Lcom/android/server/ATCommandObserver;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 301
    iget-object v1, p0, Lcom/android/server/ATCommandObserver;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 302
    const-string v1, "AT Command Observer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[JY_TEST] MediaPlayer 4 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/ATCommandObserver;->mVolumeState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 305
    :pswitch_20d
    iget-object v1, p0, Lcom/android/server/ATCommandObserver;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_22e

    .line 306
    iget-object v1, p0, Lcom/android/server/ATCommandObserver;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_21f

    .line 307
    iget-object v1, p0, Lcom/android/server/ATCommandObserver;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 309
    :cond_21f
    iget-object v1, p0, Lcom/android/server/ATCommandObserver;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 310
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/ATCommandObserver;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 311
    const-string v1, "AT Command Observer"

    const-string v2, "[JY_TEST] MediaPlayer 5 : NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_22e
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/android/server/ATCommandObserver;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 314
    iget-object v1, p0, Lcom/android/server/ATCommandObserver;->mMediaPlayer:Landroid/media/MediaPlayer;

    const-string v2, "/system/sounds/lgeAT/MultiSine_20-20kHz-0dBp_128k.mp3"

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 315
    iget-object v1, p0, Lcom/android/server/ATCommandObserver;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 316
    iget-object v1, p0, Lcom/android/server/ATCommandObserver;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 317
    iget-object v1, p0, Lcom/android/server/ATCommandObserver;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 318
    iget-object v1, p0, Lcom/android/server/ATCommandObserver;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 319
    const-string v1, "AT Command Observer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[JY_TEST] MediaPlayer 5 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/ATCommandObserver;->mVolumeState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26c
    .catchall {:try_start_1ac .. :try_end_26c} :catchall_af
    .catch Ljava/io/IOException; {:try_start_1ac .. :try_end_26c} :catch_93
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1ac .. :try_end_26c} :catch_113
    .catch Ljava/lang/IllegalStateException; {:try_start_1ac .. :try_end_26c} :catch_190

    goto/16 :goto_c

    .line 226
    :pswitch_data_26e
    .packed-switch 0x0
        :pswitch_11
        :pswitch_32
        :pswitch_b2
        :pswitch_12f
        :pswitch_1ac
        :pswitch_20d
    .end packed-switch
.end method

.method private final declared-synchronized sendIntent(Z)V
    .registers 5
    .parameter "isUnplug"

    .prologue
    .line 153
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 154
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 156
    const-string v1, "state"

    iget v2, p0, Lcom/android/server/ATCommandObserver;->mVolumeState:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 157
    const-string v1, "name"

    iget-object v2, p0, Lcom/android/server/ATCommandObserver;->mVolumeName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_21

    .line 168
    monitor-exit p0

    return-void

    .line 153
    .end local v0           #intent:Landroid/content/Intent;
    :catchall_21
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private final declared-synchronized speakerPhone()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 337
    monitor-enter p0

    :try_start_2
    iget-boolean v0, p0, Lcom/android/server/ATCommandObserver;->mAudioVolumeNeedsUpdate:Z

    if-eqz v0, :cond_13

    .line 339
    iget v0, p0, Lcom/android/server/ATCommandObserver;->mVolumeState:I

    if-ne v0, v1, :cond_15

    .line 340
    iget-object v0, p0, Lcom/android/server/ATCommandObserver;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 349
    :goto_10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ATCommandObserver;->mAudioVolumeNeedsUpdate:Z
    :try_end_13
    .catchall {:try_start_2 .. :try_end_13} :catchall_1c

    .line 351
    :cond_13
    monitor-exit p0

    return-void

    .line 343
    :cond_15
    :try_start_15
    iget-object v0, p0, Lcom/android/server/ATCommandObserver;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_1c

    goto :goto_10

    .line 337
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized update(Ljava/lang/String;I)V
    .registers 6
    .parameter "newName"
    .parameter "newState"

    .prologue
    const-string v0, "vlc"

    const-string v0, " : "

    const-string v0, "[JY_TEST]"

    const-string v0, "AT Command Observer"

    .line 111
    monitor-enter p0

    :try_start_9
    const-string v0, "AT Command Observer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[JY_TEST] compare : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "vlc"

    invoke-virtual {p1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const-string v0, "vlc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_61

    .line 113
    const-string v0, "AT Command Observer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[JY_TEST]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iput-object p1, p0, Lcom/android/server/ATCommandObserver;->mVolumeName:Ljava/lang/String;

    .line 115
    iput p2, p0, Lcom/android/server/ATCommandObserver;->mVolumeState:I

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ATCommandObserver;->mAudioVolumeNeedsUpdate:Z

    .line 117
    invoke-direct {p0}, Lcom/android/server/ATCommandObserver;->updateAudioVolume()V
    :try_end_5f
    .catchall {:try_start_9 .. :try_end_5f} :catchall_90

    .line 149
    :goto_5f
    monitor-exit p0

    return-void

    .line 119
    :cond_61
    :try_start_61
    const-string v0, "mpt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_93

    .line 120
    const-string v0, "AT Command Observer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[JY_TEST]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iput-object p1, p0, Lcom/android/server/ATCommandObserver;->mVolumeName:Ljava/lang/String;

    .line 122
    iput p2, p0, Lcom/android/server/ATCommandObserver;->mVolumeState:I

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ATCommandObserver;->mAudioVolumeNeedsUpdate:Z

    .line 124
    invoke-direct {p0}, Lcom/android/server/ATCommandObserver;->playMusic()V
    :try_end_8f
    .catchall {:try_start_61 .. :try_end_8f} :catchall_90

    goto :goto_5f

    .line 111
    :catchall_90
    move-exception v0

    monitor-exit p0

    throw v0

    .line 126
    :cond_93
    :try_start_93
    const-string v0, "spm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c2

    .line 127
    const-string v0, "AT Command Observer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[JY_TEST]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iput-object p1, p0, Lcom/android/server/ATCommandObserver;->mVolumeName:Ljava/lang/String;

    .line 129
    iput p2, p0, Lcom/android/server/ATCommandObserver;->mVolumeState:I

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ATCommandObserver;->mAudioVolumeNeedsUpdate:Z

    .line 131
    invoke-direct {p0}, Lcom/android/server/ATCommandObserver;->speakerPhone()V

    goto :goto_5f

    .line 133
    :cond_c2
    const-string v0, "fmr"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_f2

    .line 134
    const-string v0, "AT Command Observer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[JY_TEST]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iput-object p1, p0, Lcom/android/server/ATCommandObserver;->mVolumeName:Ljava/lang/String;

    .line 136
    iput p2, p0, Lcom/android/server/ATCommandObserver;->mVolumeState:I

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ATCommandObserver;->mAudioVolumeNeedsUpdate:Z

    .line 138
    invoke-direct {p0}, Lcom/android/server/ATCommandObserver;->fmradioTest()V

    goto/16 :goto_5f

    .line 139
    :cond_f2
    const-string v0, "acs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_122

    .line 140
    const-string v0, "AT Command Observer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[JY_TEST]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iput-object p1, p0, Lcom/android/server/ATCommandObserver;->mVolumeName:Ljava/lang/String;

    .line 142
    iput p2, p0, Lcom/android/server/ATCommandObserver;->mVolumeState:I

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ATCommandObserver;->mAudioVolumeNeedsUpdate:Z

    .line 144
    invoke-direct {p0}, Lcom/android/server/ATCommandObserver;->acsMode()V

    goto/16 :goto_5f

    .line 147
    :cond_122
    const-string v0, "AT Command Observer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[JY_TEST]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_144
    .catchall {:try_start_93 .. :try_end_144} :catchall_90

    goto/16 :goto_5f
.end method

.method private final declared-synchronized updateAudioVolume()V
    .registers 6

    .prologue
    .line 172
    monitor-enter p0

    :try_start_1
    iget-boolean v1, p0, Lcom/android/server/ATCommandObserver;->mAudioVolumeNeedsUpdate:Z

    if-eqz v1, :cond_4c

    .line 173
    iget v1, p0, Lcom/android/server/ATCommandObserver;->mVolumeState:I

    sparse-switch v1, :sswitch_data_126

    .line 209
    iget-object v1, p0, Lcom/android/server/ATCommandObserver;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/ATCommandObserver;->mVolumeState:I

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 210
    iget-object v1, p0, Lcom/android/server/ATCommandObserver;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/server/ATCommandObserver;->mVolumeState:I

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 211
    iget-object v1, p0, Lcom/android/server/ATCommandObserver;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/server/ATCommandObserver;->mVolumeState:I

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 212
    iget-object v1, p0, Lcom/android/server/ATCommandObserver;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x5

    iget v3, p0, Lcom/android/server/ATCommandObserver;->mVolumeState:I

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 213
    iget-object v1, p0, Lcom/android/server/ATCommandObserver;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x3

    iget v3, p0, Lcom/android/server/ATCommandObserver;->mVolumeState:I

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 214
    iget-object v1, p0, Lcom/android/server/ATCommandObserver;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x6

    iget v3, p0, Lcom/android/server/ATCommandObserver;->mVolumeState:I

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 215
    iget-object v1, p0, Lcom/android/server/ATCommandObserver;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x4

    iget v3, p0, Lcom/android/server/ATCommandObserver;->mVolumeState:I

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 218
    :goto_49
    :sswitch_49
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/ATCommandObserver;->mAudioVolumeNeedsUpdate:Z
    :try_end_4c
    .catchall {:try_start_1 .. :try_end_4c} :catchall_bf

    .line 220
    :cond_4c
    monitor-exit p0

    return-void

    .line 175
    :sswitch_4e
    :try_start_4e
    iget-object v1, p0, Lcom/android/server/ATCommandObserver;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    div-int/lit8 v0, v1, 0x2

    .line 176
    .local v0, volumeValue:I
    iget-object v1, p0, Lcom/android/server/ATCommandObserver;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 177
    iget-object v1, p0, Lcom/android/server/ATCommandObserver;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    div-int/lit8 v0, v1, 0x2

    .line 178
    iget-object v1, p0, Lcom/android/server/ATCommandObserver;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 179
    iget-object v1, p0, Lcom/android/server/ATCommandObserver;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    div-int/lit8 v0, v1, 0x2

    .line 180
    iget-object v1, p0, Lcom/android/server/ATCommandObserver;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 181
    iget-object v1, p0, Lcom/android/server/ATCommandObserver;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    div-int/lit8 v0, v1, 0x2

    .line 182
    iget-object v1, p0, Lcom/android/server/ATCommandObserver;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 183
    iget-object v1, p0, Lcom/android/server/ATCommandObserver;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    div-int/lit8 v0, v1, 0x2

    .line 184
    iget-object v1, p0, Lcom/android/server/ATCommandObserver;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 185
    iget-object v1, p0, Lcom/android/server/ATCommandObserver;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    div-int/lit8 v0, v1, 0x2

    .line 186
    iget-object v1, p0, Lcom/android/server/ATCommandObserver;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x6

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 187
    iget-object v1, p0, Lcom/android/server/ATCommandObserver;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    div-int/lit8 v0, v1, 0x2

    .line 188
    iget-object v1, p0, Lcom/android/server/ATCommandObserver;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x4

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V
    :try_end_be
    .catchall {:try_start_4e .. :try_end_be} :catchall_bf

    goto :goto_49

    .line 172
    .end local v0           #volumeValue:I
    :catchall_bf
    move-exception v1

    monitor-exit p0

    throw v1

    .line 191
    :sswitch_c2
    :try_start_c2
    iget-object v1, p0, Lcom/android/server/ATCommandObserver;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    .line 192
    .restart local v0       #volumeValue:I
    iget-object v1, p0, Lcom/android/server/ATCommandObserver;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 193
    iget-object v1, p0, Lcom/android/server/ATCommandObserver;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    .line 194
    iget-object v1, p0, Lcom/android/server/ATCommandObserver;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 195
    iget-object v1, p0, Lcom/android/server/ATCommandObserver;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    .line 196
    iget-object v1, p0, Lcom/android/server/ATCommandObserver;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 197
    iget-object v1, p0, Lcom/android/server/ATCommandObserver;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    .line 198
    iget-object v1, p0, Lcom/android/server/ATCommandObserver;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 199
    iget-object v1, p0, Lcom/android/server/ATCommandObserver;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    .line 200
    iget-object v1, p0, Lcom/android/server/ATCommandObserver;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 201
    iget-object v1, p0, Lcom/android/server/ATCommandObserver;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    .line 202
    iget-object v1, p0, Lcom/android/server/ATCommandObserver;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x6

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 203
    iget-object v1, p0, Lcom/android/server/ATCommandObserver;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    .line 204
    iget-object v1, p0, Lcom/android/server/ATCommandObserver;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x4

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V
    :try_end_124
    .catchall {:try_start_c2 .. :try_end_124} :catchall_bf

    goto/16 :goto_49

    .line 173
    :sswitch_data_126
    .sparse-switch
        0x2 -> :sswitch_4e
        0x3 -> :sswitch_c2
        0x9 -> :sswitch_49
    .end sparse-switch
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .registers 6
    .parameter "event"

    .prologue
    const-string v3, "AT Command Observer"

    .line 76
    const-string v1, "AT Command Observer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AT Command UEVENT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :try_start_1e
    const-string v1, "AT_NAME"

    invoke-virtual {p1, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AT_STATE"

    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/ATCommandObserver;->update(Ljava/lang/String;I)V
    :try_end_31
    .catch Ljava/lang/NumberFormatException; {:try_start_1e .. :try_end_31} :catch_32

    .line 83
    :goto_31
    return-void

    .line 80
    :catch_32
    move-exception v1

    move-object v0, v1

    .line 81
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v1, "AT Command Observer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not parse switch state from event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31
.end method
