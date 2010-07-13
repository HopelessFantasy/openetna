.class final Lcom/android/server/WindowManagerService$InputDispatcherThread;
.super Ljava/lang/Thread;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InputDispatcherThread"
.end annotation


# static fields
.field static final LONG_WAIT:I = 0x989298


# instance fields
.field final synthetic this$0:Lcom/android/server/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/WindowManagerService;)V
    .registers 3
    .parameter

    .prologue
    .line 5719
    iput-object p1, p0, Lcom/android/server/WindowManagerService$InputDispatcherThread;->this$0:Lcom/android/server/WindowManagerService;

    .line 5720
    const-string v0, "InputDispatcher"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 5721
    return-void
.end method

.method private process()V
    .registers 26

    .prologue
    .line 5735
    const/4 v3, -0x8

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 5739
    const/4 v14, 0x0

    .line 5742
    .local v14, lastKey:Landroid/view/KeyEvent;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    .line 5743
    .local v15, lastKeyTime:J
    const-wide/32 v21, 0x989298

    add-long v17, v15, v21

    .line 5746
    .local v17, nextKeyTime:J
    const/4 v13, 0x0

    .line 5749
    .local v13, keyRepeatCount:I
    const/4 v9, 0x0

    .line 5752
    .local v9, configChanged:Z
    :cond_10
    :goto_10
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 5762
    .local v4, curTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$InputDispatcherThread;->this$0:Lcom/android/server/WindowManagerService;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/server/WindowManagerService;->mQueue:Lcom/android/server/WindowManagerService$KeyQ;

    if-nez v9, :cond_aa

    cmp-long v6, v4, v17

    if-gez v6, :cond_aa

    sub-long v21, v17, v4

    :goto_23
    move-wide/from16 v0, v21

    long-to-int v0, v0

    move v6, v0

    move v0, v6

    int-to-long v0, v0

    move-wide/from16 v21, v0

    move-object v0, v3

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService$KeyQ;->getEvent(J)Lcom/android/server/KeyInputQueue$QueuedEvent;

    move-result-object v11

    .line 5770
    .local v11, ev:Lcom/android/server/KeyInputQueue$QueuedEvent;
    if-eqz v11, :cond_129

    .line 5771
    :try_start_34
    iget-wide v4, v11, Lcom/android/server/KeyInputQueue$QueuedEvent;->when:J

    .line 5773
    iget v3, v11, Lcom/android/server/KeyInputQueue$QueuedEvent;->classType:I

    const/4 v6, 0x4

    if-ne v3, v6, :cond_ae

    .line 5774
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$InputDispatcherThread;->this$0:Lcom/android/server/WindowManagerService;

    move-object v6, v0

    iget-object v3, v11, Lcom/android/server/KeyInputQueue$QueuedEvent;->event:Ljava/lang/Object;

    check-cast v3, Landroid/view/MotionEvent;

    invoke-static {v6, v3}, Lcom/android/server/WindowManagerService;->access$1000(Lcom/android/server/WindowManagerService;Landroid/view/MotionEvent;)I
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_47} :catch_8e

    move-result v7

    .line 5782
    .local v7, eventType:I
    :goto_48
    :try_start_48
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v19

    .line 5784
    .local v19, now:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$InputDispatcherThread;->this$0:Lcom/android/server/WindowManagerService;

    move-object v3, v0

    move-object v0, v3

    iget-wide v0, v0, Lcom/android/server/WindowManagerService;->mLastBatteryStatsCallTime:J

    move-wide/from16 v21, v0

    sub-long v21, v19, v21

    const-wide/16 v23, 0x3e8

    cmp-long v3, v21, v23

    if-ltz v3, :cond_72

    .line 5786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$InputDispatcherThread;->this$0:Lcom/android/server/WindowManagerService;

    move-object v3, v0

    move-wide/from16 v0, v19

    move-object v2, v3

    iput-wide v0, v2, Lcom/android/server/WindowManagerService;->mLastBatteryStatsCallTime:J

    .line 5787
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$InputDispatcherThread;->this$0:Lcom/android/server/WindowManagerService;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/server/WindowManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->noteInputEvent()V
    :try_end_72
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_72} :catch_18d
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_72} :catch_8e

    .line 5792
    .end local v19           #now:J
    :cond_72
    :goto_72
    :try_start_72
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$InputDispatcherThread;->this$0:Lcom/android/server/WindowManagerService;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/server/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/PowerManagerService;->userActivity(JZIZ)V

    .line 5793
    iget v3, v11, Lcom/android/server/KeyInputQueue$QueuedEvent;->classType:I

    sparse-switch v3, :sswitch_data_190

    .line 5839
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$InputDispatcherThread;->this$0:Lcom/android/server/WindowManagerService;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/server/WindowManagerService;->mQueue:Lcom/android/server/WindowManagerService$KeyQ;

    invoke-virtual {v3, v11}, Lcom/android/server/WindowManagerService$KeyQ;->recycleEvent(Lcom/android/server/KeyInputQueue$QueuedEvent;)V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_8d} :catch_8e

    goto :goto_10

    .line 5883
    .end local v7           #eventType:I
    :catch_8e
    move-exception v3

    move-object v10, v3

    .line 5884
    .local v10, e:Ljava/lang/Exception;
    const-string v3, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Input thread received uncaught exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_10

    .line 5762
    .end local v10           #e:Ljava/lang/Exception;
    .end local v11           #ev:Lcom/android/server/KeyInputQueue$QueuedEvent;
    :cond_aa
    const-wide/16 v21, 0x0

    goto/16 :goto_23

    .line 5775
    .restart local v11       #ev:Lcom/android/server/KeyInputQueue$QueuedEvent;
    :cond_ae
    :try_start_ae
    iget v3, v11, Lcom/android/server/KeyInputQueue$QueuedEvent;->classType:I

    const/4 v6, 0x1

    if-eq v3, v6, :cond_b9

    iget v3, v11, Lcom/android/server/KeyInputQueue$QueuedEvent;->classType:I

    const/16 v6, 0x8

    if-ne v3, v6, :cond_bb

    .line 5777
    :cond_b9
    const/4 v7, 0x5

    .restart local v7       #eventType:I
    goto :goto_48

    .line 5779
    .end local v7           #eventType:I
    :cond_bb
    const/4 v7, 0x0

    .restart local v7       #eventType:I
    goto :goto_48

    .line 5795
    :sswitch_bd
    iget-object v12, v11, Lcom/android/server/KeyInputQueue$QueuedEvent;->event:Ljava/lang/Object;

    check-cast v12, Landroid/view/KeyEvent;

    .line 5796
    .local v12, ke:Landroid/view/KeyEvent;
    invoke-virtual {v12}, Landroid/view/KeyEvent;->isDown()Z

    move-result v3

    if-eqz v3, :cond_e8

    .line 5797
    move-object v14, v12

    .line 5798
    const/4 v13, 0x0

    .line 5799
    move-wide v15, v4

    .line 5800
    const-wide/16 v21, 0x2ee

    add-long v17, v15, v21

    .line 5814
    :goto_ce
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$InputDispatcherThread;->this$0:Lcom/android/server/WindowManagerService;

    move-object v6, v0

    iget-object v3, v11, Lcom/android/server/KeyInputQueue$QueuedEvent;->event:Ljava/lang/Object;

    check-cast v3, Landroid/view/KeyEvent;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v6, v3, v7, v8}, Lcom/android/server/WindowManagerService;->access$1100(Lcom/android/server/WindowManagerService;Landroid/view/KeyEvent;II)I

    .line 5815
    .end local v7           #eventType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$InputDispatcherThread;->this$0:Lcom/android/server/WindowManagerService;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/server/WindowManagerService;->mQueue:Lcom/android/server/WindowManagerService$KeyQ;

    invoke-virtual {v3, v11}, Lcom/android/server/WindowManagerService$KeyQ;->recycleEvent(Lcom/android/server/KeyInputQueue$QueuedEvent;)V

    goto/16 :goto_10

    .line 5806
    .restart local v7       #eventType:I
    :cond_e8
    const/4 v14, 0x0

    .line 5808
    move-wide v15, v4

    .line 5809
    const-wide/32 v21, 0x989298

    add-long v17, v4, v21

    goto :goto_ce

    .line 5820
    .end local v12           #ke:Landroid/view/KeyEvent;
    :sswitch_f0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$InputDispatcherThread;->this$0:Lcom/android/server/WindowManagerService;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/server/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    invoke-virtual {v3}, Lcom/android/server/PowerManagerService;->screenIsOn()Z

    move-result v3

    if-nez v3, :cond_106

    .line 5823
    const-string v3, "WindowManager"

    const-string v6, "when VSleep ingnore Touch"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 5828
    :cond_106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$InputDispatcherThread;->this$0:Lcom/android/server/WindowManagerService;

    move-object v6, v0

    iget-object v3, v11, Lcom/android/server/KeyInputQueue$QueuedEvent;->event:Ljava/lang/Object;

    check-cast v3, Landroid/view/MotionEvent;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v6, v11, v3, v7, v8}, Lcom/android/server/WindowManagerService;->access$1200(Lcom/android/server/WindowManagerService;Lcom/android/server/KeyInputQueue$QueuedEvent;Landroid/view/MotionEvent;II)I

    goto/16 :goto_10

    .line 5833
    :sswitch_116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$InputDispatcherThread;->this$0:Lcom/android/server/WindowManagerService;

    move-object v6, v0

    iget-object v3, v11, Lcom/android/server/KeyInputQueue$QueuedEvent;->event:Ljava/lang/Object;

    check-cast v3, Landroid/view/MotionEvent;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v6, v11, v3, v7, v8}, Lcom/android/server/WindowManagerService;->access$1300(Lcom/android/server/WindowManagerService;Lcom/android/server/KeyInputQueue$QueuedEvent;Landroid/view/MotionEvent;II)I

    goto/16 :goto_10

    .line 5836
    :sswitch_126
    const/4 v9, 0x1

    .line 5837
    goto/16 :goto_10

    .line 5843
    .end local v7           #eventType:I
    :cond_129
    if-eqz v9, :cond_136

    .line 5844
    const/4 v9, 0x0

    .line 5845
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$InputDispatcherThread;->this$0:Lcom/android/server/WindowManagerService;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/server/WindowManagerService;->sendNewConfiguration()V

    goto/16 :goto_10

    .line 5847
    :cond_136
    if-eqz v14, :cond_181

    .line 5848
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 5855
    cmp-long v3, v4, v17

    if-ltz v3, :cond_10

    .line 5859
    move-wide/from16 v15, v17

    .line 5860
    const-wide/16 v21, 0x32

    add-long v17, v17, v21

    .line 5861
    add-int/lit8 v13, v13, 0x1

    .line 5866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$InputDispatcherThread;->this$0:Lcom/android/server/WindowManagerService;

    move-object v3, v0

    iget v3, v3, Lcom/android/server/WindowManagerService;->mRotation:I

    const/4 v6, 0x1

    if-ne v3, v6, :cond_171

    invoke-virtual {v14}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v6, 0x18

    if-eq v3, v6, :cond_162

    invoke-virtual {v14}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v6, 0x19

    if-ne v3, v6, :cond_171

    .line 5868
    :cond_162
    const/4 v3, 0x1

    sput v3, Lcom/android/server/WindowManagerService;->iHodeKey_in_Landscape_Mode:I

    .line 5869
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$InputDispatcherThread;->this$0:Lcom/android/server/WindowManagerService;

    move-object v3, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v3, v14, v6, v7}, Lcom/android/server/WindowManagerService;->access$1100(Lcom/android/server/WindowManagerService;Landroid/view/KeyEvent;II)I

    goto/16 :goto_10

    .line 5873
    :cond_171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$InputDispatcherThread;->this$0:Lcom/android/server/WindowManagerService;

    move-object v3, v0

    invoke-static {v14, v4, v5, v13}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v3, v6, v7, v8}, Lcom/android/server/WindowManagerService;->access$1100(Lcom/android/server/WindowManagerService;Landroid/view/KeyEvent;II)I

    goto/16 :goto_10

    .line 5877
    :cond_181
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
    :try_end_184
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_184} :catch_8e

    move-result-wide v4

    .line 5879
    move-wide v15, v4

    .line 5880
    const-wide/32 v21, 0x989298

    add-long v17, v4, v21

    goto/16 :goto_10

    .line 5789
    .restart local v7       #eventType:I
    :catch_18d
    move-exception v3

    goto/16 :goto_72

    .line 5793
    :sswitch_data_190
    .sparse-switch
        0x1 -> :sswitch_bd
        0x4 -> :sswitch_f0
        0x8 -> :sswitch_116
        0x10000000 -> :sswitch_126
    .end sparse-switch
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 5727
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/WindowManagerService$InputDispatcherThread;->process()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_0

    .line 5728
    :catch_4
    move-exception v0

    .line 5729
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WindowManager"

    const-string v2, "Exception in input dispatcher"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
