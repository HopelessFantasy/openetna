.class Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread;
.super Ljava/lang/Object;
.source "ManualMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RingerThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread$Worker;
    }
.end annotation


# static fields
.field private static final PLAY_RING_ONCE:I = 0x1

.field private static final STOP_RING:I = 0x3


# instance fields
.field mContext:Landroid/content/Context;

.field mCustomRingtoneUri:Landroid/net/Uri;

.field private mFirstRingEventTime:J

.field private mFirstRingStartTime:J

.field private mRingHandler:Landroid/os/Handler;

.field private mRingPending:Z

.field private mRingThread:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread$Worker;

.field mRingtone:Landroid/media/Ringtone;

.field final synthetic this$0:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;Landroid/content/Context;)V
    .registers 5
    .parameter
    .parameter "context"

    .prologue
    const-wide/16 v0, -0x1

    .line 364
    iput-object p1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread;->this$0:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 361
    iput-wide v0, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread;->mFirstRingEventTime:J

    .line 362
    iput-wide v0, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread;->mFirstRingStartTime:J

    .line 365
    iput-object p2, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread;->mContext:Landroid/content/Context;

    .line 367
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread;->mRingtone:Landroid/media/Ringtone;

    .line 368
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread;->mRingtone:Landroid/media/Ringtone;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 369
    return-void
.end method

.method static synthetic access$1002(Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 348
    iput-boolean p1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread;->mRingPending:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 348
    iget-wide v0, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread;->mFirstRingStartTime:J

    return-wide v0
.end method

.method static synthetic access$1102(Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 348
    iput-wide p1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread;->mFirstRingStartTime:J

    return-wide p1
.end method

.method private isRingtonePlaying()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 378
    monitor-enter p0

    .line 379
    :try_start_2
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1b

    :cond_e
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread;->mRingHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread;->mRingHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_1b
    move v0, v2

    :goto_1c
    monitor-exit p0

    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1c

    .line 381
    :catchall_20
    move-exception v0

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_2 .. :try_end_22} :catchall_20

    throw v0
.end method

.method private makeLooper()V
    .registers 3

    .prologue
    .line 472
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread;->mRingThread:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread$Worker;

    if-nez v0, :cond_1a

    .line 473
    new-instance v0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread$Worker;

    const-string v1, "ringer"

    invoke-direct {v0, p0, v1}, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread$Worker;-><init>(Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread;->mRingThread:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread$Worker;

    .line 474
    new-instance v0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread$1;

    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread;->mRingThread:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread$Worker;

    invoke-virtual {v1}, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread$Worker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread$1;-><init>(Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread;->mRingHandler:Landroid/os/Handler;

    .line 512
    :cond_1a
    return-void
.end method


# virtual methods
.method isRinging()Z
    .registers 2

    .prologue
    .line 372
    monitor-enter p0

    .line 373
    :try_start_1
    invoke-direct {p0}, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread;->isRingtonePlaying()Z

    move-result v0

    monitor-exit p0

    return v0

    .line 374
    :catchall_7
    move-exception v0

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_7

    throw v0
.end method

.method ring()V
    .registers 8

    .prologue
    const-wide/16 v3, 0x0

    .line 386
    monitor-enter p0

    .line 387
    :try_start_3
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 389
    .local v0, audioManager:Landroid/media/AudioManager;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-nez v1, :cond_16

    .line 390
    monitor-exit p0

    .line 410
    :goto_15
    return-void

    .line 393
    :cond_16
    invoke-direct {p0}, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread;->isRingtonePlaying()Z

    move-result v1

    if-nez v1, :cond_3e

    iget-boolean v1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread;->mRingPending:Z

    if-nez v1, :cond_3e

    .line 394
    invoke-direct {p0}, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread;->makeLooper()V

    .line 395
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread;->mRingHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 396
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread;->mRingPending:Z

    .line 397
    iget-wide v1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread;->mFirstRingEventTime:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_43

    .line 398
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread;->mFirstRingEventTime:J

    .line 399
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread;->mRingHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 409
    :cond_3e
    :goto_3e
    monitor-exit p0

    goto :goto_15

    .end local v0           #audioManager:Landroid/media/AudioManager;
    :catchall_40
    move-exception v1

    monitor-exit p0
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_40

    throw v1

    .line 401
    .restart local v0       #audioManager:Landroid/media/AudioManager;
    :cond_43
    :try_start_43
    iget-wide v1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread;->mFirstRingStartTime:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_55

    .line 402
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread;->mRingHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    iget-wide v3, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread;->mFirstRingStartTime:J

    iget-wide v5, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread;->mFirstRingEventTime:J

    sub-long/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_3e

    .line 405
    :cond_55
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread;->mFirstRingEventTime:J
    :try_end_5b
    .catchall {:try_start_43 .. :try_end_5b} :catchall_40

    goto :goto_3e
.end method

.method setCustomRingtoneUri(Landroid/net/Uri;)V
    .registers 2
    .parameter "uri"

    .prologue
    .line 466
    if-eqz p1, :cond_4

    .line 467
    iput-object p1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread;->mCustomRingtoneUri:Landroid/net/Uri;

    .line 469
    :cond_4
    return-void
.end method

.method stopRing()V
    .registers 4

    .prologue
    .line 413
    monitor-enter p0

    .line 415
    :try_start_1
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread;->mRingHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2f

    .line 416
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread;->mRingHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 417
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread;->mRingHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 418
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread;->mRingtone:Landroid/media/Ringtone;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 419
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread;->mRingHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 421
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread;->mRingThread:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread$Worker;

    .line 422
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread;->mRingHandler:Landroid/os/Handler;

    .line 423
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread;->mRingtone:Landroid/media/Ringtone;

    .line 424
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread;->mFirstRingEventTime:J

    .line 425
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread;->mFirstRingStartTime:J

    .line 426
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread;->mRingPending:Z

    .line 428
    .end local v0           #msg:Landroid/os/Message;
    :cond_2f
    monitor-exit p0

    .line 429
    return-void

    .line 428
    :catchall_31
    move-exception v1

    monitor-exit p0
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_31

    throw v1
.end method
