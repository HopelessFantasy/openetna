.class public Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;
.super Ljava/lang/Object;
.source "AbstractQueuedSynchronizer.java"

# interfaces
.implements Ljava/util/concurrent/locks/Condition;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConditionObject"
.end annotation


# static fields
.field private static final REINTERRUPT:I = 0x1

.field private static final THROW_IE:I = -0x1

.field private static final serialVersionUID:J = 0x104ad505855c6aebL


# instance fields
.field private transient firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

.field private transient lastWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

.field final synthetic this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;)V
    .registers 2
    .parameter

    .prologue
    .line 1611
    iput-object p1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addConditionWaiter()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .registers 5

    .prologue
    .line 1620
    new-instance v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;-><init>(Ljava/lang/Thread;I)V

    .line 1621
    .local v0, node:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->lastWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 1622
    .local v1, t:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-nez v1, :cond_13

    .line 1623
    iput-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 1626
    :goto_10
    iput-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->lastWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 1627
    return-object v0

    .line 1625
    :cond_13
    iput-object v0, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    goto :goto_10
.end method

.method private checkInterruptWhileWaiting(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)I
    .registers 3
    .parameter "node"

    .prologue
    .line 1733
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->transferAfterCancelledWait(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, -0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x1

    goto :goto_f

    :cond_12
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private doSignal(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V
    .registers 4
    .parameter "first"

    .prologue
    const/4 v1, 0x0

    .line 1638
    :cond_1
    iget-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    iput-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-nez v0, :cond_9

    .line 1639
    iput-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->lastWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 1640
    :cond_9
    iput-object v1, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 1642
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->transferForSignal(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object p1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-nez p1, :cond_1

    .line 1643
    :cond_17
    return-void
.end method

.method private doSignalAll(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V
    .registers 5
    .parameter "first"

    .prologue
    const/4 v2, 0x0

    .line 1650
    iput-object v2, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    iput-object v2, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->lastWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 1652
    :cond_5
    iget-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 1653
    .local v0, next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iput-object v2, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 1654
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->transferForSignal(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    .line 1655
    move-object p1, v0

    .line 1656
    if-nez p1, :cond_5

    .line 1657
    return-void
.end method

.method private reportInterruptAfterWait(I)V
    .registers 3
    .parameter "interruptMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1744
    const/4 v0, -0x1

    if-ne p1, v0, :cond_9

    .line 1745
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 1746
    :cond_9
    const/4 v0, 0x1

    if-ne p1, v0, :cond_13

    .line 1747
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1748
    :cond_13
    return-void
.end method


# virtual methods
.method public final await()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1768
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1769
    new-instance v3, Ljava/lang/InterruptedException;

    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    throw v3

    .line 1770
    :cond_c
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->addConditionWaiter()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    move-result-object v1

    .line 1771
    .local v1, node:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget-object v3, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->fullyRelease(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)I

    move-result v2

    .line 1772
    .local v2, savedState:I
    const/4 v0, 0x0

    .line 1773
    .local v0, interruptMode:I
    :cond_17
    iget-object v3, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->isOnSyncQueue(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 1774
    invoke-static {}, Ljava/util/concurrent/locks/LockSupport;->park()V

    .line 1775
    invoke-direct {p0, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->checkInterruptWhileWaiting(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)I

    move-result v0

    if-eqz v0, :cond_17

    .line 1778
    :cond_28
    iget-object v3, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->acquireQueued(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;I)Z

    move-result v3

    if-eqz v3, :cond_34

    const/4 v3, -0x1

    if-eq v0, v3, :cond_34

    .line 1779
    const/4 v0, 0x1

    .line 1780
    :cond_34
    if-eqz v0, :cond_39

    .line 1781
    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->reportInterruptAfterWait(I)V

    .line 1782
    :cond_39
    return-void
.end method

.method public final await(JLjava/util/concurrent/TimeUnit;)Z
    .registers 16
    .parameter "time"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1904
    if-nez p3, :cond_8

    .line 1905
    new-instance v10, Ljava/lang/NullPointerException;

    invoke-direct {v10}, Ljava/lang/NullPointerException;-><init>()V

    throw v10

    .line 1906
    :cond_8
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    .line 1907
    .local v3, nanosTimeout:J
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v10

    if-eqz v10, :cond_18

    .line 1908
    new-instance v10, Ljava/lang/InterruptedException;

    invoke-direct {v10}, Ljava/lang/InterruptedException;-><init>()V

    throw v10

    .line 1909
    :cond_18
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->addConditionWaiter()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    move-result-object v5

    .line 1910
    .local v5, node:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget-object v10, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v10, v5}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->fullyRelease(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)I

    move-result v8

    .line 1911
    .local v8, savedState:I
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 1912
    .local v1, lastTime:J
    const/4 v9, 0x0

    .line 1913
    .local v9, timedout:Z
    const/4 v0, 0x0

    .line 1914
    .local v0, interruptMode:I
    :goto_28
    iget-object v10, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v10, v5}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->isOnSyncQueue(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    move-result v10

    if-nez v10, :cond_3c

    .line 1915
    const-wide/16 v10, 0x0

    cmp-long v10, v3, v10

    if-gtz v10, :cond_51

    .line 1916
    iget-object v10, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v10, v5}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->transferAfterCancelledWait(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    move-result v9

    .line 1926
    :cond_3c
    iget-object v10, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v10, v5, v8}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->acquireQueued(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;I)Z

    move-result v10

    if-eqz v10, :cond_48

    const/4 v10, -0x1

    if-eq v0, v10, :cond_48

    .line 1927
    const/4 v0, 0x1

    .line 1928
    :cond_48
    if-eqz v0, :cond_4d

    .line 1929
    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->reportInterruptAfterWait(I)V

    .line 1930
    :cond_4d
    if-nez v9, :cond_63

    const/4 v10, 0x1

    :goto_50
    return v10

    .line 1919
    :cond_51
    invoke-static {v3, v4}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    .line 1920
    invoke-direct {p0, v5}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->checkInterruptWhileWaiting(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)I

    move-result v0

    if-nez v0, :cond_3c

    .line 1922
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 1923
    .local v6, now:J
    sub-long v10, v6, v1

    sub-long/2addr v3, v10

    .line 1924
    move-wide v1, v6

    .line 1925
    goto :goto_28

    .line 1930
    .end local v6           #now:J
    :cond_63
    const/4 v10, 0x0

    goto :goto_50
.end method

.method public final awaitNanos(J)J
    .registers 12
    .parameter "nanosTimeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1808
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 1809
    new-instance v7, Ljava/lang/InterruptedException;

    invoke-direct {v7}, Ljava/lang/InterruptedException;-><init>()V

    throw v7

    .line 1810
    :cond_c
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->addConditionWaiter()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    move-result-object v3

    .line 1811
    .local v3, node:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget-object v7, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v7, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->fullyRelease(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)I

    move-result v6

    .line 1812
    .local v6, savedState:I
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 1813
    .local v1, lastTime:J
    const/4 v0, 0x0

    .line 1814
    .local v0, interruptMode:I
    :goto_1b
    iget-object v7, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v7, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->isOnSyncQueue(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    move-result v7

    if-nez v7, :cond_2e

    .line 1815
    const-wide/16 v7, 0x0

    cmp-long v7, p1, v7

    if-gtz v7, :cond_47

    .line 1816
    iget-object v7, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v7, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->transferAfterCancelledWait(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    .line 1826
    :cond_2e
    iget-object v7, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v7, v3, v6}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->acquireQueued(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;I)Z

    move-result v7

    if-eqz v7, :cond_3a

    const/4 v7, -0x1

    if-eq v0, v7, :cond_3a

    .line 1827
    const/4 v0, 0x1

    .line 1828
    :cond_3a
    if-eqz v0, :cond_3f

    .line 1829
    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->reportInterruptAfterWait(I)V

    .line 1830
    :cond_3f
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    sub-long/2addr v7, v1

    sub-long v7, p1, v7

    return-wide v7

    .line 1819
    :cond_47
    invoke-static {p1, p2}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    .line 1820
    invoke-direct {p0, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->checkInterruptWhileWaiting(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)I

    move-result v0

    if-nez v0, :cond_2e

    .line 1822
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1823
    .local v4, now:J
    sub-long v7, v4, v1

    sub-long/2addr p1, v7

    .line 1824
    move-wide v1, v4

    .line 1825
    goto :goto_1b
.end method

.method public final awaitUninterruptibly()V
    .registers 5

    .prologue
    .line 1703
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->addConditionWaiter()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    move-result-object v1

    .line 1704
    .local v1, node:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget-object v3, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->fullyRelease(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)I

    move-result v2

    .line 1705
    .local v2, savedState:I
    const/4 v0, 0x0

    .line 1706
    .local v0, interrupted:Z
    :cond_b
    :goto_b
    iget-object v3, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->isOnSyncQueue(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 1707
    invoke-static {}, Ljava/util/concurrent/locks/LockSupport;->park()V

    .line 1708
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1709
    const/4 v0, 0x1

    goto :goto_b

    .line 1711
    :cond_1e
    iget-object v3, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->acquireQueued(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;I)Z

    move-result v3

    if-nez v3, :cond_28

    if-eqz v0, :cond_2b

    .line 1712
    :cond_28
    invoke-static {}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->access$000()V

    .line 1713
    :cond_2b
    return-void
.end method

.method public final awaitUntil(Ljava/util/Date;)Z
    .registers 10
    .parameter "deadline"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1856
    if-nez p1, :cond_8

    .line 1857
    new-instance v6, Ljava/lang/NullPointerException;

    invoke-direct {v6}, Ljava/lang/NullPointerException;-><init>()V

    throw v6

    .line 1858
    :cond_8
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 1859
    .local v0, abstime:J
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    if-eqz v6, :cond_18

    .line 1860
    new-instance v6, Ljava/lang/InterruptedException;

    invoke-direct {v6}, Ljava/lang/InterruptedException;-><init>()V

    throw v6

    .line 1861
    :cond_18
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->addConditionWaiter()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    move-result-object v3

    .line 1862
    .local v3, node:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget-object v6, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v6, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->fullyRelease(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)I

    move-result v4

    .line 1863
    .local v4, savedState:I
    const/4 v5, 0x0

    .line 1864
    .local v5, timedout:Z
    const/4 v2, 0x0

    .line 1865
    .local v2, interruptMode:I
    :cond_24
    iget-object v6, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v6, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->isOnSyncQueue(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    move-result v6

    if-nez v6, :cond_3a

    .line 1866
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v6, v6, v0

    if-lez v6, :cond_4f

    .line 1867
    iget-object v6, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v6, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->transferAfterCancelledWait(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    move-result v5

    .line 1874
    :cond_3a
    :goto_3a
    iget-object v6, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v6, v3, v4}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->acquireQueued(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;I)Z

    move-result v6

    if-eqz v6, :cond_46

    const/4 v6, -0x1

    if-eq v2, v6, :cond_46

    .line 1875
    const/4 v2, 0x1

    .line 1876
    :cond_46
    if-eqz v2, :cond_4b

    .line 1877
    invoke-direct {p0, v2}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->reportInterruptAfterWait(I)V

    .line 1878
    :cond_4b
    if-nez v5, :cond_59

    const/4 v6, 0x1

    :goto_4e
    return v6

    .line 1870
    :cond_4f
    invoke-static {v0, v1}, Ljava/util/concurrent/locks/LockSupport;->parkUntil(J)V

    .line 1871
    invoke-direct {p0, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->checkInterruptWhileWaiting(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)I

    move-result v2

    if-eqz v2, :cond_24

    goto :goto_3a

    .line 1878
    :cond_59
    const/4 v6, 0x0

    goto :goto_4e
.end method

.method protected final getWaitQueueLength()I
    .registers 5

    .prologue
    .line 1970
    iget-object v2, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->isHeldExclusively()Z

    move-result v2

    if-nez v2, :cond_e

    .line 1971
    new-instance v2, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v2}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v2

    .line 1972
    :cond_e
    const/4 v0, 0x0

    .line 1973
    .local v0, n:I
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .local v1, w:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_11
    if-eqz v1, :cond_1d

    .line 1974
    iget v2, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_1a

    .line 1975
    add-int/lit8 v0, v0, 0x1

    .line 1973
    :cond_1a
    iget-object v1, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    goto :goto_11

    .line 1977
    :cond_1d
    return v0
.end method

.method protected final getWaitingThreads()Ljava/util/Collection;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1989
    iget-object v3, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->isHeldExclusively()Z

    move-result v3

    if-nez v3, :cond_e

    .line 1990
    new-instance v3, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v3}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v3

    .line 1991
    :cond_e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1992
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Thread;>;"
    iget-object v2, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .local v2, w:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_15
    if-eqz v2, :cond_26

    .line 1993
    iget v3, v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    const/4 v4, -0x2

    if-ne v3, v4, :cond_23

    .line 1994
    iget-object v1, v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    .line 1995
    .local v1, t:Ljava/lang/Thread;
    if-eqz v1, :cond_23

    .line 1996
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1992
    .end local v1           #t:Ljava/lang/Thread;
    :cond_23
    iget-object v2, v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    goto :goto_15

    .line 1999
    :cond_26
    return-object v0
.end method

.method protected final hasWaiters()Z
    .registers 4

    .prologue
    .line 1952
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->isHeldExclusively()Z

    move-result v1

    if-nez v1, :cond_e

    .line 1953
    new-instance v1, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v1}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v1

    .line 1954
    :cond_e
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .local v0, w:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_10
    if-eqz v0, :cond_1c

    .line 1955
    iget v1, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_19

    .line 1956
    const/4 v1, 0x1

    .line 1958
    :goto_18
    return v1

    .line 1954
    :cond_19
    iget-object v0, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    goto :goto_10

    .line 1958
    :cond_1c
    const/4 v1, 0x0

    goto :goto_18
.end method

.method final isOwnedBy(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;)Z
    .registers 3
    .parameter "sync"

    .prologue
    .line 1941
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final signal()V
    .registers 3

    .prologue
    .line 1669
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->isHeldExclusively()Z

    move-result v1

    if-nez v1, :cond_e

    .line 1670
    new-instance v1, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v1}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v1

    .line 1671
    :cond_e
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 1672
    .local v0, first:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v0, :cond_15

    .line 1673
    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->doSignal(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    .line 1674
    :cond_15
    return-void
.end method

.method public final signalAll()V
    .registers 3

    .prologue
    .line 1683
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->isHeldExclusively()Z

    move-result v1

    if-nez v1, :cond_e

    .line 1684
    new-instance v1, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v1}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v1

    .line 1685
    :cond_e
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 1686
    .local v0, first:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v0, :cond_15

    .line 1687
    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->doSignalAll(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    .line 1688
    :cond_15
    return-void
.end method
