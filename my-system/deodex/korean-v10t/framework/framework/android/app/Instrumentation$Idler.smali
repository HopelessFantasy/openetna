.class final Landroid/app/Instrumentation$Idler;
.super Ljava/lang/Object;
.source "Instrumentation.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Instrumentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Idler"
.end annotation


# instance fields
.field private final mCallback:Ljava/lang/Runnable;

.field private mIdle:Z


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .registers 3
    .parameter "callback"

    .prologue
    .line 1586
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1587
    iput-object p1, p0, Landroid/app/Instrumentation$Idler;->mCallback:Ljava/lang/Runnable;

    .line 1588
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Instrumentation$Idler;->mIdle:Z

    .line 1589
    return-void
.end method


# virtual methods
.method public final queueIdle()Z
    .registers 2

    .prologue
    .line 1592
    iget-object v0, p0, Landroid/app/Instrumentation$Idler;->mCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_9

    .line 1593
    iget-object v0, p0, Landroid/app/Instrumentation$Idler;->mCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1595
    :cond_9
    monitor-enter p0

    .line 1596
    const/4 v0, 0x1

    :try_start_b
    iput-boolean v0, p0, Landroid/app/Instrumentation$Idler;->mIdle:Z

    .line 1597
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1598
    monitor-exit p0

    .line 1599
    const/4 v0, 0x0

    return v0

    .line 1598
    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_13

    throw v0
.end method

.method public waitForIdle()V
    .registers 2

    .prologue
    .line 1603
    monitor-enter p0

    .line 1604
    :goto_1
    :try_start_1
    iget-boolean v0, p0, Landroid/app/Instrumentation$Idler;->mIdle:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_d

    if-nez v0, :cond_b

    .line 1606
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_d
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9

    goto :goto_1

    .line 1607
    :catch_9
    move-exception v0

    goto :goto_1

    .line 1610
    :cond_b
    :try_start_b
    monitor-exit p0

    .line 1611
    return-void

    .line 1610
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_d

    throw v0
.end method
