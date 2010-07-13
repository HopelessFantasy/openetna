.class public Ljava/util/concurrent/Exchanger;
.super Ljava/lang/Object;
.source "Exchanger.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private arrivalCount:I

.field private item:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final taken:Ljava/util/concurrent/locks/Condition;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 154
    .local p0, this:Ljava/util/concurrent/Exchanger;,"Ljava/util/concurrent/Exchanger<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/Exchanger;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 67
    iget-object v0, p0, Ljava/util/concurrent/Exchanger;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/Exchanger;->taken:Ljava/util/concurrent/locks/Condition;

    .line 155
    return-void
.end method

.method private doExchange(Ljava/lang/Object;ZJ)Ljava/lang/Object;
    .registers 14
    .parameter
    .parameter "timed"
    .parameter "nanos"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;ZJ)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/concurrent/Exchanger;,"Ljava/util/concurrent/Exchanger<TV;>;"
    .local p1, x:Ljava/lang/Object;,"TV;"
    const-wide/16 v7, 0x0

    const/4 v6, 0x2

    .line 82
    iget-object v5, p0, Ljava/util/concurrent/Exchanger;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 88
    :goto_8
    :try_start_8
    iget v5, p0, Ljava/util/concurrent/Exchanger;->arrivalCount:I

    if-ne v5, v6, :cond_2c

    .line 89
    if-nez p2, :cond_1b

    .line 90
    iget-object v5, p0, Ljava/util/concurrent/Exchanger;->taken:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_14

    goto :goto_8

    .line 147
    :catchall_14
    move-exception v5

    iget-object v6, p0, Ljava/util/concurrent/Exchanger;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v5

    .line 91
    :cond_1b
    cmp-long v5, p3, v7

    if-lez v5, :cond_26

    .line 92
    :try_start_1f
    iget-object v5, p0, Ljava/util/concurrent/Exchanger;->taken:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v5, p3, p4}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide p3

    goto :goto_8

    .line 94
    :cond_26
    new-instance v5, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v5}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v5

    .line 97
    :cond_2c
    iget v5, p0, Ljava/util/concurrent/Exchanger;->arrivalCount:I

    add-int/lit8 v0, v5, 0x1

    iput v0, p0, Ljava/util/concurrent/Exchanger;->arrivalCount:I

    .line 100
    .local v0, count:I
    if-ne v0, v6, :cond_44

    .line 101
    iget-object v3, p0, Ljava/util/concurrent/Exchanger;->item:Ljava/lang/Object;

    .line 102
    .local v3, other:Ljava/lang/Object;,"TV;"
    iput-object p1, p0, Ljava/util/concurrent/Exchanger;->item:Ljava/lang/Object;

    .line 103
    iget-object v5, p0, Ljava/util/concurrent/Exchanger;->taken:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_3d
    .catchall {:try_start_1f .. :try_end_3d} :catchall_14

    .line 147
    iget-object v5, p0, Ljava/util/concurrent/Exchanger;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move-object v4, v3

    .end local v3           #other:Ljava/lang/Object;,"TV;"
    .local v4, other:Ljava/lang/Object;,"TV;"
    :goto_43
    return-object v4

    .line 110
    .end local v4           #other:Ljava/lang/Object;,"TV;"
    :cond_44
    :try_start_44
    iput-object p1, p0, Ljava/util/concurrent/Exchanger;->item:Ljava/lang/Object;
    :try_end_46
    .catchall {:try_start_44 .. :try_end_46} :catchall_14

    .line 111
    const/4 v2, 0x0

    .line 113
    .local v2, interrupted:Ljava/lang/InterruptedException;
    :goto_47
    :try_start_47
    iget v5, p0, Ljava/util/concurrent/Exchanger;->arrivalCount:I

    if-eq v5, v6, :cond_56

    .line 114
    if-nez p2, :cond_77

    .line 115
    iget-object v5, p0, Ljava/util/concurrent/Exchanger;->taken:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_52
    .catchall {:try_start_47 .. :try_end_52} :catchall_14
    .catch Ljava/lang/InterruptedException; {:try_start_47 .. :try_end_52} :catch_53

    goto :goto_47

    .line 121
    :catch_53
    move-exception v5

    move-object v1, v5

    .line 122
    .local v1, ie:Ljava/lang/InterruptedException;
    move-object v2, v1

    .line 127
    .end local v1           #ie:Ljava/lang/InterruptedException;
    :cond_56
    :try_start_56
    iget-object v3, p0, Ljava/util/concurrent/Exchanger;->item:Ljava/lang/Object;

    .line 128
    .restart local v3       #other:Ljava/lang/Object;,"TV;"
    const/4 v5, 0x0

    iput-object v5, p0, Ljava/util/concurrent/Exchanger;->item:Ljava/lang/Object;

    .line 129
    iget v0, p0, Ljava/util/concurrent/Exchanger;->arrivalCount:I

    .line 130
    const/4 v5, 0x0

    iput v5, p0, Ljava/util/concurrent/Exchanger;->arrivalCount:I

    .line 131
    iget-object v5, p0, Ljava/util/concurrent/Exchanger;->taken:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 135
    if-ne v0, v6, :cond_82

    .line 136
    if-eqz v2, :cond_70

    .line 137
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V
    :try_end_70
    .catchall {:try_start_56 .. :try_end_70} :catchall_14

    .line 147
    :cond_70
    iget-object v5, p0, Ljava/util/concurrent/Exchanger;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move-object v4, v3

    .end local v3           #other:Ljava/lang/Object;,"TV;"
    .restart local v4       #other:Ljava/lang/Object;,"TV;"
    goto :goto_43

    .line 116
    .end local v4           #other:Ljava/lang/Object;,"TV;"
    :cond_77
    cmp-long v5, p3, v7

    if-lez v5, :cond_56

    .line 117
    :try_start_7b
    iget-object v5, p0, Ljava/util/concurrent/Exchanger;->taken:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v5, p3, p4}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_80
    .catchall {:try_start_7b .. :try_end_80} :catchall_14
    .catch Ljava/lang/InterruptedException; {:try_start_7b .. :try_end_80} :catch_53

    move-result-wide p3

    goto :goto_47

    .line 142
    .restart local v3       #other:Ljava/lang/Object;,"TV;"
    :cond_82
    if-eqz v2, :cond_85

    .line 143
    :try_start_84
    throw v2

    .line 145
    :cond_85
    new-instance v5, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v5}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v5
    :try_end_8b
    .catchall {:try_start_84 .. :try_end_8b} :catchall_14
.end method


# virtual methods
.method public exchange(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 190
    .local p0, this:Ljava/util/concurrent/Exchanger;,"Ljava/util/concurrent/Exchanger<TV;>;"
    .local p1, x:Ljava/lang/Object;,"TV;"
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    :try_start_3
    invoke-direct {p0, p1, v1, v2, v3}, Ljava/util/concurrent/Exchanger;->doExchange(Ljava/lang/Object;ZJ)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_6} :catch_8

    move-result-object v1

    return-object v1

    .line 191
    :catch_8
    move-exception v0

    .line 192
    .local v0, cannotHappen:Ljava/util/concurrent/TimeoutException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public exchange(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 8
    .parameter
    .parameter "timeout"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 242
    .local p0, this:Ljava/util/concurrent/Exchanger;,"Ljava/util/concurrent/Exchanger<TV;>;"
    .local p1, x:Ljava/lang/Object;,"TV;"
    const/4 v0, 0x1

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    invoke-direct {p0, p1, v0, v1, v2}, Ljava/util/concurrent/Exchanger;->doExchange(Ljava/lang/Object;ZJ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
