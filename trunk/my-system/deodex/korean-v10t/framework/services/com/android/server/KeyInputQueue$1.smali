.class Lcom/android/server/KeyInputQueue$1;
.super Ljava/lang/Thread;
.source "KeyInputQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/KeyInputQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/KeyInputQueue;


# direct methods
.method constructor <init>(Lcom/android/server/KeyInputQueue;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/server/KeyInputQueue$1;->this$0:Lcom/android/server/KeyInputQueue;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 35

    .prologue
    .line 210
    const/4 v3, -0x8

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 214
    :try_start_4
    new-instance v30, Landroid/view/RawInputEvent;

    invoke-direct/range {v30 .. v30}, Landroid/view/RawInputEvent;-><init>()V

    .line 219
    .local v30, ev:Landroid/view/RawInputEvent;
    :cond_9
    :goto_9
    invoke-static/range {v30 .. v30}, Lcom/android/server/KeyInputQueue;->access$000(Landroid/view/RawInputEvent;)Z

    .line 221
    const/16 v32, 0x0

    .line 222
    .local v32, send:Z
    const/16 v29, 0x0

    .line 233
    .local v29, configChanged:Z
    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/RawInputEvent;->type:I

    move v3, v0

    const/high16 v4, 0x1000

    if-ne v3, v4, :cond_1c8

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$1;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/server/KeyInputQueue;->mFirst:Lcom/android/server/KeyInputQueue$QueuedEvent;

    monitor-enter v3
    :try_end_21
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_21} :catch_1b6

    .line 235
    :try_start_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$1;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v4, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/RawInputEvent;->deviceId:I

    move v5, v0

    invoke-static {v4, v5}, Lcom/android/server/KeyInputQueue;->access$100(Lcom/android/server/KeyInputQueue;I)Lcom/android/server/InputDevice;

    move-result-object v4

    .line 236
    .local v4, di:Lcom/android/server/InputDevice;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$1;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/KeyInputQueue;->mDevices:Landroid/util/SparseArray;

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/RawInputEvent;->deviceId:I

    move v6, v0

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 237
    const/16 v29, 0x1

    .line 238
    monitor-exit v3
    :try_end_41
    .catchall {:try_start_21 .. :try_end_41} :catchall_1c5

    .line 264
    :cond_41
    :goto_41
    if-eqz v4, :cond_9

    .line 268
    if-eqz v29, :cond_5e

    .line 269
    :try_start_45
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$1;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v3, v0

    iget-object v10, v3, Lcom/android/server/KeyInputQueue;->mFirst:Lcom/android/server/KeyInputQueue$QueuedEvent;

    monitor-enter v10
    :try_end_4d
    .catch Ljava/lang/RuntimeException; {:try_start_45 .. :try_end_4d} :catch_1b6

    .line 270
    :try_start_4d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$1;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v3, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const/4 v7, 0x0

    const/high16 v8, 0x1000

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lcom/android/server/KeyInputQueue;->access$300(Lcom/android/server/KeyInputQueue;Lcom/android/server/InputDevice;JIILjava/lang/Object;)V

    .line 273
    monitor-exit v10
    :try_end_5e
    .catchall {:try_start_4d .. :try_end_5e} :catchall_287

    .line 276
    :cond_5e
    if-eqz v32, :cond_9

    .line 280
    :try_start_60
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$1;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/server/KeyInputQueue;->mFirst:Lcom/android/server/KeyInputQueue$QueuedEvent;

    monitor-enter v3
    :try_end_68
    .catch Ljava/lang/RuntimeException; {:try_start_60 .. :try_end_68} :catch_1b6

    .line 284
    :try_start_68
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 287
    .local v7, curTime:J
    move-object v0, v4

    iget v0, v0, Lcom/android/server/InputDevice;->classes:I

    move/from16 v28, v0

    .line 288
    .local v28, classes:I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/RawInputEvent;->type:I

    move/from16 v33, v0

    .line 289
    .local v33, type:I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/RawInputEvent;->scancode:I

    move v12, v0

    .line 290
    .local v12, scancode:I
    const/16 v32, 0x0

    .line 293
    const/4 v5, 0x1

    move/from16 v0, v33

    move v1, v5

    if-ne v0, v1, :cond_290

    and-int/lit8 v5, v28, 0x1

    if-eqz v5, :cond_290

    const/16 v5, 0x100

    if-lt v12, v5, :cond_90

    const/16 v5, 0x15f

    if-le v12, v5, :cond_290

    .line 298
    :cond_90
    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/RawInputEvent;->value:I

    move v5, v0

    if-eqz v5, :cond_28a

    .line 299
    const/4 v9, 0x1

    .line 300
    .local v9, down:Z
    iput-wide v7, v4, Lcom/android/server/InputDevice;->mDownTime:J

    .line 304
    :goto_9a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$1;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/RawInputEvent;->keycode:I

    move v6, v0

    invoke-static {v5, v6}, Lcom/android/server/KeyInputQueue;->access$400(Lcom/android/server/KeyInputQueue;I)I

    move-result v10

    .line 305
    .local v10, keycode:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$1;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v14, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/RawInputEvent;->flags:I

    move/from16 v17, v0

    const/16 v18, 0x1

    iget-wide v5, v4, Lcom/android/server/InputDevice;->mDownTime:J

    const/4 v11, 0x0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/RawInputEvent;->flags:I

    move v13, v0

    const/high16 v15, 0x1000

    and-int/2addr v13, v15

    if-eqz v13, :cond_28d

    const/4 v13, 0x1

    :goto_c3
    invoke-static/range {v4 .. v13}, Lcom/android/server/KeyInputQueue;->newKeyEvent(Lcom/android/server/InputDevice;JJZIIII)Landroid/view/KeyEvent;

    move-result-object v19

    move-object v13, v14

    move-object v14, v4

    move-wide v15, v7

    invoke-static/range {v13 .. v19}, Lcom/android/server/KeyInputQueue;->access$300(Lcom/android/server/KeyInputQueue;Lcom/android/server/InputDevice;JIILjava/lang/Object;)V

    .line 360
    .end local v9           #down:Z
    .end local v10           #keycode:I
    :cond_cd
    :goto_cd
    if-nez v32, :cond_d6

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/RawInputEvent;->type:I

    move v5, v0

    if-nez v5, :cond_1b0

    .line 361
    :cond_d6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$1;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/KeyInputQueue;->mDisplay:Landroid/view/Display;

    if-eqz v5, :cond_1b0

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$1;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    iget-boolean v5, v5, Lcom/android/server/KeyInputQueue;->mHaveGlobalMetaState:Z

    if-nez v5, :cond_f0

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$1;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/server/KeyInputQueue;->access$500(Lcom/android/server/KeyInputQueue;)V

    .line 366
    :cond_f0
    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/RawInputEvent;->scancode:I

    move v5, v0

    const/16 v6, 0x1d

    if-eq v5, v6, :cond_102

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/RawInputEvent;->scancode:I

    move v5, v0

    const/16 v6, 0x1e

    if-ne v5, v6, :cond_133

    .line 369
    :cond_102
    iget-object v5, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/InputDevice$MotionState;->changed:Z

    .line 370
    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/RawInputEvent;->scancode:I

    move v5, v0

    const/16 v6, 0x1d

    if-ne v5, v6, :cond_39c

    .line 371
    iget-object v5, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/InputDevice$MotionState;->down:Z

    .line 372
    iget-object v5, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    const/16 v6, 0xff

    iput v6, v5, Lcom/android/server/InputDevice$MotionState;->pressure:I

    .line 386
    :goto_11b
    iget-object v5, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/RawInputEvent;->value:I

    move v6, v0

    iput v6, v5, Lcom/android/server/InputDevice$MotionState;->x:I

    .line 387
    iget-object v5, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/RawInputEvent;->flags:I

    move v6, v0

    iput v6, v5, Lcom/android/server/InputDevice$MotionState;->y:I

    .line 390
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v30

    iput v0, v1, Landroid/view/RawInputEvent;->flags:I

    .line 394
    :cond_133
    iget-object v13, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$1;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    move-object v0, v5

    iget-object v0, v0, Lcom/android/server/KeyInputQueue;->mDisplay:Landroid/view/Display;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$1;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    move-object v0, v5

    iget v0, v0, Lcom/android/server/KeyInputQueue;->mOrientation:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$1;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    move-object v0, v5

    iget v0, v0, Lcom/android/server/KeyInputQueue;->mGlobalMetaState:I

    move/from16 v20, v0

    move-object v14, v4

    move-wide v15, v7

    invoke-virtual/range {v13 .. v20}, Lcom/android/server/InputDevice$MotionState;->generateMotion(Lcom/android/server/InputDevice;JZLandroid/view/Display;II)Landroid/view/MotionEvent;

    move-result-object v19

    .line 398
    .local v19, me:Landroid/view/MotionEvent;
    if-eqz v19, :cond_16f

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$1;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v13, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/RawInputEvent;->flags:I

    move/from16 v17, v0

    const/16 v18, 0x4

    move-object v14, v4

    move-wide v15, v7

    invoke-static/range {v13 .. v19}, Lcom/android/server/KeyInputQueue;->access$300(Lcom/android/server/KeyInputQueue;Lcom/android/server/InputDevice;JIILjava/lang/Object;)V

    .line 405
    :cond_16f
    move-object v0, v4

    iget-object v0, v0, Lcom/android/server/InputDevice;->mRel:Lcom/android/server/InputDevice$MotionState;

    move-object/from16 v20, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$1;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    move-object v0, v5

    iget-object v0, v0, Lcom/android/server/KeyInputQueue;->mDisplay:Landroid/view/Display;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$1;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    move-object v0, v5

    iget v0, v0, Lcom/android/server/KeyInputQueue;->mOrientation:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$1;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    move-object v0, v5

    iget v0, v0, Lcom/android/server/KeyInputQueue;->mGlobalMetaState:I

    move/from16 v27, v0

    move-object/from16 v21, v4

    move-wide/from16 v22, v7

    invoke-virtual/range {v20 .. v27}, Lcom/android/server/InputDevice$MotionState;->generateMotion(Lcom/android/server/InputDevice;JZLandroid/view/Display;II)Landroid/view/MotionEvent;

    move-result-object v19

    .line 409
    if-eqz v19, :cond_1b0

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$1;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v13, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/RawInputEvent;->flags:I

    move/from16 v17, v0

    const/16 v18, 0x8

    move-object v14, v4

    move-wide v15, v7

    invoke-static/range {v13 .. v19}, Lcom/android/server/KeyInputQueue;->access$300(Lcom/android/server/KeyInputQueue;Lcom/android/server/InputDevice;JIILjava/lang/Object;)V

    .line 415
    .end local v19           #me:Landroid/view/MotionEvent;
    :cond_1b0
    monitor-exit v3

    goto/16 :goto_9

    .end local v4           #di:Lcom/android/server/InputDevice;
    .end local v7           #curTime:J
    .end local v12           #scancode:I
    .end local v28           #classes:I
    .end local v33           #type:I
    :catchall_1b3
    move-exception v4

    monitor-exit v3
    :try_end_1b5
    .catchall {:try_start_68 .. :try_end_1b5} :catchall_1b3

    :try_start_1b5
    throw v4
    :try_end_1b6
    .catch Ljava/lang/RuntimeException; {:try_start_1b5 .. :try_end_1b6} :catch_1b6

    .line 418
    .end local v29           #configChanged:Z
    .end local v30           #ev:Landroid/view/RawInputEvent;
    .end local v32           #send:Z
    :catch_1b6
    move-exception v3

    move-object/from16 v31, v3

    .line 419
    .local v31, exc:Ljava/lang/RuntimeException;
    const-string v3, "KeyInputQueue"

    const-string v4, "InputReaderThread uncaught exception"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 421
    return-void

    .line 238
    .end local v31           #exc:Ljava/lang/RuntimeException;
    .restart local v29       #configChanged:Z
    .restart local v30       #ev:Landroid/view/RawInputEvent;
    .restart local v32       #send:Z
    :catchall_1c5
    move-exception v4

    :try_start_1c6
    monitor-exit v3
    :try_end_1c7
    .catchall {:try_start_1c6 .. :try_end_1c7} :catchall_1c5

    :try_start_1c7
    throw v4

    .line 239
    :cond_1c8
    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/RawInputEvent;->type:I

    move v3, v0

    const/high16 v4, 0x2000

    if-ne v3, v4, :cond_243

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$1;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/server/KeyInputQueue;->mFirst:Lcom/android/server/KeyInputQueue$QueuedEvent;

    monitor-enter v3
    :try_end_1d9
    .catch Ljava/lang/RuntimeException; {:try_start_1c7 .. :try_end_1d9} :catch_1b6

    .line 241
    :try_start_1d9
    const-string v4, "KeyInputQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Device removed: id=0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/RawInputEvent;->deviceId:I

    move v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$1;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/KeyInputQueue;->mDevices:Landroid/util/SparseArray;

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/RawInputEvent;->deviceId:I

    move v5, v0

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/InputDevice;

    .line 244
    .restart local v4       #di:Lcom/android/server/InputDevice;
    if-eqz v4, :cond_225

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$1;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/KeyInputQueue;->mDevices:Landroid/util/SparseArray;

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/RawInputEvent;->deviceId:I

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->delete(I)V

    .line 246
    const/16 v29, 0x1

    .line 250
    :goto_21f
    monitor-exit v3

    goto/16 :goto_41

    .end local v4           #di:Lcom/android/server/InputDevice;
    :catchall_222
    move-exception v4

    monitor-exit v3
    :try_end_224
    .catchall {:try_start_1d9 .. :try_end_224} :catchall_222

    :try_start_224
    throw v4
    :try_end_225
    .catch Ljava/lang/RuntimeException; {:try_start_224 .. :try_end_225} :catch_1b6

    .line 248
    .restart local v4       #di:Lcom/android/server/InputDevice;
    :cond_225
    :try_start_225
    const-string v5, "KeyInputQueue"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad device id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/RawInputEvent;->deviceId:I

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_242
    .catchall {:try_start_225 .. :try_end_242} :catchall_222

    goto :goto_21f

    .line 252
    .end local v4           #di:Lcom/android/server/InputDevice;
    :cond_243
    :try_start_243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$1;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v3, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/RawInputEvent;->deviceId:I

    move v4, v0

    invoke-virtual {v3, v4}, Lcom/android/server/KeyInputQueue;->getInputDevice(I)Lcom/android/server/InputDevice;

    move-result-object v4

    .line 255
    .restart local v4       #di:Lcom/android/server/InputDevice;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$1;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/server/KeyInputQueue;->preprocessEvent(Lcom/android/server/InputDevice;Landroid/view/RawInputEvent;)Z

    move-result v32

    .line 257
    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/RawInputEvent;->type:I

    move v3, v0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_41

    .line 258
    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/RawInputEvent;->keycode:I

    move v3, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/RawInputEvent;->value:I

    move v5, v0

    if-eqz v5, :cond_285

    const/4 v5, 0x1

    :goto_273
    iget v6, v4, Lcom/android/server/InputDevice;->mMetaKeysState:I

    invoke-static {v3, v5, v6}, Lcom/android/server/KeyInputQueue;->access$200(IZI)I

    move-result v3

    iput v3, v4, Lcom/android/server/InputDevice;->mMetaKeysState:I

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$1;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v3, v0

    const/4 v5, 0x0

    iput-boolean v5, v3, Lcom/android/server/KeyInputQueue;->mHaveGlobalMetaState:Z
    :try_end_283
    .catch Ljava/lang/RuntimeException; {:try_start_243 .. :try_end_283} :catch_1b6

    goto/16 :goto_41

    .line 258
    :cond_285
    const/4 v5, 0x0

    goto :goto_273

    .line 273
    :catchall_287
    move-exception v3

    :try_start_288
    monitor-exit v10
    :try_end_289
    .catchall {:try_start_288 .. :try_end_289} :catchall_287

    :try_start_289
    throw v3
    :try_end_28a
    .catch Ljava/lang/RuntimeException; {:try_start_289 .. :try_end_28a} :catch_1b6

    .line 302
    .restart local v7       #curTime:J
    .restart local v12       #scancode:I
    .restart local v28       #classes:I
    .restart local v33       #type:I
    :cond_28a
    const/4 v9, 0x0

    .restart local v9       #down:Z
    goto/16 :goto_9a

    .line 305
    .restart local v10       #keycode:I
    :cond_28d
    const/4 v13, 0x0

    goto/16 :goto_c3

    .line 311
    .end local v9           #down:Z
    .end local v10           #keycode:I
    :cond_290
    :try_start_290
    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/RawInputEvent;->type:I

    move v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2ee

    .line 312
    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/RawInputEvent;->scancode:I

    move v5, v0

    const/16 v6, 0x14a

    if-ne v5, v6, :cond_2b6

    and-int/lit8 v5, v28, 0x4

    if-eqz v5, :cond_2b6

    .line 314
    iget-object v5, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/InputDevice$MotionState;->changed:Z

    .line 315
    iget-object v5, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/RawInputEvent;->value:I

    move v6, v0

    if-eqz v6, :cond_2ea

    const/4 v6, 0x1

    :goto_2b4
    iput-boolean v6, v5, Lcom/android/server/InputDevice$MotionState;->down:Z

    .line 323
    :cond_2b6
    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/RawInputEvent;->scancode:I

    move v5, v0

    const/16 v6, 0x110

    if-eq v5, v6, :cond_2c8

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/RawInputEvent;->scancode:I

    move v5, v0

    const/16 v6, 0x111

    if-ne v5, v6, :cond_cd

    :cond_2c8
    and-int/lit8 v5, v28, 0x8

    if-eqz v5, :cond_cd

    .line 326
    iget-object v5, v4, Lcom/android/server/InputDevice;->mRel:Lcom/android/server/InputDevice$MotionState;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/InputDevice$MotionState;->changed:Z

    .line 327
    iget-object v5, v4, Lcom/android/server/InputDevice;->mRel:Lcom/android/server/InputDevice$MotionState;

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/RawInputEvent;->value:I

    move v6, v0

    if-eqz v6, :cond_2ec

    const/4 v6, 0x1

    :goto_2db
    iput-boolean v6, v5, Lcom/android/server/InputDevice$MotionState;->down:Z

    .line 328
    iget-object v5, v4, Lcom/android/server/InputDevice;->mRel:Lcom/android/server/InputDevice$MotionState;

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/RawInputEvent;->scancode:I

    move v6, v0

    iput v6, v5, Lcom/android/server/InputDevice$MotionState;->scanCode:I

    .line 329
    const/16 v32, 0x1

    goto/16 :goto_cd

    .line 315
    :cond_2ea
    const/4 v6, 0x0

    goto :goto_2b4

    .line 327
    :cond_2ec
    const/4 v6, 0x0

    goto :goto_2db

    .line 332
    :cond_2ee
    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/RawInputEvent;->type:I

    move v5, v0

    const/4 v6, 0x3

    if-ne v5, v6, :cond_35b

    and-int/lit8 v5, v28, 0x4

    if-eqz v5, :cond_35b

    .line 334
    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/RawInputEvent;->scancode:I

    move v5, v0

    if-nez v5, :cond_311

    .line 335
    iget-object v5, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/InputDevice$MotionState;->changed:Z

    .line 336
    iget-object v5, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/RawInputEvent;->value:I

    move v6, v0

    iput v6, v5, Lcom/android/server/InputDevice$MotionState;->x:I

    goto/16 :goto_cd

    .line 337
    :cond_311
    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/RawInputEvent;->scancode:I

    move v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_329

    .line 338
    iget-object v5, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/InputDevice$MotionState;->changed:Z

    .line 339
    iget-object v5, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/RawInputEvent;->value:I

    move v6, v0

    iput v6, v5, Lcom/android/server/InputDevice$MotionState;->y:I

    goto/16 :goto_cd

    .line 340
    :cond_329
    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/RawInputEvent;->scancode:I

    move v5, v0

    const/16 v6, 0x18

    if-ne v5, v6, :cond_342

    .line 341
    iget-object v5, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/InputDevice$MotionState;->changed:Z

    .line 342
    iget-object v5, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/RawInputEvent;->value:I

    move v6, v0

    iput v6, v5, Lcom/android/server/InputDevice$MotionState;->pressure:I

    goto/16 :goto_cd

    .line 343
    :cond_342
    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/RawInputEvent;->scancode:I

    move v5, v0

    const/16 v6, 0x1c

    if-ne v5, v6, :cond_cd

    .line 344
    iget-object v5, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/InputDevice$MotionState;->changed:Z

    .line 345
    iget-object v5, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/RawInputEvent;->value:I

    move v6, v0

    iput v6, v5, Lcom/android/server/InputDevice$MotionState;->size:I

    goto/16 :goto_cd

    .line 348
    :cond_35b
    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/RawInputEvent;->type:I

    move v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_cd

    and-int/lit8 v5, v28, 0x8

    if-eqz v5, :cond_cd

    .line 351
    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/RawInputEvent;->scancode:I

    move v5, v0

    if-nez v5, :cond_381

    .line 352
    iget-object v5, v4, Lcom/android/server/InputDevice;->mRel:Lcom/android/server/InputDevice$MotionState;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/InputDevice$MotionState;->changed:Z

    .line 353
    iget-object v5, v4, Lcom/android/server/InputDevice;->mRel:Lcom/android/server/InputDevice$MotionState;

    iget v6, v5, Lcom/android/server/InputDevice$MotionState;->x:I

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/RawInputEvent;->value:I

    move v9, v0

    add-int/2addr v6, v9

    iput v6, v5, Lcom/android/server/InputDevice$MotionState;->x:I

    goto/16 :goto_cd

    .line 354
    :cond_381
    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/RawInputEvent;->scancode:I

    move v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_cd

    .line 355
    iget-object v5, v4, Lcom/android/server/InputDevice;->mRel:Lcom/android/server/InputDevice$MotionState;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/InputDevice$MotionState;->changed:Z

    .line 356
    iget-object v5, v4, Lcom/android/server/InputDevice;->mRel:Lcom/android/server/InputDevice$MotionState;

    iget v6, v5, Lcom/android/server/InputDevice$MotionState;->y:I

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/RawInputEvent;->value:I

    move v9, v0

    add-int/2addr v6, v9

    iput v6, v5, Lcom/android/server/InputDevice$MotionState;->y:I

    goto/16 :goto_cd

    .line 374
    :cond_39c
    iget-object v5, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/server/InputDevice$MotionState;->down:Z

    .line 375
    iget-object v5, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    const/4 v6, 0x0

    iput v6, v5, Lcom/android/server/InputDevice$MotionState;->pressure:I

    .line 378
    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/RawInputEvent;->value:I

    move v5, v0

    if-nez v5, :cond_3bb

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/RawInputEvent;->flags:I

    move v5, v0

    if-nez v5, :cond_3bb

    .line 379
    iget-object v5, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/server/InputDevice$MotionState;->changed:Z

    goto/16 :goto_11b

    .line 381
    :cond_3bb
    iget-object v5, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/InputDevice$MotionState;->changed:Z
    :try_end_3c0
    .catchall {:try_start_290 .. :try_end_3c0} :catchall_1b3

    goto/16 :goto_11b
.end method
