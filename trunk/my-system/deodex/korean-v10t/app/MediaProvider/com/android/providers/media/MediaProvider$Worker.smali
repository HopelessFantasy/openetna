.class Lcom/android/providers/media/MediaProvider$Worker;
.super Ljava/lang/Object;
.source "MediaProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MediaProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Worker"
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private mLooper:Landroid/os/Looper;

.field final synthetic this$0:Lcom/android/providers/media/MediaProvider;


# direct methods
.method constructor <init>(Lcom/android/providers/media/MediaProvider;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter "name"

    .prologue
    .line 1843
    iput-object p1, p0, Lcom/android/providers/media/MediaProvider$Worker;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1840
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/providers/media/MediaProvider$Worker;->mLock:Ljava/lang/Object;

    .line 1844
    new-instance v0, Ljava/lang/Thread;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1845
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1846
    iget-object v1, p0, Lcom/android/providers/media/MediaProvider$Worker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1847
    :goto_18
    :try_start_18
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider$Worker;->mLooper:Landroid/os/Looper;
    :try_end_1a
    .catchall {:try_start_18 .. :try_end_1a} :catchall_26

    if-nez v2, :cond_24

    .line 1849
    :try_start_1c
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider$Worker;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_21
    .catchall {:try_start_1c .. :try_end_21} :catchall_26
    .catch Ljava/lang/InterruptedException; {:try_start_1c .. :try_end_21} :catch_22

    goto :goto_18

    .line 1850
    :catch_22
    move-exception v2

    goto :goto_18

    .line 1853
    :cond_24
    :try_start_24
    monitor-exit v1

    .line 1854
    return-void

    .line 1853
    :catchall_26
    move-exception v2

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_24 .. :try_end_28} :catchall_26

    throw v2
.end method


# virtual methods
.method public getLooper()Landroid/os/Looper;
    .registers 2

    .prologue
    .line 1857
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider$Worker;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public quit()V
    .registers 2

    .prologue
    .line 1871
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider$Worker;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 1872
    return-void
.end method

.method public run()V
    .registers 3

    .prologue
    .line 1861
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider$Worker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1862
    const/16 v1, 0xa

    :try_start_5
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1863
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1864
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/media/MediaProvider$Worker;->mLooper:Landroid/os/Looper;

    .line 1865
    iget-object v1, p0, Lcom/android/providers/media/MediaProvider$Worker;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1866
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_1b

    .line 1867
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1868
    return-void

    .line 1866
    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v1
.end method
