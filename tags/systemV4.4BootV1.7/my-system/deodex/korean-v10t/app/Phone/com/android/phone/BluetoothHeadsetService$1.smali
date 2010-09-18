.class Lcom/android/phone/BluetoothHeadsetService$1;
.super Landroid/os/Handler;
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
    .line 171
    iput-object p1, p0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 14
    .parameter "msg"

    .prologue
    .line 172
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;

    .line 174
    .local v9, info:Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;
    const/4 v11, 0x0

    .line 175
    .local v11, type:I
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_202

    .line 184
    :goto_a
    const-string v1, "BT HSHFP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incoming rfcomm ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v11}, Lcom/android/phone/BluetoothHandsfree;->typeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") connection from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v9, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " on channel "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v9, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mRfcommChan:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const/4 v10, 0x0

    .line 189
    .local v10, priority:I
    :try_start_3f
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->access$100(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/IBluetoothHeadset$Stub;

    move-result-object v1

    iget-object v2, v9, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/bluetooth/IBluetoothHeadset$Stub;->getPriority(Ljava/lang/String;)I
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_4a} :catch_1fe

    move-result v10

    .line 191
    :goto_4b
    if-gtz v10, :cond_8c

    .line 192
    const-string v1, "BT HSHFP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rejecting incoming connection because priority = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const-string v1, "BT HSHFP"

    const-string v2, "Disconnecting the headset connection as the prority is zero."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    new-instance v0, Landroid/bluetooth/HeadsetBase;

    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->access$200(Lcom/android/phone/BluetoothHeadsetService;)Landroid/os/PowerManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v2}, Lcom/android/phone/BluetoothHeadsetService;->access$300(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    iget-object v3, v9, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mAddress:Ljava/lang/String;

    iget v4, v9, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mSocketFd:I

    iget v5, v9, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mRfcommChan:I

    iget-object v6, p0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v6}, Lcom/android/phone/BluetoothHeadsetService;->access$400(Lcom/android/phone/BluetoothHeadsetService;)Landroid/os/Handler;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Landroid/bluetooth/HeadsetBase;-><init>(Landroid/os/PowerManager;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;IILandroid/os/Handler;)V

    .line 202
    .local v0, headset:Landroid/bluetooth/HeadsetBase;
    invoke-virtual {v0}, Landroid/bluetooth/HeadsetBase;->disconnect()V

    .line 204
    .end local v0           #headset:Landroid/bluetooth/HeadsetBase;
    :cond_8c
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->access$500(Lcom/android/phone/BluetoothHeadsetService;)I

    move-result v1

    packed-switch v1, :pswitch_data_20a

    .line 262
    :cond_95
    :goto_95
    return-void

    .line 177
    .end local v10           #priority:I
    :pswitch_96
    const/4 v11, 0x1

    .line 178
    goto/16 :goto_a

    .line 180
    :pswitch_99
    const/4 v11, 0x2

    goto/16 :goto_a

    .line 207
    .restart local v10       #priority:I
    :pswitch_9c
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/phone/BluetoothHeadsetService;->access$600(Lcom/android/phone/BluetoothHeadsetService;I)V

    .line 208
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    iget-object v2, v9, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mAddress:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/phone/BluetoothHeadsetService;->access$702(Lcom/android/phone/BluetoothHeadsetService;Ljava/lang/String;)Ljava/lang/String;

    .line 209
    new-instance v0, Landroid/bluetooth/HeadsetBase;

    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->access$200(Lcom/android/phone/BluetoothHeadsetService;)Landroid/os/PowerManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v2}, Lcom/android/phone/BluetoothHeadsetService;->access$300(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v3}, Lcom/android/phone/BluetoothHeadsetService;->access$700(Lcom/android/phone/BluetoothHeadsetService;)Ljava/lang/String;

    move-result-object v3

    iget v4, v9, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mSocketFd:I

    iget v5, v9, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mRfcommChan:I

    iget-object v6, p0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v6}, Lcom/android/phone/BluetoothHeadsetService;->access$400(Lcom/android/phone/BluetoothHeadsetService;)Landroid/os/Handler;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Landroid/bluetooth/HeadsetBase;-><init>(Landroid/os/PowerManager;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;IILandroid/os/Handler;)V

    .line 211
    .restart local v0       #headset:Landroid/bluetooth/HeadsetBase;
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v1, v11}, Lcom/android/phone/BluetoothHeadsetService;->access$802(Lcom/android/phone/BluetoothHeadsetService;I)I

    .line 213
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->access$900(Lcom/android/phone/BluetoothHeadsetService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_95

    .line 217
    .end local v0           #headset:Landroid/bluetooth/HeadsetBase;
    :pswitch_de
    iget-object v1, v9, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mAddress:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v2}, Lcom/android/phone/BluetoothHeadsetService;->access$700(Lcom/android/phone/BluetoothHeadsetService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_123

    .line 219
    const-string v1, "BT HSHFP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Already attempting connect to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v3}, Lcom/android/phone/BluetoothHeadsetService;->access$700(Lcom/android/phone/BluetoothHeadsetService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", disconnecting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v9, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->access$300(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iget-object v2, v9, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothDevice;->disconnectRemoteDeviceAcl(Ljava/lang/String;)Z

    goto/16 :goto_95

    .line 228
    :cond_123
    const-string v1, "BT HSHFP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incoming and outgoing connections to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v9, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Disconnect both!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->access$1000(Lcom/android/phone/BluetoothHeadsetService;)Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;

    move-result-object v1

    if-eqz v1, :cond_154

    .line 231
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->access$1000(Lcom/android/phone/BluetoothHeadsetService;)Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->interrupt()V

    .line 234
    :cond_154
    iget-object v8, p0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    new-instance v1, Landroid/bluetooth/HeadsetBase;

    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v2}, Lcom/android/phone/BluetoothHeadsetService;->access$200(Lcom/android/phone/BluetoothHeadsetService;)Landroid/os/PowerManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v3}, Lcom/android/phone/BluetoothHeadsetService;->access$300(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v4}, Lcom/android/phone/BluetoothHeadsetService;->access$700(Lcom/android/phone/BluetoothHeadsetService;)Ljava/lang/String;

    move-result-object v4

    iget v5, v9, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mSocketFd:I

    iget v6, v9, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mRfcommChan:I

    iget-object v7, p0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v7}, Lcom/android/phone/BluetoothHeadsetService;->access$400(Lcom/android/phone/BluetoothHeadsetService;)Landroid/os/Handler;

    move-result-object v7

    invoke-direct/range {v1 .. v7}, Landroid/bluetooth/HeadsetBase;-><init>(Landroid/os/PowerManager;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;IILandroid/os/Handler;)V

    invoke-static {v8, v1}, Lcom/android/phone/BluetoothHeadsetService;->access$1102(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/HeadsetBase;)Landroid/bluetooth/HeadsetBase;

    .line 236
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->access$1100(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/HeadsetBase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/HeadsetBase;->disconnect()V

    .line 238
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/phone/BluetoothHeadsetService;->access$1200(Lcom/android/phone/BluetoothHeadsetService;II)V

    .line 241
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->access$1000(Lcom/android/phone/BluetoothHeadsetService;)Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;

    move-result-object v1

    if-eqz v1, :cond_1a8

    .line 244
    :try_start_192
    const-string v1, "BT HSHFP"

    const-string v2, "Block in main thread to join stale outgoing connection thread"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->access$1000(Lcom/android/phone/BluetoothHeadsetService;)Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->join()V
    :try_end_1a2
    .catch Ljava/lang/InterruptedException; {:try_start_192 .. :try_end_1a2} :catch_1af

    .line 249
    :goto_1a2
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/phone/BluetoothHeadsetService;->access$1002(Lcom/android/phone/BluetoothHeadsetService;Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;)Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;

    .line 251
    :cond_1a8
    const-string v1, "Successfully used incoming connection, and cancelled outgoing  connection"

    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->access$1300(Ljava/lang/String;)V

    goto/16 :goto_95

    .line 246
    :catch_1af
    move-exception v1

    move-object v8, v1

    .line 247
    .local v8, e:Ljava/lang/InterruptedException;
    const-string v1, "BT HSHFP"

    const-string v2, "Connection cancelled twice eh?"

    invoke-static {v1, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a2

    .line 255
    .end local v8           #e:Ljava/lang/InterruptedException;
    :pswitch_1b9
    const-string v1, "BT HSHFP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Already connected to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v3}, Lcom/android/phone/BluetoothHeadsetService;->access$700(Lcom/android/phone/BluetoothHeadsetService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", disconnecting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v9, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v1, v9, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mAddress:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v2}, Lcom/android/phone/BluetoothHeadsetService;->access$700(Lcom/android/phone/BluetoothHeadsetService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_95

    .line 258
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->access$300(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iget-object v2, v9, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothDevice;->disconnectRemoteDeviceAcl(Ljava/lang/String;)Z

    goto/16 :goto_95

    .line 190
    :catch_1fe
    move-exception v1

    goto/16 :goto_4b

    .line 175
    nop

    :pswitch_data_202
    .packed-switch 0x64
        :pswitch_96
        :pswitch_99
    .end packed-switch

    .line 204
    :pswitch_data_20a
    .packed-switch 0x0
        :pswitch_9c
        :pswitch_de
        :pswitch_1b9
    .end packed-switch
.end method
