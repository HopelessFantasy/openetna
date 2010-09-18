.class Lcom/broadcom/bt/service/fm/FmReceiver$1;
.super Lcom/broadcom/bt/service/fm/IFmReceiverCallback$Stub;
.source "FmReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/fm/FmReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/service/fm/FmReceiver;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/service/fm/FmReceiver;)V
    .registers 2
    .parameter

    .prologue
    .line 823
    iput-object p1, p0, Lcom/broadcom/bt/service/fm/FmReceiver$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onAudioModeEvent(I)V
    .registers 3
    .parameter "audioMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 791
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$000(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 792
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$000(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;->onAudioModeEvent(I)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 793
    :cond_12
    monitor-exit p0

    return-void

    .line 791
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onAudioPathEvent(I)V
    .registers 3
    .parameter "audioPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 798
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$000(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 799
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$000(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;->onAudioPathEvent(I)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 800
    :cond_12
    monitor-exit p0

    return-void

    .line 798
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onEstimateNflEvent(I)V
    .registers 3
    .parameter "nfl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 805
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$000(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 806
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$000(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;->onEstimateNoiseFloorLevelEvent(I)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 807
    :cond_12
    monitor-exit p0

    return-void

    .line 805
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onLiveAudioQualityEvent(I)V
    .registers 3
    .parameter "rssi"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 812
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$000(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 813
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$000(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;->onLiveAudioQualityEvent(I)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 814
    :cond_12
    monitor-exit p0

    return-void

    .line 812
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onRdsDataEvent(IILjava/lang/String;)V
    .registers 5
    .parameter "rdsDataType"
    .parameter "rdsIndex"
    .parameter "rdsText"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 784
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$000(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 785
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$000(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;->onRdsDataEvent(IILjava/lang/String;)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 786
    :cond_12
    monitor-exit p0

    return-void

    .line 784
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onRdsModeEvent(II)V
    .registers 4
    .parameter "rdsMode"
    .parameter "alternateFreqHopEnabled"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 776
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$000(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 777
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$000(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;->onRdsModeEvent(II)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 778
    :cond_12
    monitor-exit p0

    return-void

    .line 776
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onSeekCompleteEvent(IIZ)V
    .registers 5
    .parameter "freq"
    .parameter "rssi"
    .parameter "seeksuccess"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 768
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$000(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 769
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$000(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;->onSeekCompleteEvent(IIZ)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 770
    :cond_12
    monitor-exit p0

    return-void

    .line 768
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onStatusEvent(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 18
    .parameter "freq"
    .parameter "rssi"
    .parameter "radioIsOn"
    .parameter "rdsProgramType"
    .parameter "rdsProgramService"
    .parameter "rdsRadioText"
    .parameter "rdsProgramTypeName"
    .parameter "isMute"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 756
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$000(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 758
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$000(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;->onStatusEvent(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    .line 762
    :cond_1c
    monitor-exit p0

    return-void

    .line 756
    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onVolumeEvent(II)V
    .registers 4
    .parameter "status"
    .parameter "volume"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 825
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$000(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 826
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$000(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;->onVolumeEvent(II)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 827
    :cond_12
    monitor-exit p0

    return-void

    .line 825
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onWorldRegionEvent(I)V
    .registers 3
    .parameter "worldRegion"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 819
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$000(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 820
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$000(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;->onWorldRegionEvent(I)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 821
    :cond_12
    monitor-exit p0

    return-void

    .line 819
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method
