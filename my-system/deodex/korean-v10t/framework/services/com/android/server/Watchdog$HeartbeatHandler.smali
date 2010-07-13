.class final Lcom/android/server/Watchdog$HeartbeatHandler;
.super Landroid/os/Handler;
.source "Watchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/Watchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "HeartbeatHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/Watchdog;


# direct methods
.method constructor <init>(Lcom/android/server/Watchdog;)V
    .registers 2
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Lcom/android/server/Watchdog$HeartbeatHandler;->this$0:Lcom/android/server/Watchdog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 19
    .parameter "msg"

    .prologue
    .line 236
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v13, v0

    packed-switch v13, :pswitch_data_152

    .line 316
    .end local p1
    :cond_8
    :goto_8
    return-void

    .line 238
    .restart local p1
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog$HeartbeatHandler;->this$0:Lcom/android/server/Watchdog;

    move-object v13, v0

    iget-boolean v13, v13, Lcom/android/server/Watchdog;->mHaveGlobalPss:Z

    if-eqz v13, :cond_8

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog$HeartbeatHandler;->this$0:Lcom/android/server/Watchdog;

    move-object v13, v0

    const/4 v14, 0x0

    iput-boolean v14, v13, Lcom/android/server/Watchdog;->mHaveGlobalPss:Z

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog$HeartbeatHandler;->this$0:Lcom/android/server/Watchdog;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/android/server/Watchdog;->logGlobalMemory()V

    goto :goto_8

    .line 248
    :pswitch_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog$HeartbeatHandler;->this$0:Lcom/android/server/Watchdog;

    move-object v13, v0

    iget-boolean v13, v13, Lcom/android/server/Watchdog;->mHavePss:Z

    if-eqz v13, :cond_3c

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog$HeartbeatHandler;->this$0:Lcom/android/server/Watchdog;

    move-object v13, v0

    const/4 v14, 0x0

    iput-boolean v14, v13, Lcom/android/server/Watchdog;->mHavePss:Z

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog$HeartbeatHandler;->this$0:Lcom/android/server/Watchdog;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/android/server/Watchdog;->checkMemory()V

    .line 256
    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog$HeartbeatHandler;->this$0:Lcom/android/server/Watchdog;

    move-object v13, v0

    iget-boolean v13, v13, Lcom/android/server/Watchdog;->mHaveGlobalPss:Z

    if-eqz v13, :cond_55

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog$HeartbeatHandler;->this$0:Lcom/android/server/Watchdog;

    move-object v13, v0

    const/4 v14, 0x0

    iput-boolean v14, v13, Lcom/android/server/Watchdog;->mHaveGlobalPss:Z

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog$HeartbeatHandler;->this$0:Lcom/android/server/Watchdog;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/android/server/Watchdog;->logGlobalMemory()V

    .line 264
    :cond_55
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 267
    .local v7, now:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog$HeartbeatHandler;->this$0:Lcom/android/server/Watchdog;

    move-object v13, v0

    iget v13, v13, Lcom/android/server/Watchdog;->mReqRebootInterval:I

    if-ltz v13, :cond_125

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog$HeartbeatHandler;->this$0:Lcom/android/server/Watchdog;

    move-object v13, v0

    iget v13, v13, Lcom/android/server/Watchdog;->mReqRebootInterval:I

    move v11, v13

    .line 271
    .local v11, rebootInterval:I
    :goto_6a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog$HeartbeatHandler;->this$0:Lcom/android/server/Watchdog;

    move-object v13, v0

    iget v13, v13, Lcom/android/server/Watchdog;->mRebootInterval:I

    if-eq v13, v11, :cond_83

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog$HeartbeatHandler;->this$0:Lcom/android/server/Watchdog;

    move-object v13, v0

    iput v11, v13, Lcom/android/server/Watchdog;->mRebootInterval:I

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog$HeartbeatHandler;->this$0:Lcom/android/server/Watchdog;

    move-object v13, v0

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/server/Watchdog;->checkReboot(Z)V

    .line 279
    :cond_83
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog$HeartbeatHandler;->this$0:Lcom/android/server/Watchdog;

    move-object v13, v0

    iget-object v13, v13, Lcom/android/server/Watchdog;->mResolver:Landroid/content/ContentResolver;

    const-string v14, "memcheck_interval"

    const-wide/16 v15, 0x708

    invoke-static/range {v13 .. v16}, Landroid/provider/Settings$Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v13

    const-wide/16 v15, 0x3e8

    mul-long v3, v13, v15

    .line 282
    .local v3, memCheckInterval:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog$HeartbeatHandler;->this$0:Lcom/android/server/Watchdog;

    move-object v13, v0

    iget-wide v13, v13, Lcom/android/server/Watchdog;->mLastMemCheckTime:J

    add-long/2addr v13, v3

    cmp-long v13, v13, v7

    if-gez v13, :cond_f3

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog$HeartbeatHandler;->this$0:Lcom/android/server/Watchdog;

    move-object v13, v0

    iput-wide v7, v13, Lcom/android/server/Watchdog;->mLastMemCheckTime:J

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog$HeartbeatHandler;->this$0:Lcom/android/server/Watchdog;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/android/server/Watchdog;->collectMemory()V

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog$HeartbeatHandler;->this$0:Lcom/android/server/Watchdog;

    move-object v13, v0

    const/4 v14, 0x1

    iput-boolean v14, v13, Lcom/android/server/Watchdog;->mHavePss:Z

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog$HeartbeatHandler;->this$0:Lcom/android/server/Watchdog;

    move-object v13, v0

    iget-object v13, v13, Lcom/android/server/Watchdog;->mResolver:Landroid/content/ContentResolver;

    const-string v14, "memcheck_log_realtime_interval"

    const-wide/16 v15, 0x1c20

    invoke-static/range {v13 .. v16}, Landroid/provider/Settings$Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v13

    const-wide/16 v15, 0x3e8

    mul-long v5, v13, v15

    .line 295
    .local v5, memCheckRealtimeInterval:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 296
    .local v9, realtimeNow:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog$HeartbeatHandler;->this$0:Lcom/android/server/Watchdog;

    move-object v13, v0

    iget-wide v13, v13, Lcom/android/server/Watchdog;->mLastMemCheckRealtime:J

    add-long/2addr v13, v5

    cmp-long v13, v13, v9

    if-gez v13, :cond_f3

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog$HeartbeatHandler;->this$0:Lcom/android/server/Watchdog;

    move-object v13, v0

    iput-wide v9, v13, Lcom/android/server/Watchdog;->mLastMemCheckRealtime:J

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog$HeartbeatHandler;->this$0:Lcom/android/server/Watchdog;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/android/server/Watchdog;->collectGlobalMemory()V

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog$HeartbeatHandler;->this$0:Lcom/android/server/Watchdog;

    move-object v13, v0

    const/4 v14, 0x1

    iput-boolean v14, v13, Lcom/android/server/Watchdog;->mHaveGlobalPss:Z

    .line 304
    .end local v5           #memCheckRealtimeInterval:J
    .end local v9           #realtimeNow:J
    :cond_f3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog$HeartbeatHandler;->this$0:Lcom/android/server/Watchdog;

    move-object v13, v0

    iget-object v13, v13, Lcom/android/server/Watchdog;->mMonitors:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 305
    .local v12, size:I
    const/4 v2, 0x0

    .end local p1
    .local v2, i:I
    :goto_ff
    if-ge v2, v12, :cond_136

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog$HeartbeatHandler;->this$0:Lcom/android/server/Watchdog;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog$HeartbeatHandler;->this$0:Lcom/android/server/Watchdog;

    move-object v14, v0

    iget-object v14, v14, Lcom/android/server/Watchdog;->mMonitors:Ljava/util/ArrayList;

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/Watchdog$Monitor;

    move-object/from16 v0, p1

    move-object v1, v13

    iput-object v0, v1, Lcom/android/server/Watchdog;->mCurrentMonitor:Lcom/android/server/Watchdog$Monitor;

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog$HeartbeatHandler;->this$0:Lcom/android/server/Watchdog;

    move-object v13, v0

    iget-object v13, v13, Lcom/android/server/Watchdog;->mCurrentMonitor:Lcom/android/server/Watchdog$Monitor;

    invoke-interface {v13}, Lcom/android/server/Watchdog$Monitor;->monitor()V

    .line 305
    add-int/lit8 v2, v2, 0x1

    goto :goto_ff

    .line 267
    .end local v2           #i:I
    .end local v3           #memCheckInterval:J
    .end local v11           #rebootInterval:I
    .end local v12           #size:I
    .restart local p1
    :cond_125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog$HeartbeatHandler;->this$0:Lcom/android/server/Watchdog;

    move-object v13, v0

    iget-object v13, v13, Lcom/android/server/Watchdog;->mResolver:Landroid/content/ContentResolver;

    const-string v14, "reboot_interval"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    move v11, v13

    goto/16 :goto_6a

    .line 310
    .end local p1
    .restart local v2       #i:I
    .restart local v3       #memCheckInterval:J
    .restart local v11       #rebootInterval:I
    .restart local v12       #size:I
    :cond_136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog$HeartbeatHandler;->this$0:Lcom/android/server/Watchdog;

    move-object v13, v0

    monitor-enter v13

    .line 311
    :try_start_13c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog$HeartbeatHandler;->this$0:Lcom/android/server/Watchdog;

    move-object v14, v0

    const/4 v15, 0x1

    iput-boolean v15, v14, Lcom/android/server/Watchdog;->mCompleted:Z

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog$HeartbeatHandler;->this$0:Lcom/android/server/Watchdog;

    move-object v14, v0

    const/4 v15, 0x0

    iput-object v15, v14, Lcom/android/server/Watchdog;->mCurrentMonitor:Lcom/android/server/Watchdog$Monitor;

    .line 313
    monitor-exit v13

    goto/16 :goto_8

    :catchall_14f
    move-exception v14

    monitor-exit v13
    :try_end_151
    .catchall {:try_start_13c .. :try_end_151} :catchall_14f

    throw v14

    .line 236
    :pswitch_data_152
    .packed-switch 0xa9e
        :pswitch_23
        :pswitch_9
    .end packed-switch
.end method
