.class public Lcom/android/music/MediaPlaybackService;
.super Landroid/app/Service;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/MediaPlaybackService$ServiceStub;,
        Lcom/android/music/MediaPlaybackService$MultiPlayer;,
        Lcom/android/music/MediaPlaybackService$Shuffler;
    }
.end annotation


# static fields
.field public static final ASYNC_OPEN_COMPLETE:Ljava/lang/String; = "com.android.music.asyncopencomplete"

.field private static final BOOKMARKCOLIDX:I = 0x9

.field public static final CMDNAME:Ljava/lang/String; = "command"

.field public static final CMDNEXT:Ljava/lang/String; = "next"

.field public static final CMDPAUSE:Ljava/lang/String; = "pause"

.field public static final CMDPREVIOUS:Ljava/lang/String; = "previous"

.field public static final CMDSTOP:Ljava/lang/String; = "stop"

.field public static final CMDTOGGLEPAUSE:Ljava/lang/String; = "togglepause"

.field private static final FADEIN:I = 0x4

.field private static final IDCOLIDX:I = 0x0

.field private static final IDLE_DELAY:I = 0xea60

.field public static final LAST:I = 0x3

.field private static final LOGTAG:Ljava/lang/String; = "MediaPlaybackService"

.field private static final MAX_HISTORY_SIZE:I = 0xa

.field public static final META_CHANGED:Ljava/lang/String; = "com.android.music.metachanged"

.field public static final NEXT:I = 0x2

.field public static final NEXT_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.next"

.field public static final NOW:I = 0x1

.field public static final PAUSE_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.pause"

.field public static final PLAYBACKSERVICE_STATUS:I = 0x1

.field public static final PLAYBACK_COMPLETE:Ljava/lang/String; = "com.android.music.playbackcomplete"

.field public static final PLAYSTATE_CHANGED:Ljava/lang/String; = "com.android.music.playstatechanged"

.field private static final PODCASTCOLIDX:I = 0x8

.field public static final PREVIOUS_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.previous"

.field public static final QUEUE_CHANGED:Ljava/lang/String; = "com.android.music.queuechanged"

.field public static final REFRESH_PROGRESSBAR:Ljava/lang/String; = "com.android.music.refreshui"

.field private static final RELEASE_WAKELOCK:I = 0x2

.field public static final REPEAT_ALL:I = 0x2

.field public static final REPEAT_CURRENT:I = 0x1

.field public static final REPEAT_NONE:I = 0x0

.field private static final SERVER_DIED:I = 0x3

.field public static final SERVICECMD:Ljava/lang/String; = "com.android.music.musicservicecommand"

.field public static final SHUFFLE_AUTO:I = 0x2

.field public static final SHUFFLE_NONE:I = 0x0

.field public static final SHUFFLE_NORMAL:I = 0x1

.field public static final TOGGLEPAUSE_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.togglepause"

.field public static final TRACK_END:Ljava/lang/String; = "com.android.music.trackend"

.field private static final TRACK_ENDED:I = 0x1


