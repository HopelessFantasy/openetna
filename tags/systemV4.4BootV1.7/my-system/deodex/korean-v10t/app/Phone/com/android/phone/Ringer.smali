.class public Lcom/android/phone/Ringer;
.super Ljava/lang/Object;
.source "Ringer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/Ringer$Worker;,
        Lcom/android/phone/Ringer$VibratorThread;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "Ringer"

.field private static final PAUSE_LENGTH:I = 0x3e8

.field private static final PLAY_RING_ONCE:I = 0x1

.field private static final STOP_RING:I = 0x3

.field private static final VIBRATE_LENGTH:I = 0x3e8


# instance fields
.field mContext:Landroid/content/Context;

.field volatile mContinueVibrating:Z

.field mCustomRingtoneUri:Landroid/net/Uri;

.field private mFirstRingEventTime:J

.field private mFirstRingStartTime:J

.field mHardwareService:Landroid/os/IHardwareService;

.field private mRingHandler:Landroid/os/Handler;

.field private mRingPending:Z

.field private mRingThread:Lcom/android/phone/Ringer$Worker;

.field mRingtone:Landroid/media/Ringtone;

.field mVibrator:Landroid/os/Vibrator;

.field mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 42
    const-string v0, "ro.debuggable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_e

    move v0, v2

    :goto_b
    sput-boolean v0, Lcom/android/phone/Ringer;->DBG:Z

    return-void

    :cond_e
    move v0, v1

    goto :goto_b
.end method

.method constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .registers 5
    .parameter "phone"

    .prologue
    const-wide/16 v1, -0x1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Landroid/os/Vibrator;

    invoke-direct {v0}, Landroid/os/Vibrator;-><init>()V

    iput-object v0, p0, Lcom/android/phone/Ringer;->mVibrator:Landroid/os/Vibrator;

    .line 63
    iput-wide v1, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J

    .line 64
    iput-wide v1, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    .line 67
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    .line 68
    const-string v0, "hardware"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IHardwareService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IHardwareService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/Ringer;->mHardwareService:Landroid/os/IHardwareService;

    .line 69
    return-void
.end method

.method static synthetic access$100()Z
    .registers 1

    .prologue
    .line 40
    sget-boolean v0, Lcom/android/phone/Ringer;->DBG:Z

    return v0
.end method

.method static synthetic access$200(Ljava/lang/String;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-static {p0}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/phone/Ringer;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/android/phone/Ringer;->mRingPending:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/phone/Ringer;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/android/phone/Ringer;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-wide p1, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    return-wide p1
.end method

.method private isRingtonePlaying()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 105
    monitor-enter p0

    .line 106
    :try_start_2
    iget-object v0, p0, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1b

    :cond_e
    iget-object v0, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

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

    .line 108
    :catchall_20
    move-exception v0

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_2 .. :try_end_22} :catchall_20

    throw v0
.end method

.method private isVibrating()Z
    .registers 2

    .prologue
    .line 117
    monitor-enter p0

    .line 118
    :try_start_1
    iget-object v0, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    .line 119
    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw v0
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 330
    const-string v0, "Ringer"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    return-void
.end method

