.class final Ljava/util/concurrent/SynchronousQueue$Node;
.super Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;
.source "SynchronousQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/SynchronousQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Node"
.end annotation


# static fields
.field private static final ACK:I = 0x1

.field private static final CANCEL:I = -0x1


# instance fields
.field item:Ljava/lang/Object;

.field next:Ljava/util/concurrent/SynchronousQueue$Node;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .parameter "x"

    .prologue
    .line 191
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;-><init>()V

    iput-object p1, p0, Ljava/util/concurrent/SynchronousQueue$Node;->item:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Ljava/util/concurrent/SynchronousQueue$Node;)V
    .registers 3
    .parameter "x"
    .parameter "n"

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;-><init>()V

    iput-object p1, p0, Ljava/util/concurrent/SynchronousQueue$Node;->item:Ljava/lang/Object;

    iput-object p2, p0, Ljava/util/concurrent/SynchronousQueue$Node;->next:Ljava/util/concurrent/SynchronousQueue$Node;

    return-void
.end method

.method private checkCancellationOnInterrupt(Ljava/lang/InterruptedException;)V
    .registers 3
    .parameter "ie"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 225
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/SynchronousQueue$Node;->release(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 226
    throw p1

    .line 227
    :cond_8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 228
    return-void
.end method

.method private extract()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 214
    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$Node;->item:Ljava/lang/Object;

    .line 215
    .local v0, x:Ljava/lang/Object;
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/concurrent/SynchronousQueue$Node;->item:Ljava/lang/Object;

    .line 216
    return-object v0
.end method


# virtual methods
.method getItem()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 244
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/SynchronousQueue$Node;->release(I)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0}, Ljava/util/concurrent/SynchronousQueue$Node;->extract()Ljava/lang/Object;

    move-result-object v0

    :goto_b
    return-object v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method setItem(Ljava/lang/Object;)Z
    .registers 3
    .parameter "x"

    .prologue
    .line 235
    iput-object p1, p0, Ljava/util/concurrent/SynchronousQueue$Node;->item:Ljava/lang/Object;

    .line 236
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/SynchronousQueue$Node;->release(I)Z

    move-result v0

    return v0
.end method

.method protected tryAcquire(I)Z
    .registers 3
    .parameter "ignore"

    .prologue
    .line 200
    invoke-virtual {p0}, Ljava/util/concurrent/SynchronousQueue$Node;->getState()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected tryRelease(I)Z
    .registers 3
    .parameter "newState"

    .prologue
    .line 207
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/SynchronousQueue$Node;->compareAndSetState(II)Z

    move-result v0

    return v0
.end method

.method waitForPut()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 263
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, v1}, Ljava/util/concurrent/SynchronousQueue$Node;->acquireInterruptibly(I)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_4} :catch_9

    .line 267
    :goto_4
    invoke-direct {p0}, Ljava/util/concurrent/SynchronousQueue$Node;->extract()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 264
    :catch_9
    move-exception v0

    .line 265
    .local v0, ie:Ljava/lang/InterruptedException;
    invoke-direct {p0, v0}, Ljava/util/concurrent/SynchronousQueue$Node;->checkCancellationOnInterrupt(Ljava/lang/InterruptedException;)V

    goto :goto_4
.end method

.method waitForPut(J)Ljava/lang/Object;
    .registers 5
    .parameter "nanos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 289
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, v1, p1, p2}, Ljava/util/concurrent/SynchronousQueue$Node;->tryAcquireNanos(IJ)Z

    move-result v1

    if-nez v1, :cond_15

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Ljava/util/concurrent/SynchronousQueue$Node;->release(I)Z
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_b} :catch_10

    move-result v1

    if-eqz v1, :cond_15

    .line 291
    const/4 v1, 0x0

    .line 295
    :goto_f
    return-object v1

    .line 292
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 293
    .local v0, ie:Ljava/lang/InterruptedException;
    invoke-direct {p0, v0}, Ljava/util/concurrent/SynchronousQueue$Node;->checkCancellationOnInterrupt(Ljava/lang/InterruptedException;)V

    .line 295
    .end local v0           #ie:Ljava/lang/InterruptedException;
    :cond_15
    invoke-direct {p0}, Ljava/util/concurrent/SynchronousQueue$Node;->extract()Ljava/lang/Object;

    move-result-object v1

    goto :goto_f
.end method

.method waitForTake()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 252
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, v1}, Ljava/util/concurrent/SynchronousQueue$Node;->acquireInterruptibly(I)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_4} :catch_5

    .line 256
    :goto_4
    return-void

    .line 253
    :catch_5
    move-exception v0

    .line 254
    .local v0, ie:Ljava/lang/InterruptedException;
    invoke-direct {p0, v0}, Ljava/util/concurrent/SynchronousQueue$Node;->checkCancellationOnInterrupt(Ljava/lang/InterruptedException;)V

    goto :goto_4
.end method

.method waitForTake(J)Z
    .registers 6
    .parameter "nanos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 275
    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p0, v1, p1, p2}, Ljava/util/concurrent/SynchronousQueue$Node;->tryAcquireNanos(IJ)Z

    move-result v1

    if-nez v1, :cond_16

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Ljava/util/concurrent/SynchronousQueue$Node;->release(I)Z
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_c} :catch_11

    move-result v1

    if-eqz v1, :cond_16

    move v1, v2

    .line 281
    :goto_10
    return v1

    .line 278
    :catch_11
    move-exception v1

    move-object v0, v1

    .line 279
    .local v0, ie:Ljava/lang/InterruptedException;
    invoke-direct {p0, v0}, Ljava/util/concurrent/SynchronousQueue$Node;->checkCancellationOnInterrupt(Ljava/lang/InterruptedException;)V

    .line 281
    .end local v0           #ie:Ljava/lang/InterruptedException;
    :cond_16
    const/4 v1, 0x1

    goto :goto_10
.end method
