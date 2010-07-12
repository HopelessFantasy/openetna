.class public Landroid/media/MediaPlayer;
.super Ljava/lang/Object;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaPlayer$OnInfoListener;,
        Landroid/media/MediaPlayer$OnErrorListener;,
        Landroid/media/MediaPlayer$OnVideoSizeChangedListener;,
        Landroid/media/MediaPlayer$OnSeekCompleteListener;,
        Landroid/media/MediaPlayer$OnBufferingUpdateListener;,
        Landroid/media/MediaPlayer$OnCompletionListener;,
        Landroid/media/MediaPlayer$OnPreparedListener;,
        Landroid/media/MediaPlayer$EventHandler;,
        Landroid/media/MediaPlayer$ScheduledJob;
    }
.end annotation


# static fields
.field private static final MEDIA_BUFFERING_UPDATE:I = 0x3

.field private static final MEDIA_ERROR:I = 0x64

.field public static final MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK:I = 0xc8

.field public static final MEDIA_ERROR_SERVER_DIED:I = 0x64

.field public static final MEDIA_ERROR_UNKNOWN:I = 0x1

.field private static final MEDIA_INFO:I = 0xc8

.field public static final MEDIA_INFO_BAD_INTERLEAVING:I = 0x320

.field public static final MEDIA_INFO_NOT_SEEKABLE:I = 0x321

.field public static final MEDIA_INFO_UNKNOWN:I = 0x1

.field public static final MEDIA_INFO_VIDEO_TRACK_LAGGING:I = 0x2bc

.field private static final MEDIA_NOP:I = 0x0

.field private static final MEDIA_PLAYBACK_COMPLETE:I = 0x2

.field private static final MEDIA_PREPARED:I = 0x1

.field private static final MEDIA_SEEK_COMPLETE:I = 0x4

.field private static final MEDIA_SET_VIDEO_SIZE:I = 0x5

.field private static final TAG:Ljava/lang/String; = "MediaPlayer"


# instance fields
.field private mDrmConsumeTime:J

.field private mDrmContentSession:Landroid/lge/lgdrm/DrmContentSession;

.field private mDrmDate:Ljava/util/Date;

.field private mDrmtype:I

.field private mEventHandler:Landroid/media/MediaPlayer$EventHandler;

.field private mListenerContext:I

.field private mNativeContext:I

.field private mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

.field private mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private mScreenOnWhilePlaying:Z

.field private mStayAwake:Z

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private timer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 452
    const-string v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 453
    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 501
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 462
    iput-object v3, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 466
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/MediaPlayer;->mDrmtype:I

    .line 467
    iput-object v3, p0, Landroid/media/MediaPlayer;->mDrmContentSession:Landroid/lge/lgdrm/DrmContentSession;

    .line 468
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, p0, Landroid/media/MediaPlayer;->mDrmDate:Ljava/util/Date;

    .line 469
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/media/MediaPlayer;->mDrmConsumeTime:J

    .line 470
    iput-object v3, p0, Landroid/media/MediaPlayer;->timer:Ljava/util/Timer;

    .line 504
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_2e

    .line 505
    new-instance v1, Landroid/media/MediaPlayer$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Landroid/media/MediaPlayer$EventHandler;-><init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    .line 515
    :goto_25
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Landroid/media/MediaPlayer;->native_setup(Ljava/lang/Object;)V

    .line 516
    return-void

    .line 506
    :cond_2e
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 507
    new-instance v1, Landroid/media/MediaPlayer$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Landroid/media/MediaPlayer$EventHandler;-><init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    goto :goto_25

    .line 509
    :cond_3c
    iput-object v3, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    goto :goto_25
.end method

.method private native _pause()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _release()V
.end method

.method private native _reset()V
.end method

.method private native _setVideoSurface()V
.end method

.method private native _start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _stop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method static synthetic access$000(Landroid/media/MediaPlayer;)Landroid/lge/lgdrm/DrmContentSession;
    .registers 2
    .parameter "x0"

    .prologue
    .line 449
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDrmContentSession:Landroid/lge/lgdrm/DrmContentSession;

    return-object v0
.end method

.method static synthetic access$002(Landroid/media/MediaPlayer;Landroid/lge/lgdrm/DrmContentSession;)Landroid/lge/lgdrm/DrmContentSession;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 449
    iput-object p1, p0, Landroid/media/MediaPlayer;->mDrmContentSession:Landroid/lge/lgdrm/DrmContentSession;

    return-object p1
.end method

