.class final Ljava/util/concurrent/locks/ReentrantReadWriteLock$FairSync;
.super Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;
.source "ReentrantReadWriteLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/locks/ReentrantReadWriteLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FairSync"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 348
    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;-><init>()V

    return-void
.end method


# virtual methods
.method protected final tryAcquire(I)Z
    .registers 9
    .parameter "acquires"

    .prologue
    const/4 v6, 0x0

    .line 351
    invoke-static {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->exclusiveCount(I)I

    move-result p1

    .line 352
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 354
    .local v1, current:Ljava/lang/Thread;
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$FairSync;->getState()I

    move-result v0

    .line 355
    .local v0, c:I
    invoke-static {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->exclusiveCount(I)I

    move-result v3

    .line 356
    .local v3, w:I
    add-int v4, v3, p1

    const/high16 v5, 0x1

    if-lt v4, v5, :cond_1f

    .line 357
    new-instance v4, Ljava/lang/Error;

    const-string v5, "Maximum lock count exceeded"

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4

    .line 358
    :cond_1f
    if-eqz v3, :cond_25

    iget-object v4, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$FairSync;->owner:Ljava/lang/Thread;

    if-eq v1, v4, :cond_31

    :cond_25
    if-nez v0, :cond_2f

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$FairSync;->getFirstQueuedThread()Ljava/lang/Thread;

    move-result-object v2

    .local v2, first:Ljava/lang/Thread;
    if-eqz v2, :cond_31

    if-eq v2, v1, :cond_31

    .end local v2           #first:Ljava/lang/Thread;
    :cond_2f
    move v4, v6

    .line 366
    :goto_30
    return v4

    .line 363
    :cond_31
    add-int v4, v0, p1

    invoke-virtual {p0, v0, v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$FairSync;->compareAndSetState(II)Z

    move-result v4

    if-nez v4, :cond_3b

    move v4, v6

    .line 364
    goto :goto_30

    .line 365
    :cond_3b
    iput-object v1, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$FairSync;->owner:Ljava/lang/Thread;

    .line 366
    const/4 v4, 0x1

    goto :goto_30
.end method

.method protected final tryAcquireShared(I)I
    .registers 9
    .parameter "acquires"

    .prologue
    const/4 v6, -0x1

    .line 370
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 372
    .local v1, current:Ljava/lang/Thread;
    :cond_5
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$FairSync;->getFirstQueuedThread()Ljava/lang/Thread;

    move-result-object v2

    .line 373
    .local v2, first:Ljava/lang/Thread;
    if-eqz v2, :cond_f

    if-eq v2, v1, :cond_f

    move v4, v6

    .line 383
    :goto_e
    return v4

    .line 375
    :cond_f
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$FairSync;->getState()I

    move-result v0

    .line 376
    .local v0, c:I
    shl-int/lit8 v4, p1, 0x10

    add-int v3, v0, v4

    .line 377
    .local v3, nextc:I
    if-ge v3, v0, :cond_21

    .line 378
    new-instance v4, Ljava/lang/Error;

    const-string v5, "Maximum lock count exceeded"

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4

    .line 379
    :cond_21
    invoke-static {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->exclusiveCount(I)I

    move-result v4

    if-eqz v4, :cond_31

    iget-object v4, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$FairSync;->owner:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    if-eq v4, v5, :cond_31

    move v4, v6

    .line 381
    goto :goto_e

    .line 382
    :cond_31
    invoke-virtual {p0, v0, v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$FairSync;->compareAndSetState(II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 383
    const/4 v4, 0x1

    goto :goto_e
.end method

.method final wlock()V
    .registers 2

    .prologue
    .line 389
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$FairSync;->acquire(I)V

    .line 390
    return-void
.end method
