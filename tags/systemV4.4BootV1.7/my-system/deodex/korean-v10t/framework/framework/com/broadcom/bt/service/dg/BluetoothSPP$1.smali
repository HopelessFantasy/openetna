.class Lcom/broadcom/bt/service/dg/BluetoothSPP$1;
.super Lcom/broadcom/bt/service/dg/IBluetoothSPPCallback$Stub;
.source "BluetoothSPP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/dg/BluetoothSPP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/service/dg/BluetoothSPP;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/service/dg/BluetoothSPP;)V
    .registers 2
    .parameter

    .prologue
    .line 489
    iput-object p1, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP$1;->this$0:Lcom/broadcom/bt/service/dg/BluetoothSPP;

    invoke-direct {p0}, Lcom/broadcom/bt/service/dg/IBluetoothSPPCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onPortConnected(BLjava/lang/String;)V
    .registers 5
    .parameter "appId"
    .parameter "remoteAddress"

    .prologue
    .line 426
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP$1;->this$0:Lcom/broadcom/bt/service/dg/BluetoothSPP;

    invoke-static {v0}, Lcom/broadcom/bt/service/dg/BluetoothSPP;->access$400(Lcom/broadcom/bt/service/dg/BluetoothSPP;)B
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_2a

    move-result v0

    if-eq v0, p1, :cond_b

    .line 438
    :goto_9
    monitor-exit p0

    return-void

    .line 430
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP$1;->this$0:Lcom/broadcom/bt/service/dg/BluetoothSPP;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/broadcom/bt/service/dg/BluetoothSPP;->access$102(Lcom/broadcom/bt/service/dg/BluetoothSPP;I)I

    .line 433
    iget-object v0, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP$1;->this$0:Lcom/broadcom/bt/service/dg/BluetoothSPP;

    invoke-static {v0}, Lcom/broadcom/bt/service/dg/BluetoothSPP;->access$600(Lcom/broadcom/bt/service/dg/BluetoothSPP;)Lcom/broadcom/bt/service/dg/IBluetoothSPPEventHandler;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 434
    iget-object v0, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP$1;->this$0:Lcom/broadcom/bt/service/dg/BluetoothSPP;

    invoke-static {v0}, Lcom/broadcom/bt/service/dg/BluetoothSPP;->access$600(Lcom/broadcom/bt/service/dg/BluetoothSPP;)Lcom/broadcom/bt/service/dg/IBluetoothSPPEventHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/broadcom/bt/service/dg/IBluetoothSPPEventHandler;->onPortConnected(BLjava/lang/String;)V

    .line 437
    :cond_22
    const-string v0, "BluetoothSPP"

    const-string v1, "onPortConnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catchall {:try_start_b .. :try_end_29} :catchall_2a

    goto :goto_9

    .line 426
    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onPortConnectingToHost(B)V
    .registers 4
    .parameter "appId"

    .prologue
    .line 458
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP$1;->this$0:Lcom/broadcom/bt/service/dg/BluetoothSPP;

    invoke-static {v0}, Lcom/broadcom/bt/service/dg/BluetoothSPP;->access$400(Lcom/broadcom/bt/service/dg/BluetoothSPP;)B
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_2a

    move-result v0

    if-eq v0, p1, :cond_b

    .line 468
    :goto_9
    monitor-exit p0

    return-void

    .line 462
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP$1;->this$0:Lcom/broadcom/bt/service/dg/BluetoothSPP;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/broadcom/bt/service/dg/BluetoothSPP;->access$102(Lcom/broadcom/bt/service/dg/BluetoothSPP;I)I

    .line 464
    iget-object v0, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP$1;->this$0:Lcom/broadcom/bt/service/dg/BluetoothSPP;

    invoke-static {v0}, Lcom/broadcom/bt/service/dg/BluetoothSPP;->access$600(Lcom/broadcom/bt/service/dg/BluetoothSPP;)Lcom/broadcom/bt/service/dg/IBluetoothSPPEventHandler;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 465
    iget-object v0, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP$1;->this$0:Lcom/broadcom/bt/service/dg/BluetoothSPP;

    invoke-static {v0}, Lcom/broadcom/bt/service/dg/BluetoothSPP;->access$600(Lcom/broadcom/bt/service/dg/BluetoothSPP;)Lcom/broadcom/bt/service/dg/IBluetoothSPPEventHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/broadcom/bt/service/dg/IBluetoothSPPEventHandler;->onPortConnectingToHost(B)V

    .line 467
    :cond_22
    const-string v0, "BluetoothSPP"

    const-string v1, "onPortDisconnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catchall {:try_start_b .. :try_end_29} :catchall_2a

    goto :goto_9

    .line 458
    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onPortConnectingToHostFailed(B)V
    .registers 4
    .parameter "appId"

    .prologue
    .line 473
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP$1;->this$0:Lcom/broadcom/bt/service/dg/BluetoothSPP;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/broadcom/bt/service/dg/BluetoothSPP;->access$102(Lcom/broadcom/bt/service/dg/BluetoothSPP;I)I

    .line 474
    iget-object v0, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP$1;->this$0:Lcom/broadcom/bt/service/dg/BluetoothSPP;

    invoke-static {v0}, Lcom/broadcom/bt/service/dg/BluetoothSPP;->access$600(Lcom/broadcom/bt/service/dg/BluetoothSPP;)Lcom/broadcom/bt/service/dg/IBluetoothSPPEventHandler;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 475
    iget-object v0, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP$1;->this$0:Lcom/broadcom/bt/service/dg/BluetoothSPP;

    invoke-static {v0}, Lcom/broadcom/bt/service/dg/BluetoothSPP;->access$600(Lcom/broadcom/bt/service/dg/BluetoothSPP;)Lcom/broadcom/bt/service/dg/IBluetoothSPPEventHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/broadcom/bt/service/dg/IBluetoothSPPEventHandler;->onPortConnectingToHostFailed(B)V

    .line 477
    :cond_18
    const-string v0, "BluetoothSPP"

    const-string v1, "onPortConnectingtoHostFailed()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_21

    .line 478
    monitor-exit p0

    return-void

    .line 473
    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onPortDataArrived(B)V
    .registers 3
    .parameter "appId"

    .prologue
    .line 492
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP$1;->this$0:Lcom/broadcom/bt/service/dg/BluetoothSPP;

    invoke-static {v0}, Lcom/broadcom/bt/service/dg/BluetoothSPP;->access$600(Lcom/broadcom/bt/service/dg/BluetoothSPP;)Lcom/broadcom/bt/service/dg/IBluetoothSPPEventHandler;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 493
    iget-object v0, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP$1;->this$0:Lcom/broadcom/bt/service/dg/BluetoothSPP;

    invoke-static {v0}, Lcom/broadcom/bt/service/dg/BluetoothSPP;->access$600(Lcom/broadcom/bt/service/dg/BluetoothSPP;)Lcom/broadcom/bt/service/dg/IBluetoothSPPEventHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/broadcom/bt/service/dg/IBluetoothSPPEventHandler;->onPortDataArrived(B)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 495
    :cond_12
    monitor-exit p0

    return-void

    .line 492
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onPortDataSent(B)V
    .registers 4
    .parameter "appId"

    .prologue
    .line 482
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP$1;->this$0:Lcom/broadcom/bt/service/dg/BluetoothSPP;

    invoke-static {v0}, Lcom/broadcom/bt/service/dg/BluetoothSPP;->access$600(Lcom/broadcom/bt/service/dg/BluetoothSPP;)Lcom/broadcom/bt/service/dg/IBluetoothSPPEventHandler;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 483
    iget-object v0, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP$1;->this$0:Lcom/broadcom/bt/service/dg/BluetoothSPP;

    invoke-static {v0}, Lcom/broadcom/bt/service/dg/BluetoothSPP;->access$600(Lcom/broadcom/bt/service/dg/BluetoothSPP;)Lcom/broadcom/bt/service/dg/IBluetoothSPPEventHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/broadcom/bt/service/dg/IBluetoothSPPEventHandler;->onPortDataSent(B)V

    .line 485
    :cond_12
    const-string v0, "BluetoothSPP"

    const-string v1, "onPortDataSent()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 486
    monitor-exit p0

    return-void

    .line 482
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onPortDisconnected(B)V
    .registers 4
    .parameter "appId"

    .prologue
    .line 442
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP$1;->this$0:Lcom/broadcom/bt/service/dg/BluetoothSPP;

    invoke-static {v0}, Lcom/broadcom/bt/service/dg/BluetoothSPP;->access$400(Lcom/broadcom/bt/service/dg/BluetoothSPP;)B
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_2a

    move-result v0

    if-eq v0, p1, :cond_b

    .line 454
    :goto_9
    monitor-exit p0

    return-void

    .line 446
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP$1;->this$0:Lcom/broadcom/bt/service/dg/BluetoothSPP;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/broadcom/bt/service/dg/BluetoothSPP;->access$102(Lcom/broadcom/bt/service/dg/BluetoothSPP;I)I

    .line 449
    iget-object v0, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP$1;->this$0:Lcom/broadcom/bt/service/dg/BluetoothSPP;

    invoke-static {v0}, Lcom/broadcom/bt/service/dg/BluetoothSPP;->access$600(Lcom/broadcom/bt/service/dg/BluetoothSPP;)Lcom/broadcom/bt/service/dg/IBluetoothSPPEventHandler;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 450
    iget-object v0, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP$1;->this$0:Lcom/broadcom/bt/service/dg/BluetoothSPP;

    invoke-static {v0}, Lcom/broadcom/bt/service/dg/BluetoothSPP;->access$600(Lcom/broadcom/bt/service/dg/BluetoothSPP;)Lcom/broadcom/bt/service/dg/IBluetoothSPPEventHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/broadcom/bt/service/dg/IBluetoothSPPEventHandler;->onPortDisconnected(B)V

    .line 453
    :cond_22
    const-string v0, "BluetoothSPP"

    const-string v1, "onPortDisconnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catchall {:try_start_b .. :try_end_29} :catchall_2a

    goto :goto_9

    .line 442
    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onSppServerPortEnabled(B)V
    .registers 4
    .parameter "appId"

    .prologue
    .line 413
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP$1;->this$0:Lcom/broadcom/bt/service/dg/BluetoothSPP;

    invoke-static {v0}, Lcom/broadcom/bt/service/dg/BluetoothSPP;->access$400(Lcom/broadcom/bt/service/dg/BluetoothSPP;)B
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_23

    move-result v0

    if-eq v0, p1, :cond_b

    .line 421
    :cond_9
    :goto_9
    monitor-exit p0

    return-void

    .line 416
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP$1;->this$0:Lcom/broadcom/bt/service/dg/BluetoothSPP;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/broadcom/bt/service/dg/BluetoothSPP;->access$102(Lcom/broadcom/bt/service/dg/BluetoothSPP;I)I

    .line 417
    iget-object v0, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP$1;->this$0:Lcom/broadcom/bt/service/dg/BluetoothSPP;

    invoke-static {v0}, Lcom/broadcom/bt/service/dg/BluetoothSPP;->access$600(Lcom/broadcom/bt/service/dg/BluetoothSPP;)Lcom/broadcom/bt/service/dg/IBluetoothSPPEventHandler;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 418
    iget-object v0, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP$1;->this$0:Lcom/broadcom/bt/service/dg/BluetoothSPP;

    invoke-static {v0}, Lcom/broadcom/bt/service/dg/BluetoothSPP;->access$600(Lcom/broadcom/bt/service/dg/BluetoothSPP;)Lcom/broadcom/bt/service/dg/IBluetoothSPPEventHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/broadcom/bt/service/dg/IBluetoothSPPEventHandler;->onSppServerPortEnabled(B)V
    :try_end_22
    .catchall {:try_start_b .. :try_end_22} :catchall_23

    goto :goto_9

    .line 413
    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method
