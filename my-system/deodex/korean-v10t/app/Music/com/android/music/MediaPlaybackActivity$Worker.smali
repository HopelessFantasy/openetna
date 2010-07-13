.class Lcom/android/music/MediaPlaybackActivity$Worker;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/MediaPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Worker"
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private mLooper:Landroid/os/Looper;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 5
    .parameter "name"

    .prologue
    .line 1415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1407
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/music/MediaPlaybackActivity$Worker;->mLock:Ljava/lang/Object;

    .line 1416
    new-instance v0, Ljava/lang/Thread;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1417
    .local v0, t:Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 1418
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1419
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$Worker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1420
    :goto_1a
    :try_start_1a
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity$Worker;->mLooper:Landroid/os/Looper;
    :try_end_1c
    .catchall {:try_start_1a .. :try_end_1c} :catchall_28

    if-nez v2, :cond_26

    .line 1422
    :try_start_1e
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity$Worker;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_28
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_23} :catch_24

    goto :goto_1a

    .line 1423
    :catch_24
    move-exception v2

    goto :goto_1a

    .line 1426
    :cond_26
    :try_start_26
    monitor-exit v1

    .line 1427
    return-void

    .line 1426
    :catchall_28
    move-exception v2

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_26 .. :try_end_2a} :catchall_28

    throw v2
.end method


# virtual methods
.method public getLooper()Landroid/os/Looper;
    .registers 2

    .prologue
    .line 1430
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$Worker;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public quit()V
    .registers 2

    .prologue
    .line 1443
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$Worker;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 1444
    return-void
.end method

.method public run()V
    .registers 3

    .prologue
    .line 1434
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$Worker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1435
    :try_start_3
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1436
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/MediaPlaybackActivity$Worker;->mLooper:Landroid/os/Looper;

    .line 1437
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$Worker;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1438
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_16

    .line 1439
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1440
    return-void

    .line 1438
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v1
.end method