# instance fields
.field private final hexdigits:[C

.field private mAppWidgetProvider:Lcom/android/music/MediaAppWidgetProvider;

.field private mAutoShuffleList:[I

.field private final mBinder:Landroid/os/IBinder;

.field private mCardId:I

.field private mCursor:Landroid/database/Cursor;

.field mCursorCols:[Ljava/lang/String;

.field private mDelayedStopHandler:Landroid/os/Handler;

.field private mFileToPlay:Ljava/lang/String;

.field private mHistory:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsSupposedToBePlaying:Z

.field private mMediaMountedCount:I

.field private mMediaplayerHandler:Landroid/os/Handler;

.field private mOneShot:Z

.field private mOpenFailedCounter:I

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPlayClip:Z

.field private mPlayList:[I

.field private mPlayListLen:I

.field private mPlayPos:I

.field private mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mQuietMode:Z

.field private final mRand:Lcom/android/music/MediaPlaybackService$Shuffler;

.field private mRepeatMode:I

.field private mResumeAfterCall:Z

.field private mServiceInUse:Z

.field private mServiceStartId:I

.field private mShuffleMode:I

.field private mSkipPlay:Z

.field private mUnmountReceiver:Landroid/content/BroadcastReceiver;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .registers 7

    .prologue
    const/16 v1, 0xa

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 272
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 111
    iput v3, p0, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    .line 112
    iput v3, p0, Lcom/android/music/MediaPlaybackService;->mRepeatMode:I

    .line 113
    iput v3, p0, Lcom/android/music/MediaPlaybackService;->mMediaMountedCount:I

    .line 114
    iput-object v4, p0, Lcom/android/music/MediaPlaybackService;->mAutoShuffleList:[I

    .line 116
    iput-object v4, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[I

    .line 117
    iput v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    .line 118
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    .line 120
    iput v5, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    .line 121
    iput-boolean v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayClip:Z

    .line 122
    iput-boolean v3, p0, Lcom/android/music/MediaPlaybackService;->mSkipPlay:Z

    .line 125
    new-instance v0, Lcom/android/music/MediaPlaybackService$Shuffler;

    invoke-direct {v0, v4}, Lcom/android/music/MediaPlaybackService$Shuffler;-><init>(Lcom/android/music/MediaPlaybackService$1;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mRand:Lcom/android/music/MediaPlaybackService$Shuffler;

    .line 126
    iput v3, p0, Lcom/android/music/MediaPlaybackService;->mOpenFailedCounter:I

    .line 127
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "audio._id AS _id"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "artist"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "album"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "album_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "artist_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "is_podcast"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "bookmark"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursorCols:[Ljava/lang/String;

    .line 142
    iput-object v4, p0, Lcom/android/music/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 144
    iput v5, p0, Lcom/android/music/MediaPlaybackService;->mServiceStartId:I

    .line 145
    iput-boolean v3, p0, Lcom/android/music/MediaPlaybackService;->mServiceInUse:Z

    .line 146
    iput-boolean v3, p0, Lcom/android/music/MediaPlaybackService;->mResumeAfterCall:Z

    .line 147
    iput-boolean v3, p0, Lcom/android/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    .line 148
    iput-boolean v3, p0, Lcom/android/music/MediaPlaybackService;->mQuietMode:Z

    .line 155
    invoke-static {}, Lcom/android/music/MediaAppWidgetProvider;->getInstance()Lcom/android/music/MediaAppWidgetProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mAppWidgetProvider:Lcom/android/music/MediaAppWidgetProvider;

    .line 160
    new-instance v0, Lcom/android/music/MediaPlaybackService$1;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackService$1;-><init>(Lcom/android/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 190
    new-instance v0, Lcom/android/music/MediaPlaybackService$2;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackService$2;-><init>(Lcom/android/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    .line 243
    new-instance v0, Lcom/android/music/MediaPlaybackService$3;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackService$3;-><init>(Lcom/android/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 345
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a0

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->hexdigits:[C

    .line 588
    new-instance v0, Lcom/android/music/MediaPlaybackService$4;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackService$4;-><init>(Lcom/android/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    .line 1951
    new-instance v0, Lcom/android/music/MediaPlaybackService$ServiceStub;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackService$ServiceStub;-><init>(Lcom/android/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mBinder:Landroid/os/IBinder;

    .line 273
    return-void

    .line 345
    :array_a0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
    .end array-data
.end method

.method static synthetic access$100(Lcom/android/music/MediaPlaybackService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackService;->mResumeAfterCall:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/music/MediaPlaybackService;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/music/MediaPlaybackService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/music/MediaPlaybackService;->mResumeAfterCall:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/music/MediaPlaybackService;)Lcom/android/music/MediaAppWidgetProvider;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mAppWidgetProvider:Lcom/android/music/MediaAppWidgetProvider;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/music/MediaPlaybackService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackService;->mServiceInUse:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/music/MediaPlaybackService;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/music/MediaPlaybackService;->saveQueue(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/music/MediaPlaybackService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mServiceStartId:I

    return v0
.end method

.method static synthetic access$1508(Lcom/android/music/MediaPlaybackService;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mMediaMountedCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/music/MediaPlaybackService;->mMediaMountedCount:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/music/MediaPlaybackService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput p1, p0, Lcom/android/music/MediaPlaybackService;->mCardId:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/music/MediaPlaybackService;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/music/MediaPlaybackService;->reloadQueue(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/music/MediaPlaybackService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->startAndFadeIn()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/music/MediaPlaybackService;)Lcom/android/music/MediaPlaybackService$MultiPlayer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/music/MediaPlaybackService;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/music/MediaPlaybackService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/music/MediaPlaybackService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/music/MediaPlaybackService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->openCurrent()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/music/MediaPlaybackService;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/music/MediaPlaybackService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mRepeatMode:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/music/MediaPlaybackService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackService;->mOneShot:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/music/MediaPlaybackService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/music/MediaPlaybackService;->mOneShot:Z

    return p1
.end method

.method private addToPlayList([II)V
    .registers 10
    .parameter "list"
    .parameter "position"

    .prologue
    .line 708
    array-length v0, p1

    .line 709
    .local v0, addlen:I
    if-gez p2, :cond_7

    .line 710
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    .line 711
    const/4 p2, 0x0

    .line 713
    :cond_7
    iget v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    add-int/2addr v3, v0

    invoke-direct {p0, v3}, Lcom/android/music/MediaPlaybackService;->ensurePlayListCapacity(I)V

    .line 714
    iget v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    if-le p2, v3, :cond_13

    .line 715
    iget p2, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    .line 719
    :cond_13
    iget v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    sub-int v2, v3, p2

    .line 720
    .local v2, tailsize:I
    move v1, v2

    .local v1, i:I
    :goto_18
    if-lez v1, :cond_2a

    .line 721
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[I

    add-int v4, p2, v1

    iget-object v5, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[I

    add-int v6, p2, v1

    sub-int/2addr v6, v0

    aget v5, v5, v6

    aput v5, v3, v4

    .line 720
    add-int/lit8 v1, v1, -0x1

    goto :goto_18

    .line 725
    :cond_2a
    const/4 v1, 0x0

    :goto_2b
    if-ge v1, v0, :cond_38

    .line 726
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[I

    add-int v4, p2, v1

    aget v5, p1, v1

    aput v5, v3, v4

    .line 725
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 728
    :cond_38
    iget v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    .line 729
    return-void
.end method

.method private doAutoShuffleUpdate()V
    .registers 9

    .prologue
    .line 1356
    const/4 v2, 0x0

    .line 1358
    .local v2, notify:Z
    iget v5, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    const/16 v6, 0xa

    if-le v5, v6, :cond_11

    .line 1359
    const/4 v5, 0x0

    iget v6, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    const/16 v7, 0x9

    sub-int/2addr v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/android/music/MediaPlaybackService;->removeTracks(II)I

    .line 1360
    const/4 v2, 0x1

    .line 1363
    :cond_11
    const/4 v5, 0x7

    iget v6, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    iget v7, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    if-gez v7, :cond_49

    const/4 v7, -0x1

    :goto_19
    sub-int/2addr v6, v7

    sub-int v3, v5, v6

    .line 1364
    .local v3, to_add:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1d
    if-ge v0, v3, :cond_4c

    .line 1366
    iget-object v5, p0, Lcom/android/music/MediaPlaybackService;->mRand:Lcom/android/music/MediaPlaybackService$Shuffler;

    iget-object v6, p0, Lcom/android/music/MediaPlaybackService;->mAutoShuffleList:[I

    array-length v6, v6

    invoke-virtual {v5, v6}, Lcom/android/music/MediaPlaybackService$Shuffler;->nextInt(I)I

    move-result v1

    .line 1367
    .local v1, idx:I
    iget-object v5, p0, Lcom/android/music/MediaPlaybackService;->mAutoShuffleList:[I

    aget v5, v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1368
    .local v4, which:Ljava/lang/Integer;
    iget v5, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    add-int/lit8 v5, v5, 0x1

    invoke-direct {p0, v5}, Lcom/android/music/MediaPlaybackService;->ensurePlayListCapacity(I)V

    .line 1369
    iget-object v5, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[I

    iget v6, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v5, v6

    .line 1370
    const/4 v2, 0x1

    .line 1364
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 1363
    .end local v0           #i:I
    .end local v1           #idx:I
    .end local v3           #to_add:I
    .end local v4           #which:Ljava/lang/Integer;
    :cond_49
    iget v7, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    goto :goto_19

    .line 1372
    .restart local v0       #i:I
    .restart local v3       #to_add:I
    :cond_4c
    if-eqz v2, :cond_53

    .line 1373
    const-string v5, "com.android.music.queuechanged"

    invoke-direct {p0, v5}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1375
    :cond_53
    return-void
.end method

.method private ensurePlayListCapacity(I)V
    .registers 6
    .parameter "size"

    .prologue
    .line 691
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[I

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[I

    array-length v3, v3

    if-le p1, v3, :cond_27

    .line 695
    :cond_9
    mul-int/lit8 v3, p1, 0x2

    new-array v2, v3, [I

    .line 696
    .local v2, newlist:[I
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[I

    if-eqz v3, :cond_21

    iget-object v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[I

    array-length v3, v3

    move v1, v3

    .line 697
    .local v1, len:I
    :goto_15
    const/4 v0, 0x0

    .local v0, i:I
    :goto_16
    if-ge v0, v1, :cond_25

    .line 698
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[I

    aget v3, v3, v0

    aput v3, v2, v0

    .line 697
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 696
    .end local v0           #i:I
    .end local v1           #len:I
    :cond_21
    iget v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    move v1, v3

    goto :goto_15

    .line 700
    .restart local v0       #i:I
    .restart local v1       #len:I
    :cond_25
    iput-object v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[I

    .line 704
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #newlist:[I
    :cond_27
    return-void
.end method

.method private getBookmark()J
    .registers 3

    .prologue
    .line 1638
    monitor-enter p0

    .line 1639
    :try_start_1
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_9

    .line 1640
    const-wide/16 v0, 0x0

    monitor-exit p0

    .line 1642
    :goto_8
    return-wide v0

    :cond_9
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    monitor-exit p0

    goto :goto_8

    .line 1643
    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw v0
.end method

.method private gotoIdleState()V
    .registers 6

    .prologue
    .line 1317
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Lcom/android/music/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 1319
    .local v1, nm:Landroid/app/NotificationManager;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1320
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1321
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1322
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v3, 0xea60

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1323
    return-void
.end method

.method private isPodcast()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1629
    monitor-enter p0

    .line 1630
    :try_start_2
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_9

    .line 1631
    monitor-exit p0

    move v0, v2

    .line 1633
    :goto_8
    return v0

    :cond_9
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_19

    const/4 v0, 0x1

    :goto_14
    monitor-exit p0

    goto :goto_8

    .line 1634
    :catchall_16
    move-exception v0

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_2 .. :try_end_18} :catchall_16

    throw v0

    :cond_19
    move v0, v2

    .line 1633
    goto :goto_14
.end method

.method private makeAutoShuffleList()Z
    .registers 13

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1394
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1395
    .local v0, res:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 1397
    .local v6, c:Landroid/database/Cursor;
    :try_start_7
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "is_music=1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1400
    if-eqz v6, :cond_21

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_4f
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_1e} :catch_47

    move-result v1

    if-nez v1, :cond_28

    .line 1413
    :cond_21
    if-eqz v6, :cond_26

    .line 1414
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_26
    move v1, v10

    .line 1417
    :goto_27
    return v1

    .line 1403
    :cond_28
    :try_start_28
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 1404
    .local v8, len:I
    new-array v9, v8, [I

    .line 1405
    .local v9, list:[I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2f
    if-ge v7, v8, :cond_3e

    .line 1406
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 1407
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    aput v1, v9, v7

    .line 1405
    add-int/lit8 v7, v7, 0x1

    goto :goto_2f

    .line 1409
    :cond_3e
    iput-object v9, p0, Lcom/android/music/MediaPlaybackService;->mAutoShuffleList:[I
    :try_end_40
    .catchall {:try_start_28 .. :try_end_40} :catchall_4f
    .catch Ljava/lang/RuntimeException; {:try_start_28 .. :try_end_40} :catch_47

    .line 1413
    if-eqz v6, :cond_45

    .line 1414
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_45
    move v1, v11

    goto :goto_27

    .line 1411
    .end local v7           #i:I
    .end local v8           #len:I
    .end local v9           #list:[I
    :catch_47
    move-exception v1

    .line 1413
    if-eqz v6, :cond_4d

    .line 1414
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4d
    move v1, v10

    .line 1417
    goto :goto_27

    .line 1413
    :catchall_4f
    move-exception v1

    if-eqz v6, :cond_55

    .line 1414
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_55
    throw v1
.end method

.method private notifyChange(Ljava/lang/String;)V
    .registers 5
    .parameter "what"

    .prologue
    .line 673
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 674
    .local v0, i:Landroid/content/Intent;
    const-string v1, "id"

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getAudioId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 675
    const-string v1, "artist"

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 676
    const-string v1, "album"

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 677
    const-string v1, "track"

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 678
    invoke-virtual {p0, v0}, Lcom/android/music/MediaPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 680
    const-string v1, "com.android.music.queuechanged"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 681
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/music/MediaPlaybackService;->saveQueue(Z)V

    .line 687
    :goto_3c
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mAppWidgetProvider:Lcom/android/music/MediaAppWidgetProvider;

    invoke-virtual {v1, p0, p1}, Lcom/android/music/MediaAppWidgetProvider;->notifyChange(Lcom/android/music/MediaPlaybackService;Ljava/lang/String;)V

    .line 688
    return-void

    .line 683
    :cond_42
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/music/MediaPlaybackService;->saveQueue(Z)V

    goto :goto_3c
.end method

.method private openCurrent()V
    .registers 11

    .prologue
    .line 867
    monitor-enter p0

    .line 868
    :try_start_1
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_d

    .line 869
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 870
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 872
    :cond_d
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    if-nez v0, :cond_13

    .line 873
    monitor-exit p0

    .line 905
    :goto_12
    return-void

    .line 875
    :cond_13
    const/4 v9, 0x0

    .line 876
    .local v9, retCode:Z
    :cond_14
    :goto_14
    const/4 v0, 0x1

    if-eq v9, v0, :cond_87

    .line 878
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->stop(Z)V

    .line 879
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[I

    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 880
    .local v8, id:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mCursorCols:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 883
    const/4 v9, 0x1

    .line 884
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_14

    .line 885
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 886
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/music/MediaPlaybackService;->open(Ljava/lang/String;Z)Z

    move-result v9

    .line 887
    if-eqz v9, :cond_14

    .line 890
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->isPodcast()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 891
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->getBookmark()J

    move-result-wide v6

    .line 894
    .local v6, bookmark:J
    const-wide/16 v0, 0x1388

    sub-long v0, v6, v0

    invoke-virtual {p0, v0, v1}, Lcom/android/music/MediaPlaybackService;->seek(J)J

    goto :goto_14

    .line 904
    .end local v6           #bookmark:J
    .end local v8           #id:Ljava/lang/String;
    .end local v9           #retCode:Z
    :catchall_84
    move-exception v0

    monitor-exit p0
    :try_end_86
    .catchall {:try_start_1 .. :try_end_86} :catchall_84

    throw v0

    .line 898
    .restart local v9       #retCode:Z
    :cond_87
    :try_start_87
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayClip:Z

    if-eqz v0, :cond_96

    .line 900
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayClip:Z

    .line 901
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->play()V

    .line 902
    const-string v0, "com.android.music.metachanged"

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 904
    :cond_96
    monitor-exit p0
    :try_end_97
    .catchall {:try_start_87 .. :try_end_97} :catchall_84

    goto/16 :goto_12
.end method

.method private reloadQueue()V
    .registers 2

    .prologue
    .line 397
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->reloadQueue(Z)V

    .line 398
    return-void
.end method

.method private reloadQueue(Z)V
    .registers 25
    .parameter "play_afterload"

    .prologue
    .line 401
    const/16 v16, 0x0

    .line 403
    .local v16, q:Ljava/lang/String;
    const/4 v13, 0x0

    .line 404
    .local v13, newstyle:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/MediaPlaybackService;->mCardId:I

    move v11, v0

    .line 405
    .local v11, id:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    move-object v3, v0

    const-string v4, "cardid"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 406
    const/4 v13, 0x1

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    move-object v3, v0

    const-string v4, "cardid"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/MediaPlaybackService;->mCardId:I

    move v5, v0

    xor-int/lit8 v5, v5, -0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 409
    :cond_28
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/MediaPlaybackService;->mCardId:I

    move v3, v0

    if-ne v11, v3, :cond_3c

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    move-object v3, v0

    const-string v4, "queue"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 414
    :cond_3c
    if-eqz v16, :cond_76

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v17, v3

    .line 415
    .local v17, qlen:I
    :goto_44
    const/4 v3, 0x1

    move/from16 v0, v17

    move v1, v3

    if-le v0, v1, :cond_be

    .line 417
    const/4 v14, 0x0

    .line 418
    .local v14, plen:I
    const/4 v12, 0x0

    .line 419
    .local v12, n:I
    const/16 v21, 0x0

    .line 420
    .local v21, shift:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_4f
    move v0, v10

    move/from16 v1, v17

    if-ge v0, v1, :cond_9e

    .line 421
    move-object/from16 v0, v16

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 422
    .local v9, c:C
    const/16 v3, 0x3b

    if-ne v9, v3, :cond_7a

    .line 423
    add-int/lit8 v3, v14, 0x1

    move-object/from16 v0, p0

    move v1, v3

    invoke-direct {v0, v1}, Lcom/android/music/MediaPlaybackService;->ensurePlayListCapacity(I)V

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/MediaPlaybackService;->mPlayList:[I

    move-object v3, v0

    aput v12, v3, v14

    .line 425
    add-int/lit8 v14, v14, 0x1

    .line 426
    const/4 v12, 0x0

    .line 427
    const/16 v21, 0x0

    .line 420
    :goto_73
    add-int/lit8 v10, v10, 0x1

    goto :goto_4f

    .line 414
    .end local v9           #c:C
    .end local v10           #i:I
    .end local v12           #n:I
    .end local v14           #plen:I
    .end local v17           #qlen:I
    .end local v21           #shift:I
    :cond_76
    const/4 v3, 0x0

    move/from16 v17, v3

    goto :goto_44

    .line 429
    .restart local v9       #c:C
    .restart local v10       #i:I
    .restart local v12       #n:I
    .restart local v14       #plen:I
    .restart local v17       #qlen:I
    .restart local v21       #shift:I
    :cond_7a
    const/16 v3, 0x30

    if-lt v9, v3, :cond_8c

    const/16 v3, 0x39

    if-gt v9, v3, :cond_8c

    .line 430
    const/16 v3, 0x30

    sub-int v3, v9, v3

    shl-int v3, v3, v21

    add-int/2addr v12, v3

    .line 438
    :goto_89
    add-int/lit8 v21, v21, 0x4

    goto :goto_73

    .line 431
    :cond_8c
    const/16 v3, 0x61

    if-lt v9, v3, :cond_9d

    const/16 v3, 0x66

    if-gt v9, v3, :cond_9d

    .line 432
    add-int/lit8 v3, v9, 0xa

    const/16 v4, 0x61

    sub-int/2addr v3, v4

    shl-int v3, v3, v21

    add-int/2addr v12, v3

    goto :goto_89

    .line 435
    :cond_9d
    const/4 v14, 0x0

    .line 441
    .end local v9           #c:C
    :cond_9e
    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    move-object v3, v0

    const-string v4, "curpos"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v15

    .line 444
    .local v15, pos:I
    if-ltz v15, :cond_b8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    move v3, v0

    if-lt v15, v3, :cond_bf

    .line 446
    :cond_b8
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    .line 514
    .end local v10           #i:I
    .end local v12           #n:I
    .end local v14           #plen:I
    .end local v15           #pos:I
    .end local v21           #shift:I
    :cond_be
    :goto_be
    return-void

    .line 449
    .restart local v10       #i:I
    .restart local v12       #n:I
    .restart local v14       #plen:I
    .restart local v15       #pos:I
    .restart local v21       #shift:I
    :cond_bf
    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    .line 456
    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v6, "_id"

    aput-object v6, v5, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/MediaPlaybackService;->mPlayList:[I

    move-object v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    move v7, v0

    aget v6, v6, v7

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v8}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 459
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_fd

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_132

    .line 461
    :cond_fd
    const-wide/16 v3, 0xbb8

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 462
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/MediaPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/MediaPlaybackService;->mCursorCols:[Ljava/lang/String;

    move-object v5, v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/MediaPlaybackService;->mPlayList:[I

    move-object v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    move v8, v0

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 466
    :cond_132
    if-eqz v9, :cond_137

    .line 467
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 470
    :cond_137
    if-eqz p1, :cond_be

    .line 484
    const/16 v3, 0x14

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/MediaPlaybackService;->mOpenFailedCounter:I

    .line 485
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/music/MediaPlaybackService;->mQuietMode:Z

    .line 486
    invoke-direct/range {p0 .. p0}, Lcom/android/music/MediaPlaybackService;->openCurrent()V

    .line 487
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/music/MediaPlaybackService;->mQuietMode:Z

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_162

    .line 490
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    goto/16 :goto_be

    .line 494
    :cond_162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    move-object v3, v0

    const-string v4, "seekpos"

    const-wide/16 v5, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v19

    .line 495
    .local v19, seekpos:J
    const-wide/16 v3, 0x0

    cmp-long v3, v19, v3

    if-ltz v3, :cond_1d5

    invoke-virtual/range {p0 .. p0}, Lcom/android/music/MediaPlaybackService;->duration()J

    move-result-wide v3

    cmp-long v3, v19, v3

    if-gez v3, :cond_1d5

    move-wide/from16 v3, v19

    :goto_17f
    move-object/from16 v0, p0

    move-wide v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/music/MediaPlaybackService;->seek(J)J

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    move-object v3, v0

    const-string v4, "repeatmode"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v18

    .line 498
    .local v18, repmode:I
    const/4 v3, 0x2

    move/from16 v0, v18

    move v1, v3

    if-eq v0, v1, :cond_19f

    const/4 v3, 0x1

    move/from16 v0, v18

    move v1, v3

    if-eq v0, v1, :cond_19f

    .line 499
    const/16 v18, 0x0

    .line 501
    :cond_19f
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/MediaPlaybackService;->mRepeatMode:I

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    move-object v3, v0

    const-string v4, "shufflemode"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v22

    .line 504
    .local v22, shufmode:I
    const/4 v3, 0x2

    move/from16 v0, v22

    move v1, v3

    if-eq v0, v1, :cond_1bf

    const/4 v3, 0x1

    move/from16 v0, v22

    move v1, v3

    if-eq v0, v1, :cond_1bf

    .line 505
    const/16 v22, 0x0

    .line 507
    :cond_1bf
    const/4 v3, 0x2

    move/from16 v0, v22

    move v1, v3

    if-ne v0, v1, :cond_1cd

    .line 508
    invoke-direct/range {p0 .. p0}, Lcom/android/music/MediaPlaybackService;->makeAutoShuffleList()Z

    move-result v3

    if-nez v3, :cond_1cd

    .line 509
    const/16 v22, 0x0

    .line 512
    :cond_1cd
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    goto/16 :goto_be

    .line 495
    .end local v18           #repmode:I
    .end local v22           #shufmode:I
    :cond_1d5
    const-wide/16 v3, 0x0

    goto :goto_17f
.end method

.method private removeTracksInternal(II)I
    .registers 11
    .parameter "first"
    .parameter "last"

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 1437
    monitor-enter p0

    .line 1438
    if-ge p2, p1, :cond_7

    :try_start_5
    monitor-exit p0

    .line 1471
    :goto_6
    return v4

    .line 1439
    :cond_7
    if-gez p1, :cond_a

    const/4 p1, 0x0

    .line 1440
    :cond_a
    iget v4, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    if-lt p2, v4, :cond_12

    iget v4, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    sub-int p2, v4, v6

    .line 1442
    :cond_12
    const/4 v0, 0x0

    .line 1443
    .local v0, gotonext:Z
    iget v4, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    if-gt p1, v4, :cond_36

    iget v4, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    if-gt v4, p2, :cond_36

    .line 1444
    iput p1, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    .line 1445
    const/4 v0, 0x1

    .line 1449
    :cond_1e
    :goto_1e
    iget v4, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    sub-int/2addr v4, p2

    sub-int v2, v4, v6

    .line 1450
    .local v2, num:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_24
    if-ge v1, v2, :cond_47

    .line 1451
    iget-object v4, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[I

    add-int v5, p1, v1

    iget-object v6, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[I

    add-int/lit8 v7, p2, 0x1

    add-int/2addr v7, v1

    aget v6, v6, v7

    aput v6, v4, v5

    .line 1450
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 1446
    .end local v1           #i:I
    .end local v2           #num:I
    :cond_36
    iget v4, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    if-le v4, p2, :cond_1e

    .line 1447
    iget v4, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    sub-int v5, p2, p1

    add-int/lit8 v5, v5, 0x1

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    goto :goto_1e

    .line 1472
    .end local v0           #gotonext:Z
    :catchall_44
    move-exception v4

    monitor-exit p0
    :try_end_46
    .catchall {:try_start_5 .. :try_end_46} :catchall_44

    throw v4

    .line 1453
    .restart local v0       #gotonext:Z
    .restart local v1       #i:I
    .restart local v2       #num:I
    :cond_47
    :try_start_47
    iget v4, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    sub-int v5, p2, p1

    add-int/lit8 v5, v5, 0x1

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    .line 1455
    if-eqz v0, :cond_5d

    .line 1456
    iget v4, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    if-nez v4, :cond_63

    .line 1457
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/music/MediaPlaybackService;->stop(Z)V

    .line 1458
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    .line 1471
    :cond_5d
    :goto_5d
    sub-int v4, p2, p1

    add-int/lit8 v4, v4, 0x1

    monitor-exit p0

    goto :goto_6

    .line 1460
    :cond_63
    iget v4, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    iget v5, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    if-lt v4, v5, :cond_6c

    .line 1461
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    .line 1463
    :cond_6c
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v3

    .line 1464
    .local v3, wasPlaying:Z
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/music/MediaPlaybackService;->stop(Z)V

    .line 1465
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->openCurrent()V

    .line 1466
    if-eqz v3, :cond_5d

    .line 1467
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->play()V
    :try_end_7c
    .catchall {:try_start_47 .. :try_end_7c} :catchall_44

    goto :goto_5d
.end method

.method private saveBookmarkIfNeeded()V
    .registers 13

    .prologue
    const-wide/16 v10, 0x2710

    .line 1327
    :try_start_2
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->isPodcast()Z

    move-result v8

    if-eqz v8, :cond_28

    .line 1328
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->position()J

    move-result-wide v4

    .line 1329
    .local v4, pos:J
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->getBookmark()J

    move-result-wide v0

    .line 1330
    .local v0, bookmark:J
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->duration()J

    move-result-wide v2

    .line 1331
    .local v2, duration:J
    cmp-long v8, v4, v0

    if-gez v8, :cond_1e

    add-long v8, v4, v10

    cmp-long v8, v8, v0

    if-gtz v8, :cond_28

    :cond_1e
    cmp-long v8, v4, v0

    if-lez v8, :cond_29

    sub-long v8, v4, v10

    cmp-long v8, v8, v0

    if-gez v8, :cond_29

    .line 1351
    .end local v0           #bookmark:J
    .end local v2           #duration:J
    .end local v4           #pos:J
    :cond_28
    :goto_28
    return-void

    .line 1337
    .restart local v0       #bookmark:J
    .restart local v2       #duration:J
    .restart local v4       #pos:J
    :cond_29
    const-wide/16 v8, 0x3a98

    cmp-long v8, v4, v8

    if-ltz v8, :cond_35

    add-long v8, v4, v10

    cmp-long v8, v8, v2

    if-lez v8, :cond_37

    .line 1339
    :cond_35
    const-wide/16 v4, 0x0

    .line 1343
    :cond_37
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1344
    .local v7, values:Landroid/content/ContentValues;
    const-string v8, "bookmark"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1345
    sget-object v8, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v9, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 1347
    .local v6, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v6, v7, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_5b} :catch_5c

    goto :goto_28

    .line 1349
    .end local v0           #bookmark:J
    .end local v2           #duration:J
    .end local v4           #pos:J
    .end local v6           #uri:Landroid/net/Uri;
    .end local v7           #values:Landroid/content/ContentValues;
    :catch_5c
    move-exception v8

    goto :goto_28
.end method

.method private saveQueue(Z)V
    .registers 11
    .parameter "full"

    .prologue
    .line 353
    iget-boolean v6, p0, Lcom/android/music/MediaPlaybackService;->mOneShot:Z

    if-eqz v6, :cond_5

    .line 394
    :goto_4
    return-void

    .line 356
    :cond_5
    iget-object v6, p0, Lcom/android/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 358
    .local v1, ed:Landroid/content/SharedPreferences$Editor;
    if-eqz p1, :cond_49

    .line 359
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 367
    .local v5, q:Ljava/lang/StringBuilder;
    iget v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    .line 368
    .local v3, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_15
    if-ge v2, v3, :cond_39

    .line 369
    iget-object v6, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[I

    aget v4, v6, v2

    .line 370
    .local v4, n:I
    if-nez v4, :cond_25

    .line 371
    const-string v6, "0;"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    :goto_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 373
    :cond_25
    :goto_25
    if-eqz v4, :cond_33

    .line 374
    and-int/lit8 v0, v4, 0xf

    .line 375
    .local v0, digit:I
    shr-int/lit8 v4, v4, 0x4

    .line 376
    iget-object v6, p0, Lcom/android/music/MediaPlaybackService;->hexdigits:[C

    aget-char v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_25

    .line 378
    .end local v0           #digit:I
    :cond_33
    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_22

    .line 382
    .end local v4           #n:I
    :cond_39
    const-string v6, "queue"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 383
    const-string v6, "cardid"

    iget v7, p0, Lcom/android/music/MediaPlaybackService;->mCardId:I

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 385
    .end local v2           #i:I
    .end local v3           #len:I
    .end local v5           #q:Ljava/lang/StringBuilder;
    :cond_49
    const-string v6, "curpos"

    iget v7, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 386
    iget-object v6, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v6}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v6

    if-eqz v6, :cond_63

    .line 387
    const-string v6, "seekpos"

    iget-object v7, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v7}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->position()J

    move-result-wide v7

    invoke-interface {v1, v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 389
    :cond_63
    const-string v6, "repeatmode"

    iget v7, p0, Lcom/android/music/MediaPlaybackService;->mRepeatMode:I

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 390
    const-string v6, "shufflemode"

    iget v7, p0, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 391
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_4
.end method

.method private startAndFadeIn()V
    .registers 5

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 188
    return-void
.end method

.method private stop(Z)V
    .registers 5
    .parameter "remove_status_icon"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1078
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1079
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->stop()V

    .line 1081
    :cond_f
    iput-object v2, p0, Lcom/android/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    .line 1082
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1c

    .line 1083
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1084
    iput-object v2, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 1086
    :cond_1c
    if-eqz p1, :cond_21

    .line 1087
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->gotoIdleState()V

    .line 1089
    :cond_21
    invoke-virtual {p0, v1}, Lcom/android/music/MediaPlaybackService;->setForeground(Z)V

    .line 1090
    if-eqz p1, :cond_28

    .line 1091
    iput-boolean v1, p0, Lcom/android/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    .line 1093
    :cond_28
    return-void
.end method


# virtual methods
.method public closeExternalStorageFiles(Ljava/lang/String;)V
    .registers 3
    .parameter "storagePath"

    .prologue
    .line 611
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->stop(Z)V

    .line 612
    const-string v0, "com.android.music.queuechanged"

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 613
    const-string v0, "com.android.music.metachanged"

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 614
    return-void
.end method

.method public duration()J
    .registers 3

    .prologue
    .line 1651
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1652
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->duration()J

    move-result-wide v0

    .line 1654
    :goto_e
    return-wide v0

    :cond_f
    const-wide/16 v0, -0x1

    goto :goto_e
.end method

.method public enqueue([II)V
    .registers 5
    .parameter "list"
    .parameter "action"

    .prologue
    const-string v0, "com.android.music.queuechanged"

    const-string v0, "com.android.music.metachanged"

    .line 741
    monitor-enter p0

    .line 742
    const/4 v0, 0x2

    if-ne p2, v0, :cond_30

    :try_start_8
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    if-ge v0, v1, :cond_30

    .line 743
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/music/MediaPlaybackService;->addToPlayList([II)V

    .line 744
    const-string v0, "com.android.music.queuechanged"

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 757
    :cond_1c
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    if-gez v0, :cond_2e

    .line 758
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    .line 759
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->openCurrent()V

    .line 760
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->play()V

    .line 761
    const-string v0, "com.android.music.metachanged"

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 763
    :cond_2e
    monitor-exit p0

    .line 764
    :goto_2f
    return-void

    .line 747
    :cond_30
    const v0, 0x7fffffff

    invoke-direct {p0, p1, v0}, Lcom/android/music/MediaPlaybackService;->addToPlayList([II)V

    .line 748
    const-string v0, "com.android.music.queuechanged"

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 749
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1c

    .line 750
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    array-length v1, p1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    .line 751
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->openCurrent()V

    .line 752
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->play()V

    .line 753
    const-string v0, "com.android.music.metachanged"

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 754
    monitor-exit p0

    goto :goto_2f

    .line 763
    :catchall_51
    move-exception v0

    monitor-exit p0
    :try_end_53
    .catchall {:try_start_8 .. :try_end_53} :catchall_51

    throw v0
.end method

.method public getAlbumId()I
    .registers 4

    .prologue
    .line 1611
    monitor-enter p0

    .line 1612
    :try_start_1
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_8

    .line 1613
    const/4 v0, -0x1

    monitor-exit p0

    .line 1615
    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v2, "album_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    monitor-exit p0

    goto :goto_7

    .line 1616
    :catchall_18
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public getAlbumName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1602
    monitor-enter p0

    .line 1603
    :try_start_1
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_8

    .line 1604
    const/4 v0, 0x0

    monitor-exit p0

    .line 1606
    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v2, "album"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    goto :goto_7

    .line 1607
    :catchall_18
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public getArtistId()I
    .registers 4

    .prologue
    .line 1593
    monitor-enter p0

    .line 1594
    :try_start_1
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_8

    .line 1595
    const/4 v0, -0x1

    monitor-exit p0

    .line 1597
    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v2, "artist_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    monitor-exit p0

    goto :goto_7

    .line 1598
    :catchall_18
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public getArtistName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1584
    monitor-enter p0

    .line 1585
    :try_start_1
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_8

    .line 1586
    const/4 v0, 0x0

    monitor-exit p0

    .line 1588
    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v2, "artist"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    goto :goto_7

    .line 1589
    :catchall_18
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public getAudioId()I
    .registers 3

    .prologue
    .line 1551
    monitor-enter p0

    .line 1552
    :try_start_1
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    if-ltz v0, :cond_19

    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackService;->mServiceInUse:Z

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1553
    :cond_11
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[I

    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    aget v0, v0, v1

    monitor-exit p0

    .line 1556
    :goto_18
    return v0

    .line 1555
    :cond_19
    monitor-exit p0

    .line 1556
    const/4 v0, -0x1

    goto :goto_18

    .line 1555
    :catchall_1c
    move-exception v0

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public getMediaMountedCount()I
    .registers 2

    .prologue
    .line 1535
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mMediaMountedCount:I

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1543
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    return-object v0
.end method

.method public getQueue()[I
    .registers 5

    .prologue
    .line 856
    monitor-enter p0

    .line 857
    :try_start_1
    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    .line 858
    .local v1, len:I
    new-array v2, v1, [I

    .line 859
    .local v2, list:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    if-ge v0, v1, :cond_11

    .line 860
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[I

    aget v3, v3, v0

    aput v3, v2, v0

    .line 859
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 862
    :cond_11
    monitor-exit p0

    return-object v2

    .line 863
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #list:[I
    :catchall_13
    move-exception v3

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw v3
.end method

.method public getQueuePosition()I
    .registers 2

    .prologue
    .line 1564
    monitor-enter p0

    .line 1565
    :try_start_1
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    monitor-exit p0

    return v0

    .line 1566
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public getRepeatMode()I
    .registers 2

    .prologue
    .line 1531
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mRepeatMode:I

    return v0
.end method

.method public getShuffleMode()I
    .registers 2

    .prologue
    .line 1521
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    return v0
.end method

.method public getTrackName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1620
    monitor-enter p0

    .line 1621
    :try_start_1
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_8

    .line 1622
    const/4 v0, 0x0

    monitor-exit p0

    .line 1624
    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v2, "title"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    goto :goto_7

    .line 1625
    :catchall_18
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public isPlaying()Z
    .registers 2

    .prologue
    .line 1125
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1126
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->isPlaying()Z

    move-result v0

    .line 1128
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public moveQueueItem(II)V
    .registers 9
    .parameter "index1"
    .parameter "index2"

    .prologue
    const/4 v5, 0x1

    .line 817
    monitor-enter p0

    .line 818
    :try_start_2
    iget v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    if-lt p1, v2, :cond_a

    .line 819
    iget v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    sub-int p1, v2, v5

    .line 821
    :cond_a
    iget v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    if-lt p2, v2, :cond_12

    .line 822
    iget v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    sub-int p2, v2, v5

    .line 824
    :cond_12
    if-ge p1, p2, :cond_4a

    .line 825
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[I

    aget v1, v2, p1

    .line 826
    .local v1, tmp:I
    move v0, p1

    .local v0, i:I
    :goto_19
    if-ge v0, p2, :cond_28

    .line 827
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[I

    iget-object v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    aput v3, v2, v0

    .line 826
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 829
    :cond_28
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[I

    aput v1, v2, p2

    .line 830
    iget v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    if-ne v2, p1, :cond_39

    .line 831
    iput p2, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    .line 847
    .end local v0           #i:I
    .end local v1           #tmp:I
    :cond_32
    :goto_32
    const-string v2, "com.android.music.queuechanged"

    invoke-direct {p0, v2}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 848
    monitor-exit p0

    .line 849
    return-void

    .line 832
    .restart local v0       #i:I
    .restart local v1       #tmp:I
    :cond_39
    iget v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    if-lt v2, p1, :cond_32

    iget v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    if-gt v2, p2, :cond_32

    .line 833
    iget v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    sub-int/2addr v2, v5

    iput v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    goto :goto_32

    .line 848
    .end local v0           #i:I
    .end local v1           #tmp:I
    :catchall_47
    move-exception v2

    monitor-exit p0
    :try_end_49
    .catchall {:try_start_2 .. :try_end_49} :catchall_47

    throw v2

    .line 835
    :cond_4a
    if-ge p2, p1, :cond_32

    .line 836
    :try_start_4c
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[I

    aget v1, v2, p1

    .line 837
    .restart local v1       #tmp:I
    move v0, p1

    .restart local v0       #i:I
    :goto_51
    if-le v0, p2, :cond_60

    .line 838
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[I

    iget-object v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[I

    sub-int v4, v0, v5

    aget v3, v3, v4

    aput v3, v2, v0

    .line 837
    add-int/lit8 v0, v0, -0x1

    goto :goto_51

    .line 840
    :cond_60
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[I

    aput v1, v2, p2

    .line 841
    iget v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    if-ne v2, p1, :cond_6b

    .line 842
    iput p2, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    goto :goto_32

    .line 843
    :cond_6b
    iget v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    if-lt v2, p2, :cond_32

    iget v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    if-gt v2, p1, :cond_32

    .line 844
    iget v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I
    :try_end_79
    .catchall {:try_start_4c .. :try_end_79} :catchall_47

    goto :goto_32
.end method

.method public next(Z)V
    .registers 14
    .parameter "force"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 1190
    monitor-enter p0

    .line 1191
    :try_start_3
    iget-boolean v8, p0, Lcom/android/music/MediaPlaybackService;->mOneShot:Z

    if-eqz v8, :cond_11

    .line 1193
    const-wide/16 v8, 0x0

    invoke-virtual {p0, v8, v9}, Lcom/android/music/MediaPlaybackService;->seek(J)J

    .line 1194
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->play()V

    .line 1195
    monitor-exit p0

    .line 1314
    :goto_10
    return-void

    .line 1198
    :cond_11
    iget v8, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    if-gtz v8, :cond_1a

    .line 1199
    monitor-exit p0

    goto :goto_10

    .line 1313
    :catchall_17
    move-exception v8

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v8

    .line 1204
    :cond_1a
    :try_start_1a
    iget v8, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    if-ltz v8, :cond_29

    .line 1205
    iget-object v8, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    iget v9, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1207
    :cond_29
    iget-object v8, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    const/16 v9, 0xa

    if-le v8, v9, :cond_39

    .line 1208
    iget-object v8, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/Vector;->removeElementAt(I)V

    .line 1211
    :cond_39
    iget v8, p0, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    if-ne v8, v10, :cond_dc

    .line 1215
    iget v4, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    .line 1216
    .local v4, numTracks:I
    new-array v7, v4, [I

    .line 1217
    .local v7, tracks:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_42
    if-ge v1, v4, :cond_49

    .line 1218
    aput v1, v7, v1

    .line 1217
    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    .line 1221
    :cond_49
    iget-object v8, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v3

    .line 1222
    .local v3, numHistory:I
    move v5, v4

    .line 1223
    .local v5, numUnplayed:I
    const/4 v1, 0x0

    :goto_51
    if-ge v1, v3, :cond_6d

    .line 1224
    iget-object v8, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v8, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1225
    .local v2, idx:I
    if-ge v2, v4, :cond_6a

    aget v8, v7, v2

    if-ltz v8, :cond_6a

    .line 1226
    add-int/lit8 v5, v5, -0x1

    .line 1227
    const/4 v8, -0x1

    aput v8, v7, v2

    .line 1223
    :cond_6a
    add-int/lit8 v1, v1, 0x1

    goto :goto_51

    .line 1234
    .end local v2           #idx:I
    :cond_6d
    if-gtz v5, :cond_ac

    .line 1236
    iget v8, p0, Lcom/android/music/MediaPlaybackService;->mRepeatMode:I

    if-eq v8, v11, :cond_75

    if-eqz p1, :cond_99

    .line 1238
    :cond_75
    move v5, v4

    .line 1245
    if-gtz v5, :cond_91

    .line 1246
    const-string v8, "@@@@ Service"

    const-string v9, "Songs Play list is empty so going to the idle State"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    iget-object v8, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v8}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v8

    if-eqz v8, :cond_8c

    .line 1248
    iget-object v8, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v8}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->stop()V

    .line 1250
    :cond_8c
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->gotoIdleState()V

    .line 1251
    monitor-exit p0

    goto :goto_10

    .line 1253
    :cond_91
    const/4 v1, 0x0

    :goto_92
    if-ge v1, v4, :cond_ac

    .line 1254
    aput v1, v7, v1

    .line 1253
    add-int/lit8 v1, v1, 0x1

    goto :goto_92

    .line 1258
    :cond_99
    iget-object v8, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v8}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v8

    if-eqz v8, :cond_a6

    .line 1259
    iget-object v8, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v8}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->stop()V

    .line 1261
    :cond_a6
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->gotoIdleState()V

    .line 1262
    monitor-exit p0

    goto/16 :goto_10

    .line 1265
    :cond_ac
    iget-object v8, p0, Lcom/android/music/MediaPlaybackService;->mRand:Lcom/android/music/MediaPlaybackService$Shuffler;

    invoke-virtual {v8, v5}, Lcom/android/music/MediaPlaybackService$Shuffler;->nextInt(I)I

    move-result v6

    .line 1266
    .local v6, skip:I
    const/4 v0, -0x1

    .line 1268
    .local v0, cnt:I
    :cond_b3
    add-int/lit8 v0, v0, 0x1

    aget v8, v7, v0

    if-ltz v8, :cond_b3

    .line 1270
    add-int/lit8 v6, v6, -0x1

    .line 1271
    if-gez v6, :cond_b3

    .line 1275
    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    .line 1304
    .end local v0           #cnt:I
    .end local v1           #i:I
    .end local v3           #numHistory:I
    .end local v4           #numTracks:I
    .end local v5           #numUnplayed:I
    .end local v6           #skip:I
    .end local v7           #tracks:[I
    :cond_bf
    :goto_bf
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->saveBookmarkIfNeeded()V

    .line 1305
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/android/music/MediaPlaybackService;->stop(Z)V

    .line 1306
    iget-boolean v8, p0, Lcom/android/music/MediaPlaybackService;->mSkipPlay:Z

    if-nez v8, :cond_d5

    .line 1308
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->openCurrent()V

    .line 1309
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->play()V

    .line 1310
    const-string v8, "com.android.music.metachanged"

    invoke-direct {p0, v8}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1312
    :cond_d5
    iget-boolean v8, p0, Lcom/android/music/MediaPlaybackService;->mSkipPlay:Z

    iput-boolean v8, p0, Lcom/android/music/MediaPlaybackService;->mPlayClip:Z

    .line 1313
    monitor-exit p0

    goto/16 :goto_10

    .line 1276
    :cond_dc
    iget v8, p0, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    if-ne v8, v11, :cond_ea

    .line 1277
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->doAutoShuffleUpdate()V

    .line 1278
    iget v8, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    goto :goto_bf

    .line 1280
    :cond_ea
    iget v8, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    iget v9, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    sub-int/2addr v9, v10

    if-lt v8, v9, :cond_128

    .line 1282
    iget v8, p0, Lcom/android/music/MediaPlaybackService;->mRepeatMode:I

    if-nez v8, :cond_112

    if-nez p1, :cond_112

    .line 1284
    iget-object v8, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v8}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v8

    if-eqz v8, :cond_104

    .line 1285
    iget-object v8, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v8}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->stop()V

    .line 1287
    :cond_104
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->gotoIdleState()V

    .line 1288
    const-string v8, "com.android.music.playbackcomplete"

    invoke-direct {p0, v8}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1289
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    .line 1290
    monitor-exit p0

    goto/16 :goto_10

    .line 1291
    :cond_112
    iget v8, p0, Lcom/android/music/MediaPlaybackService;->mRepeatMode:I

    if-eq v8, v11, :cond_118

    if-eqz p1, :cond_11c

    .line 1292
    :cond_118
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    goto :goto_bf

    .line 1293
    :cond_11c
    iget v8, p0, Lcom/android/music/MediaPlaybackService;->mRepeatMode:I

    if-ne v8, v10, :cond_bf

    iget v8, p0, Lcom/android/music/MediaPlaybackService;->mOpenFailedCounter:I

    if-lez v8, :cond_bf

    .line 1298
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    goto :goto_bf

    .line 1301
    :cond_128
    iget v8, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I
    :try_end_12e
    .catchall {:try_start_1a .. :try_end_12e} :catchall_17

    goto :goto_bf
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .parameter "intent"

    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 519
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/MediaPlaybackService;->mServiceInUse:Z

    .line 520
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 277
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 279
    const-string v5, "Music"

    const/4 v6, 0x3

    invoke-virtual {p0, v5, v6}, Lcom/android/music/MediaPlaybackService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/android/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    .line 280
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/os/FileUtils;->getFatVolumeId(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/music/MediaPlaybackService;->mCardId:I

    .line 282
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->registerExternalStorageListener()V

    .line 285
    new-instance v5, Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-direct {v5, p0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;-><init>(Lcom/android/music/MediaPlaybackService;)V

    iput-object v5, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    .line 286
    iget-object v5, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v6, p0, Lcom/android/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->setHandler(Landroid/os/Handler;)V

    .line 289
    const-string v5, "notification"

    invoke-virtual {p0, v5}, Lcom/android/music/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 290
    .local v2, nm:Landroid/app/NotificationManager;
    invoke-virtual {v2, v7}, Landroid/app/NotificationManager;->cancel(I)V

    .line 292
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->reloadQueue()V

    .line 294
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 295
    .local v0, commandFilter:Landroid/content/IntentFilter;
    const-string v5, "com.android.music.musicservicecommand"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 296
    const-string v5, "com.android.music.musicservicecommand.togglepause"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 297
    const-string v5, "com.android.music.musicservicecommand.pause"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 298
    const-string v5, "com.android.music.musicservicecommand.next"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 299
    const-string v5, "com.android.music.musicservicecommand.previous"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 300
    iget-object v5, p0, Lcom/android/music/MediaPlaybackService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v0}, Lcom/android/music/MediaPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 302
    const-string v5, "phone"

    invoke-virtual {p0, v5}, Lcom/android/music/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 303
    .local v4, tmgr:Landroid/telephony/TelephonyManager;
    iget-object v5, p0, Lcom/android/music/MediaPlaybackService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v6, 0x20

    invoke-virtual {v4, v5, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 304
    const-string v5, "power"

    invoke-virtual {p0, v5}, Lcom/android/music/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 305
    .local v3, pm:Landroid/os/PowerManager;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v7, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcom/android/music/MediaPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 306
    iget-object v5, p0, Lcom/android/music/MediaPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 310
    iget-object v5, p0, Lcom/android/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v5}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 311
    .local v1, msg:Landroid/os/Message;
    iget-object v5, p0, Lcom/android/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v6, 0xea60

    invoke-virtual {v5, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 312
    return-void
.end method

.method public onDestroy()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 317
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 318
    const-string v1, "MediaPlaybackService"

    const-string v2, "Service being destroyed while still playing."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_e
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v1}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->release()V

    .line 322
    iput-object v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    .line 325
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 326
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 328
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_2a

    .line 329
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 330
    iput-object v3, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 333
    :cond_2a
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/music/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 334
    .local v0, tmgr:Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 336
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/music/MediaPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 337
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_48

    .line 338
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/music/MediaPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 339
    iput-object v3, p0, Lcom/android/music/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 341
    :cond_48
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 342
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 343
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .registers 4
    .parameter "intent"

    .prologue
    .line 525
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 526
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/MediaPlaybackService;->mServiceInUse:Z

    .line 527
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 9
    .parameter "intent"
    .parameter "startId"

    .prologue
    const/4 v5, 0x0

    .line 531
    iput p2, p0, Lcom/android/music/MediaPlaybackService;->mServiceStartId:I

    .line 532
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 534
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 535
    .local v0, action:Ljava/lang/String;
    const-string v3, "command"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 537
    .local v1, cmd:Ljava/lang/String;
    const-string v3, "next"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    const-string v3, "com.android.music.musicservicecommand.next"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 538
    :cond_22
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/music/MediaPlaybackService;->next(Z)V

    .line 556
    :cond_26
    :goto_26
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 557
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 558
    .local v2, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v4, 0xea60

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 559
    return-void

    .line 539
    .end local v2           #msg:Landroid/os/Message;
    :cond_3a
    const-string v3, "previous"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4a

    const-string v3, "com.android.music.musicservicecommand.previous"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 540
    :cond_4a
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->prev()V

    goto :goto_26

    .line 541
    :cond_4e
    const-string v3, "togglepause"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5e

    const-string v3, "com.android.music.musicservicecommand.togglepause"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 542
    :cond_5e
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_68

    .line 543
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->pause()V

    goto :goto_26

    .line 545
    :cond_68
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->play()V

    goto :goto_26

    .line 547
    :cond_6c
    const-string v3, "pause"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7c

    const-string v3, "com.android.music.musicservicecommand.pause"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_80

    .line 548
    :cond_7c
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->pause()V

    goto :goto_26

    .line 549
    :cond_80
    const-string v3, "stop"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 550
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->pause()V

    .line 551
    const-wide/16 v3, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/music/MediaPlaybackService;->seek(J)J

    goto :goto_26
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 7
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    .line 563
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/music/MediaPlaybackService;->mServiceInUse:Z

    .line 566
    invoke-direct {p0, v4}, Lcom/android/music/MediaPlaybackService;->saveQueue(Z)V

    .line 568
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_11

    iget-boolean v1, p0, Lcom/android/music/MediaPlaybackService;->mResumeAfterCall:Z

    if-eqz v1, :cond_13

    :cond_11
    move v1, v4

    .line 585
    :goto_12
    return v1

    .line 577
    :cond_13
    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    if-gtz v1, :cond_1f

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 578
    :cond_1f
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 579
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move v1, v4

    .line 580
    goto :goto_12

    .line 584
    .end local v0           #msg:Landroid/os/Message;
    :cond_2f
    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mServiceStartId:I

    invoke-virtual {p0, v1}, Lcom/android/music/MediaPlaybackService;->stopSelf(I)V

    move v1, v4

    .line 585
    goto :goto_12
.end method

.method public open([II)V
    .registers 10
    .parameter "list"
    .parameter "position"

    .prologue
    .line 774
    monitor-enter p0

    .line 775
    :try_start_1
    iget v5, p0, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_9

    .line 776
    const/4 v5, 0x1

    iput v5, p0, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    .line 778
    :cond_9
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getAudioId()I

    move-result v3

    .line 779
    .local v3, oldId:I
    array-length v1, p1

    .line 780
    .local v1, listlength:I
    const/4 v2, 0x1

    .line 781
    .local v2, newlist:Z
    iget v5, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    if-ne v5, v1, :cond_20

    .line 783
    const/4 v2, 0x0

    .line 784
    const/4 v0, 0x0

    .local v0, i:I
    :goto_15
    if-ge v0, v1, :cond_20

    .line 785
    aget v5, p1, v0

    iget-object v6, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[I

    aget v6, v6, v0

    if-eq v5, v6, :cond_49

    .line 786
    const/4 v2, 0x1

    .line 791
    .end local v0           #i:I
    :cond_20
    if-eqz v2, :cond_2b

    .line 792
    const/4 v5, -0x1

    invoke-direct {p0, p1, v5}, Lcom/android/music/MediaPlaybackService;->addToPlayList([II)V

    .line 793
    const-string v5, "com.android.music.queuechanged"

    invoke-direct {p0, v5}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 795
    :cond_2b
    iget v4, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    .line 796
    .local v4, oldpos:I
    if-ltz p2, :cond_4c

    .line 797
    iput p2, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    .line 801
    :goto_31
    iget-object v5, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->clear()V

    .line 803
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->saveBookmarkIfNeeded()V

    .line 804
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->openCurrent()V

    .line 805
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getAudioId()I

    move-result v5

    if-eq v3, v5, :cond_47

    .line 806
    const-string v5, "com.android.music.metachanged"

    invoke-direct {p0, v5}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 808
    :cond_47
    monitor-exit p0

    .line 809
    return-void

    .line 784
    .end local v4           #oldpos:I
    .restart local v0       #i:I
    :cond_49
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 799
    .end local v0           #i:I
    .restart local v4       #oldpos:I
    :cond_4c
    iget-object v5, p0, Lcom/android/music/MediaPlaybackService;->mRand:Lcom/android/music/MediaPlaybackService$Shuffler;

    iget v6, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    invoke-virtual {v5, v6}, Lcom/android/music/MediaPlaybackService$Shuffler;->nextInt(I)I

    move-result v5

    iput v5, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    goto :goto_31

    .line 808
    .end local v1           #listlength:I
    .end local v2           #newlist:Z
    .end local v3           #oldId:I
    .end local v4           #oldpos:I
    :catchall_57
    move-exception v5

    monitor-exit p0
    :try_end_59
    .catchall {:try_start_1 .. :try_end_59} :catchall_57

    throw v5
.end method

.method public open(Ljava/lang/String;Z)Z
    .registers 13
    .parameter "path"
    .parameter "oneshot"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 933
    monitor-enter p0

    .line 934
    if-nez p1, :cond_8

    .line 935
    :try_start_5
    monitor-exit p0

    move v2, v9

    .line 1006
    :goto_7
    return v2

    .line 938
    :cond_8
    if-eqz p2, :cond_17

    .line 939
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/music/MediaPlaybackService;->mRepeatMode:I

    .line 940
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/music/MediaPlaybackService;->ensurePlayListCapacity(I)V

    .line 941
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    .line 942
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    .line 946
    :cond_17
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v2, :cond_4a

    .line 948
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 952
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v2, "content://media/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8c

    .line 953
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_c9

    move-result-object v1

    .line 954
    .local v1, uri:Landroid/net/Uri;
    const/4 v3, 0x0

    .line 955
    .local v3, where:Ljava/lang/String;
    const/4 v4, 0x0

    .line 963
    .local v4, selectionArgs:[Ljava/lang/String;
    :goto_2d
    :try_start_2d
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mCursorCols:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 964
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_4a

    .line 965
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_99

    .line 966
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 967
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;
    :try_end_4a
    .catchall {:try_start_2d .. :try_end_4a} :catchall_c9
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2d .. :try_end_4a} :catch_b5

    .line 979
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v1           #uri:Landroid/net/Uri;
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #selectionArgs:[Ljava/lang/String;
    :cond_4a
    :goto_4a
    :try_start_4a
    iput-object p1, p0, Lcom/android/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    .line 980
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v5, p0, Lcom/android/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->setDataSource(Ljava/lang/String;)V

    .line 981
    iput-boolean p2, p0, Lcom/android/music/MediaPlaybackService;->mOneShot:Z

    .line 982
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/music/MediaPlaybackService;->mSkipPlay:Z

    .line 983
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v2}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_c5

    .line 984
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/music/MediaPlaybackService;->stop(Z)V

    .line 985
    iget v2, p0, Lcom/android/music/MediaPlaybackService;->mOpenFailedCounter:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/music/MediaPlaybackService;->mOpenFailedCounter:I

    .line 989
    iget v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    if-ne v2, v9, :cond_b7

    .line 990
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->gotoIdleState()V

    .line 991
    const-string v2, "com.android.music.playbackcomplete"

    invoke-direct {p0, v2}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 992
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    .line 993
    iget-boolean v2, p0, Lcom/android/music/MediaPlaybackService;->mQuietMode:Z

    if-nez v2, :cond_88

    .line 994
    const v2, 0x7f07004d

    const/4 v5, 0x0

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1005
    :cond_88
    :goto_88
    monitor-exit p0

    move v2, v9

    .line 1006
    goto/16 :goto_7

    .line 957
    .restart local v0       #resolver:Landroid/content/ContentResolver;
    :cond_8c
    invoke-static {p1}, Landroid/provider/MediaStore$Audio$Media;->getContentUriForPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 958
    .restart local v1       #uri:Landroid/net/Uri;
    const-string v3, "_data=?"

    .line 959
    .restart local v3       #where:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v4, v2
    :try_end_98
    .catchall {:try_start_4a .. :try_end_98} :catchall_c9

    .restart local v4       #selectionArgs:[Ljava/lang/String;
    goto :goto_2d

    .line 969
    :cond_99
    :try_start_99
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 970
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/music/MediaPlaybackService;->ensurePlayListCapacity(I)V

    .line 971
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    .line 972
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[I

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    aput v6, v2, v5

    .line 973
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I
    :try_end_b4
    .catchall {:try_start_99 .. :try_end_b4} :catchall_c9
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_99 .. :try_end_b4} :catch_b5

    goto :goto_4a

    .line 976
    :catch_b5
    move-exception v2

    goto :goto_4a

    .line 997
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v1           #uri:Landroid/net/Uri;
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #selectionArgs:[Ljava/lang/String;
    :cond_b7
    const/4 v2, 0x1

    :try_start_b8
    iput-boolean v2, p0, Lcom/android/music/MediaPlaybackService;->mSkipPlay:Z

    .line 998
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/music/MediaPlaybackService;->next(Z)V

    .line 999
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/music/MediaPlaybackService;->mSkipPlay:Z

    .line 1000
    monitor-exit p0

    move v2, v8

    goto/16 :goto_7

    .line 1003
    :cond_c5
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/music/MediaPlaybackService;->mOpenFailedCounter:I

    goto :goto_88

    .line 1005
    :catchall_c9
    move-exception v2

    monitor-exit p0
    :try_end_cb
    .catchall {:try_start_b8 .. :try_end_cb} :catchall_c9

    throw v2
.end method

.method public openAsync(Ljava/lang/String;)V
    .registers 4
    .parameter "path"

    .prologue
    .line 908
    monitor-enter p0

    .line 909
    if-nez p1, :cond_5

    .line 910
    :try_start_3
    monitor-exit p0

    .line 923
    :goto_4
    return-void

    .line 913
    :cond_5
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mRepeatMode:I

    .line 914
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->ensurePlayListCapacity(I)V

    .line 915
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    .line 916
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    .line 918
    iput-object p1, p0, Lcom/android/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    .line 919
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 920
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->setDataSourceAsync(Ljava/lang/String;)V

    .line 921
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/MediaPlaybackService;->mOneShot:Z

    .line 922
    monitor-exit p0

    goto :goto_4

    :catchall_23
    move-exception v0

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v0
.end method

.method public pause()V
    .registers 2

    .prologue
    .line 1106
    monitor-enter p0

    .line 1107
    :try_start_1
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1108
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->pause()V

    .line 1109
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->gotoIdleState()V

    .line 1110
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/music/MediaPlaybackService;->setForeground(Z)V

    .line 1111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    .line 1112
    const-string v0, "com.android.music.playstatechanged"

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1113
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->saveBookmarkIfNeeded()V

    .line 1115
    :cond_1e
    monitor-exit p0

    .line 1116
    return-void

    .line 1115
    :catchall_20
    move-exception v0

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_20

    throw v0
.end method

.method public play()V
    .registers 12

    .prologue
    .line 1015
    iget-object v7, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v7}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v7

    if-nez v7, :cond_b

    .line 1017
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->openCurrent()V

    .line 1020
    :cond_b
    iget-object v7, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v7}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v7

    if-eqz v7, :cond_f0

    .line 1022
    iget-object v7, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v7}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->duration()J

    move-result-wide v2

    .line 1025
    .local v2, duration:J
    iget v7, p0, Lcom/android/music/MediaPlaybackService;->mRepeatMode:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_36

    const-wide/16 v7, 0x1f4

    cmp-long v7, v2, v7

    if-lez v7, :cond_36

    iget-object v7, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v7}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->position()J

    move-result-wide v7

    const-wide/16 v9, 0x1f4

    sub-long v9, v2, v9

    cmp-long v7, v7, v9

    if-ltz v7, :cond_36

    .line 1027
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/android/music/MediaPlaybackService;->next(Z)V

    .line 1030
    :cond_36
    iget-object v7, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v7}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->start()V

    .line 1031
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/android/music/MediaPlaybackService;->setForeground(Z)V

    .line 1033
    const-string v7, "notification"

    invoke-virtual {p0, v7}, Lcom/android/music/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 1036
    .local v4, nm:Landroid/app/NotificationManager;
    new-instance v6, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f03000e

    invoke-direct {v6, v7, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1037
    .local v6, views:Landroid/widget/RemoteViews;
    const v7, 0x7f0a0017

    const v8, 0x7f02003a

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1038
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getAudioId()I

    move-result v7

    if-gez v7, :cond_a5

    .line 1040
    const v7, 0x7f0a000c

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1041
    const v7, 0x7f0a002a

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1058
    :goto_73
    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5}, Landroid/app/Notification;-><init>()V

    .line 1059
    .local v5, status:Landroid/app/Notification;
    iput-object v6, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1060
    iget v7, v5, Landroid/app/Notification;->flags:I

    or-int/lit8 v7, v7, 0x2

    iput v7, v5, Landroid/app/Notification;->flags:I

    .line 1061
    const v7, 0x7f02003a

    iput v7, v5, Landroid/app/Notification;->icon:I

    .line 1062
    const/4 v7, 0x0

    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.android.music.PLAYBACK_VIEWER"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x0

    invoke-static {p0, v7, v8, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    iput-object v7, v5, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1064
    const/4 v7, 0x1

    invoke-virtual {v4, v7, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1065
    iget-boolean v7, p0, Lcom/android/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    if-nez v7, :cond_a1

    .line 1066
    const-string v7, "com.android.music.playstatechanged"

    invoke-direct {p0, v7}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1068
    :cond_a1
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    .line 1075
    .end local v2           #duration:J
    .end local v4           #nm:Landroid/app/NotificationManager;
    .end local v5           #status:Landroid/app/Notification;
    .end local v6           #views:Landroid/widget/RemoteViews;
    :cond_a4
    :goto_a4
    return-void

    .line 1043
    .restart local v2       #duration:J
    .restart local v4       #nm:Landroid/app/NotificationManager;
    .restart local v6       #views:Landroid/widget/RemoteViews;
    :cond_a5
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v1

    .line 1044
    .local v1, artist:Ljava/lang/String;
    const v7, 0x7f0a000c

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1045
    if-eqz v1, :cond_bd

    const-string v7, "<unknown>"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c4

    .line 1046
    :cond_bd
    const v7, 0x7f07002f

    invoke-virtual {p0, v7}, Lcom/android/music/MediaPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1048
    :cond_c4
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    .line 1049
    .local v0, album:Ljava/lang/String;
    if-eqz v0, :cond_d2

    const-string v7, "<unknown>"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d9

    .line 1050
    :cond_d2
    const v7, 0x7f070030

    invoke-virtual {p0, v7}, Lcom/android/music/MediaPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1053
    :cond_d9
    const v7, 0x7f0a002a

    const v8, 0x7f070063

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    const/4 v10, 0x1

    aput-object v0, v9, v10

    invoke-virtual {p0, v8, v9}, Lcom/android/music/MediaPlaybackService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_73

    .line 1069
    .end local v0           #album:Ljava/lang/String;
    .end local v1           #artist:Ljava/lang/String;
    .end local v2           #duration:J
    .end local v4           #nm:Landroid/app/NotificationManager;
    .end local v6           #views:Landroid/widget/RemoteViews;
    :cond_f0
    iget v7, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    if-gtz v7, :cond_a4

    .line 1073
    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/android/music/MediaPlaybackService;->setShuffleMode(I)V

    goto :goto_a4
.end method

.method public position()J
    .registers 3

    .prologue
    .line 1661
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1662
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->position()J

    move-result-wide v0

    .line 1664
    :goto_e
    return-wide v0

    :cond_f
    const-wide/16 v0, -0x1

    goto :goto_e
.end method

.method public prev()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 1158
    monitor-enter p0

    .line 1159
    :try_start_2
    iget-boolean v2, p0, Lcom/android/music/MediaPlaybackService;->mOneShot:Z

    if-eqz v2, :cond_10

    .line 1161
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/music/MediaPlaybackService;->seek(J)J

    .line 1162
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->play()V

    .line 1163
    monitor-exit p0

    .line 1187
    :goto_f
    return-void

    .line 1165
    :cond_10
    iget v2, p0, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    if-ne v2, v3, :cond_45

    .line 1167
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    .line 1168
    .local v0, histsize:I
    if-nez v0, :cond_21

    .line 1170
    monitor-exit p0

    goto :goto_f

    .line 1186
    .end local v0           #histsize:I
    :catchall_1e
    move-exception v2

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_2 .. :try_end_20} :catchall_1e

    throw v2

    .line 1172
    .restart local v0       #histsize:I
    :cond_21
    :try_start_21
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    sub-int v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1173
    .local v1, pos:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    .line 1181
    .end local v0           #histsize:I
    .end local v1           #pos:Ljava/lang/Integer;
    :goto_31
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->saveBookmarkIfNeeded()V

    .line 1182
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/music/MediaPlaybackService;->stop(Z)V

    .line 1183
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->openCurrent()V

    .line 1184
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->play()V

    .line 1185
    const-string v2, "com.android.music.metachanged"

    invoke-direct {p0, v2}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1186
    monitor-exit p0

    goto :goto_f

    .line 1175
    :cond_45
    iget v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    if-lez v2, :cond_4f

    .line 1176
    iget v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    goto :goto_31

    .line 1178
    :cond_4f
    iget v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I
    :try_end_54
    .catchall {:try_start_21 .. :try_end_54} :catchall_1e

    goto :goto_31
.end method

.method public registerExternalStorageListener()V
    .registers 3

    .prologue
    .line 622
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_24

    .line 623
    new-instance v1, Lcom/android/music/MediaPlaybackService$5;

    invoke-direct {v1, p0}, Lcom/android/music/MediaPlaybackService$5;-><init>(Lcom/android/music/MediaPlaybackService;)V

    iput-object v1, p0, Lcom/android/music/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 644
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 645
    .local v0, iFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 646
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 647
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 648
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/music/MediaPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 650
    .end local v0           #iFilter:Landroid/content/IntentFilter;
    :cond_24
    return-void
.end method

.method public removeTrack(I)I
    .registers 5
    .parameter "id"

    .prologue
    .line 1482
    const/4 v1, 0x0

    .line 1483
    .local v1, numremoved:I
    monitor-enter p0

    .line 1484
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    :try_start_3
    iget v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    if-ge v0, v2, :cond_17

    .line 1485
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_14

    .line 1486
    invoke-direct {p0, v0, v0}, Lcom/android/music/MediaPlaybackService;->removeTracksInternal(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 1487
    add-int/lit8 v0, v0, -0x1

    .line 1484
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1490
    :cond_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_20

    .line 1491
    if-lez v1, :cond_1f

    .line 1492
    const-string v2, "com.android.music.queuechanged"

    invoke-direct {p0, v2}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1494
    :cond_1f
    return v1

    .line 1490
    :catchall_20
    move-exception v2

    :try_start_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v2
.end method

.method public removeTracks(II)I
    .registers 5
    .parameter "first"
    .parameter "last"

    .prologue
    .line 1429
    invoke-direct {p0, p1, p2}, Lcom/android/music/MediaPlaybackService;->removeTracksInternal(II)I

    move-result v0

    .line 1430
    .local v0, numremoved:I
    if-lez v0, :cond_b

    .line 1431
    const-string v1, "com.android.music.queuechanged"

    invoke-direct {p0, v1}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1433
    :cond_b
    return v0
.end method

.method public seek(J)J
    .registers 5
    .parameter "pos"

    .prologue
    .line 1673
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1674
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->openCurrent()V

    .line 1676
    :cond_b
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1677
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_1b

    const-wide/16 p1, 0x0

    .line 1678
    :cond_1b
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->duration()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_2b

    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->duration()J

    move-result-wide p1

    .line 1679
    :cond_2b
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->seek(J)J

    move-result-wide v0

    .line 1681
    :goto_31
    return-wide v0

    :cond_32
    const-wide/16 v0, -0x1

    goto :goto_31
.end method

.method public setQueuePosition(I)V
    .registers 3
    .parameter "pos"

    .prologue
    .line 1574
    monitor-enter p0

    .line 1575
    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->stop(Z)V

    .line 1576
    iput p1, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    .line 1577
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->openCurrent()V

    .line 1578
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->play()V

    .line 1579
    const-string v0, "com.android.music.metachanged"

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1580
    monitor-exit p0

    .line 1581
    return-void

    .line 1580
    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_2 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public setRepeatMode(I)V
    .registers 3
    .parameter "repeatmode"

    .prologue
    .line 1525
    monitor-enter p0

    .line 1526
    :try_start_1
    iput p1, p0, Lcom/android/music/MediaPlaybackService;->mRepeatMode:I

    .line 1527
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->saveQueue(Z)V

    .line 1528
    monitor-exit p0

    .line 1529
    return-void

    .line 1528
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public setShuffleMode(I)V
    .registers 4
    .parameter "shufflemode"

    .prologue
    .line 1498
    monitor-enter p0

    .line 1499
    :try_start_1
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    if-ne v0, p1, :cond_b

    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    if-lez v0, :cond_b

    .line 1500
    monitor-exit p0

    .line 1519
    :goto_a
    return-void

    .line 1502
    :cond_b
    iput p1, p0, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    .line 1503
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_34

    .line 1504
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->makeAutoShuffleList()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1505
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    .line 1506
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->doAutoShuffleUpdate()V

    .line 1507
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    .line 1508
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->openCurrent()V

    .line 1509
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->play()V

    .line 1510
    const-string v0, "com.android.music.metachanged"

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1511
    monitor-exit p0

    goto :goto_a

    .line 1518
    :catchall_2e
    move-exception v0

    monitor-exit p0
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_2e

    throw v0

    .line 1514
    :cond_31
    const/4 v0, 0x0

    :try_start_32
    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    .line 1517
    :cond_34
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->saveQueue(Z)V

    .line 1518
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_32 .. :try_end_39} :catchall_2e

    goto :goto_a
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 1099
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->stop(Z)V

    .line 1100
    return-void
.end method
