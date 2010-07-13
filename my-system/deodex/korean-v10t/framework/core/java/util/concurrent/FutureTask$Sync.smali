.class final Ljava/util/concurrent/FutureTask$Sync;
.super Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;
.source "FutureTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/FutureTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Sync"
.end annotation


# static fields
.field private static final CANCELLED:I = 0x4

.field private static final RAN:I = 0x2

.field private static final RUNNING:I = 0x1


# instance fields
.field private final callable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<TV;>;"
        }
    .end annotation
.end field

.field private exception:Ljava/lang/Throwable;

.field private result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private volatile runner:Ljava/lang/Thread;

.field final synthetic this$0:Ljava/util/concurrent/FutureTask;


# direct methods
.method constructor <init>(Ljava/util/concurrent/FutureTask;Ljava/util/concurrent/Callable;)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 167
    .local p0, this:Ljava/util/concurrent/FutureTask$Sync;,"Ljava/util/concurrent/FutureTask<TV;>.Sync;"
    .local p2, callable:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<TV;>;"
    iput-object p1, p0, Ljava/util/concurrent/FutureTask$Sync;->this$0:Ljava/util/concurrent/FutureTask;

    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;-><init>()V

    .line 168
    iput-object p2, p0, Ljava/util/concurrent/FutureTask$Sync;->callable:Ljava/util/concurrent/Callable;

    .line 169
    return-void
.end method

.method private ranOrCancelled(I)Z
    .registers 3
    .parameter "state"

    .prologue
    .line 172
    .local p0, this:Ljava/util/concurrent/FutureTask$Sync;,"Ljava/util/concurrent/FutureTask<TV;>.Sync;"
    and-int/lit8 v0, p1, 0x6

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method innerCancel(Z)Z
    .registers 6
    .parameter "mayInterruptIfRunning"

    .prologue
    .local p0, this:Ljava/util/concurrent/FutureTask$Sync;,"Ljava/util/concurrent/FutureTask<TV;>.Sync;"
    const/4 v3, 0x0

    .line 238
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask$Sync;->getState()I

    move-result v1

    .line 239
    .local v1, s:I
    invoke-direct {p0, v1}, Ljava/util/concurrent/FutureTask$Sync;->ranOrCancelled(I)Z

    move-result v2

    if-nez v2, :cond_12

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/FutureTask$Sync;->compareAndSetState(II)Z

    move-result v2

    if-nez v2, :cond_14

    :cond_12
    move v2, v3

    .line 248
    :goto_13
    return v2

    .line 241
    :cond_14
    if-eqz p1, :cond_1d

    .line 242
    iget-object v0, p0, Ljava/util/concurrent/FutureTask$Sync;->runner:Ljava/lang/Thread;

    .line 243
    .local v0, r:Ljava/lang/Thread;
    if-eqz v0, :cond_1d

    .line 244
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 246
    .end local v0           #r:Ljava/lang/Thread;
    :cond_1d
    invoke-virtual {p0, v3}, Ljava/util/concurrent/FutureTask$Sync;->releaseShared(I)Z

    .line 247
    iget-object v2, p0, Ljava/util/concurrent/FutureTask$Sync;->this$0:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v2}, Ljava/util/concurrent/FutureTask;->done()V

    .line 248
    const/4 v2, 0x1

    goto :goto_13
.end method

.method innerGet()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 200
    .local p0, this:Ljava/util/concurrent/FutureTask$Sync;,"Ljava/util/concurrent/FutureTask<TV;>.Sync;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/FutureTask$Sync;->acquireSharedInterruptibly(I)V

    .line 201
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask$Sync;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_11

    .line 202
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v0

    .line 203
    :cond_11
    iget-object v0, p0, Ljava/util/concurrent/FutureTask$Sync;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_1d

    .line 204
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Ljava/util/concurrent/FutureTask$Sync;->exception:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 205
    :cond_1d
    iget-object v0, p0, Ljava/util/concurrent/FutureTask$Sync;->result:Ljava/lang/Object;

    return-object v0
.end method

.method innerGet(J)Ljava/lang/Object;
    .registers 5
    .parameter "nanosTimeout"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 209
    .local p0, this:Ljava/util/concurrent/FutureTask$Sync;,"Ljava/util/concurrent/FutureTask<TV;>.Sync;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Ljava/util/concurrent/FutureTask$Sync;->tryAcquireSharedNanos(IJ)Z

    move-result v0

    if-nez v0, :cond_d

    .line 210
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v0

    .line 211
    :cond_d
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask$Sync;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1a

    .line 212
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v0

    .line 213
    :cond_1a
    iget-object v0, p0, Ljava/util/concurrent/FutureTask$Sync;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_26

    .line 214
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Ljava/util/concurrent/FutureTask$Sync;->exception:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 215
    :cond_26
    iget-object v0, p0, Ljava/util/concurrent/FutureTask$Sync;->result:Ljava/lang/Object;

    return-object v0
.end method

