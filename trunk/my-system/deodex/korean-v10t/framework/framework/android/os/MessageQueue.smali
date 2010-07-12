.class public Landroid/os/MessageQueue;
.super Ljava/lang/Object;
.source "MessageQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/MessageQueue$IdleHandler;
    }
.end annotation


# instance fields
.field private final mIdleHandlers:Ljava/util/ArrayList;

.field mMessages:Landroid/os/Message;

.field mQuitAllowed:Z

.field private mQuiting:Z


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/MessageQueue;->mQuiting:Z

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/MessageQueue;->mQuitAllowed:Z

    .line 89
    return-void
.end method


# virtual methods
.method public final addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .registers 4
    .parameter "handler"

    .prologue
    .line 67
    if-nez p1, :cond_a

    .line 68
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Can\'t add a null IdleHandler"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_a
    monitor-enter p0

    .line 71
    :try_start_b
    iget-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    monitor-exit p0

    .line 73
    return-void

    .line 72
    :catchall_12
    move-exception v0

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_b .. :try_end_14} :catchall_12

    throw v0
.end method

.method final enqueueMessage(Landroid/os/Message;J)Z
    .registers 12
    .parameter "msg"
    .parameter "when"

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    .line 172
    iget-wide v3, p1, Landroid/os/Message;->when:J

    cmp-long v3, v3, v6

    if-eqz v3, :cond_22

    .line 173
    new-instance v3, Landroid/util/AndroidRuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " This message is already in use."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 176
    :cond_22
    iget-object v3, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v3, :cond_32

    iget-boolean v3, p0, Landroid/os/MessageQueue;->mQuitAllowed:Z

    if-nez v3, :cond_32

    .line 177
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Main thread not allowed to quit"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 179
    :cond_32
    monitor-enter p0

    .line 180
    :try_start_33
    iget-boolean v3, p0, Landroid/os/MessageQueue;->mQuiting:Z

    if-eqz v3, :cond_5d

    .line 181
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sending message to a Handler on a dead thread"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 183
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v3, "MessageQueue"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 184
    const/4 v3, 0x0

    monitor-exit p0

    .line 207
    .end local v0           #e:Ljava/lang/RuntimeException;
    :goto_5c
    return v3

    .line 185
    :cond_5d
    iget-object v3, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v3, :cond_64

    .line 186
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/os/MessageQueue;->mQuiting:Z

    .line 189
    :cond_64
    iput-wide p2, p1, Landroid/os/Message;->when:J

    .line 191
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 192
    .local v1, p:Landroid/os/Message;
    if-eqz v1, :cond_74

    cmp-long v3, p2, v6

    if-eqz v3, :cond_74

    iget-wide v3, v1, Landroid/os/Message;->when:J

    cmp-long v3, p2, v3

    if-gez v3, :cond_7e

    .line 193
    :cond_74
    iput-object v1, p1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 194
    iput-object p1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 195
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 206
    :goto_7b
    monitor-exit p0

    move v3, v5

    .line 207
    goto :goto_5c

    .line 197
    :cond_7e
    const/4 v2, 0x0

    .line 198
    .local v2, prev:Landroid/os/Message;
    :goto_7f
    if-eqz v1, :cond_8b

    iget-wide v3, v1, Landroid/os/Message;->when:J

    cmp-long v3, v3, p2

    if-gtz v3, :cond_8b

    .line 199
    move-object v2, v1

    .line 200
    iget-object v1, v1, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_7f

    .line 202
    :cond_8b
    iget-object v3, v2, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v3, p1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 203
    iput-object p1, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 204
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    goto :goto_7b

    .line 206
    .end local v1           #p:Landroid/os/Message;
    .end local v2           #prev:Landroid/os/Message;
    :catchall_95
    move-exception v3

    monitor-exit p0
    :try_end_97
    .catchall {:try_start_33 .. :try_end_97} :catchall_95

    throw v3
.end method

