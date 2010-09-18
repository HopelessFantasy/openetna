.class abstract Ljava/util/concurrent/locks/ReentrantLock$Sync;
.super Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;
.source "ReentrantLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/locks/ReentrantLock;
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
    .line 87
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
    .line 163
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 164
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->setState(I)V

    .line 165
    return-void
.end method


# virtual methods
.method final getHoldCount()I
    .registers 4

    .prologue
    .line 148
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->getState()I

    move-result v0

    .line 149
    .local v0, c:I
    iget-object v1, p0, Ljava/util/concurrent/locks/ReentrantLock$Sync;->owner:Ljava/lang/Thread;

    .line 150
    .local v1, o:Ljava/lang/Thread;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_e

    move v2, v0

    :goto_d
    return v2

    :cond_e
    const/4 v2, 0x0

    goto :goto_d
.end method

.method final getOwner()Ljava/lang/Thread;
    .registers 4

    .prologue
    .line 142
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->getState()I

    move-result v0

    .line 143
    .local v0, c:I
    iget-object v1, p0, Ljava/util/concurrent/locks/ReentrantLock$Sync;->owner:Ljava/lang/Thread;

    .line 144
    .local v1, o:Ljava/lang/Thread;
    if-nez v0, :cond_a

    const/4 v2, 0x0

    :goto_9
    return-object v2

    :cond_a
    move-object v2, v1

    goto :goto_9
.end method

.method protected final isHeldExclusively()Z
    .registers 3

    .prologue
    .line 132
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->getState()I

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantLock$Sync;->owner:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method final isLocked()Z
    .registers 2

    .prologue
    .line 154
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->getState()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method abstract lock()V
.end method

.method final newCondition()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;
    .registers 2

    .prologue
    .line 136
    new-instance v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;

    invoke-direct {v0, p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;-><init>(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;)V

    return-object v0
.end method

.method final nonfairTryAcquire(I)Z
    .registers 7
    .parameter "acquires"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 103
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 104
    .local v1, current:Ljava/lang/Thread;
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->getState()I

    move-result v0

    .line 105
    .local v0, c:I
    if-nez v0, :cond_16

    .line 106
    invoke-virtual {p0, v3, p1}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->compareAndSetState(II)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 107
    iput-object v1, p0, Ljava/util/concurrent/locks/ReentrantLock$Sync;->owner:Ljava/lang/Thread;

    move v2, v4

    .line 115
    :goto_15
    return v2

    .line 111
    :cond_16
    iget-object v2, p0, Ljava/util/concurrent/locks/ReentrantLock$Sync;->owner:Ljava/lang/Thread;

    if-ne v1, v2, :cond_21

    .line 112
    add-int v2, v0, p1

    invoke-virtual {p0, v2}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->setState(I)V

    move v2, v4

    .line 113
    goto :goto_15

    :cond_21
    move v2, v3

    .line 115
    goto :goto_15
.end method

.method protected final tryRelease(I)Z
    .registers 6
    .parameter "releases"

    .prologue
    .line 119
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->getState()I

    move-result v2

    sub-int v0, v2, p1

    .line 120
    .local v0, c:I
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iget-object v3, p0, Ljava/util/concurrent/locks/ReentrantLock$Sync;->owner:Ljava/lang/Thread;

    if-eq v2, v3, :cond_14

    .line 121
    new-instance v2, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v2}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v2

    .line 122
    :cond_14
    const/4 v1, 0x0

    .line 123
    .local v1, free:Z
    if-nez v0, :cond_1b

    .line 124
    const/4 v1, 0x1

    .line 125
    const/4 v2, 0x0

    iput-object v2, p0, Ljava/util/concurrent/locks/ReentrantLock$Sync;->owner:Ljava/lang/Thread;

    .line 127
    :cond_1b
    invoke-virtual {p0, v0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->setState(I)V

    .line 128
    return v1
.end method
