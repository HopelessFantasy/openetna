.class Ljava/util/concurrent/ThreadPoolExecutor$Worker;
.super Ljava/lang/Object;
.source "ThreadPoolExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ThreadPoolExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Worker"
.end annotation


# instance fields
.field volatile completedTasks:J

.field private firstTask:Ljava/lang/Runnable;

.field private final runLock:Ljava/util/concurrent/locks/ReentrantLock;

.field final synthetic this$0:Ljava/util/concurrent/ThreadPoolExecutor;

.field thread:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ThreadPoolExecutor;Ljava/lang/Runnable;)V
    .registers 4
    .parameter
    .parameter "firstTask"

    .prologue
    .line 603
    iput-object p1, p0, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->this$0:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 584
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->runLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 604
    iput-object p2, p0, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->firstTask:Ljava/lang/Runnable;

    .line 605
    return-void
.end method

.method private runTask(Ljava/lang/Runnable;)V
    .registers 9
    .parameter "task"

    .prologue
    .line 636
    iget-object v2, p0, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->runLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 637
    .local v2, runLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 641
    :try_start_5
    iget-object v3, p0, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->this$0:Ljava/util/concurrent/ThreadPoolExecutor;

    iget v3, v3, Ljava/util/concurrent/ThreadPoolExecutor;->runState:I
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_3a

    const/4 v4, 0x2

    if-ne v3, v4, :cond_10

    .line 661
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 663
    :goto_f
    return-void

    .line 644
    :cond_10
    :try_start_10
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 645
    const/4 v1, 0x0

    .line 646
    .local v1, ran:Z
    iget-object v3, p0, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->this$0:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v4, p0, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->thread:Ljava/lang/Thread;

    invoke-virtual {v3, v4, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    :try_end_1b
    .catchall {:try_start_10 .. :try_end_1b} :catchall_3a

    .line 648
    :try_start_1b
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 649
    const/4 v1, 0x1

    .line 650
    iget-object v3, p0, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->this$0:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    .line 651
    iget-wide v3, p0, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->completedTasks:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, p0, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->completedTasks:J
    :try_end_2c
    .catchall {:try_start_1b .. :try_end_2c} :catchall_3a
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_2c} :catch_30

    .line 661
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_f

    .line 652
    :catch_30
    move-exception v3

    move-object v0, v3

    .line 653
    .local v0, ex:Ljava/lang/RuntimeException;
    if-nez v1, :cond_39

    .line 654
    :try_start_34
    iget-object v3, p0, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->this$0:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v3, p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    .line 658
    :cond_39
    throw v0
    :try_end_3a
    .catchall {:try_start_34 .. :try_end_3a} :catchall_3a

    .line 661
    .end local v0           #ex:Ljava/lang/RuntimeException;
    .end local v1           #ran:Z
    :catchall_3a
    move-exception v3

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method


# virtual methods
.method interruptIfIdle()V
    .registers 3

    .prologue
    .line 615
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->runLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 616
    .local v0, runLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 618
    :try_start_8
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->thread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_11

    .line 620
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 623
    :cond_10
    return-void

    .line 620
    :catchall_11
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method interruptNow()V
    .registers 2

    .prologue
    .line 629
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 630
    return-void
.end method

.method isActive()Z
    .registers 2

    .prologue
    .line 608
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->runLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v0

    return v0
.end method

.method public run()V
    .registers 4

    .prologue
    .line 670
    :try_start_0
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->firstTask:Ljava/lang/Runnable;

    .line 671
    .local v0, task:Ljava/lang/Runnable;
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->firstTask:Ljava/lang/Runnable;

    .line 672
    :goto_5
    if-nez v0, :cond_f

    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->this$0:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->getTask()Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 673
    :cond_f
    invoke-direct {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->runTask(Ljava/lang/Runnable;)V
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_21
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_12} :catch_1a

    .line 674
    const/4 v0, 0x0

    goto :goto_5

    .line 679
    :cond_14
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->this$0:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->workerDone(Ljava/util/concurrent/ThreadPoolExecutor$Worker;)V

    .line 681
    .end local v0           #task:Ljava/lang/Runnable;
    :goto_19
    return-void

    .line 676
    :catch_1a
    move-exception v1

    .line 679
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->this$0:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->workerDone(Ljava/util/concurrent/ThreadPoolExecutor$Worker;)V

    goto :goto_19

    :catchall_21
    move-exception v1

    iget-object v2, p0, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->this$0:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->workerDone(Ljava/util/concurrent/ThreadPoolExecutor$Worker;)V

    throw v1
.end method
