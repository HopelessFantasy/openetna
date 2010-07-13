.class final Ljava/util/concurrent/locks/ReentrantLock$FairSync;
.super Ljava/util/concurrent/locks/ReentrantLock$Sync;
.source "ReentrantLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/locks/ReentrantLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FairSync"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 191
    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;-><init>()V

    return-void
.end method


# virtual methods
.method final lock()V
    .registers 2

    .prologue
    .line 193
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/locks/ReentrantLock$FairSync;->acquire(I)V

    .line 194
    return-void
.end method

.method protected final tryAcquire(I)Z
    .registers 8
    .parameter "acquires"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 201
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 202
    .local v1, current:Ljava/lang/Thread;
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock$FairSync;->getState()I

    move-result v0

    .line 203
    .local v0, c:I
    if-nez v0, :cond_1e

    .line 204
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock$FairSync;->getFirstQueuedThread()Ljava/lang/Thread;

    move-result-object v2

    .line 205
    .local v2, first:Ljava/lang/Thread;
    if-eqz v2, :cond_14

    if-ne v2, v1, :cond_29

    :cond_14
    invoke-virtual {p0, v4, p1}, Ljava/util/concurrent/locks/ReentrantLock$FairSync;->compareAndSetState(II)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 207
    iput-object v1, p0, Ljava/util/concurrent/locks/ReentrantLock$FairSync;->owner:Ljava/lang/Thread;

    move v3, v5

    .line 215
    .end local v2           #first:Ljava/lang/Thread;
    :goto_1d
    return v3

    .line 211
    :cond_1e
    iget-object v3, p0, Ljava/util/concurrent/locks/ReentrantLock$FairSync;->owner:Ljava/lang/Thread;

    if-ne v1, v3, :cond_29

    .line 212
    add-int v3, v0, p1

    invoke-virtual {p0, v3}, Ljava/util/concurrent/locks/ReentrantLock$FairSync;->setState(I)V

    move v3, v5

    .line 213
    goto :goto_1d

    :cond_29
    move v3, v4

    .line 215
    goto :goto_1d
.end method
