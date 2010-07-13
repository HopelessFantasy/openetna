.class Lcom/android/server/WindowManagerService$KeyQ;
.super Lcom/android/server/KeyInputQueue;
.source "WindowManagerService.java"

# interfaces
.implements Lcom/android/server/KeyInputQueue$FilterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyQ"
.end annotation


# instance fields
.field mHoldingScreen:Landroid/os/PowerManager$WakeLock;

.field final synthetic this$0:Lcom/android/server/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/WindowManagerService;)V
    .registers 5
    .parameter

    .prologue
    .line 5511
    iput-object p1, p0, Lcom/android/server/WindowManagerService$KeyQ;->this$0:Lcom/android/server/WindowManagerService;

    .line 5512
    iget-object v1, p1, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/server/KeyInputQueue;-><init>(Landroid/content/Context;)V

    .line 5513
    iget-object v1, p1, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 5514
    .local v0, pm:Landroid/os/PowerManager;
    const/16 v1, 0xa

    const-string v2, "KEEP_SCREEN_ON_FLAG"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/WindowManagerService$KeyQ;->mHoldingScreen:Landroid/os/PowerManager$WakeLock;

    .line 5516
    iget-object v1, p0, Lcom/android/server/WindowManagerService$KeyQ;->mHoldingScreen:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 5517
    return-void
.end method


# virtual methods
.method public filterEvent(Lcom/android/server/KeyInputQueue$QueuedEvent;)I
    .registers 6
    .parameter "ev"

    .prologue
    .line 5676
    iget v1, p1, Lcom/android/server/KeyInputQueue$QueuedEvent;->classType:I

    packed-switch v1, :pswitch_data_48

    .line 5686
    const/4 v1, 0x1

    :goto_6
    return v1

    .line 5678
    :pswitch_7
    iget-object v0, p1, Lcom/android/server/KeyInputQueue$QueuedEvent;->event:Ljava/lang/Object;

    check-cast v0, Landroid/view/KeyEvent;

    .line 5679
    .local v0, ke:Landroid/view/KeyEvent;
    iget-object v1, p0, Lcom/android/server/WindowManagerService$KeyQ;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/WindowManagerPolicy;->isMovementKeyTi(I)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 5680
    const-string v1, "KeyInputQueue"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dropping movement key during app switch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5682
    const/4 v1, 0x0

    goto :goto_6

    .line 5684
    :cond_45
    const/4 v1, -0x1

    goto :goto_6

    .line 5676
    nop

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_7
    .end packed-switch
.end method

