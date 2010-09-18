.class Lcom/broadcom/bt/service/bpp/BluetoothPrinterService$PrintWorker;
.super Ljava/lang/Object;
.source "BluetoothPrinterService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PrintWorker"
.end annotation


# instance fields
.field mInterrupt:Z

.field final synthetic this$0:Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;


# direct methods
.method public constructor <init>(Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;)V
    .registers 2
    .parameter

    .prologue
    .line 836
    iput-object p1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService$PrintWorker;->this$0:Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 838
    return-void
.end method


# virtual methods
.method public interrupt()V
    .registers 3

    .prologue
    const-class v1, Lcom/broadcom/bt/service/bpp/PrintManager;

    .line 841
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService$PrintWorker;->mInterrupt:Z

    .line 842
    const-class v0, Lcom/broadcom/bt/service/bpp/PrintManager;

    monitor-enter v1

    .line 843
    :try_start_8
    const-class v1, Lcom/broadcom/bt/service/bpp/PrintManager;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 844
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_1c

    .line 845
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService$PrintWorker;->this$0:Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;

    iget-object v0, v0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->PRINT_LOCK:Ljava/lang/String;

    monitor-enter v0

    .line 846
    :try_start_13
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService$PrintWorker;->this$0:Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;

    iget-object v1, v1, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->PRINT_LOCK:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 847
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_13 .. :try_end_1b} :catchall_1f

    .line 848
    return-void

    .line 844
    :catchall_1c
    move-exception v1

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v1

    .line 847
    :catchall_1f
    move-exception v1

    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 834
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService$PrintWorker;->mInterrupt:Z

    .line 835
    return-void
.end method