.method static synthetic access$100(Landroid/media/MediaPlayer;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 449
    iget-wide v0, p0, Landroid/media/MediaPlayer;->mDrmConsumeTime:J

    return-wide v0
.end method

.method static synthetic access$1000(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 449
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$102(Landroid/media/MediaPlayer;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 449
    iput-wide p1, p0, Landroid/media/MediaPlayer;->mDrmConsumeTime:J

    return-wide p1
.end method

.method static synthetic access$1100(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnInfoListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 449
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    return-object v0
.end method

.method static synthetic access$200(Landroid/media/MediaPlayer;)Ljava/util/Timer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 449
    iget-object v0, p0, Landroid/media/MediaPlayer;->timer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$300(Landroid/media/MediaPlayer;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 449
    iget v0, p0, Landroid/media/MediaPlayer;->mNativeContext:I

    return v0
.end method

.method static synthetic access$400(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnPreparedListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 449
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic access$500(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 449
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$600(Landroid/media/MediaPlayer;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 449
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    return-void
.end method

.method static synthetic access$700(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 449
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    return-object v0
.end method

.method static synthetic access$800(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSeekCompleteListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 449
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    return-object v0
.end method

.method static synthetic access$900(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 449
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    return-object v0
.end method

.method public static create(Landroid/content/Context;I)Landroid/media/MediaPlayer;
    .registers 13
    .parameter "context"
    .parameter "resid"

    .prologue
    const/4 v10, 0x0

    const-string v9, "create failed:"

    const-string v8, "MediaPlayer"

    .line 606
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 607
    .local v6, afd:Landroid/content/res/AssetFileDescriptor;
    if-nez v6, :cond_11

    move-object v1, v10

    .line 624
    .end local v6           #afd:Landroid/content/res/AssetFileDescriptor;
    :goto_10
    return-object v1

    .line 609
    .restart local v6       #afd:Landroid/content/res/AssetFileDescriptor;
    :cond_11
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 610
    .local v0, mp:Landroid/media/MediaPlayer;
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 611
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 612
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_2b} :catch_2d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_2b} :catch_38
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_2b} :catch_42

    move-object v1, v0

    .line 613
    goto :goto_10

    .line 614
    .end local v0           #mp:Landroid/media/MediaPlayer;
    .end local v6           #afd:Landroid/content/res/AssetFileDescriptor;
    :catch_2d
    move-exception v1

    move-object v7, v1

    .line 615
    .local v7, ex:Ljava/io/IOException;
    const-string v1, "MediaPlayer"

    const-string v1, "create failed:"

    invoke-static {v8, v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v7           #ex:Ljava/io/IOException;
    :goto_36
    move-object v1, v10

    .line 624
    goto :goto_10

    .line 617
    :catch_38
    move-exception v1

    move-object v7, v1

    .line 618
    .local v7, ex:Ljava/lang/IllegalArgumentException;
    const-string v1, "MediaPlayer"

    const-string v1, "create failed:"

    invoke-static {v8, v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_36

    .line 620
    .end local v7           #ex:Ljava/lang/IllegalArgumentException;
    :catch_42
    move-exception v1

    move-object v7, v1

    .line 621
    .local v7, ex:Ljava/lang/SecurityException;
    const-string v1, "MediaPlayer"

    const-string v1, "create failed:"

    invoke-static {v8, v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_36
.end method

.method public static create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;
    .registers 3
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 553
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;)Landroid/media/MediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;)Landroid/media/MediaPlayer;
    .registers 8
    .parameter "context"
    .parameter "uri"
    .parameter "holder"

    .prologue
    const-string v4, "create failed:"

    const-string v3, "MediaPlayer"

    .line 571
    :try_start_4
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    .line 572
    .local v1, mp:Landroid/media/MediaPlayer;
    invoke-virtual {v1, p0, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 573
    if-eqz p2, :cond_11

    .line 574
    invoke-virtual {v1, p2}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 576
    :cond_11
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_14} :catch_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_14} :catch_21
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_14} :catch_2b

    move-object v2, v1

    .line 589
    .end local v1           #mp:Landroid/media/MediaPlayer;
    :goto_15
    return-object v2

    .line 578
    :catch_16
    move-exception v2

    move-object v0, v2

    .line 579
    .local v0, ex:Ljava/io/IOException;
    const-string v2, "MediaPlayer"

    const-string v2, "create failed:"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 589
    .end local v0           #ex:Ljava/io/IOException;
    :goto_1f
    const/4 v2, 0x0

    goto :goto_15

    .line 581
    :catch_21
    move-exception v2

    move-object v0, v2

    .line 582
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v2, "MediaPlayer"

    const-string v2, "create failed:"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f

    .line 584
    .end local v0           #ex:Ljava/lang/IllegalArgumentException;
    :catch_2b
    move-exception v2

    move-object v0, v2

    .line 585
    .local v0, ex:Ljava/lang/SecurityException;
    const-string v2, "MediaPlayer"

    const-string v2, "create failed:"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f
.end method

.method private final native native_finalize()V
.end method

.method private final native native_setup(Ljava/lang/Object;)V
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .registers 8
    .parameter "mediaplayer_ref"
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 1459
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaPlayer;

    .line 1460
    .local v1, mp:Landroid/media/MediaPlayer;
    if-nez v1, :cond_b

    .line 1468
    :cond_a
    :goto_a
    return-void

    .line 1464
    :cond_b
    iget-object v2, v1, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    if-eqz v2, :cond_a

    .line 1465
    iget-object v2, v1, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/media/MediaPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1466
    .local v0, m:Landroid/os/Message;
    iget-object v2, v1, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_a
.end method

.method private stayAwake(Z)V
    .registers 3
    .parameter "awake"

    .prologue
    .line 1207
    iget-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_13

    .line 1208
    if-eqz p1, :cond_19

    iget-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_19

    .line 1209
    iget-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1214
    :cond_13
    :goto_13
    iput-boolean p1, p0, Landroid/media/MediaPlayer;->mStayAwake:Z

    .line 1215
    invoke-direct {p0}, Landroid/media/MediaPlayer;->updateSurfaceScreenOn()V

    .line 1216
    return-void

    .line 1210
    :cond_19
    if-nez p1, :cond_13

    iget-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1211
    iget-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_13
.end method

.method private updateSurfaceScreenOn()V
    .registers 3

    .prologue
    .line 1219
    iget-object v0, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_12

    .line 1220
    iget-object v0, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-boolean v1, p0, Landroid/media/MediaPlayer;->mScreenOnWhilePlaying:Z

    if-eqz v1, :cond_13

    iget-boolean v1, p0, Landroid/media/MediaPlayer;->mStayAwake:Z

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    :goto_f
    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    .line 1222
    :cond_12
    return-void

    .line 1220
    :cond_13
    const/4 v1, 0x0

    goto :goto_f
.end method


# virtual methods
.method public native _setDataSource(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public consumeDrmRight()V
    .registers 11

    .prologue
    const/4 v8, 0x0

    const-string v9, "MediaPlayer"

    .line 1066
    iget-object v3, p0, Landroid/media/MediaPlayer;->timer:Ljava/util/Timer;

    if-eqz v3, :cond_4b

    iget-object v3, p0, Landroid/media/MediaPlayer;->mDrmContentSession:Landroid/lge/lgdrm/DrmContentSession;

    if-eqz v3, :cond_4b

    .line 1069
    iget-object v3, p0, Landroid/media/MediaPlayer;->mDrmContentSession:Landroid/lge/lgdrm/DrmContentSession;

    invoke-virtual {v3}, Landroid/lge/lgdrm/DrmContentSession;->getDrmTime()J

    move-result-wide v0

    .line 1070
    .local v0, currentTime:J
    iget-object v3, p0, Landroid/media/MediaPlayer;->mDrmContentSession:Landroid/lge/lgdrm/DrmContentSession;

    const-wide/16 v4, 0x0

    iget-wide v6, p0, Landroid/media/MediaPlayer;->mDrmConsumeTime:J

    sub-long v6, v0, v6

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/lge/lgdrm/DrmContentSession;->consumeRight(JJ)I

    move-result v2

    .line 1072
    .local v2, result:I
    const-string v3, "MediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "consumeDrmRight result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    if-nez v2, :cond_44

    .line 1075
    const-string v3, "MediaPlayer"

    const-string v3, "consumeDrmRight() Consume finished!!"

    invoke-static {v9, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    iput-object v8, p0, Landroid/media/MediaPlayer;->mDrmContentSession:Landroid/lge/lgdrm/DrmContentSession;

    .line 1078
    :cond_44
    iget-object v3, p0, Landroid/media/MediaPlayer;->timer:Ljava/util/Timer;

    invoke-virtual {v3}, Ljava/util/Timer;->cancel()V

    .line 1079
    iput-object v8, p0, Landroid/media/MediaPlayer;->timer:Ljava/util/Timer;

    .line 1081
    .end local v0           #currentTime:J
    .end local v2           #result:I
    :cond_4b
    return-void
.end method

.method protected finalize()V
    .registers 1

    .prologue
    .line 1359
    invoke-direct {p0}, Landroid/media/MediaPlayer;->native_finalize()V

    return-void
.end method

.method public native getCurrentPosition()I
.end method

.method public native getDuration()I
.end method

.method public getFilepathFromContentUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 14
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 637
    const/4 v8, 0x0

    .line 638
    .local v8, filepath:Ljava/lang/String;
    const/4 v6, 0x0

    .line 639
    .local v6, c:Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 642
    .local v0, testProvider:Landroid/content/IContentProvider;
    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 643
    .local v10, resolver:Landroid/content/ContentResolver;
    invoke-virtual {v10, p2}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v0

    .line 644
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_1a} :catch_65

    move-result-object v6

    .line 649
    .end local v10           #resolver:Landroid/content/ContentResolver;
    :goto_1b
    if-eqz v6, :cond_2e

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    move v7, v1

    .line 650
    .local v7, count:I
    :goto_22
    const/4 v1, 0x1

    if-eq v7, v1, :cond_31

    .line 654
    if-eqz v6, :cond_2a

    .line 656
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 659
    :cond_2a
    if-nez v7, :cond_31

    .line 661
    const/4 v1, 0x0

    .line 674
    :goto_2d
    return-object v1

    .line 649
    .end local v7           #count:I
    :cond_2e
    const/4 v1, 0x0

    move v7, v1

    goto :goto_22

    .line 664
    .restart local v7       #count:I
    :cond_31
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 665
    const-string v1, "_data"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 666
    .local v9, i:I
    if-ltz v9, :cond_48

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v8, v1

    .line 667
    :goto_41
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 668
    if-nez v8, :cond_4b

    .line 670
    const/4 v1, 0x0

    goto :goto_2d

    .line 666
    :cond_48
    const/4 v1, 0x0

    move-object v8, v1

    goto :goto_41

    .line 673
    :cond_4b
    const-string v1, "MediaPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFilepathFromContentUri Media _data result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v8

    .line 674
    goto :goto_2d

    .line 646
    .end local v7           #count:I
    .end local v9           #i:I
    :catch_65
    move-exception v1

    goto :goto_1b
.end method

.method public getFilepathFromSettingsUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 15
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 685
    const/4 v9, 0x0

    .line 686
    .local v9, filepath:Ljava/lang/String;
    const/4 v6, 0x0

    .line 687
    .local v6, c:Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 688
    .local v0, testProvider:Landroid/content/IContentProvider;
    const/4 v7, 0x0

    .line 691
    .local v7, content_uri:Landroid/net/Uri;
    :try_start_4
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 692
    .local v11, resolver:Landroid/content/ContentResolver;
    invoke-virtual {v11, p2}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v0

    .line 693
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "value"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1b} :catch_7b

    move-result-object v6

    .line 698
    .end local v11           #resolver:Landroid/content/ContentResolver;
    :goto_1c
    if-eqz v6, :cond_2f

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    move v8, v1

    .line 699
    .local v8, count:I
    :goto_23
    const/4 v1, 0x1

    if-eq v8, v1, :cond_32

    .line 703
    if-eqz v6, :cond_2b

    .line 705
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 708
    :cond_2b
    if-nez v8, :cond_32

    .line 710
    const/4 v1, 0x0

    .line 734
    :goto_2e
    return-object v1

    .line 698
    .end local v8           #count:I
    :cond_2f
    const/4 v1, 0x0

    move v8, v1

    goto :goto_23

    .line 713
    .restart local v8       #count:I
    :cond_32
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 714
    const-string v1, "value"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 715
    .local v10, i:I
    if-ltz v10, :cond_49

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v9, v1

    .line 716
    :goto_42
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 717
    if-nez v9, :cond_4c

    .line 719
    const/4 v1, 0x0

    goto :goto_2e

    .line 715
    :cond_49
    const/4 v1, 0x0

    move-object v9, v1

    goto :goto_42

    .line 722
    :cond_4c
    const-string v1, "MediaPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFilepathFromContentUri Settings value result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    const-string v1, "content://media"

    invoke-virtual {v9, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6e

    .line 725
    const/4 v1, 0x0

    goto :goto_2e

    .line 728
    :cond_6e
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 729
    if-nez v7, :cond_76

    .line 731
    const/4 v1, 0x0

    goto :goto_2e

    .line 734
    :cond_76
    invoke-virtual {p0, p1, v7}, Landroid/media/MediaPlayer;->getFilepathFromContentUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2e

    .line 695
    .end local v8           #count:I
    .end local v10           #i:I
    :catch_7b
    move-exception v1

    goto :goto_1c
.end method

.method public native getFrameAt(I)Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native getVideoHeight()I
.end method

.method public native getVideoWidth()I
.end method

.method public native isLooping()Z
.end method

.method public native isPlaying()Z
.end method

.method public pause()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1145
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    .line 1147
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->consumeDrmRight()V

    .line 1149
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_pause()V

    .line 1150
    return-void
.end method

.method public native prepare()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native prepareAsync()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public release()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1278
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    .line 1279
    invoke-direct {p0}, Landroid/media/MediaPlayer;->updateSurfaceScreenOn()V

    .line 1280
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 1281
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 1282
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 1283
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 1284
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 1285
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 1286
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 1288
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->consumeDrmRight()V

    .line 1290
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_release()V

    .line 1291
    return-void
.end method

.method public reset()V
    .registers 3

    .prologue
    .line 1301
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    .line 1303
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->consumeDrmRight()V

    .line 1305
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_reset()V

    .line 1307
    iget-object v0, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1308
    return-void
.end method

.method public native seekTo(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native setAudioStreamType(I)V
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 16
    .parameter "context"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const-string v12, "MediaPlayer"

    .line 846
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    .line 847
    .local v10, scheme:Ljava/lang/String;
    if-eqz v10, :cond_10

    const-string v0, "file"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 848
    :cond_10
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 931
    :cond_17
    :goto_17
    return-void

    .line 853
    :cond_18
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    .line 854
    .local v11, uripath:Ljava/lang/String;
    const/4 v7, 0x0

    .line 856
    .local v7, filepath:Ljava/lang/String;
    const-string v0, "content://media"

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "content://mms"

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 858
    :cond_2d
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaPlayer;->getFilepathFromContentUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    .line 865
    :cond_31
    :goto_31
    if-eqz v7, :cond_8a

    .line 867
    invoke-static {v7}, Landroid/lge/lgdrm/DrmManager;->isDRM(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/media/MediaPlayer;->mDrmtype:I

    .line 868
    const-string v0, "MediaPlayer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDataSource!! path = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " DRM_TYPE = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/MediaPlayer;->mDrmtype:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    iget v0, p0, Landroid/media/MediaPlayer;->mDrmtype:I

    const/16 v1, 0x51

    if-lt v0, v1, :cond_df

    iget v0, p0, Landroid/media/MediaPlayer;->mDrmtype:I

    const/16 v1, 0x5000

    if-gt v0, v1, :cond_df

    .line 872
    const-string v0, "MediaPlayer"

    const-string v0, "setDataSource!! Need to consume"

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    :try_start_74
    invoke-static {v7, p1}, Landroid/lge/lgdrm/DrmManager;->createContentSession(Ljava/lang/String;Landroid/content/Context;)Landroid/lge/lgdrm/DrmContentSession;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaPlayer;->mDrmContentSession:Landroid/lge/lgdrm/DrmContentSession;

    .line 877
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDrmContentSession:Landroid/lge/lgdrm/DrmContentSession;

    if-nez v0, :cond_ae

    .line 879
    const-string v0, "MediaPlayer"

    const-string v1, "setDataSource!! Creating DrmContentSession is not successful!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    invoke-virtual {p0, v7}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_88} :catch_89

    goto :goto_17

    .line 893
    :catch_89
    move-exception v0

    .line 904
    :cond_8a
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaPlayer;->mDrmContentSession:Landroid/lge/lgdrm/DrmContentSession;

    .line 906
    const/4 v6, 0x0

    .line 908
    .local v6, fd:Landroid/content/res/AssetFileDescriptor;
    :try_start_8e
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 909
    .local v8, resolver:Landroid/content/ContentResolver;
    const-string v0, "r"

    invoke-virtual {v8, p2, v0}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_97
    .catchall {:try_start_8e .. :try_end_97} :catchall_126
    .catch Ljava/lang/SecurityException; {:try_start_8e .. :try_end_97} :catch_110
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_97} :catch_12d

    move-result-object v6

    .line 910
    if-nez v6, :cond_eb

    .line 925
    if-eqz v6, :cond_17

    .line 926
    :goto_9c
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto/16 :goto_17

    .line 860
    .end local v6           #fd:Landroid/content/res/AssetFileDescriptor;
    .end local v8           #resolver:Landroid/content/ContentResolver;
    :cond_a1
    const-string v0, "content://settings"

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 862
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaPlayer;->getFilepathFromSettingsUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    goto :goto_31

    .line 885
    :cond_ae
    const/4 v9, 0x0

    .line 886
    .local v9, result:I
    :try_start_af
    const-string v0, "MediaPlayer"

    const-string v1, "setDataSource!! Creating DrmContentSession is successful!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDrmContentSession:Landroid/lge/lgdrm/DrmContentSession;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/lge/lgdrm/DrmContentSession;->judgeRight(IZ)I

    move-result v9

    .line 888
    const-string v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    invoke-virtual {p0, v7}, Landroid/media/MediaPlayer;->_setDataSource(Ljava/lang/String;)V
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_dd} :catch_89

    goto/16 :goto_17

    .line 898
    .end local v9           #result:I
    :cond_df
    const-string v0, "MediaPlayer"

    const-string v0, "setDataSource!! normal!! or FL"

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    invoke-virtual {p0, v7}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto/16 :goto_17

    .line 916
    .restart local v6       #fd:Landroid/content/res/AssetFileDescriptor;
    .restart local v8       #resolver:Landroid/content/ContentResolver;
    :cond_eb
    :try_start_eb
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_ff

    .line 917
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 925
    :goto_fc
    if-eqz v6, :cond_17

    goto :goto_9c

    .line 919
    :cond_ff
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_10f
    .catchall {:try_start_eb .. :try_end_10f} :catchall_126
    .catch Ljava/lang/SecurityException; {:try_start_eb .. :try_end_10f} :catch_110
    .catch Ljava/io/IOException; {:try_start_eb .. :try_end_10f} :catch_12d

    goto :goto_fc

    .line 922
    .end local v8           #resolver:Landroid/content/ContentResolver;
    :catch_110
    move-exception v0

    .line 925
    if-eqz v6, :cond_116

    .line 926
    :goto_113
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 929
    :cond_116
    const-string v0, "MediaPlayer"

    const-string v0, "Couldn\'t open file on client side, trying server side"

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto/16 :goto_17

    .line 925
    :catchall_126
    move-exception v0

    if-eqz v6, :cond_12c

    .line 926
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 925
    :cond_12c
    throw v0

    .line 923
    :catch_12d
    move-exception v0

    .line 925
    if-eqz v6, :cond_116

    goto :goto_113
.end method

.method public setDataSource(Ljava/io/FileDescriptor;)V
    .registers 8
    .parameter "fd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1022
    const-wide/16 v2, 0x0

    const-wide v4, 0x7ffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 1023
    return-void
.end method

.method public native setDataSource(Ljava/io/FileDescriptor;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public setDataSource(Ljava/lang/String;)V
    .registers 5
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 999
    const-string v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetDataSource!! (NOT DRM) path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaPlayer;->mDrmContentSession:Landroid/lge/lgdrm/DrmContentSession;

    .line 1001
    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->_setDataSource(Ljava/lang/String;)V

    .line 1002
    return-void
.end method

.method public setDataSourceDrm(Landroid/content/Context;Landroid/lge/lgdrm/DrmContentSession;Landroid/net/Uri;)I
    .registers 16
    .parameter "context"
    .parameter "drmsession"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 749
    invoke-virtual {p3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    .line 750
    .local v9, scheme:Ljava/lang/String;
    if-eqz v9, :cond_f

    const-string v0, "file"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 751
    :cond_f
    invoke-virtual {p3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/media/MediaPlayer;->setDataSourceDrm(Landroid/content/Context;Landroid/lge/lgdrm/DrmContentSession;Ljava/lang/String;)I

    move-result v0

    .line 798
    :goto_17
    return v0

    .line 755
    :cond_18
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    .line 756
    .local v10, uripath:Ljava/lang/String;
    const/4 v7, 0x0

    .line 758
    .local v7, filepath:Ljava/lang/String;
    const-string v0, "content://media"

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "content://mms"

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 760
    :cond_2d
    invoke-virtual {p0, p1, p3}, Landroid/media/MediaPlayer;->getFilepathFromContentUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    .line 767
    :cond_31
    :goto_31
    if-eqz v7, :cond_45

    .line 769
    invoke-virtual {p0, p1, p2, v7}, Landroid/media/MediaPlayer;->setDataSourceDrm(Landroid/content/Context;Landroid/lge/lgdrm/DrmContentSession;Ljava/lang/String;)I

    move-result v0

    goto :goto_17

    .line 762
    :cond_38
    const-string v0, "content://settings"

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 764
    invoke-virtual {p0, p1, p3}, Landroid/media/MediaPlayer;->getFilepathFromSettingsUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    goto :goto_31

    .line 772
    :cond_45
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaPlayer;->mDrmContentSession:Landroid/lge/lgdrm/DrmContentSession;

    .line 774
    const/4 v6, 0x0

    .line 776
    .local v6, fd:Landroid/content/res/AssetFileDescriptor;
    :try_start_49
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 777
    .local v8, resolver:Landroid/content/ContentResolver;
    const-string v0, "r"

    invoke-virtual {v8, p3, v0}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_52
    .catchall {:try_start_49 .. :try_end_52} :catchall_94
    .catch Ljava/lang/SecurityException; {:try_start_49 .. :try_end_52} :catch_85
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_52} :catch_9b

    move-result-object v6

    .line 778
    if-nez v6, :cond_5c

    .line 793
    if-eqz v6, :cond_5a

    .line 794
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    :cond_5a
    move v0, v11

    .line 779
    goto :goto_17

    .line 784
    :cond_5c
    :try_start_5c
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_74

    .line 785
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_6d
    .catchall {:try_start_5c .. :try_end_6d} :catchall_94
    .catch Ljava/lang/SecurityException; {:try_start_5c .. :try_end_6d} :catch_85
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_6d} :catch_9b

    .line 793
    :goto_6d
    if-eqz v6, :cond_72

    .line 794
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    :cond_72
    move v0, v11

    .line 789
    goto :goto_17

    .line 787
    :cond_74
    :try_start_74
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_84
    .catchall {:try_start_74 .. :try_end_84} :catchall_94
    .catch Ljava/lang/SecurityException; {:try_start_74 .. :try_end_84} :catch_85
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_84} :catch_9b

    goto :goto_6d

    .line 790
    .end local v8           #resolver:Landroid/content/ContentResolver;
    :catch_85
    move-exception v0

    .line 793
    if-eqz v6, :cond_8b

    .line 794
    :goto_88
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 797
    :cond_8b
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->_setDataSource(Ljava/lang/String;)V

    move v0, v11

    .line 798
    goto :goto_17

    .line 793
    :catchall_94
    move-exception v0

    if-eqz v6, :cond_9a

    .line 794
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 793
    :cond_9a
    throw v0

    .line 791
    :catch_9b
    move-exception v0

    .line 793
    if-eqz v6, :cond_8b

    goto :goto_88
.end method

.method public setDataSourceDrm(Landroid/content/Context;Landroid/lge/lgdrm/DrmContentSession;Ljava/lang/String;)I
    .registers 10
    .parameter "context"
    .parameter "drmsession"
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const-string v3, "MediaPlayer"

    .line 945
    invoke-static {p3}, Landroid/lge/lgdrm/DrmManager;->isDRM(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/media/MediaPlayer;->mDrmtype:I

    .line 946
    const-string v1, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetDataSourceDrm!! (DRM) path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " DRM_TYPE = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/MediaPlayer;->mDrmtype:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    iget v1, p0, Landroid/media/MediaPlayer;->mDrmtype:I

    const/16 v2, 0x51

    if-lt v1, v2, :cond_92

    iget v1, p0, Landroid/media/MediaPlayer;->mDrmtype:I

    const/16 v2, 0x5000

    if-gt v1, v2, :cond_92

    if-eqz p2, :cond_92

    .line 951
    :try_start_40
    const-string v1, "MediaPlayer"

    const-string v2, "Need to consume!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    if-eqz p1, :cond_89

    .line 955
    iput-object p2, p0, Landroid/media/MediaPlayer;->mDrmContentSession:Landroid/lge/lgdrm/DrmContentSession;

    .line 956
    iget-object v1, p0, Landroid/media/MediaPlayer;->mDrmContentSession:Landroid/lge/lgdrm/DrmContentSession;

    if-nez v1, :cond_58

    .line 958
    const-string v1, "MediaPlayer"

    const-string v2, "Creating DrmContentSession is not successful!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 986
    :goto_57
    return v1

    .line 963
    :cond_58
    const/4 v0, 0x0

    .line 964
    .local v0, result:I
    const-string v1, "MediaPlayer"

    const-string v2, "Creating DrmContentSession is successful!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    iget-object v1, p0, Landroid/media/MediaPlayer;->mDrmContentSession:Landroid/lge/lgdrm/DrmContentSession;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/lge/lgdrm/DrmContentSession;->judgeRight(IZ)I

    move-result v0

    .line 966
    const-string v1, "MediaPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_84} :catch_96

    .line 985
    .end local v0           #result:I
    :goto_84
    invoke-virtual {p0, p3}, Landroid/media/MediaPlayer;->_setDataSource(Ljava/lang/String;)V

    move v1, v5

    .line 986
    goto :goto_57

    .line 972
    :cond_89
    :try_start_89
    const-string v1, "MediaPlayer"

    const-string v2, "context is null!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_90} :catch_96

    move v1, v4

    .line 973
    goto :goto_57

    .line 983
    :cond_92
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/MediaPlayer;->mDrmContentSession:Landroid/lge/lgdrm/DrmContentSession;

    goto :goto_84

    .line 978
    :catch_96
    move-exception v1

    goto :goto_84
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .registers 3
    .parameter "sh"

    .prologue
    .line 531
    iput-object p1, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 532
    if-eqz p1, :cond_11

    .line 533
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaPlayer;->mSurface:Landroid/view/Surface;

    .line 537
    :goto_a
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_setVideoSurface()V

    .line 538
    invoke-direct {p0}, Landroid/media/MediaPlayer;->updateSurfaceScreenOn()V

    .line 539
    return-void

    .line 535
    :cond_11
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaPlayer;->mSurface:Landroid/view/Surface;

    goto :goto_a
.end method

.method public native setLooping(Z)V
.end method

.method public setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 1548
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 1549
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 1519
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 1520
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 1663
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 1664
    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 1728
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 1729
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 1492
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 1493
    return-void
.end method

.method public setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 1575
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 1576
    return-void
.end method

.method public setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 1604
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 1605
    return-void
.end method

.method public setRingtoneSource(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 8
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 810
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 811
    .local v2, uripath:Ljava/lang/String;
    const/4 v0, 0x0

    .line 813
    .local v0, filepath:Ljava/lang/String;
    const-string v3, "content://media"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 815
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaPlayer;->getFilepathFromContentUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 822
    :cond_11
    :goto_11
    if-nez v0, :cond_42

    .line 823
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v1

    .line 825
    .local v1, mOpCode:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3f

    const-string v3, "BYT"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 826
    const-string v0, "/system/media/audio/ringtones/BouyguesIndian.mp3"

    .line 830
    :goto_27
    const-string v3, "MediaPlayer"

    const-string v4, "checkDataSource!! abnormal!!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    :try_start_2e
    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_48

    .line 841
    .end local v1           #mOpCode:Ljava/lang/String;
    :goto_31
    return-void

    .line 817
    :cond_32
    const-string v3, "content://settings"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 819
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaPlayer;->getFilepathFromSettingsUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    .line 828
    .restart local v1       #mOpCode:Ljava/lang/String;
    :cond_3f
    const-string v0, "/system/media/audio/ringtones/CallingTrip.mp3"

    goto :goto_27

    .line 837
    .end local v1           #mOpCode:Ljava/lang/String;
    :cond_42
    :try_start_42
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_46

    goto :goto_31

    .line 838
    :catch_46
    move-exception v3

    goto :goto_31

    .line 833
    .restart local v1       #mOpCode:Ljava/lang/String;
    :catch_48
    move-exception v3

    goto :goto_31
.end method

.method public setScreenOnWhilePlaying(Z)V
    .registers 3
    .parameter "screenOn"

    .prologue
    .line 1200
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mScreenOnWhilePlaying:Z

    if-eq v0, p1, :cond_9

    .line 1201
    iput-boolean p1, p0, Landroid/media/MediaPlayer;->mScreenOnWhilePlaying:Z

    .line 1202
    invoke-direct {p0}, Landroid/media/MediaPlayer;->updateSurfaceScreenOn()V

    .line 1204
    :cond_9
    return-void
.end method

.method public native setVolume(FF)V
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .registers 7
    .parameter "context"
    .parameter "mode"

    .prologue
    .line 1172
    const/4 v1, 0x0

    .line 1173
    .local v1, washeld:Z
    iget-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_16

    .line 1174
    iget-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1175
    const/4 v1, 0x1

    .line 1176
    iget-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1178
    :cond_13
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1181
    :cond_16
    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1182
    .local v0, pm:Landroid/os/PowerManager;
    const/high16 v2, 0x2000

    or-int/2addr v2, p2

    const-class v3, Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1183
    iget-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1184
    if-eqz v1, :cond_3a

    .line 1185
    iget-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1187
    :cond_3a
    return-void
.end method

.method public start()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const-string v6, "MediaPlayer"

    .line 1093
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    .line 1095
    iget-object v3, p0, Landroid/media/MediaPlayer;->mDrmContentSession:Landroid/lge/lgdrm/DrmContentSession;

    if-eqz v3, :cond_4d

    .line 1098
    iget-object v3, p0, Landroid/media/MediaPlayer;->mDrmContentSession:Landroid/lge/lgdrm/DrmContentSession;

    invoke-virtual {v3}, Landroid/lge/lgdrm/DrmContentSession;->getDrmTime()J

    move-result-wide v0

    .line 1099
    .local v0, currentTime:J
    const/4 v2, 0x0

    .line 1100
    .local v2, result:I
    iget-object v3, p0, Landroid/media/MediaPlayer;->mDrmContentSession:Landroid/lge/lgdrm/DrmContentSession;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v0, v1, v4, v5}, Landroid/lge/lgdrm/DrmContentSession;->consumeRight(JJ)I

    move-result v2

    .line 1101
    const-string v3, "MediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Consume result!! result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    if-lez v2, :cond_51

    .line 1105
    iput-wide v0, p0, Landroid/media/MediaPlayer;->mDrmConsumeTime:J

    .line 1106
    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    iput-object v3, p0, Landroid/media/MediaPlayer;->timer:Ljava/util/Timer;

    .line 1107
    iget-object v3, p0, Landroid/media/MediaPlayer;->timer:Ljava/util/Timer;

    new-instance v4, Landroid/media/MediaPlayer$ScheduledJob;

    invoke-direct {v4, p0}, Landroid/media/MediaPlayer$ScheduledJob;-><init>(Landroid/media/MediaPlayer;)V

    mul-int/lit16 v5, v2, 0x3e8

    int-to-long v5, v5

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1117
    .end local v0           #currentTime:J
    .end local v2           #result:I
    :cond_4d
    :goto_4d
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_start()V

    .line 1118
    return-void

    .line 1112
    .restart local v0       #currentTime:J
    .restart local v2       #result:I
    :cond_51
    const-string v3, "MediaPlayer"

    const-string v3, "start() Consume finished!!"

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaPlayer;->mDrmContentSession:Landroid/lge/lgdrm/DrmContentSession;

    goto :goto_4d
.end method

.method public stop()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1129
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    .line 1131
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->consumeDrmRight()V

    .line 1133
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_stop()V

    .line 1134
    return-void
.end method