.method preprocessEvent(Lcom/android/server/InputDevice;Landroid/view/RawInputEvent;)Z
    .registers 15
    .parameter "device"
    .parameter "event"

    .prologue
    const/high16 v5, 0x1000

    const/high16 v4, 0x2000

    const/4 v3, 0x0

    const/4 v10, 0x1

    const-string v11, "KeyInputQueue"

    .line 5521
    iget-object v0, p0, Lcom/android/server/WindowManagerService$KeyQ;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p2}, Landroid/view/WindowManagerPolicy;->preprocessInputEventTq(Landroid/view/RawInputEvent;)Z

    move-result v0

    if-eqz v0, :cond_14

    move v0, v10

    .line 5671
    :goto_13
    return v0

    .line 5525
    :cond_14
    iget v0, p2, Landroid/view/RawInputEvent;->type:I

    packed-switch v0, :pswitch_data_19c

    move v0, v10

    .line 5671
    goto :goto_13

    .line 5545
    :pswitch_1b
    iget-object v0, p0, Lcom/android/server/WindowManagerService$KeyQ;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService;->screenIsOn()Z

    move-result v0

    if-nez v0, :cond_a0

    move v8, v10

    .line 5546
    .local v8, screenIsOff:Z
    :goto_26
    iget-object v0, p0, Lcom/android/server/WindowManagerService$KeyQ;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService;->screenIsBright()Z

    move-result v0

    if-nez v0, :cond_a2

    move v7, v10

    .line 5547
    .local v7, screenIsDim:Z
    :goto_31
    iget-object v0, p0, Lcom/android/server/WindowManagerService$KeyQ;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    if-nez v8, :cond_a4

    move v1, v10

    :goto_38
    invoke-interface {v0, p2, v1}, Landroid/view/WindowManagerPolicy;->interceptKeyTq(Landroid/view/RawInputEvent;Z)I

    move-result v6

    .line 5549
    .local v6, actions:I
    const/4 v9, 0x0

    .line 5550
    .local v9, skipKey:Z
    const/4 v9, 0x0

    .line 5551
    if-eqz v8, :cond_4f

    and-int/lit8 v0, v6, 0x8

    if-nez v0, :cond_4f

    iget-object v0, p0, Lcom/android/server/WindowManagerService$KeyQ;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService;->inVSleepState()I

    move-result v0

    if-eqz v0, :cond_4f

    .line 5554
    const/4 v9, 0x1

    .line 5559
    :cond_4f
    and-int/lit8 v0, v6, 0x4

    if-eqz v0, :cond_5c

    .line 5560
    iget-object v0, p0, Lcom/android/server/WindowManagerService$KeyQ;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    iget-wide v1, p2, Landroid/view/RawInputEvent;->when:J

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PowerManagerService;->goToSleep(J)V

    .line 5562
    :cond_5c
    if-nez v9, :cond_65

    .line 5563
    if-eqz v8, :cond_65

    .line 5564
    iget v0, p2, Landroid/view/RawInputEvent;->flags:I

    or-int/2addr v0, v5

    iput v0, p2, Landroid/view/RawInputEvent;->flags:I

    .line 5566
    :cond_65
    if-eqz v7, :cond_6c

    .line 5567
    iget v0, p2, Landroid/view/RawInputEvent;->flags:I

    or-int/2addr v0, v4

    iput v0, p2, Landroid/view/RawInputEvent;->flags:I

    .line 5569
    :cond_6c
    if-nez v9, :cond_7d

    .line 5570
    and-int/lit8 v0, v6, 0x2

    if-eqz v0, :cond_7d

    .line 5571
    iget-object v0, p0, Lcom/android/server/WindowManagerService$KeyQ;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    iget-wide v1, p2, Landroid/view/RawInputEvent;->when:J

    const/4 v4, 0x5

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/PowerManagerService;->userActivity(JZIZ)V

    .line 5575
    :cond_7d
    and-int/lit8 v0, v6, 0x1

    if-eqz v0, :cond_a9

    .line 5576
    iget v0, p2, Landroid/view/RawInputEvent;->value:I

    if-eqz v0, :cond_9b

    iget-object v0, p0, Lcom/android/server/WindowManagerService$KeyQ;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget v1, p2, Landroid/view/RawInputEvent;->keycode:I

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->isAppSwitchKeyTqTiLwLi(I)Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 5577
    invoke-virtual {p0, p0}, Lcom/android/server/WindowManagerService$KeyQ;->filterQueue(Lcom/android/server/KeyInputQueue$FilterCallback;)V

    .line 5578
    iget-object v0, p0, Lcom/android/server/WindowManagerService$KeyQ;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    invoke-virtual {v0}, Lcom/android/server/WindowManagerService$KeyWaiter;->appSwitchComing()V

    .line 5580
    :cond_9b
    if-nez v9, :cond_a6

    move v0, v10

    .line 5581
    goto/16 :goto_13

    .end local v6           #actions:I
    .end local v7           #screenIsDim:Z
    .end local v8           #screenIsOff:Z
    .end local v9           #skipKey:Z
    :cond_a0
    move v8, v3

    .line 5545
    goto :goto_26

    .restart local v8       #screenIsOff:Z
    :cond_a2
    move v7, v3

    .line 5546
    goto :goto_31

    .restart local v7       #screenIsDim:Z
    :cond_a4
    move v1, v3

    .line 5547
    goto :goto_38

    .restart local v6       #actions:I
    .restart local v9       #skipKey:Z
    :cond_a6
    move v0, v3

    .line 5583
    goto/16 :goto_13

    :cond_a9
    move v0, v3

    .line 5585
    goto/16 :goto_13

    .line 5590
    .end local v6           #actions:I
    .end local v7           #screenIsDim:Z
    .end local v8           #screenIsOff:Z
    .end local v9           #skipKey:Z
    :pswitch_ac
    iget-object v0, p0, Lcom/android/server/WindowManagerService$KeyQ;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService;->screenIsOn()Z

    move-result v0

    if-nez v0, :cond_d5

    move v8, v10

    .line 5591
    .restart local v8       #screenIsOff:Z
    :goto_b7
    iget-object v0, p0, Lcom/android/server/WindowManagerService$KeyQ;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService;->screenIsBright()Z

    move-result v0

    if-nez v0, :cond_d7

    move v7, v10

    .line 5592
    .restart local v7       #screenIsDim:Z
    :goto_c2
    if-eqz v8, :cond_de

    .line 5593
    iget-object v0, p0, Lcom/android/server/WindowManagerService$KeyQ;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget v1, p2, Landroid/view/RawInputEvent;->deviceId:I

    iget v2, p1, Lcom/android/server/InputDevice;->classes:I

    invoke-interface {v0, v1, v2, p2}, Landroid/view/WindowManagerPolicy;->isWakeRelMovementTq(IILandroid/view/RawInputEvent;)Z

    move-result v0

    if-nez v0, :cond_d9

    move v0, v3

    .line 5596
    goto/16 :goto_13

    .end local v7           #screenIsDim:Z
    .end local v8           #screenIsOff:Z
    :cond_d5
    move v8, v3

    .line 5590
    goto :goto_b7

    .restart local v8       #screenIsOff:Z
    :cond_d7
    move v7, v3

    .line 5591
    goto :goto_c2

    .line 5598
    .restart local v7       #screenIsDim:Z
    :cond_d9
    iget v0, p2, Landroid/view/RawInputEvent;->flags:I

    or-int/2addr v0, v5

    iput v0, p2, Landroid/view/RawInputEvent;->flags:I

    .line 5600
    :cond_de
    if-eqz v7, :cond_e5

    .line 5601
    iget v0, p2, Landroid/view/RawInputEvent;->flags:I

    or-int/2addr v0, v4

    iput v0, p2, Landroid/view/RawInputEvent;->flags:I

    :cond_e5
    move v0, v10

    .line 5603
    goto/16 :goto_13

    .line 5607
    .end local v7           #screenIsDim:Z
    .end local v8           #screenIsOff:Z
    :pswitch_e8
    iget-object v0, p0, Lcom/android/server/WindowManagerService$KeyQ;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService;->screenIsOn()Z

    move-result v0

    if-nez v0, :cond_174

    move v8, v10

    .line 5608
    .restart local v8       #screenIsOff:Z
    :goto_f3
    iget-object v0, p0, Lcom/android/server/WindowManagerService$KeyQ;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService;->screenIsBright()Z

    move-result v0

    if-nez v0, :cond_177

    move v7, v10

    .line 5615
    .restart local v7       #screenIsDim:Z
    :goto_fe
    iget-object v0, p0, Lcom/android/server/WindowManagerService$KeyQ;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService;->inVSleepState()I

    move-result v0

    if-eqz v0, :cond_179

    iget v0, p1, Lcom/android/server/InputDevice;->id:I

    const v1, 0x10002

    if-ne v0, v1, :cond_179

    .line 5630
    const-string v0, "KeyInputQueue"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "screenIsOff = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5632
    iget v0, p2, Landroid/view/RawInputEvent;->value:I

    if-ne v0, v10, :cond_14f

    .line 5634
    const-string v0, "KeyInputQueue"

    const-string v0, "VirTualSleep action 2"

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5635
    invoke-static {v10}, Landroid/os/Power;->setScreenState(Z)I

    .line 5636
    iget v0, p2, Landroid/view/RawInputEvent;->flags:I

    or-int/2addr v0, v4

    iput v0, p2, Landroid/view/RawInputEvent;->flags:I

    .line 5637
    iget-object v0, p0, Lcom/android/server/WindowManagerService$KeyQ;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService;->inVSleepState()I

    move-result v0

    if-ne v0, v10, :cond_14f

    .line 5638
    iget-object v0, p0, Lcom/android/server/WindowManagerService$KeyQ;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/PowerManagerService;->userActivity_Virtual(JZ)V

    .line 5641
    :cond_14f
    iget v0, p2, Landroid/view/RawInputEvent;->value:I

    if-nez v0, :cond_171

    .line 5643
    const-string v0, "KeyInputQueue"

    const-string v0, "VirTualSleep action 3"

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5645
    iput v3, p2, Landroid/view/RawInputEvent;->flags:I

    .line 5646
    iget-object v0, p0, Lcom/android/server/WindowManagerService$KeyQ;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService;->inVSleepState()I

    move-result v0

    if-ne v0, v10, :cond_171

    .line 5647
    iget-object v0, p0, Lcom/android/server/WindowManagerService$KeyQ;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PowerManagerService;->goToSleep_Virtual(J)V

    :cond_171
    move v0, v10

    .line 5649
    goto/16 :goto_13

    .end local v7           #screenIsDim:Z
    .end local v8           #screenIsOff:Z
    :cond_174
    move v8, v3

    .line 5607
    goto/16 :goto_f3

    .restart local v8       #screenIsOff:Z
    :cond_177
    move v7, v3

    .line 5608
    goto :goto_fe

    .line 5656
    .restart local v7       #screenIsDim:Z
    :cond_179
    if-eqz v8, :cond_191

    .line 5657
    iget-object v0, p0, Lcom/android/server/WindowManagerService$KeyQ;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget v1, p2, Landroid/view/RawInputEvent;->deviceId:I

    iget v2, p1, Lcom/android/server/InputDevice;->classes:I

    invoke-interface {v0, v1, v2, p2}, Landroid/view/WindowManagerPolicy;->isWakeAbsMovementTq(IILandroid/view/RawInputEvent;)Z

    move-result v0

    if-nez v0, :cond_18c

    move v0, v3

    .line 5660
    goto/16 :goto_13

    .line 5662
    :cond_18c
    iget v0, p2, Landroid/view/RawInputEvent;->flags:I

    or-int/2addr v0, v5

    iput v0, p2, Landroid/view/RawInputEvent;->flags:I

    .line 5664
    :cond_191
    if-eqz v7, :cond_198

    .line 5665
    iget v0, p2, Landroid/view/RawInputEvent;->flags:I

    or-int/2addr v0, v4

    iput v0, p2, Landroid/view/RawInputEvent;->flags:I

    :cond_198
    move v0, v10

    .line 5667
    goto/16 :goto_13

    .line 5525
    nop

    :pswitch_data_19c
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_ac
        :pswitch_e8
    .end packed-switch
.end method

.method setHoldScreenLocked(Z)V
    .registers 4
    .parameter "holding"

    .prologue
    .line 5694
    iget-object v1, p0, Lcom/android/server/WindowManagerService$KeyQ;->mHoldingScreen:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    .line 5695
    .local v0, state:Z
    if-eq p1, v0, :cond_f

    .line 5696
    if-eqz p1, :cond_10

    .line 5697
    iget-object v1, p0, Lcom/android/server/WindowManagerService$KeyQ;->mHoldingScreen:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 5703
    :cond_f
    :goto_f
    return-void

    .line 5699
    :cond_10
    iget-object v1, p0, Lcom/android/server/WindowManagerService$KeyQ;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy;->screenOnStoppedLw()V

    .line 5700
    iget-object v1, p0, Lcom/android/server/WindowManagerService$KeyQ;->mHoldingScreen:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_f
.end method
