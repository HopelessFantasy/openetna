.class Lcom/android/server/HeadsetObserver;
.super Landroid/os/UEventObserver;
.source "HeadsetObserver.java"


# static fields
.field private static final HEADSET_NAME_PATH:Ljava/lang/String; = "/sys/class/switch/h2w/name"

.field private static final HEADSET_STATE_PATH:Ljava/lang/String; = "/sys/class/switch/h2w/state"

.field private static final HEADSET_UEVENT_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/switch/h2w"

.field private static final LOG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioRouteNeedsUpdate:Z

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mHeadsetName:Ljava/lang/String;

.field private mHeadsetState:I

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    const-class v0, Lcom/android/server/HeadsetObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/HeadsetObserver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    .line 145
    new-instance v1, Lcom/android/server/HeadsetObserver$1;

    invoke-direct {v1, p0}, Lcom/android/server/HeadsetObserver$1;-><init>(Lcom/android/server/HeadsetObserver;)V

    iput-object v1, p0, Lcom/android/server/HeadsetObserver;->mHandler:Landroid/os/Handler;

    .line 53
    iput-object p1, p0, Lcom/android/server/HeadsetObserver;->mContext:Landroid/content/Context;

    .line 54
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 55
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "HeadsetObserver"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/HeadsetObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 56
    iget-object v1, p0, Lcom/android/server/HeadsetObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 58
    const-string v1, "DEVPATH=/devices/virtual/switch/h2w"

    invoke-virtual {p0, v1}, Lcom/android/server/HeadsetObserver;->startObserving(Ljava/lang/String;)V

    .line 60
    invoke-direct {p0}, Lcom/android/server/HeadsetObserver;->init()V

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/HeadsetObserver;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/server/HeadsetObserver;->updateAudioRoute()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/HeadsetObserver;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/server/HeadsetObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method private final declared-synchronized init()V
    .registers 9

    .prologue
    .line 75
    monitor-enter p0

    const/16 v6, 0x400

    :try_start_3
    new-array v0, v6, [C

    .line 77
    .local v0, buffer:[C
    iget-object v4, p0, Lcom/android/server/HeadsetObserver;->mHeadsetName:Ljava/lang/String;

    .line 78
    .local v4, newName:Ljava/lang/String;
    iget v5, p0, Lcom/android/server/HeadsetObserver;->mHeadsetState:I
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_5c

    .line 80
    .local v5, newState:I
    :try_start_9
    new-instance v2, Ljava/io/FileReader;

    const-string v6, "/sys/class/switch/h2w/state"

    invoke-direct {v2, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 81
    .local v2, file:Ljava/io/FileReader;
    const/4 v6, 0x0

    const/16 v7, 0x400

    invoke-virtual {v2, v0, v6, v7}, Ljava/io/FileReader;->read([CII)I

    move-result v3

    .line 82
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

    .line 84
    new-instance v2, Ljava/io/FileReader;

    .end local v2           #file:Ljava/io/FileReader;
    const-string v6, "/sys/class/switch/h2w/name"

    invoke-direct {v2, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 85
    .restart local v2       #file:Ljava/io/FileReader;
    const/4 v6, 0x0

    const/16 v7, 0x400

    invoke-virtual {v2, v0, v6, v7}, Ljava/io/FileReader;->read([CII)I

    move-result v3

    .line 86
    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v6, v0, v7, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_40
    .catchall {:try_start_9 .. :try_end_40} :catchall_5c
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_40} :catch_52
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_40} :catch_5f

    move-result-object v4

    .line 94
    .end local v2           #file:Ljava/io/FileReader;
    .end local v3           #len:I
    :goto_41
    :try_start_41
    iget-object v6, p0, Lcom/android/server/HeadsetObserver;->mContext:Landroid/content/Context;

    const-string v7, "audio"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager;

    iput-object v6, p0, Lcom/android/server/HeadsetObserver;->mAudioManager:Landroid/media/AudioManager;

    .line 95
    invoke-direct {p0, v4, v5}, Lcom/android/server/HeadsetObserver;->update(Ljava/lang/String;I)V
    :try_end_50
    .catchall {:try_start_41 .. :try_end_50} :catchall_5c

    .line 96
    monitor-exit p0

    return-void

    .line 88
    :catch_52
    move-exception v6

    move-object v1, v6

    .line 89
    .local v1, e:Ljava/io/FileNotFoundException;
    :try_start_54
    sget-object v6, Lcom/android/server/HeadsetObserver;->TAG:Ljava/lang/String;

    const-string v7, "This kernel does not have wired headset support"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catchall {:try_start_54 .. :try_end_5b} :catchall_5c

    goto :goto_41

    .line 75
    .end local v0           #buffer:[C
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .end local v4           #newName:Ljava/lang/String;
    .end local v5           #newState:I
    :catchall_5c
    move-exception v6

    monitor-exit p0

    throw v6

    .line 90
    .restart local v0       #buffer:[C
    .restart local v4       #newName:Ljava/lang/String;
    .restart local v5       #newState:I
    :catch_5f
    move-exception v6

    move-object v1, v6

    .line 91
    .local v1, e:Ljava/lang/Exception;
    :try_start_61
    sget-object v6, Lcom/android/server/HeadsetObserver;->TAG:Ljava/lang/String;

    const-string v7, ""

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_68
    .catchall {:try_start_61 .. :try_end_68} :catchall_5c

    goto :goto_41
.end method

.method private final declared-synchronized sendIntent(Z)V
    .registers 5
    .parameter "isUnplug"

    .prologue
    .line 123
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 124
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 126
    const-string v1, "state"

    iget v2, p0, Lcom/android/server/HeadsetObserver;->mHeadsetState:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 127
    const-string v1, "name"

    iget-object v2, p0, Lcom/android/server/HeadsetObserver;->mHeadsetName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 132
    if-eqz p1, :cond_2d

    .line 133
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 134
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/HeadsetObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_2f

    .line 136
    :cond_2d
    monitor-exit p0

    return-void

    .line 123
    .end local v0           #intent:Landroid/content/Intent;
    :catchall_2f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private final declared-synchronized update(Ljava/lang/String;I)V
    .registers 8
    .parameter "newName"
    .parameter "newState"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 99
    monitor-enter p0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/HeadsetObserver;->mHeadsetName:Ljava/lang/String;

    if-ne p1, v1, :cond_b

    iget v1, p0, Lcom/android/server/HeadsetObserver;->mHeadsetState:I

    if-eq p2, v1, :cond_2b

    .line 100
    :cond_b
    if-nez p2, :cond_2d

    iget v1, p0, Lcom/android/server/HeadsetObserver;->mHeadsetState:I

    if-ne v1, v2, :cond_2d

    move v0, v2

    .line 101
    .local v0, isUnplug:Z
    :goto_12
    iput-object p1, p0, Lcom/android/server/HeadsetObserver;->mHeadsetName:Ljava/lang/String;

    .line 102
    iput p2, p0, Lcom/android/server/HeadsetObserver;->mHeadsetState:I

    .line 103
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/HeadsetObserver;->mAudioRouteNeedsUpdate:Z

    .line 105
    invoke-direct {p0, v0}, Lcom/android/server/HeadsetObserver;->sendIntent(Z)V

    .line 107
    if-eqz v0, :cond_2f

    .line 113
    iget-object v1, p0, Lcom/android/server/HeadsetObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 114
    iget-object v1, p0, Lcom/android/server/HeadsetObserver;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_33

    .line 119
    .end local v0           #isUnplug:Z
    :cond_2b
    :goto_2b
    monitor-exit p0

    return-void

    :cond_2d
    move v0, v3

    .line 100
    goto :goto_12

    .line 116
    .restart local v0       #isUnplug:Z
    :cond_2f
    :try_start_2f
    invoke-direct {p0}, Lcom/android/server/HeadsetObserver;->updateAudioRoute()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_33

    goto :goto_2b

    .line 99
    .end local v0           #isUnplug:Z
    :catchall_33
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private final declared-synchronized updateAudioRoute()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 139
    monitor-enter p0

    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/HeadsetObserver;->mAudioRouteNeedsUpdate:Z

    if-eqz v0, :cond_14

    .line 140
    iget-object v0, p0, Lcom/android/server/HeadsetObserver;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/server/HeadsetObserver;->mHeadsetState:I

    if-ne v1, v3, :cond_16

    move v1, v3

    :goto_e
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setWiredHeadsetOn(Z)V

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/HeadsetObserver;->mAudioRouteNeedsUpdate:Z
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_18

    .line 143
    :cond_14
    monitor-exit p0

    return-void

    :cond_16
    move v1, v2

    .line 140
    goto :goto_e

    .line 139
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .registers 6
    .parameter "event"

    .prologue
    .line 68
    :try_start_0
    const-string v1, "SWITCH_NAME"

    invoke-virtual {p1, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SWITCH_STATE"

    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/HeadsetObserver;->update(Ljava/lang/String;I)V
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_13} :catch_14

    .line 72
    :goto_13
    return-void

    .line 69
    :catch_14
    move-exception v1

    move-object v0, v1

    .line 70
    .local v0, e:Ljava/lang/NumberFormatException;
    sget-object v1, Lcom/android/server/HeadsetObserver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not parse switch state from event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method
