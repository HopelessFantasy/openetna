.class Lcom/android/phone/BluetoothHeadsetService$3;
.super Landroid/content/BroadcastReceiver;
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
    .line 307
    iput-object p1, p0, Lcom/android/phone/BluetoothHeadsetService$3;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 16
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v12, 0x2

    const/16 v11, -0x3e8

    const/4 v10, 0x1

    const/4 v8, 0x0

    const-string v9, "BT HSHFP"

    .line 308
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, action:Ljava/lang/String;
    const-string v6, "android.bluetooth.intent.ADDRESS"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 311
    .local v1, address:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received intent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/BluetoothHeadsetService;->access$1300(Ljava/lang/String;)V

    .line 313
    iget-object v6, p0, Lcom/android/phone/BluetoothHeadsetService$3;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v6}, Lcom/android/phone/BluetoothHeadsetService;->access$500(Lcom/android/phone/BluetoothHeadsetService;)I

    move-result v6

    if-eq v6, v12, :cond_37

    iget-object v6, p0, Lcom/android/phone/BluetoothHeadsetService$3;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v6}, Lcom/android/phone/BluetoothHeadsetService;->access$500(Lcom/android/phone/BluetoothHeadsetService;)I

    move-result v6

    if-ne v6, v10, :cond_55

    :cond_37
    const-string v6, "android.bluetooth.intent.action.REMOTE_DEVICE_DISCONNECT_REQUESTED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_55

    iget-object v6, p0, Lcom/android/phone/BluetoothHeadsetService$3;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v6}, Lcom/android/phone/BluetoothHeadsetService;->access$700(Lcom/android/phone/BluetoothHeadsetService;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_55

    .line 318
    :try_start_4b
    iget-object v6, p0, Lcom/android/phone/BluetoothHeadsetService$3;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v6}, Lcom/android/phone/BluetoothHeadsetService;->access$100(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/IBluetoothHeadset$Stub;

    move-result-object v6

    invoke-virtual {v6}, Landroid/bluetooth/IBluetoothHeadset$Stub;->disconnectHeadset()V
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_54} :catch_19c

    .line 383
    :cond_54
    :goto_54
    return-void

    .line 320
    :cond_55
    const-string v6, "android.bluetooth.intent.action.BLUETOOTH_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_af

    .line 321
    const-string v6, "android.bluetooth.intent.BLUETOOTH_STATE"

    invoke-virtual {p2, v6, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    packed-switch v6, :pswitch_data_1a0

    goto :goto_54

    .line 324
    :pswitch_67
    iget-object v6, p0, Lcom/android/phone/BluetoothHeadsetService$3;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v6}, Lcom/android/phone/BluetoothHeadsetService;->access$1700(Lcom/android/phone/BluetoothHeadsetService;)Lcom/android/phone/BluetoothHeadsetService$HeadsetPriority;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/phone/BluetoothHeadsetService$HeadsetPriority;->load()Z

    .line 326
    iget-object v6, p0, Lcom/android/phone/BluetoothHeadsetService$3;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v6}, Lcom/android/phone/BluetoothHeadsetService;->access$1900(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothAudioGateway;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/BluetoothHeadsetService$3;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v7}, Lcom/android/phone/BluetoothHeadsetService;->access$1800(Lcom/android/phone/BluetoothHeadsetService;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/bluetooth/BluetoothAudioGateway;->start(Landroid/os/Handler;)Z

    .line 327
    iget-object v6, p0, Lcom/android/phone/BluetoothHeadsetService$3;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v6}, Lcom/android/phone/BluetoothHeadsetService;->access$2000(Lcom/android/phone/BluetoothHeadsetService;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/phone/BluetoothHandsfree;->onBluetoothEnabled()V

    goto :goto_54

    .line 331
    :pswitch_89
    iget-object v6, p0, Lcom/android/phone/BluetoothHeadsetService$3;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    monitor-enter v6

    .line 332
    :try_start_8c
    iget-object v7, p0, Lcom/android/phone/BluetoothHeadsetService$3;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v7}, Lcom/android/phone/BluetoothHeadsetService;->access$2100(Lcom/android/phone/BluetoothHeadsetService;)V

    .line 333
    monitor-exit v6
    :try_end_92
    .catchall {:try_start_8c .. :try_end_92} :catchall_ac

    .line 335
    iget-object v6, p0, Lcom/android/phone/BluetoothHeadsetService$3;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v6}, Lcom/android/phone/BluetoothHeadsetService;->access$2000(Lcom/android/phone/BluetoothHeadsetService;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/phone/BluetoothHandsfree;->onBluetoothDisabled()V

    .line 336
    iget-object v6, p0, Lcom/android/phone/BluetoothHeadsetService$3;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v6}, Lcom/android/phone/BluetoothHeadsetService;->access$1900(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothAudioGateway;

    move-result-object v6

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothAudioGateway;->stop()V

    .line 338
    const-string v6, "BT HSHFP"

    const-string v6, "HSP/HFP profile has been disconnected."

    invoke-static {v9, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_54

    .line 333
    :catchall_ac
    move-exception v7

    :try_start_ad
    monitor-exit v6
    :try_end_ae
    .catchall {:try_start_ad .. :try_end_ae} :catchall_ac

    throw v7

    .line 341
    :cond_af
    const-string v6, "android.bluetooth.intent.action.HEADSET_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_bd

    .line 342
    iget-object v6, p0, Lcom/android/phone/BluetoothHeadsetService$3;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v6}, Lcom/android/phone/BluetoothHeadsetService;->access$2200(Lcom/android/phone/BluetoothHeadsetService;)V

    goto :goto_54

    .line 343
    :cond_bd
    const-string v6, "android.bluetooth.intent.action.BOND_STATE_CHANGED_ACTION"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_106

    .line 344
    const-string v6, "android.bluetooth.intent.BOND_STATE"

    invoke-virtual {p2, v6, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 346
    .local v2, bondState:I
    packed-switch v2, :pswitch_data_1a8

    goto :goto_54

    .line 357
    :pswitch_cf
    iget-object v6, p0, Lcom/android/phone/BluetoothHeadsetService$3;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v6}, Lcom/android/phone/BluetoothHeadsetService;->access$1700(Lcom/android/phone/BluetoothHeadsetService;)Lcom/android/phone/BluetoothHeadsetService$HeadsetPriority;

    move-result-object v6

    invoke-virtual {v6, v1, v8}, Lcom/android/phone/BluetoothHeadsetService$HeadsetPriority;->set(Ljava/lang/String;I)V

    goto/16 :goto_54

    .line 348
    :pswitch_da
    iget-object v6, p0, Lcom/android/phone/BluetoothHeadsetService$3;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v6}, Lcom/android/phone/BluetoothHeadsetService;->access$300(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/bluetooth/BluetoothDevice;->getRemoteClass(Ljava/lang/String;)I

    move-result v3

    .line 349
    .local v3, btClass:I
    and-int/lit16 v4, v3, 0x1f00

    .line 350
    .local v4, btMajor:I
    const/16 v6, 0x400

    if-eq v4, v6, :cond_ee

    const/16 v6, 0x100

    if-ne v4, v6, :cond_fb

    .line 352
    :cond_ee
    iget-object v6, p0, Lcom/android/phone/BluetoothHeadsetService$3;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v6}, Lcom/android/phone/BluetoothHeadsetService;->access$1700(Lcom/android/phone/BluetoothHeadsetService;)Lcom/android/phone/BluetoothHeadsetService$HeadsetPriority;

    move-result-object v6

    const/16 v7, 0x64

    invoke-virtual {v6, v1, v7}, Lcom/android/phone/BluetoothHeadsetService$HeadsetPriority;->set(Ljava/lang/String;I)V

    goto/16 :goto_54

    .line 354
    :cond_fb
    iget-object v6, p0, Lcom/android/phone/BluetoothHeadsetService$3;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v6}, Lcom/android/phone/BluetoothHeadsetService;->access$1700(Lcom/android/phone/BluetoothHeadsetService;)Lcom/android/phone/BluetoothHeadsetService$HeadsetPriority;

    move-result-object v6

    invoke-virtual {v6, v1, v8}, Lcom/android/phone/BluetoothHeadsetService$HeadsetPriority;->set(Ljava/lang/String;I)V

    goto/16 :goto_54

    .line 360
    .end local v2           #bondState:I
    .end local v3           #btClass:I
    .end local v4           #btMajor:I
    :cond_106
    const-string v6, "android.bluetooth.intent.action.REMOTE_DEVICE_CONNECTED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11c

    .line 361
    const-string v6, "BT HSHFP"

    const-string v6, "ACL connected"

    invoke-static {v9, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object v6, p0, Lcom/android/phone/BluetoothHeadsetService$3;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v6, v8}, Lcom/android/phone/BluetoothHeadsetService;->access$2302(Lcom/android/phone/BluetoothHeadsetService;Z)Z

    goto/16 :goto_54

    .line 363
    :cond_11c
    const-string v6, "android.bluetooth.intent.action.REMOTE_DEVICE_DISCONNECTED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_179

    .line 364
    const-string v6, "BT HSHFP"

    const-string v6, "ACL disconnected"

    invoke-static {v9, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v6, p0, Lcom/android/phone/BluetoothHeadsetService$3;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v6, v10}, Lcom/android/phone/BluetoothHeadsetService;->access$2302(Lcom/android/phone/BluetoothHeadsetService;Z)Z

    .line 366
    iget-object v6, p0, Lcom/android/phone/BluetoothHeadsetService$3;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v6}, Lcom/android/phone/BluetoothHeadsetService;->access$2400(Lcom/android/phone/BluetoothHeadsetService;)Z

    move-result v6

    if-eqz v6, :cond_54

    .line 367
    iget-object v6, p0, Lcom/android/phone/BluetoothHeadsetService$3;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v6, v8}, Lcom/android/phone/BluetoothHeadsetService;->access$2402(Lcom/android/phone/BluetoothHeadsetService;Z)Z

    .line 368
    iget-object v6, p0, Lcom/android/phone/BluetoothHeadsetService$3;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v6}, Lcom/android/phone/BluetoothHeadsetService;->access$2500(Lcom/android/phone/BluetoothHeadsetService;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 370
    const-string v6, "BT HSHFP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Waiting for ACL disconnection. Connect "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/BluetoothHeadsetService$3;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v7}, Lcom/android/phone/BluetoothHeadsetService;->access$700(Lcom/android/phone/BluetoothHeadsetService;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " now..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v6, p0, Lcom/android/phone/BluetoothHeadsetService$3;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v6}, Lcom/android/phone/BluetoothHeadsetService;->access$500(Lcom/android/phone/BluetoothHeadsetService;)I

    move-result v6

    if-ne v6, v10, :cond_54

    .line 372
    iget-object v6, p0, Lcom/android/phone/BluetoothHeadsetService$3;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v6}, Lcom/android/phone/BluetoothHeadsetService;->access$2600(Lcom/android/phone/BluetoothHeadsetService;)V

    goto/16 :goto_54

    .line 375
    :cond_179
    const-string v6, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_54

    .line 376
    const-string v6, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v7, -0x1

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 377
    .local v5, streamType:I
    const/4 v6, 0x6

    if-ne v5, v6, :cond_54

    .line 378
    iget-object v6, p0, Lcom/android/phone/BluetoothHeadsetService$3;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v6}, Lcom/android/phone/BluetoothHeadsetService;->access$2000(Lcom/android/phone/BluetoothHeadsetService;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v6

    const-string v7, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/phone/BluetoothHandsfree;->sendScoGainUpdate(I)V

    goto/16 :goto_54

    .line 319
    .end local v5           #streamType:I
    :catch_19c
    move-exception v6

    goto/16 :goto_54

    .line 321
    nop

    :pswitch_data_1a0
    .packed-switch 0x2
        :pswitch_67
        :pswitch_89
    .end packed-switch

    .line 346
    :pswitch_data_1a8
    .packed-switch 0x0
        :pswitch_cf
        :pswitch_da
    .end packed-switch
.end method
