.class Landroid/server/BluetoothDeviceService$EnableThread;
.super Ljava/lang/Thread;
.source "BluetoothDeviceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothDeviceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EnableThread"
.end annotation


# instance fields
.field private final mSaveSetting:Z

.field final synthetic this$0:Landroid/server/BluetoothDeviceService;


# direct methods
.method public constructor <init>(Landroid/server/BluetoothDeviceService;Z)V
    .registers 3
    .parameter
    .parameter "saveSetting"

    .prologue
    .line 576
    iput-object p1, p0, Landroid/server/BluetoothDeviceService$EnableThread;->this$0:Landroid/server/BluetoothDeviceService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 577
    iput-boolean p2, p0, Landroid/server/BluetoothDeviceService$EnableThread;->mSaveSetting:Z

    .line 578
    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    const/4 v13, 0x2

    const/4 v10, 0x1

    const/4 v12, 0x0

    .line 580
    iget-object v8, p0, Landroid/server/BluetoothDeviceService$EnableThread;->this$0:Landroid/server/BluetoothDeviceService;

    invoke-static {v8}, Landroid/server/BluetoothDeviceService;->access$400(Landroid/server/BluetoothDeviceService;)I

    move-result v8

    if-nez v8, :cond_37

    move v4, v10

    .line 581
    .local v4, res:Z
    :goto_c
    if-eqz v4, :cond_50

    .line 582
    const/4 v5, 0x2

    .line 583
    .local v5, retryCount:I
    const/4 v7, 0x0

    .local v7, running:Z
    move v6, v5

    .line 584
    .end local v5           #retryCount:I
    .local v6, retryCount:I
    :goto_11
    sub-int v5, v6, v10

    .end local v6           #retryCount:I
    .restart local v5       #retryCount:I
    if-lez v6, :cond_43

    if-nez v7, :cond_43

    .line 585
    iget-object v8, p0, Landroid/server/BluetoothDeviceService$EnableThread;->this$0:Landroid/server/BluetoothDeviceService;

    invoke-static {v8}, Landroid/server/BluetoothDeviceService;->access$500(Landroid/server/BluetoothDeviceService;)Landroid/server/BluetoothEventLoop;

    move-result-object v8

    invoke-virtual {v8}, Landroid/server/BluetoothEventLoop;->start()V

    .line 588
    const/4 v2, 0x5

    .local v2, pollCount:I
    move v3, v2

    .line 589
    .end local v2           #pollCount:I
    .local v3, pollCount:I
    :goto_22
    sub-int v2, v3, v10

    .end local v3           #pollCount:I
    .restart local v2       #pollCount:I
    if-lez v3, :cond_35

    if-nez v7, :cond_35

    .line 590
    iget-object v8, p0, Landroid/server/BluetoothDeviceService$EnableThread;->this$0:Landroid/server/BluetoothDeviceService;

    invoke-static {v8}, Landroid/server/BluetoothDeviceService;->access$500(Landroid/server/BluetoothDeviceService;)Landroid/server/BluetoothEventLoop;

    move-result-object v8

    invoke-virtual {v8}, Landroid/server/BluetoothEventLoop;->isEventLoopRunning()Z

    move-result v8

    if-eqz v8, :cond_39

    .line 591
    const/4 v7, 0x1

    :cond_35
    move v6, v5

    .line 598
    .end local v5           #retryCount:I
    .restart local v6       #retryCount:I
    goto :goto_11

    .end local v2           #pollCount:I
    .end local v4           #res:Z
    .end local v6           #retryCount:I
    .end local v7           #running:Z
    :cond_37
    move v4, v12

    .line 580
    goto :goto_c

    .line 595
    .restart local v2       #pollCount:I
    .restart local v4       #res:Z
    .restart local v5       #retryCount:I
    .restart local v7       #running:Z
    :cond_39
    const-wide/16 v8, 0x64

    :try_start_3b
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3e
    .catch Ljava/lang/InterruptedException; {:try_start_3b .. :try_end_3e} :catch_40

    move v3, v2

    .line 596
    .end local v2           #pollCount:I
    .restart local v3       #pollCount:I
    goto :goto_22

    .end local v3           #pollCount:I
    .restart local v2       #pollCount:I
    :catch_40
    move-exception v8

    move v3, v2

    .end local v2           #pollCount:I
    .restart local v3       #pollCount:I
    goto :goto_22

    .line 599
    .end local v3           #pollCount:I
    :cond_43
    if-nez v7, :cond_50

    .line 600
    const-string v8, "bt EnableThread giving up"

    invoke-static {v8}, Landroid/server/BluetoothDeviceService;->access$600(Ljava/lang/String;)V

    .line 601
    const/4 v4, 0x0

    .line 602
    iget-object v8, p0, Landroid/server/BluetoothDeviceService$EnableThread;->this$0:Landroid/server/BluetoothDeviceService;

    invoke-static {v8}, Landroid/server/BluetoothDeviceService;->access$700(Landroid/server/BluetoothDeviceService;)I

    .line 606
    .end local v5           #retryCount:I
    .end local v7           #running:Z
    :cond_50
    if-eqz v4, :cond_8e

    .line 607
    iget-boolean v8, p0, Landroid/server/BluetoothDeviceService$EnableThread;->mSaveSetting:Z

    if-eqz v8, :cond_5b

    .line 608
    iget-object v8, p0, Landroid/server/BluetoothDeviceService$EnableThread;->this$0:Landroid/server/BluetoothDeviceService;

    invoke-static {v8, v10}, Landroid/server/BluetoothDeviceService;->access$800(Landroid/server/BluetoothDeviceService;Z)V

    .line 610
    :cond_5b
    iget-object v8, p0, Landroid/server/BluetoothDeviceService$EnableThread;->this$0:Landroid/server/BluetoothDeviceService;

    invoke-static {v8, v12}, Landroid/server/BluetoothDeviceService;->access$902(Landroid/server/BluetoothDeviceService;Z)Z

    .line 611
    iget-object v8, p0, Landroid/server/BluetoothDeviceService$EnableThread;->this$0:Landroid/server/BluetoothDeviceService;

    invoke-static {v8}, Landroid/server/BluetoothDeviceService;->access$1000(Landroid/server/BluetoothDeviceService;)Landroid/server/BluetoothDeviceService$BondState;

    move-result-object v8

    invoke-virtual {v8}, Landroid/server/BluetoothDeviceService$BondState;->loadBondState()V

    .line 612
    iget-object v8, p0, Landroid/server/BluetoothDeviceService$EnableThread;->this$0:Landroid/server/BluetoothDeviceService;

    invoke-static {v8}, Landroid/server/BluetoothDeviceService;->access$1100(Landroid/server/BluetoothDeviceService;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Landroid/server/BluetoothDeviceService$EnableThread;->this$0:Landroid/server/BluetoothDeviceService;

    invoke-static {v9}, Landroid/server/BluetoothDeviceService;->access$1100(Landroid/server/BluetoothDeviceService;)Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    const-wide/16 v10, 0xbb8

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 616
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 618
    .local v0, ident:J
    :try_start_82
    iget-object v8, p0, Landroid/server/BluetoothDeviceService$EnableThread;->this$0:Landroid/server/BluetoothDeviceService;

    invoke-static {v8}, Landroid/server/BluetoothDeviceService;->access$1200(Landroid/server/BluetoothDeviceService;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/app/IBatteryStats;->noteBluetoothOn()V
    :try_end_8b
    .catchall {:try_start_82 .. :try_end_8b} :catchall_cd
    .catch Landroid/os/RemoteException; {:try_start_82 .. :try_end_8b} :catch_d4

    .line 621
    :goto_8b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 625
    .end local v0           #ident:J
    :cond_8e
    iget-object v8, p0, Landroid/server/BluetoothDeviceService$EnableThread;->this$0:Landroid/server/BluetoothDeviceService;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/server/BluetoothDeviceService;->access$1302(Landroid/server/BluetoothDeviceService;Landroid/server/BluetoothDeviceService$EnableThread;)Landroid/server/BluetoothDeviceService$EnableThread;

    .line 627
    iget-object v8, p0, Landroid/server/BluetoothDeviceService$EnableThread;->this$0:Landroid/server/BluetoothDeviceService;

    if-eqz v4, :cond_d2

    move v9, v13

    :goto_99
    invoke-static {v8, v9}, Landroid/server/BluetoothDeviceService;->access$1400(Landroid/server/BluetoothDeviceService;I)V

    .line 631
    if-eqz v4, :cond_ad

    .line 633
    iget-object v8, p0, Landroid/server/BluetoothDeviceService$EnableThread;->this$0:Landroid/server/BluetoothDeviceService;

    invoke-static {v8}, Landroid/server/BluetoothDeviceService;->access$500(Landroid/server/BluetoothDeviceService;)Landroid/server/BluetoothEventLoop;

    move-result-object v8

    iget-object v9, p0, Landroid/server/BluetoothDeviceService$EnableThread;->this$0:Landroid/server/BluetoothDeviceService;

    invoke-static {v9}, Landroid/server/BluetoothDeviceService;->access$1500(Landroid/server/BluetoothDeviceService;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/server/BluetoothEventLoop;->onModeChanged(Ljava/lang/String;)V

    .line 636
    :cond_ad
    iget-object v8, p0, Landroid/server/BluetoothDeviceService$EnableThread;->this$0:Landroid/server/BluetoothDeviceService;

    iget v8, v8, Landroid/server/BluetoothDeviceService;->mFinalBTState:I

    if-eq v8, v13, :cond_c3

    iget-object v8, p0, Landroid/server/BluetoothDeviceService$EnableThread;->this$0:Landroid/server/BluetoothDeviceService;

    invoke-static {v8}, Landroid/server/BluetoothDeviceService;->access$1600(Landroid/server/BluetoothDeviceService;)Z

    move-result v8

    if-eqz v8, :cond_cc

    iget-object v8, p0, Landroid/server/BluetoothDeviceService$EnableThread;->this$0:Landroid/server/BluetoothDeviceService;

    invoke-static {v8}, Landroid/server/BluetoothDeviceService;->access$1700(Landroid/server/BluetoothDeviceService;)Z

    move-result v8

    if-eqz v8, :cond_cc

    .line 639
    :cond_c3
    iget-object v8, p0, Landroid/server/BluetoothDeviceService$EnableThread;->this$0:Landroid/server/BluetoothDeviceService;

    iput v12, v8, Landroid/server/BluetoothDeviceService;->mFinalBTState:I

    .line 640
    iget-object v8, p0, Landroid/server/BluetoothDeviceService$EnableThread;->this$0:Landroid/server/BluetoothDeviceService;

    invoke-virtual {v8, v12}, Landroid/server/BluetoothDeviceService;->disable(Z)Z

    .line 643
    :cond_cc
    return-void

    .line 621
    .restart local v0       #ident:J
    :catchall_cd
    move-exception v8

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8

    .end local v0           #ident:J
    :cond_d2
    move v9, v12

    .line 627
    goto :goto_99

    .line 619
    .restart local v0       #ident:J
    :catch_d4
    move-exception v8

    goto :goto_8b
.end method
