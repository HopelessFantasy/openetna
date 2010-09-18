.class Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread$Worker;
.super Ljava/lang/Object;
.source "ManualMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Worker"
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private mLooper:Landroid/os/Looper;

.field final synthetic this$1:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter "name"

    .prologue
    .line 434
    iput-object p1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread$Worker;->this$1:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 431
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread$Worker;->mLock:Ljava/lang/Object;

    .line 435
    new-instance v0, Ljava/lang/Thread;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 436
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 437
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread$Worker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 438
    :goto_18
    :try_start_18
    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread$Worker;->mLooper:Landroid/os/Looper;
    :try_end_1a
    .catchall {:try_start_18 .. :try_end_1a} :catchall_26

    if-nez v2, :cond_24

    .line 440
    :try_start_1c
    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread$Worker;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_21
    .catchall {:try_start_1c .. :try_end_21} :catchall_26
    .catch Ljava/lang/InterruptedException; {:try_start_1c .. :try_end_21} :catch_22

    goto :goto_18

    .line 441
    :catch_22
    move-exception v2

    goto :goto_18

    .line 444
    :cond_24
    :try_start_24
    monitor-exit v1

    .line 445
    return-void

    .line 444
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
    .line 448
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread$Worker;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public quit()V
    .registers 2

    .prologue
    .line 461
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread$Worker;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 462
    return-void
.end method

.method public run()V
    .registers 3

    .prologue
    .line 452
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread$Worker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 453
    :try_start_3
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 454
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread$Worker;->mLooper:Landroid/os/Looper;

    .line 455
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread$Worker;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 456
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_16

    .line 457
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 458
    return-void

    .line 456
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v1
.end method
