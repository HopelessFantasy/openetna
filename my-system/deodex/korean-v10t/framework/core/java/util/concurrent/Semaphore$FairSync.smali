.class final Ljava/util/concurrent/Semaphore$FairSync;
.super Ljava/util/concurrent/Semaphore$Sync;
.source "Semaphore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/Semaphore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FairSync"
.end annotation


# direct methods
.method constructor <init>(I)V
    .registers 2
    .parameter "permits"

    .prologue
    .line 195
    invoke-direct {p0, p1}, Ljava/util/concurrent/Semaphore$Sync;-><init>(I)V

    .line 196
    return-void
.end method


# virtual methods
.method protected tryAcquireShared(I)I
    .registers 7
    .parameter "acquires"

    .prologue
    .line 199
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 201
    .local v1, current:Ljava/lang/Thread;
    :cond_4
    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore$FairSync;->getFirstQueuedThread()Ljava/lang/Thread;

    move-result-object v2

    .line 202
    .local v2, first:Ljava/lang/Thread;
    if-eqz v2, :cond_e

    if-eq v2, v1, :cond_e

    .line 203
    const/4 v4, -0x1

    .line 208
    :goto_d
    return v4

    .line 204
    :cond_e
    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore$FairSync;->getState()I

    move-result v0

    .line 205
    .local v0, available:I
    sub-int v3, v0, p1

    .line 206
    .local v3, remaining:I
    if-ltz v3, :cond_1c

    invoke-virtual {p0, v0, v3}, Ljava/util/concurrent/Semaphore$FairSync;->compareAndSetState(II)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_1c
    move v4, v3

    .line 208
    goto :goto_d
.end method
