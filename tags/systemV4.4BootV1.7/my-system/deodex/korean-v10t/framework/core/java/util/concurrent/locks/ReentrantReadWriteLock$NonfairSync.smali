.class final Ljava/util/concurrent/locks/ReentrantReadWriteLock$NonfairSync;
.super Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;
.source "ReentrantReadWriteLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/locks/ReentrantReadWriteLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NonfairSync"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 327
    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;-><init>()V

    return-void
.end method


# virtual methods
.method protected final tryAcquire(I)Z
    .registers 3
    .parameter "acquires"

    .prologue
    .line 329
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$NonfairSync;->nonfairTryAcquire(I)Z

    move-result v0

    return v0
.end method

.method protected final tryAcquireShared(I)I
    .registers 3
    .parameter "acquires"

    .prologue
    .line 333
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$NonfairSync;->nonfairTryAcquireShared(I)I

    move-result v0

    return v0
.end method

.method final wlock()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 338
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$NonfairSync;->compareAndSetState(II)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 339
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$NonfairSync;->owner:Ljava/lang/Thread;

    .line 342
    :goto_e
    return-void

    .line 341
    :cond_f
    invoke-virtual {p0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$NonfairSync;->acquire(I)V

    goto :goto_e
.end method
