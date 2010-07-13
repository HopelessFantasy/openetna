.class abstract Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;
.super Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;
.source "ReentrantReadWriteLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/locks/ReentrantReadWriteLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Sync"
.end annotation


# instance fields
.field transient owner:Ljava/lang/Thread;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;-><init>()V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 3
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 317
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 318
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->setState(I)V

    .line 319
    return-void
.end method


# virtual methods
.method final getCount()I
    .registers 2

    .prologue
    .line 321
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getState()I

    move-result v0

    return v0
.end method

.method final getOwner()Ljava/lang/Thread;
    .registers 4

    .prologue
    .line 292
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getState()I

    move-result v2

    invoke-static {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->exclusiveCount(I)I

    move-result v0

    .line 293
    .local v0, c:I
    iget-object v1, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->owner:Ljava/lang/Thread;

    .line 294
    .local v1, o:Ljava/lang/Thread;
    if-nez v0, :cond_e

    const/4 v2, 0x0

    :goto_d
    return-object v2

    :cond_e
    move-object v2, v1

    goto :goto_d
.end method

.method final getReadLockCount()I
    .registers 2

    .prologue
    .line 298
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getState()I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->sharedCount(I)I

    move-result v0

    return v0
.end method

.method final getWriteHoldCount()I
    .registers 4

    .prologue
    .line 306
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getState()I

    move-result v2

    invoke-static {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->exclusiveCount(I)I

    move-result v0

    .line 307
    .local v0, c:I
    iget-object v1, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->owner:Ljava/lang/Thread;

    .line 308
    .local v1, o:Ljava/lang/Thread;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_12

    move v2, v0

    :goto_11
    return v2

    :cond_12
    const/4 v2, 0x0

    goto :goto_11
.end method

.method protected final isHeldExclusively()Z
    .registers 3

    .prologue
    .line 281
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getState()I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->exclusiveCount(I)I

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->owner:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method final isWriteLocked()Z
    .registers 2

    .prologue
    .line 302
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getState()I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->exclusiveCount(I)I

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method final newCondition()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;
    .registers 2

    .prologue
    .line 288
    new-instance v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;

    invoke-direct {v0, p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;-><init>(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;)V

    return-object v0
.end method

.method final nonfairTryAcquire(I)Z
    .registers 8
    .parameter "acquires"

    .prologue
    const/4 v5, 0x0

    .line 222
    invoke-static {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->exclusiveCount(I)I

    move-result p1

    .line 223
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 224
    .local v1, current:Ljava/lang/Thread;
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getState()I

    move-result v0

    .line 225
    .local v0, c:I
    invoke-static {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->exclusiveCount(I)I

    move-result v2

    .line 226
    .local v2, w:I
    add-int v3, v2, p1

    const/high16 v4, 0x1

    if-lt v3, v4, :cond_1f

    .line 227
    new-instance v3, Ljava/lang/Error;

    const-string v4, "Maximum lock count exceeded"

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3

    .line 228
    :cond_1f
    if-eqz v0, :cond_29

    if-eqz v2, :cond_27

    iget-object v3, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->owner:Ljava/lang/Thread;

    if-eq v1, v3, :cond_29

    :cond_27
    move v3, v5

    .line 233
    :goto_28
    return v3

    .line 230
    :cond_29
    add-int v3, v0, p1

    invoke-virtual {p0, v0, v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->compareAndSetState(II)Z

    move-result v3

    if-nez v3, :cond_33

    move v3, v5

    .line 231
    goto :goto_28

    .line 232
    :cond_33
    iput-object v1, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->owner:Ljava/lang/Thread;

    .line 233
    const/4 v3, 0x1

    goto :goto_28
.end method

.method final nonfairTryAcquireShared(I)I
    .registers 6
    .parameter "acquires"

    .prologue
    .line 241
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getState()I

    move-result v0

    .line 242
    .local v0, c:I
    shl-int/lit8 v2, p1, 0x10

    add-int v1, v0, v2

    .line 243
    .local v1, nextc:I
    if-ge v1, v0, :cond_12

    .line 244
    new-instance v2, Ljava/lang/Error;

    const-string v3, "Maximum lock count exceeded"

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    .line 245
    :cond_12
    invoke-static {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->exclusiveCount(I)I

    move-result v2

    if-eqz v2, :cond_22

    iget-object v2, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->owner:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    if-eq v2, v3, :cond_22

    .line 247
    const/4 v2, -0x1

    .line 249
    :goto_21
    return v2

    .line 248
    :cond_22
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->compareAndSetState(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 249
    const/4 v2, 0x1

    goto :goto_21
.end method

.method protected final tryRelease(I)Z
    .registers 7
    .parameter "releases"

    .prologue
    .line 255
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 256
    .local v1, current:Ljava/lang/Thread;
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getState()I

    move-result v0

    .line 257
    .local v0, c:I
    iget-object v4, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->owner:Ljava/lang/Thread;

    if-eq v4, v1, :cond_12

    .line 258
    new-instance v4, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v4}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v4

    .line 259
    :cond_12
    sub-int v3, v0, p1

    .line 260
    .local v3, nextc:I
    const/4 v2, 0x0

    .line 261
    .local v2, free:Z
    invoke-static {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->exclusiveCount(I)I

    move-result v4

    if-ne v4, p1, :cond_1f

    .line 262
    const/4 v2, 0x1

    .line 263
    const/4 v4, 0x0

    iput-object v4, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->owner:Ljava/lang/Thread;

    .line 265
    :cond_1f
    invoke-virtual {p0, v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->setState(I)V

    .line 266
    return v2
.end method

.method protected final tryReleaseShared(I)Z
    .registers 5
    .parameter "releases"

    .prologue
    .line 271
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getState()I

    move-result v0

    .line 272
    .local v0, c:I
    shl-int/lit8 v2, p1, 0x10

    sub-int v1, v0, v2

    .line 273
    .local v1, nextc:I
    if-gez v1, :cond_10

    .line 274
    new-instance v2, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v2}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v2

    .line 275
    :cond_10
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->compareAndSetState(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 276
    if-nez v1, :cond_1a

    const/4 v2, 0x1

    :goto_19
    return v2

    :cond_1a
    const/4 v2, 0x0

    goto :goto_19
.end method

.method abstract wlock()V
.end method
