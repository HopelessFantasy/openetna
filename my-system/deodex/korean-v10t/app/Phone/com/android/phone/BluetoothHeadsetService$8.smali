.class Lcom/android/phone/BluetoothHeadsetService$8;
.super Landroid/bluetooth/IBluetoothHeadset$Stub;
.source "BluetoothHeadsetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothHeadsetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BluetoothHeadsetService;


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothHeadsetService;)V
    .registers 2
    .parameter

    .prologue
    .line 841
    iput-object p1, p0, Lcom/android/phone/BluetoothHeadsetService$8;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothHeadset$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public connectHeadset(Ljava/lang/String;)Z
    .registers 15
    .parameter "address"

    .prologue
    const-wide/16 v11, 0x2710

    const/4 v10, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x1

    const-string v7, "BT HSHFP"

    .line 731
    iget-object v4, p0, Lcom/android/phone/BluetoothHeadsetService$8;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const-string v5, "android.permission.BLUETOOTH_ADMIN"

    const-string v6, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v4, v5, v6}, Lcom/android/phone/BluetoothHeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    const-string v4, "BT HSHFP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connectHeadset: address = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    invoke-static {p1}, Landroid/bluetooth/BluetoothDevice;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_30

    move v4, v10

    .line 785
    :goto_2f
    return v4

    .line 740
    :cond_30
    iget-object v4, p0, Lcom/android/phone/BluetoothHeadsetService$8;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v4}, Lcom/android/phone/BluetoothHeadsetService;->access$300(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_45

    .line 741
    const-string v4, "BT HSHFP"

    const-string v4, "Oops, connectHeadset when BT is disabled!"

    invoke-static {v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v10

    .line 742
    goto :goto_2f

    .line 745
    :cond_45
    iget-object v4, p0, Lcom/android/phone/BluetoothHeadsetService$8;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    monitor-enter v4

    .line 746
    :try_start_48
    iget-object v5, p0, Lcom/android/phone/BluetoothHeadsetService$8;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v5}, Lcom/android/phone/BluetoothHeadsetService;->access$500(Lcom/android/phone/BluetoothHeadsetService;)I

    move-result v5

    if-eq v5, v8, :cond_58

    iget-object v5, p0, Lcom/android/phone/BluetoothHeadsetService$8;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v5}, Lcom/android/phone/BluetoothHeadsetService;->access$500(Lcom/android/phone/BluetoothHeadsetService;)I

    move-result v5

    if-ne v5, v9, :cond_81

    .line 750
    :cond_58
    iget-object v5, p0, Lcom/android/phone/BluetoothHeadsetService$8;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v5}, Lcom/android/phone/BluetoothHeadsetService;->access$2100(Lcom/android/phone/BluetoothHeadsetService;)V

    .line 755
    iget-object v5, p0, Lcom/android/phone/BluetoothHeadsetService$8;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v5, p1}, Lcom/android/phone/BluetoothHeadsetService;->access$702(Lcom/android/phone/BluetoothHeadsetService;Ljava/lang/String;)Ljava/lang/String;

    .line 756
    iget-object v5, p0, Lcom/android/phone/BluetoothHeadsetService$8;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/phone/BluetoothHeadsetService;->access$600(Lcom/android/phone/BluetoothHeadsetService;I)V

    .line 757
    iget-object v5, p0, Lcom/android/phone/BluetoothHeadsetService$8;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v5}, Lcom/android/phone/BluetoothHeadsetService;->access$2500(Lcom/android/phone/BluetoothHeadsetService;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/BluetoothHeadsetService$8;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v6}, Lcom/android/phone/BluetoothHeadsetService;->access$2500(Lcom/android/phone/BluetoothHeadsetService;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0x5dc

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 784
    :goto_7e
    monitor-exit v4

    move v4, v9

    .line 785
    goto :goto_2f

    .line 760
    :cond_81
    iget-object v5, p0, Lcom/android/phone/BluetoothHeadsetService$8;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v5}, Lcom/android/phone/BluetoothHeadsetService;->access$3000(Lcom/android/phone/BluetoothHeadsetService;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_95

    iget-object v5, p0, Lcom/android/phone/BluetoothHeadsetService$8;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v5}, Lcom/android/phone/BluetoothHeadsetService;->access$2300(Lcom/android/phone/BluetoothHeadsetService;)Z

    move-result v5

    if-eqz v5, :cond_a9

    .line 761
    :cond_95
    iget-object v5, p0, Lcom/android/phone/BluetoothHeadsetService$8;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v5, p1}, Lcom/android/phone/BluetoothHeadsetService;->access$702(Lcom/android/phone/BluetoothHeadsetService;Ljava/lang/String;)Ljava/lang/String;

    .line 762
    iget-object v5, p0, Lcom/android/phone/BluetoothHeadsetService$8;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/phone/BluetoothHeadsetService;->access$600(Lcom/android/phone/BluetoothHeadsetService;I)V

    .line 763
    iget-object v5, p0, Lcom/android/phone/BluetoothHeadsetService$8;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v5}, Lcom/android/phone/BluetoothHeadsetService;->access$2600(Lcom/android/phone/BluetoothHeadsetService;)V

    goto :goto_7e

    .line 784
    :catchall_a6
    move-exception v5

    monitor-exit v4
    :try_end_a8
    .catchall {:try_start_48 .. :try_end_a8} :catchall_a6

    throw v5

    .line 768
    :cond_a9
    :try_start_a9
    iget-object v5, p0, Lcom/android/phone/BluetoothHeadsetService$8;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v5, p1}, Lcom/android/phone/BluetoothHeadsetService;->access$702(Lcom/android/phone/BluetoothHeadsetService;Ljava/lang/String;)Ljava/lang/String;

    .line 769
    iget-object v5, p0, Lcom/android/phone/BluetoothHeadsetService$8;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/phone/BluetoothHeadsetService;->access$600(Lcom/android/phone/BluetoothHeadsetService;I)V

    .line 771
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v7, p0, Lcom/android/phone/BluetoothHeadsetService$8;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v7}, Lcom/android/phone/BluetoothHeadsetService;->access$3100(Lcom/android/phone/BluetoothHeadsetService;)J

    move-result-wide v7

    sub-long v2, v5, v7

    .line 772
    .local v2, discMs:J
    cmp-long v5, v2, v11

    if-ltz v5, :cond_e8

    .line 773
    const-string v5, "BT HSHFP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACL still up, but waited long enough. Connect to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " now"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    iget-object v5, p0, Lcom/android/phone/BluetoothHeadsetService$8;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v5}, Lcom/android/phone/BluetoothHeadsetService;->access$2600(Lcom/android/phone/BluetoothHeadsetService;)V

    goto :goto_7e

    .line 777
    :cond_e8
    sub-long v0, v11, v2

    .line 778
    .local v0, delay:J
    const-string v5, "BT HSHFP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACL still up, wait up to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms to connect "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    iget-object v5, p0, Lcom/android/phone/BluetoothHeadsetService$8;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/phone/BluetoothHeadsetService;->access$2402(Lcom/android/phone/BluetoothHeadsetService;Z)Z

    .line 780
    iget-object v5, p0, Lcom/android/phone/BluetoothHeadsetService$8;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v5}, Lcom/android/phone/BluetoothHeadsetService;->access$2500(Lcom/android/phone/BluetoothHeadsetService;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/BluetoothHeadsetService$8;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v6}, Lcom/android/phone/BluetoothHeadsetService;->access$2500(Lcom/android/phone/BluetoothHeadsetService;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_126
    .catchall {:try_start_a9 .. :try_end_126} :catchall_a6

    goto/16 :goto_7e
.end method

.method public disconnectHeadset()V
    .registers 5

    .prologue
    const-string v3, "BT HSHFP"

    .line 792
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$8;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/BluetoothHeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    const-string v0, "BT HSHFP"

    const-string v0, "disconnectHeadset..."

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$8;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService;->access$300(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_26

    .line 798
    const-string v0, "BT HSHFP"

    const-string v0, "Oops, disconnectHeadset when BT is disabled!"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    :goto_25
    return-void

    .line 802
    :cond_26
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$8;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    monitor-enter v0

    .line 803
    :try_start_29
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$8;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->access$2100(Lcom/android/phone/BluetoothHeadsetService;)V

    .line 804
    monitor-exit v0

    goto :goto_25

    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_29 .. :try_end_32} :catchall_30

    throw v1
.end method

.method public getBatteryUsageHint()I
    .registers 4

    .prologue
    .line 842
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$8;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/BluetoothHeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    invoke-static {}, Landroid/bluetooth/HeadsetBase;->getAtInputCount()I

    move-result v0

    return v0
.end method

.method public getHeadsetAddress()Ljava/lang/String;
    .registers 4

    .prologue
    .line 724
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$8;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/BluetoothHeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$8;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService;->access$500(Lcom/android/phone/BluetoothHeadsetService;)I

    move-result v0

    if-nez v0, :cond_13

    .line 726
    const/4 v0, 0x0

    .line 728
    :goto_12
    return-object v0

    :cond_13
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$8;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService;->access$700(Lcom/android/phone/BluetoothHeadsetService;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12
.end method

.method public getPriority(Ljava/lang/String;)I
    .registers 5
    .parameter "address"

    .prologue
    .line 835
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$8;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/BluetoothHeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    invoke-static {p1}, Landroid/bluetooth/BluetoothDevice;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 837
    const/4 v0, -0x1

    .line 839
    :goto_10
    return v0

    :cond_11
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$8;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService;->access$1700(Lcom/android/phone/BluetoothHeadsetService;)Lcom/android/phone/BluetoothHeadsetService$HeadsetPriority;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/BluetoothHeadsetService$HeadsetPriority;->get(Ljava/lang/String;)I

    move-result v0

    goto :goto_10
.end method

.method public getState()I
    .registers 4

    .prologue
    .line 720
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$8;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/BluetoothHeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$8;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService;->access$500(Lcom/android/phone/BluetoothHeadsetService;)I

    move-result v0

    return v0
.end method

.method public isConnected(Ljava/lang/String;)Z
    .registers 5
    .parameter "address"

    .prologue
    .line 788
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$8;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/BluetoothHeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$8;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService;->access$500(Lcom/android/phone/BluetoothHeadsetService;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_20

    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$8;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService;->access$700(Lcom/android/phone/BluetoothHeadsetService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public setPriority(Ljava/lang/String;I)Z
    .registers 6
    .parameter "address"
    .parameter "priority"

    .prologue
    .line 825
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$8;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/BluetoothHeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    invoke-static {p1}, Landroid/bluetooth/BluetoothDevice;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    if-gez p2, :cond_13

    .line 829
    :cond_11
    const/4 v0, 0x0

    .line 832
    :goto_12
    return v0

    .line 831
    :cond_13
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$8;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService;->access$1700(Lcom/android/phone/BluetoothHeadsetService;)Lcom/android/phone/BluetoothHeadsetService$HeadsetPriority;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/phone/BluetoothHeadsetService$HeadsetPriority;->set(Ljava/lang/String;I)V

    .line 832
    const/4 v0, 0x1

    goto :goto_12
.end method

.method public startVoiceRecognition()Z
    .registers 4

    .prologue
    .line 807
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$8;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/BluetoothHeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$8;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    monitor-enter v0

    .line 809
    :try_start_c
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$8;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->access$500(Lcom/android/phone/BluetoothHeadsetService;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_19

    .line 810
    const/4 v1, 0x0

    monitor-exit v0

    move v0, v1

    .line 812
    :goto_18
    return v0

    :cond_19
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$8;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->access$2000(Lcom/android/phone/BluetoothHeadsetService;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->startVoiceRecognition()Z

    move-result v1

    monitor-exit v0

    move v0, v1

    goto :goto_18

    .line 813
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_26

    throw v1
.end method

.method public stopVoiceRecognition()Z
    .registers 4

    .prologue
    .line 816
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$8;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/BluetoothHeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$8;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    monitor-enter v0

    .line 818
    :try_start_c
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$8;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->access$500(Lcom/android/phone/BluetoothHeadsetService;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_19

    .line 819
    const/4 v1, 0x0

    monitor-exit v0

    move v0, v1

    .line 821
    :goto_18
    return v0

    :cond_19
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$8;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->access$2000(Lcom/android/phone/BluetoothHeadsetService;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->stopVoiceRecognition()Z

    move-result v1

    monitor-exit v0

    move v0, v1

    goto :goto_18

    .line 822
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_26

    throw v1
.end method
