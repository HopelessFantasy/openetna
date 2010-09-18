.class public Lcom/android/camera/CameraThread;
.super Ljava/lang/Object;
.source "CameraThread.java"


# instance fields
.field private mFinished:Z

.field private mThread:Ljava/lang/Thread;

.field private mTid:I

.field private mTidSet:Z


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .registers 4
    .parameter "r"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/android/camera/CameraThread$1;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/CameraThread$1;-><init>(Lcom/android/camera/CameraThread;Ljava/lang/Runnable;)V

    .line 49
    .local v0, wrapper:Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/camera/CameraThread;->mThread:Ljava/lang/Thread;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/CameraThread;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread;->setTid(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/CameraThread;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->setFinished()V

    return-void
.end method

.method private declared-synchronized setFinished()V
    .registers 2

    .prologue
    .line 34
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/camera/CameraThread;->mFinished:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 35
    monitor-exit p0

    return-void

    .line 34
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setTid(I)V
    .registers 3
    .parameter "tid"

    .prologue
    .line 28
    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/android/camera/CameraThread;->mTid:I

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CameraThread;->mTidSet:Z

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 31
    monitor-exit p0

    return-void

    .line 28
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getId()J
    .registers 3

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public join()V
    .registers 2

    .prologue
    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_6

    .line 66
    :goto_5
    return-void

    .line 63
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public realThread()Ljava/lang/Thread;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mThread:Ljava/lang/Thread;

    return-object v0
.end method

.method public declared-synchronized setName(Ljava/lang/String;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 57
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 58
    monitor-exit p0

    return-void

    .line 57
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPriority(I)V
    .registers 3
    .parameter "androidOsPriority"

    .prologue
    .line 77
    monitor-enter p0

    :goto_1
    :try_start_1
    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mTidSet:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_16

    if-nez v0, :cond_b

    .line 79
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_16
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9

    goto :goto_1

    .line 80
    :catch_9
    move-exception v0

    goto :goto_1

    .line 84
    :cond_b
    :try_start_b
    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mFinished:Z

    if-nez v0, :cond_14

    .line 85
    iget v0, p0, Lcom/android/camera/CameraThread;->mTid:I

    invoke-static {v0, p1}, Landroid/os/Process;->setThreadPriority(II)V
    :try_end_14
    .catchall {:try_start_b .. :try_end_14} :catchall_16

    .line 86
    :cond_14
    monitor-exit p0

    return-void

    .line 77
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start()V
    .registers 2

    .prologue
    .line 53
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 54
    monitor-exit p0

    return-void

    .line 53
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toBackground()V
    .registers 2

    .prologue
    .line 89
    monitor-enter p0

    const/16 v0, 0xa

    :try_start_3
    invoke-virtual {p0, v0}, Lcom/android/camera/CameraThread;->setPriority(I)V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    .line 90
    monitor-exit p0

    return-void

    .line 89
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toForeground()V
    .registers 2

    .prologue
    .line 93
    monitor-enter p0

    const/4 v0, -0x2

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/android/camera/CameraThread;->setPriority(I)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 94
    monitor-exit p0

    return-void

    .line 93
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method