.method public run()V
    .registers 14

    .prologue
    .line 853
    const/4 v3, 0x0

    .line 854
    .local v3, job:Lcom/broadcom/bt/service/bpp/PrintJob;
    :goto_1
    iget-boolean v8, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService$PrintWorker;->mInterrupt:Z

    if-nez v8, :cond_34

    .line 855
    const-string v8, "BluetoothPrinterService"

    const-string v9, "PrintWorker thread...Checking for print jobs in queue"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    const-class v8, Lcom/broadcom/bt/service/bpp/PrintManager;

    monitor-enter v8

    .line 859
    :goto_f
    :try_start_f
    iget-boolean v9, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService$PrintWorker;->mInterrupt:Z

    if-nez v9, :cond_28

    invoke-static {}, Lcom/broadcom/bt/service/bpp/PrintManager;->dequeueJob()Lcom/broadcom/bt/service/bpp/PrintJob;

    move-result-object v3

    if-nez v3, :cond_28

    .line 860
    const-string v9, "BluetoothPrinterService"

    const-string v10, "PrintWorker: No print jobs queued. Waiting..."

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catchall {:try_start_f .. :try_end_20} :catchall_35

    .line 862
    :try_start_20
    const-class v9, Lcom/broadcom/bt/service/bpp/PrintManager;

    invoke-virtual {v9}, Ljava/lang/Object;->wait()V
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_35
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_25} :catch_26

    goto :goto_f

    .line 863
    :catch_26
    move-exception v9

    goto :goto_f

    .line 865
    :cond_28
    :try_start_28
    monitor-exit v8
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_35

    .line 866
    iget-boolean v8, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService$PrintWorker;->mInterrupt:Z

    if-eqz v8, :cond_38

    .line 867
    const-string v8, "BluetoothPrinterService"

    const-string v9, "PrintWorker: Leaving thread loop!!!"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    :cond_34
    :goto_34
    return-void

    .line 865
    :catchall_35
    move-exception v9

    :try_start_36
    monitor-exit v8
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw v9

    .line 873
    :cond_38
    const-string v8, "BluetoothPrinterService"

    const-string v9, "PrintWorker:Job found. Checking for running print job"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    const/4 v0, -0x1

    .line 875
    .local v0, currentJobStatus:I
    iget-object v8, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService$PrintWorker;->this$0:Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;

    iget-object v8, v8, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->PRINT_LOCK:Ljava/lang/String;

    monitor-enter v8

    .line 876
    :try_start_45
    iget-object v9, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService$PrintWorker;->this$0:Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;

    invoke-static {v9}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->access$000(Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;)I

    move-result v0

    .line 877
    :goto_4b
    iget-boolean v9, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService$PrintWorker;->mInterrupt:Z
    :try_end_4d
    .catchall {:try_start_45 .. :try_end_4d} :catchall_c5

    if-nez v9, :cond_b7

    const/4 v9, 0x3

    if-eq v0, v9, :cond_b7

    const/4 v9, 0x4

    if-eq v0, v9, :cond_b7

    const/16 v9, -0x64

    if-eq v0, v9, :cond_b7

    .line 883
    :try_start_59
    const-string v9, "BluetoothPrinterService"

    const/4 v10, 0x4

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_9d

    .line 884
    iget-object v9, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService$PrintWorker;->this$0:Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;

    iget-object v2, v9, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCurrentJob:Lcom/broadcom/bt/service/bpp/PrintJob;

    .line 885
    .local v2, j:Lcom/broadcom/bt/service/bpp/PrintJob;
    if-eqz v2, :cond_ad

    .line 886
    iget-wide v4, v2, Lcom/broadcom/bt/service/bpp/PrintJob;->mJobId:J

    .line 887
    .local v4, jobId:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-wide v11, v2, Lcom/broadcom/bt/service/bpp/PrintJob;->mStartTime:J

    sub-long/2addr v9, v11

    const-wide/16 v11, 0x3e8

    div-long v6, v9, v11

    .line 888
    .local v6, runningTimeSec:J
    const-string v9, "BluetoothPrinterService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PrintWorker:Current job  \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\' running for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " secs. Waiting for finish..."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    .end local v2           #j:Lcom/broadcom/bt/service/bpp/PrintJob;
    .end local v4           #jobId:J
    .end local v6           #runningTimeSec:J
    :cond_9d
    :goto_9d
    iget-object v9, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService$PrintWorker;->this$0:Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;

    iget-object v9, v9, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->PRINT_LOCK:Ljava/lang/String;

    const-wide/16 v10, 0x1388

    invoke-virtual {v9, v10, v11}, Ljava/lang/Object;->wait(J)V

    .line 894
    iget-object v9, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService$PrintWorker;->this$0:Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;

    invoke-static {v9}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->access$000(Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;)I

    move-result v0

    goto :goto_4b

    .line 890
    .restart local v2       #j:Lcom/broadcom/bt/service/bpp/PrintJob;
    :cond_ad
    const-string v9, "BluetoothPrinterService"

    const-string v10, "PrintWorker:Current job running. Waiting for finish..."

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b4
    .catchall {:try_start_59 .. :try_end_b4} :catchall_c5
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_b4} :catch_b5

    goto :goto_9d

    .line 895
    .end local v2           #j:Lcom/broadcom/bt/service/bpp/PrintJob;
    :catch_b5
    move-exception v9

    goto :goto_4b

    .line 897
    :cond_b7
    :try_start_b7
    monitor-exit v8
    :try_end_b8
    .catchall {:try_start_b7 .. :try_end_b8} :catchall_c5

    .line 898
    iget-boolean v8, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService$PrintWorker;->mInterrupt:Z

    if-eqz v8, :cond_c8

    .line 899
    const-string v8, "BluetoothPrinterService"

    const-string v9, "PrintWorker:INTERRUPTED. EXITTING!!!"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_34

    .line 897
    :catchall_c5
    move-exception v9

    :try_start_c6
    monitor-exit v8
    :try_end_c7
    .catchall {:try_start_c6 .. :try_end_c7} :catchall_c5

    throw v9

    .line 905
    :cond_c8
    const/16 v8, -0x64

    if-ne v0, v8, :cond_d8

    .line 906
    const-string v8, "BluetoothPrinterService"

    const-string v9, "PrintWorker: current job not responding...Cancelling request..."

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    :try_start_d3
    iget-object v8, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService$PrintWorker;->this$0:Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;

    invoke-virtual {v8}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->abort()V
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_d8} :catch_f9

    .line 914
    :cond_d8
    :goto_d8
    const-string v8, "BluetoothPrinterService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PrintWorker: Executing print job "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, v3, Lcom/broadcom/bt/service/bpp/PrintJob;->mJobId:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    iget-object v8, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService$PrintWorker;->this$0:Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;

    invoke-static {v8, v3}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->access$100(Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;Lcom/broadcom/bt/service/bpp/PrintJob;)J

    goto/16 :goto_1

    .line 909
    :catch_f9
    move-exception v8

    move-object v1, v8

    .line 910
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d8
.end method