.method final next()Landroid/os/Message;
    .registers 20

    .prologue
    .line 92
    const/4 v14, 0x1

    .line 96
    .local v14, tryIdle:Z
    :goto_1
    const/4 v7, 0x0

    .line 99
    .local v7, idlers:[Ljava/lang/Object;
    monitor-enter p0

    .line 100
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 101
    .local v11, now:J
    move-object/from16 v0, p0

    move-wide v1, v11

    invoke-virtual {v0, v1, v2}, Landroid/os/MessageQueue;->pullNextLocked(J)Landroid/os/Message;

    move-result-object v10

    .line 102
    .local v10, msg:Landroid/os/Message;
    if-eqz v10, :cond_12

    monitor-exit p0

    return-object v10

    .line 103
    :cond_12
    if-eqz v14, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    move-object v15, v0

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_28

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    move-object v15, v0

    invoke-virtual {v15}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v7

    .line 106
    :cond_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_4c

    .line 110
    const/4 v4, 0x0

    .line 111
    .local v4, didIdle:Z
    if-eqz v7, :cond_65

    .line 112
    move-object v3, v7

    .local v3, arr$:[Ljava/lang/Object;
    array-length v9, v3

    .local v9, len$:I
    const/4 v5, 0x0

    .end local v7           #idlers:[Ljava/lang/Object;
    .local v5, i$:I
    :goto_2f
    if-ge v5, v9, :cond_65

    aget-object v6, v3, v5

    .line 113
    .local v6, idler:Ljava/lang/Object;
    const/4 v8, 0x0

    .line 115
    .local v8, keep:Z
    const/4 v4, 0x1

    .line 116
    :try_start_35
    move-object v0, v6

    check-cast v0, Landroid/os/MessageQueue$IdleHandler;

    move-object v7, v0

    invoke-interface {v7}, Landroid/os/MessageQueue$IdleHandler;->queueIdle()Z
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_3c} :catch_4f

    move-result v8

    .line 123
    :goto_3d
    if-nez v8, :cond_49

    .line 124
    monitor-enter p0

    .line 125
    :try_start_40
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    move-object v15, v0

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 126
    monitor-exit p0
    :try_end_49
    .catchall {:try_start_40 .. :try_end_49} :catchall_62

    .line 112
    :cond_49
    add-int/lit8 v5, v5, 0x1

    goto :goto_2f

    .line 106
    .end local v3           #arr$:[Ljava/lang/Object;
    .end local v4           #didIdle:Z
    .end local v5           #i$:I
    .end local v6           #idler:Ljava/lang/Object;
    .end local v8           #keep:Z
    .end local v9           #len$:I
    .end local v10           #msg:Landroid/os/Message;
    .end local v11           #now:J
    .restart local v7       #idlers:[Ljava/lang/Object;
    :catchall_4c
    move-exception v15

    :try_start_4d
    monitor-exit p0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw v15

    .line 117
    .end local v7           #idlers:[Ljava/lang/Object;
    .restart local v3       #arr$:[Ljava/lang/Object;
    .restart local v4       #didIdle:Z
    .restart local v5       #i$:I
    .restart local v6       #idler:Ljava/lang/Object;
    .restart local v8       #keep:Z
    .restart local v9       #len$:I
    .restart local v10       #msg:Landroid/os/Message;
    .restart local v11       #now:J
    :catch_4f
    move-exception v15

    move-object v13, v15

    .line 118
    .local v13, t:Ljava/lang/Throwable;
    const-string v15, "MessageQueue"

    const-string v16, "IdleHandler threw exception"

    move-object v0, v15

    move-object/from16 v1, v16

    move-object v2, v13

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    const-string v15, "MessageQueue"

    invoke-static {v15, v13}, Lcom/android/internal/os/RuntimeInit;->crash(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3d

    .line 126
    .end local v13           #t:Ljava/lang/Throwable;
    :catchall_62
    move-exception v15

    :try_start_63
    monitor-exit p0
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_62

    throw v15

    .line 133
    .end local v3           #arr$:[Ljava/lang/Object;
    .end local v5           #i$:I
    .end local v6           #idler:Ljava/lang/Object;
    .end local v8           #keep:Z
    .end local v9           #len$:I
    :cond_65
    if-eqz v4, :cond_69

    .line 134
    const/4 v14, 0x0

    .line 135
    goto :goto_1

    .line 138
    :cond_69
    monitor-enter p0

    .line 141
    :try_start_6a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    move-object v15, v0

    if-eqz v15, :cond_96

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    move-object v15, v0

    iget-wide v15, v15, Landroid/os/Message;->when:J

    sub-long/2addr v15, v11

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-lez v15, :cond_90

    .line 143
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    move-object v15, v0

    iget-wide v15, v15, Landroid/os/Message;->when:J

    sub-long/2addr v15, v11

    move-object/from16 v0, p0

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_90
    .catchall {:try_start_6a .. :try_end_90} :catchall_93
    .catch Ljava/lang/InterruptedException; {:try_start_6a .. :try_end_90} :catch_9d

    .line 153
    :cond_90
    :goto_90
    :try_start_90
    monitor-exit p0

    goto/16 :goto_1

    :catchall_93
    move-exception v15

    monitor-exit p0
    :try_end_95
    .catchall {:try_start_90 .. :try_end_95} :catchall_93

    throw v15

    .line 147
    :cond_96
    :try_start_96
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    .line 148
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->wait()V
    :try_end_9c
    .catchall {:try_start_96 .. :try_end_9c} :catchall_93
    .catch Ljava/lang/InterruptedException; {:try_start_96 .. :try_end_9c} :catch_9d

    goto :goto_90

    .line 151
    :catch_9d
    move-exception v15

    goto :goto_90
.end method

.method poke()V
    .registers 2

    .prologue
    .line 325
    monitor-enter p0

    .line 326
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 327
    monitor-exit p0

    .line 328
    return-void

    .line 327
    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_6

    throw v0
.end method

.method final pullNextLocked(J)Landroid/os/Message;
    .registers 6
    .parameter "now"

    .prologue
    .line 158
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 159
    .local v0, msg:Landroid/os/Message;
    if-eqz v0, :cond_10

    .line 160
    iget-wide v1, v0, Landroid/os/Message;->when:J

    cmp-long v1, p1, v1

    if-ltz v1, :cond_10

    .line 161
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    move-object v1, v0

    .line 168
    :goto_f
    return-object v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method final removeCallbacksAndMessages(Landroid/os/Handler;Ljava/lang/Object;)V
    .registers 7
    .parameter "h"
    .parameter "object"

    .prologue
    .line 283
    monitor-enter p0

    .line 284
    :try_start_1
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 288
    .local v2, p:Landroid/os/Message;
    :goto_3
    if-eqz v2, :cond_18

    iget-object v3, v2, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_18

    if-eqz p2, :cond_f

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p2, :cond_18

    .line 289
    :cond_f
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 290
    .local v0, n:Landroid/os/Message;
    iput-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 291
    invoke-virtual {v2}, Landroid/os/Message;->recycle()V

    .line 292
    move-object v2, v0

    .line 293
    goto :goto_3

    .line 296
    .end local v0           #n:Landroid/os/Message;
    :cond_18
    :goto_18
    if-eqz v2, :cond_35

    .line 297
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 298
    .restart local v0       #n:Landroid/os/Message;
    if-eqz v0, :cond_33

    .line 299
    iget-object v3, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_33

    if-eqz p2, :cond_28

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p2, :cond_33

    .line 300
    :cond_28
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 301
    .local v1, nn:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 302
    iput-object v1, v2, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_18

    .line 308
    .end local v0           #n:Landroid/os/Message;
    .end local v1           #nn:Landroid/os/Message;
    .end local v2           #p:Landroid/os/Message;
    :catchall_30
    move-exception v3

    monitor-exit p0
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_30

    throw v3

    .line 306
    .restart local v0       #n:Landroid/os/Message;
    .restart local v2       #p:Landroid/os/Message;
    :cond_33
    move-object v2, v0

    .line 307
    goto :goto_18

    .line 308
    .end local v0           #n:Landroid/os/Message;
    :cond_35
    :try_start_35
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_30

    .line 309
    return-void
.end method

.method public final removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .registers 3
    .parameter "handler"

    .prologue
    .line 83
    monitor-enter p0

    .line 84
    :try_start_1
    iget-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 85
    monitor-exit p0

    .line 86
    return-void

    .line 85
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method final removeMessages(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .registers 8
    .parameter "h"
    .parameter "r"
    .parameter "object"

    .prologue
    .line 249
    if-nez p2, :cond_3

    .line 280
    :goto_2
    return-void

    .line 253
    :cond_3
    monitor-enter p0

    .line 254
    :try_start_4
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 258
    .local v2, p:Landroid/os/Message;
    :goto_6
    if-eqz v2, :cond_1f

    iget-object v3, v2, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_1f

    iget-object v3, v2, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v3, p2, :cond_1f

    if-eqz p3, :cond_16

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p3, :cond_1f

    .line 259
    :cond_16
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 260
    .local v0, n:Landroid/os/Message;
    iput-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 261
    invoke-virtual {v2}, Landroid/os/Message;->recycle()V

    .line 262
    move-object v2, v0

    .line 263
    goto :goto_6

    .line 266
    .end local v0           #n:Landroid/os/Message;
    :cond_1f
    :goto_1f
    if-eqz v2, :cond_40

    .line 267
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 268
    .restart local v0       #n:Landroid/os/Message;
    if-eqz v0, :cond_3e

    .line 269
    iget-object v3, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_3e

    iget-object v3, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v3, p2, :cond_3e

    if-eqz p3, :cond_33

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p3, :cond_3e

    .line 271
    :cond_33
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 272
    .local v1, nn:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 273
    iput-object v1, v2, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_1f

    .line 279
    .end local v0           #n:Landroid/os/Message;
    .end local v1           #nn:Landroid/os/Message;
    .end local v2           #p:Landroid/os/Message;
    :catchall_3b
    move-exception v3

    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_4 .. :try_end_3d} :catchall_3b

    throw v3

    .line 277
    .restart local v0       #n:Landroid/os/Message;
    .restart local v2       #p:Landroid/os/Message;
    :cond_3e
    move-object v2, v0

    .line 278
    goto :goto_1f

    .line 279
    .end local v0           #n:Landroid/os/Message;
    :cond_40
    :try_start_40
    monitor-exit p0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3b

    goto :goto_2
.end method

.method final removeMessages(Landroid/os/Handler;ILjava/lang/Object;Z)Z
    .registers 11
    .parameter "h"
    .parameter "what"
    .parameter "object"
    .parameter "doRemove"

    .prologue
    const/4 v5, 0x1

    .line 212
    monitor-enter p0

    .line 213
    :try_start_2
    iget-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 214
    .local v3, p:Landroid/os/Message;
    const/4 v0, 0x0

    .line 218
    .local v0, found:Z
    :goto_5
    if-eqz v3, :cond_2c

    iget-object v4, v3, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v4, p1, :cond_2c

    iget v4, v3, Landroid/os/Message;->what:I

    if-ne v4, p2, :cond_2c

    if-eqz p3, :cond_15

    iget-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v4, p3, :cond_2c

    .line 219
    :cond_15
    if-nez p4, :cond_1a

    monitor-exit p0

    move v4, v5

    .line 244
    :goto_19
    return v4

    .line 220
    :cond_1a
    const/4 v0, 0x1

    .line 221
    iget-object v1, v3, Landroid/os/Message;->next:Landroid/os/Message;

    .line 222
    .local v1, n:Landroid/os/Message;
    iput-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 223
    invoke-virtual {v3}, Landroid/os/Message;->recycle()V

    .line 224
    move-object v3, v1

    .line 225
    goto :goto_5

    .line 234
    :cond_24
    const/4 v0, 0x1

    .line 235
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 236
    .local v2, nn:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 237
    iput-object v2, v3, Landroid/os/Message;->next:Landroid/os/Message;

    .line 228
    .end local v1           #n:Landroid/os/Message;
    .end local v2           #nn:Landroid/os/Message;
    :cond_2c
    :goto_2c
    if-eqz v3, :cond_47

    .line 229
    iget-object v1, v3, Landroid/os/Message;->next:Landroid/os/Message;

    .line 230
    .restart local v1       #n:Landroid/os/Message;
    if-eqz v1, :cond_45

    .line 231
    iget-object v4, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v4, p1, :cond_45

    iget v4, v1, Landroid/os/Message;->what:I

    if-ne v4, p2, :cond_45

    if-eqz p3, :cond_40

    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v4, p3, :cond_45

    .line 233
    :cond_40
    if-nez p4, :cond_24

    monitor-exit p0

    move v4, v5

    goto :goto_19

    .line 241
    :cond_45
    move-object v3, v1

    .line 242
    goto :goto_2c

    .line 244
    .end local v1           #n:Landroid/os/Message;
    :cond_47
    monitor-exit p0

    move v4, v0

    goto :goto_19

    .line 245
    .end local v0           #found:Z
    .end local v3           #p:Landroid/os/Message;
    :catchall_4a
    move-exception v4

    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_2 .. :try_end_4c} :catchall_4a

    throw v4
.end method
