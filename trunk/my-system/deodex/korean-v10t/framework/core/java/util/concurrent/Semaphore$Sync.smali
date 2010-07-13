.class abstract Ljava/util/concurrent/Semaphore$Sync;
.super Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;
.source "Semaphore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/Semaphore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Sync"
.end annotation


# direct methods
.method constructor <init>(I)V
    .registers 2
    .parameter "permits"

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;-><init>()V

    .line 134
    invoke-virtual {p0, p1}, Ljava/util/concurrent/Semaphore$Sync;->setState(I)V

    .line 135
    return-void
.end method


# virtual methods
.method final drainPermits()I
    .registers 3

    .prologue
    .line 170
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore$Sync;->getState()I

    move-result v0

    .line 171
    .local v0, current:I
    if-eqz v0, :cond_d

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/Semaphore$Sync;->compareAndSetState(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    :cond_d
    return v0
.end method

.method final getPermits()I
    .registers 2

    .prologue
    .line 138
    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore$Sync;->getState()I

    move-result v0

    return v0
.end method

.method final nonfairTryAcquireShared(I)I
    .registers 5
    .parameter "acquires"

    .prologue
    .line 143
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore$Sync;->getState()I

    move-result v0

    .line 144
    .local v0, available:I
    sub-int v1, v0, p1

    .line 145
    .local v1, remaining:I
    if-ltz v1, :cond_e

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/Semaphore$Sync;->compareAndSetState(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 147
    :cond_e
    return v1
.end method

.method final reducePermits(I)V
    .registers 5
    .parameter "reductions"

    .prologue
    .line 161
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore$Sync;->getState()I

    move-result v0

    .line 162
    .local v0, current:I
    sub-int v1, v0, p1

    .line 163
    .local v1, next:I
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/Semaphore$Sync;->compareAndSetState(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    return-void
.end method

.method protected final tryReleaseShared(I)Z
    .registers 4
    .parameter "releases"

    .prologue
    .line 153
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore$Sync;->getState()I

    move-result v0

    .line 154
    .local v0, p:I
    add-int v1, v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/Semaphore$Sync;->compareAndSetState(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    const/4 v1, 0x1

    return v1
.end method
