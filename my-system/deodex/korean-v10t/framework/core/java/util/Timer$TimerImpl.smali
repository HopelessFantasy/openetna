.class final Ljava/util/Timer$TimerImpl;
.super Ljava/lang/Thread;
.source "Timer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Timer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TimerImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Timer$TimerImpl$TimerTree;,
        Ljava/util/Timer$TimerImpl$TimerNode;
    }
.end annotation


# instance fields
.field private cancelled:Z

.field private finished:Z

.field private tasks:Ljava/util/Timer$TimerImpl$TimerTree;


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .registers 5
    .parameter "name"
    .parameter "isDaemon"

    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 188
    new-instance v0, Ljava/util/Timer$TimerImpl$TimerTree;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/Timer$TimerImpl$TimerTree;-><init>(Ljava/util/Timer$1;)V

    iput-object v0, p0, Ljava/util/Timer$TimerImpl;->tasks:Ljava/util/Timer$TimerImpl$TimerTree;

    .line 201
    invoke-virtual {p0, p1}, Ljava/util/Timer$TimerImpl;->setName(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0, p2}, Ljava/util/Timer$TimerImpl;->setDaemon(Z)V

    .line 203
    invoke-virtual {p0}, Ljava/util/Timer$TimerImpl;->start()V

    .line 204
    return-void
.end method

.method constructor <init>(Z)V
    .registers 4
    .parameter "isDaemon"

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 188
    new-instance v0, Ljava/util/Timer$TimerImpl$TimerTree;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/Timer$TimerImpl$TimerTree;-><init>(Ljava/util/Timer$1;)V

    iput-object v0, p0, Ljava/util/Timer$TimerImpl;->tasks:Ljava/util/Timer$TimerImpl$TimerTree;

    .line 196
    invoke-virtual {p0, p1}, Ljava/util/Timer$TimerImpl;->setDaemon(Z)V

    .line 197
    invoke-virtual {p0}, Ljava/util/Timer$TimerImpl;->start()V

    .line 198
    return-void
.end method