.method private makeLooper()V
    .registers 3

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/phone/Ringer;->mRingThread:Lcom/android/phone/Ringer$Worker;

    if-nez v0, :cond_1a

    .line 283
    new-instance v0, Lcom/android/phone/Ringer$Worker;

    const-string v1, "ringer"

    invoke-direct {v0, p0, v1}, Lcom/android/phone/Ringer$Worker;-><init>(Lcom/android/phone/Ringer;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/phone/Ringer;->mRingThread:Lcom/android/phone/Ringer$Worker;

    .line 284
    new-instance v0, Lcom/android/phone/Ringer$1;

    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingThread:Lcom/android/phone/Ringer$Worker;

    invoke-virtual {v1}, Lcom/android/phone/Ringer$Worker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/phone/Ringer$1;-><init>(Lcom/android/phone/Ringer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    .line 327
    :cond_1a
    return-void
.end method


# virtual methods
.method isRinging()Z
    .registers 2

    .prologue
    .line 94
    monitor-enter p0

    .line 95
    :try_start_1
    invoke-direct {p0}, Lcom/android/phone/Ringer;->isRingtonePlaying()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-direct {p0}, Lcom/android/phone/Ringer;->isVibrating()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_d
    const/4 v0, 0x1

    :goto_e
    monitor-exit p0

    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_e

    .line 96
    :catchall_12
    move-exception v0

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_12

    throw v0
.end method

.method ring()V
    .registers 8

    .prologue
    const-wide/16 v3, 0x0

    .line 126
    sget-boolean v1, Lcom/android/phone/Ringer;->DBG:Z

    if-eqz v1, :cond_b

    const-string v1, "ring()..."

    invoke-static {v1}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    .line 128
    :cond_b
    monitor-enter p0

    .line 130
    :try_start_c
    iget-object v1, p0, Lcom/android/phone/Ringer;->mHardwareService:Landroid/os/IHardwareService;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/os/IHardwareService;->setAttentionLight(Z)V
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_7b
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_12} :catch_df

    .line 135
    :goto_12
    :try_start_12
    invoke-virtual {p0}, Lcom/android/phone/Ringer;->shouldVibrate()Z

    move-result v1

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    if-nez v1, :cond_35

    .line 136
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/Ringer;->mContinueVibrating:Z

    .line 137
    new-instance v1, Lcom/android/phone/Ringer$VibratorThread;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/phone/Ringer$VibratorThread;-><init>(Lcom/android/phone/Ringer;Lcom/android/phone/Ringer$1;)V

    iput-object v1, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    .line 138
    sget-boolean v1, Lcom/android/phone/Ringer;->DBG:Z

    if-eqz v1, :cond_30

    const-string v1, "- starting vibrator..."

    invoke-static {v1}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    .line 139
    :cond_30
    iget-object v1, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    invoke-virtual {v1}, Lcom/android/phone/Ringer$VibratorThread;->start()V

    .line 141
    :cond_35
    iget-object v1, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 144
    .local v0, audioManager:Landroid/media/AudioManager;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-nez v1, :cond_51

    .line 145
    sget-boolean v1, Lcom/android/phone/Ringer;->DBG:Z

    if-eqz v1, :cond_4f

    const-string v1, "skipping ring because volume is zero"

    invoke-static {v1}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    .line 146
    :cond_4f
    monitor-exit p0

    .line 180
    :goto_50
    return-void

    .line 149
    :cond_51
    invoke-direct {p0}, Lcom/android/phone/Ringer;->isRingtonePlaying()Z

    move-result v1

    if-nez v1, :cond_b6

    iget-boolean v1, p0, Lcom/android/phone/Ringer;->mRingPending:Z

    if-nez v1, :cond_b6

    .line 150
    invoke-direct {p0}, Lcom/android/phone/Ringer;->makeLooper()V

    .line 151
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 152
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/Ringer;->mRingPending:Z

    .line 153
    iget-wide v1, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_7e

    .line 154
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J

    .line 155
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 179
    :cond_79
    :goto_79
    monitor-exit p0

    goto :goto_50

    .end local v0           #audioManager:Landroid/media/AudioManager;
    :catchall_7b
    move-exception v1

    monitor-exit p0
    :try_end_7d
    .catchall {:try_start_12 .. :try_end_7d} :catchall_7b

    throw v1

    .line 160
    .restart local v0       #audioManager:Landroid/media/AudioManager;
    :cond_7e
    :try_start_7e
    iget-wide v1, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_af

    .line 163
    sget-boolean v1, Lcom/android/phone/Ringer;->DBG:Z

    if-eqz v1, :cond_a3

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delaying ring by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    iget-wide v4, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    .line 166
    :cond_a3
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    iget-wide v3, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    iget-wide v5, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J

    sub-long/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_79

    .line 172
    :cond_af
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J

    goto :goto_79

    .line 176
    :cond_b6
    sget-boolean v1, Lcom/android/phone/Ringer;->DBG:Z

    if-eqz v1, :cond_79

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "skipping ring, already playing or pending: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V
    :try_end_de
    .catchall {:try_start_7e .. :try_end_de} :catchall_7b

    goto :goto_79

    .line 131
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :catch_df
    move-exception v1

    goto/16 :goto_12
.end method

.method setCustomRingtoneUri(Landroid/net/Uri;)V
    .registers 2
    .parameter "uri"

    .prologue
    .line 276
    if-eqz p1, :cond_4

    .line 277
    iput-object p1, p0, Lcom/android/phone/Ringer;->mCustomRingtoneUri:Landroid/net/Uri;

    .line 279
    :cond_4
    return-void
.end method

.method shouldVibrate()Z
    .registers 4

    .prologue
    .line 183
    iget-object v1, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 184
    .local v0, audioManager:Landroid/media/AudioManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->shouldVibrate(I)Z

    move-result v1

    return v1
.end method

.method stopRing()V
    .registers 4

    .prologue
    .line 192
    monitor-enter p0

    .line 193
    :try_start_1
    sget-boolean v1, Lcom/android/phone/Ringer;->DBG:Z

    if-eqz v1, :cond_a

    const-string v1, "stopRing()..."

    invoke-static {v1}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_68

    .line 196
    :cond_a
    :try_start_a
    iget-object v1, p0, Lcom/android/phone/Ringer;->mHardwareService:Landroid/os/IHardwareService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/os/IHardwareService;->setAttentionLight(Z)V
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_68
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_10} :catch_6b

    .line 201
    :goto_10
    :try_start_10
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    if-eqz v1, :cond_5e

    .line 202
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 203
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 204
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 205
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 206
    iget-object v1, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/phone/PhoneUtils;->setAudioMode(Landroid/content/Context;I)V

    .line 207
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/Ringer;->mRingThread:Lcom/android/phone/Ringer$Worker;

    .line 208
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    .line 209
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    .line 210
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J

    .line 211
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    .line 212
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/Ringer;->mRingPending:Z

    .line 217
    .end local v0           #msg:Landroid/os/Message;
    :cond_44
    :goto_44
    iget-object v1, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    if-eqz v1, :cond_57

    .line 218
    sget-boolean v1, Lcom/android/phone/Ringer;->DBG:Z

    if-eqz v1, :cond_51

    const-string v1, "- stopRing: cleaning up vibrator thread..."

    invoke-static {v1}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    .line 219
    :cond_51
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/Ringer;->mContinueVibrating:Z

    .line 220
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    .line 223
    :cond_57
    iget-object v1, p0, Lcom/android/phone/Ringer;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v1}, Landroid/os/Vibrator;->cancel()V

    .line 224
    monitor-exit p0

    .line 225
    return-void

    .line 214
    :cond_5e
    sget-boolean v1, Lcom/android/phone/Ringer;->DBG:Z

    if-eqz v1, :cond_44

    const-string v1, "- stopRing: null mRingHandler!"

    invoke-static {v1}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    goto :goto_44

    .line 224
    :catchall_68
    move-exception v1

    monitor-exit p0
    :try_end_6a
    .catchall {:try_start_10 .. :try_end_6a} :catchall_68

    throw v1

    .line 197
    :catch_6b
    move-exception v1

    goto :goto_10
.end method

.method updateRingerContextAfterRadioTechnologyChange(Lcom/android/internal/telephony/Phone;)V
    .registers 4
    .parameter "phone"

    .prologue
    .line 79
    sget-boolean v0, Lcom/android/phone/Ringer;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "Ringer"

    const-string v1, "updateRingerContextAfterRadioTechnologyChange..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_b
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    .line 81
    return-void
.end method