.method innerIsCancelled()Z
    .registers 3

    .prologue
    .line 192
    .local p0, this:Ljava/util/concurrent/FutureTask$Sync;,"Ljava/util/concurrent/FutureTask<TV;>.Sync;"
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask$Sync;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method innerIsDone()Z
    .registers 2

    .prologue
    .line 196
    .local p0, this:Ljava/util/concurrent/FutureTask$Sync;,"Ljava/util/concurrent/FutureTask<TV;>.Sync;"
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask$Sync;->getState()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/concurrent/FutureTask$Sync;->ranOrCancelled(I)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Ljava/util/concurrent/FutureTask$Sync;->runner:Ljava/lang/Thread;

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method innerRun()V
    .registers 4

    .prologue
    .line 252
    .local p0, this:Ljava/util/concurrent/FutureTask$Sync;,"Ljava/util/concurrent/FutureTask<TV;>.Sync;"
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/FutureTask$Sync;->compareAndSetState(II)Z

    move-result v1

    if-nez v1, :cond_9

    .line 260
    :goto_8
    return-void

    .line 255
    :cond_9
    :try_start_9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Ljava/util/concurrent/FutureTask$Sync;->runner:Ljava/lang/Thread;

    .line 256
    iget-object v1, p0, Ljava/util/concurrent/FutureTask$Sync;->callable:Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/concurrent/FutureTask$Sync;->innerSet(Ljava/lang/Object;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_18} :catch_19

    goto :goto_8

    .line 257
    :catch_19
    move-exception v1

    move-object v0, v1

    .line 258
    .local v0, ex:Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Ljava/util/concurrent/FutureTask$Sync;->innerSetException(Ljava/lang/Throwable;)V

    goto :goto_8
.end method

.method innerRunAndReset()Z
    .registers 5

    .prologue
    .local p0, this:Ljava/util/concurrent/FutureTask$Sync;,"Ljava/util/concurrent/FutureTask<TV;>.Sync;"
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 263
    invoke-virtual {p0, v3, v1}, Ljava/util/concurrent/FutureTask$Sync;->compareAndSetState(II)Z

    move-result v1

    if-nez v1, :cond_a

    move v1, v3

    .line 272
    :goto_9
    return v1

    .line 266
    :cond_a
    :try_start_a
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Ljava/util/concurrent/FutureTask$Sync;->runner:Ljava/lang/Thread;

    .line 267
    iget-object v1, p0, Ljava/util/concurrent/FutureTask$Sync;->callable:Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    .line 268
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/concurrent/FutureTask$Sync;->runner:Ljava/lang/Thread;

    .line 269
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/FutureTask$Sync;->compareAndSetState(II)Z
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_1d} :catch_1f

    move-result v1

    goto :goto_9

    .line 270
    :catch_1f
    move-exception v1

    move-object v0, v1

    .line 271
    .local v0, ex:Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Ljava/util/concurrent/FutureTask$Sync;->innerSetException(Ljava/lang/Throwable;)V

    move v1, v3

    .line 272
    goto :goto_9
.end method

.method innerSet(Ljava/lang/Object;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 219
    .local p0, this:Ljava/util/concurrent/FutureTask$Sync;,"Ljava/util/concurrent/FutureTask<TV;>.Sync;"
    .local p1, v:Ljava/lang/Object;,"TV;"
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask$Sync;->getState()I

    move-result v0

    .line 220
    .local v0, s:I
    invoke-direct {p0, v0}, Ljava/util/concurrent/FutureTask$Sync;->ranOrCancelled(I)Z

    move-result v1

    if-nez v1, :cond_11

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/FutureTask$Sync;->compareAndSetState(II)Z

    move-result v1

    if-nez v1, :cond_12

    .line 225
    :cond_11
    :goto_11
    return-void

    .line 222
    :cond_12
    iput-object p1, p0, Ljava/util/concurrent/FutureTask$Sync;->result:Ljava/lang/Object;

    .line 223
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/util/concurrent/FutureTask$Sync;->releaseShared(I)Z

    .line 224
    iget-object v1, p0, Ljava/util/concurrent/FutureTask$Sync;->this$0:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->done()V

    goto :goto_11
.end method

.method innerSetException(Ljava/lang/Throwable;)V
    .registers 4
    .parameter "t"

    .prologue
    .line 228
    .local p0, this:Ljava/util/concurrent/FutureTask$Sync;,"Ljava/util/concurrent/FutureTask<TV;>.Sync;"
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask$Sync;->getState()I

    move-result v0

    .line 229
    .local v0, s:I
    invoke-direct {p0, v0}, Ljava/util/concurrent/FutureTask$Sync;->ranOrCancelled(I)Z

    move-result v1

    if-nez v1, :cond_11

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/FutureTask$Sync;->compareAndSetState(II)Z

    move-result v1

    if-nez v1, :cond_12

    .line 235
    :cond_11
    :goto_11
    return-void

    .line 231
    :cond_12
    iput-object p1, p0, Ljava/util/concurrent/FutureTask$Sync;->exception:Ljava/lang/Throwable;

    .line 232
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/concurrent/FutureTask$Sync;->result:Ljava/lang/Object;

    .line 233
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/util/concurrent/FutureTask$Sync;->releaseShared(I)Z

    .line 234
    iget-object v1, p0, Ljava/util/concurrent/FutureTask$Sync;->this$0:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->done()V

    goto :goto_11
.end method

.method protected tryAcquireShared(I)I
    .registers 3
    .parameter "ignore"

    .prologue
    .line 179
    .local p0, this:Ljava/util/concurrent/FutureTask$Sync;,"Ljava/util/concurrent/FutureTask<TV;>.Sync;"
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask$Sync;->innerIsDone()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, -0x1

    goto :goto_7
.end method

.method protected tryReleaseShared(I)Z
    .registers 3
    .parameter "ignore"

    .prologue
    .line 187
    .local p0, this:Ljava/util/concurrent/FutureTask$Sync;,"Ljava/util/concurrent/FutureTask<TV;>.Sync;"
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/concurrent/FutureTask$Sync;->runner:Ljava/lang/Thread;

    .line 188
    const/4 v0, 0x1

    return v0
.end method