.method static synthetic access$202(Ljava/util/Timer$TimerImpl;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-boolean p1, p0, Ljava/util/Timer$TimerImpl;->finished:Z

    return p1
.end method

.method static synthetic access$300(Ljava/util/Timer$TimerImpl;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-boolean v0, p0, Ljava/util/Timer$TimerImpl;->cancelled:Z

    return v0
.end method

.method static synthetic access$400(Ljava/util/Timer$TimerImpl;Ljava/util/TimerTask;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Ljava/util/Timer$TimerImpl;->insertTask(Ljava/util/TimerTask;)V

    return-void
.end method

.method private insertTask(Ljava/util/TimerTask;)V
    .registers 4
    .parameter "newTask"

    .prologue
    .line 302
    iget-object v0, p0, Ljava/util/Timer$TimerImpl;->tasks:Ljava/util/Timer$TimerImpl$TimerTree;

    new-instance v1, Ljava/util/Timer$TimerImpl$TimerNode;

    invoke-direct {v1, p1}, Ljava/util/Timer$TimerImpl$TimerNode;-><init>(Ljava/util/TimerTask;)V

    invoke-virtual {v0, v1}, Ljava/util/Timer$TimerImpl$TimerTree;->insert(Ljava/util/Timer$TimerImpl$TimerNode;)V

    .line 303
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 304
    return-void
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .registers 3

    .prologue
    .line 310
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Ljava/util/Timer$TimerImpl;->cancelled:Z

    .line 311
    new-instance v0, Ljava/util/Timer$TimerImpl$TimerTree;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/Timer$TimerImpl$TimerTree;-><init>(Ljava/util/Timer$1;)V

    iput-object v0, p0, Ljava/util/Timer$TimerImpl;->tasks:Ljava/util/Timer$TimerImpl$TimerTree;

    .line 312
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_11

    .line 313
    monitor-exit p0

    return-void

    .line 310
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public purge()I
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 316
    iget-object v0, p0, Ljava/util/Timer$TimerImpl;->tasks:Ljava/util/Timer$TimerImpl$TimerTree;

    invoke-virtual {v0}, Ljava/util/Timer$TimerImpl$TimerTree;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    .line 322
    :goto_a
    return v0

    .line 320
    :cond_b
    iget-object v0, p0, Ljava/util/Timer$TimerImpl;->tasks:Ljava/util/Timer$TimerImpl$TimerTree;

    iput v1, v0, Ljava/util/Timer$TimerImpl$TimerTree;->deletedCancelledNumber:I

    .line 321
    iget-object v0, p0, Ljava/util/Timer$TimerImpl;->tasks:Ljava/util/Timer$TimerImpl$TimerTree;

    iget-object v0, v0, Ljava/util/Timer$TimerImpl$TimerTree;->root:Ljava/util/Timer$TimerImpl$TimerNode;

    iget-object v1, p0, Ljava/util/Timer$TimerImpl;->tasks:Ljava/util/Timer$TimerImpl$TimerTree;

    invoke-virtual {v0, v1}, Ljava/util/Timer$TimerImpl$TimerNode;->deleteIfCancelled(Ljava/util/Timer$TimerImpl$TimerTree;)V

    .line 322
    iget-object v0, p0, Ljava/util/Timer$TimerImpl;->tasks:Ljava/util/Timer$TimerImpl$TimerTree;

    iget v0, v0, Ljava/util/Timer$TimerImpl$TimerTree;->deletedCancelledNumber:I

    goto :goto_a
.end method

.method public run()V
    .registers 14

    .prologue
    const-wide/16 v11, 0x0

    .line 214
    :goto_2
    monitor-enter p0

    .line 216
    :try_start_3
    iget-boolean v6, p0, Ljava/util/Timer$TimerImpl;->cancelled:Z

    if-eqz v6, :cond_9

    .line 217
    monitor-exit p0

    .line 221
    :goto_8
    return-void

    .line 219
    :cond_9
    iget-object v6, p0, Ljava/util/Timer$TimerImpl;->tasks:Ljava/util/Timer$TimerImpl$TimerTree;

    invoke-virtual {v6}, Ljava/util/Timer$TimerImpl$TimerTree;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 220
    iget-boolean v6, p0, Ljava/util/Timer$TimerImpl;->finished:Z

    if-eqz v6, :cond_1a

    .line 221
    monitor-exit p0

    goto :goto_8

    .line 289
    :catchall_17
    move-exception v6

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v6

    .line 225
    :cond_1a
    :try_start_1a
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_17
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_1d} :catch_92

    .line 228
    :goto_1d
    :try_start_1d
    monitor-exit p0

    goto :goto_2

    .line 231
    :cond_1f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 233
    .local v0, currentTime:J
    iget-object v6, p0, Ljava/util/Timer$TimerImpl;->tasks:Ljava/util/Timer$TimerImpl$TimerTree;

    invoke-virtual {v6}, Ljava/util/Timer$TimerImpl$TimerTree;->minimum()Ljava/util/Timer$TimerImpl$TimerNode;

    move-result-object v3

    .line 234
    .local v3, taskNode:Ljava/util/Timer$TimerImpl$TimerNode;
    iget-object v2, v3, Ljava/util/Timer$TimerImpl$TimerNode;->task:Ljava/util/TimerTask;

    .line 237
    .local v2, task:Ljava/util/TimerTask;
    iget-object v6, v2, Ljava/util/TimerTask;->lock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_2e
    .catchall {:try_start_1d .. :try_end_2e} :catchall_17

    .line 238
    :try_start_2e
    iget-boolean v7, v2, Ljava/util/TimerTask;->cancelled:Z

    if-eqz v7, :cond_3a

    .line 239
    iget-object v7, p0, Ljava/util/Timer$TimerImpl;->tasks:Ljava/util/Timer$TimerImpl$TimerTree;

    invoke-virtual {v7, v3}, Ljava/util/Timer$TimerImpl$TimerTree;->delete(Ljava/util/Timer$TimerImpl$TimerNode;)V

    .line 240
    monitor-exit v6
    :try_end_38
    .catchall {:try_start_2e .. :try_end_38} :catchall_48

    :try_start_38
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_17

    goto :goto_2

    .line 244
    :cond_3a
    :try_start_3a
    iget-wide v7, v2, Ljava/util/TimerTask;->when:J

    sub-long v4, v7, v0

    .line 245
    .local v4, timeToSleep:J
    monitor-exit v6
    :try_end_3f
    .catchall {:try_start_3a .. :try_end_3f} :catchall_48

    .line 247
    cmp-long v6, v4, v11

    if-lez v6, :cond_4b

    .line 250
    :try_start_43
    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_17
    .catch Ljava/lang/InterruptedException; {:try_start_43 .. :try_end_46} :catch_94

    .line 254
    :goto_46
    :try_start_46
    monitor-exit p0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_17

    goto :goto_2

    .line 245
    .end local v4           #timeToSleep:J
    :catchall_48
    move-exception v7

    :try_start_49
    monitor-exit v6
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    :try_start_4a
    throw v7

    .line 259
    .restart local v4       #timeToSleep:J
    :cond_4b
    iget-object v6, v2, Ljava/util/TimerTask;->lock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_4e
    .catchall {:try_start_4a .. :try_end_4e} :catchall_17

    .line 260
    :try_start_4e
    iget-boolean v7, v2, Ljava/util/TimerTask;->cancelled:Z

    if-eqz v7, :cond_5a

    .line 261
    iget-object v7, p0, Ljava/util/Timer$TimerImpl;->tasks:Ljava/util/Timer$TimerImpl$TimerTree;

    invoke-virtual {v7, v3}, Ljava/util/Timer$TimerImpl$TimerTree;->delete(Ljava/util/Timer$TimerImpl$TimerNode;)V

    .line 262
    monitor-exit v6
    :try_end_58
    .catchall {:try_start_4e .. :try_end_58} :catchall_8a

    :try_start_58
    monitor-exit p0
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_17

    goto :goto_2

    .line 266
    :cond_5a
    :try_start_5a
    iget-wide v7, v2, Ljava/util/TimerTask;->when:J

    invoke-virtual {v2, v7, v8}, Ljava/util/TimerTask;->setScheduledTime(J)V

    .line 269
    iget-object v7, p0, Ljava/util/Timer$TimerImpl;->tasks:Ljava/util/Timer$TimerImpl$TimerTree;

    invoke-virtual {v7, v3}, Ljava/util/Timer$TimerImpl$TimerTree;->delete(Ljava/util/Timer$TimerImpl$TimerNode;)V

    .line 272
    iget-wide v7, v2, Ljava/util/TimerTask;->period:J

    cmp-long v7, v7, v11

    if-ltz v7, :cond_8d

    .line 274
    iget-boolean v7, v2, Ljava/util/TimerTask;->fixedRate:Z

    if-eqz v7, :cond_80

    .line 276
    iget-wide v7, v2, Ljava/util/TimerTask;->when:J

    iget-wide v9, v2, Ljava/util/TimerTask;->period:J

    add-long/2addr v7, v9

    iput-wide v7, v2, Ljava/util/TimerTask;->when:J

    .line 284
    :goto_75
    invoke-direct {p0, v2}, Ljava/util/Timer$TimerImpl;->insertTask(Ljava/util/TimerTask;)V

    .line 288
    :goto_78
    monitor-exit v6
    :try_end_79
    .catchall {:try_start_5a .. :try_end_79} :catchall_8a

    .line 289
    :try_start_79
    monitor-exit p0
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_17

    .line 293
    :try_start_7a
    invoke-virtual {v2}, Ljava/util/TimerTask;->run()V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_7d} :catch_7e

    goto :goto_2

    .line 294
    :catch_7e
    move-exception v6

    goto :goto_2

    .line 279
    :cond_80
    :try_start_80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, v2, Ljava/util/TimerTask;->period:J

    add-long/2addr v7, v9

    iput-wide v7, v2, Ljava/util/TimerTask;->when:J

    goto :goto_75

    .line 288
    :catchall_8a
    move-exception v7

    monitor-exit v6
    :try_end_8c
    .catchall {:try_start_80 .. :try_end_8c} :catchall_8a

    :try_start_8c
    throw v7
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_17

    .line 286
    :cond_8d
    const-wide/16 v7, 0x0

    :try_start_8f
    iput-wide v7, v2, Ljava/util/TimerTask;->when:J
    :try_end_91
    .catchall {:try_start_8f .. :try_end_91} :catchall_8a

    goto :goto_78

    .line 226
    .end local v0           #currentTime:J
    .end local v2           #task:Ljava/util/TimerTask;
    .end local v3           #taskNode:Ljava/util/Timer$TimerImpl$TimerNode;
    .end local v4           #timeToSleep:J
    :catch_92
    move-exception v6

    goto :goto_1d

    .line 251
    .restart local v0       #currentTime:J
    .restart local v2       #task:Ljava/util/TimerTask;
    .restart local v3       #taskNode:Ljava/util/Timer$TimerImpl$TimerNode;
    .restart local v4       #timeToSleep:J
    :catch_94
    move-exception v6

    goto :goto_46
.end method
