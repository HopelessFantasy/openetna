.class Lcom/android/phone/BluetoothHeadsetService$4;
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
    .line 391
    iput-object p1, p0, Lcom/android/phone/BluetoothHeadsetService$4;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 392
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_7c

    .line 421
    :cond_8
    :goto_8
    return-void

    .line 394
    :pswitch_9
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$4;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService;->access$1500(Lcom/android/phone/BluetoothHeadsetService;)V

    goto :goto_8

    .line 397
    :pswitch_f
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$4;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v0, v2}, Lcom/android/phone/BluetoothHeadsetService;->access$2402(Lcom/android/phone/BluetoothHeadsetService;Z)Z

    .line 398
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$4;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService;->access$500(Lcom/android/phone/BluetoothHeadsetService;)I

    move-result v0

    if-ne v0, v3, :cond_8

    .line 399
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$4;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService;->access$2600(Lcom/android/phone/BluetoothHeadsetService;)V

    goto :goto_8

    .line 403
    :pswitch_22
    const-string v0, "BT HSHFP"

    const-string v1, "SLC timeout, disconnect the headset..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$4;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService;->access$2700(Lcom/android/phone/BluetoothHeadsetService;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$4;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService;->access$500(Lcom/android/phone/BluetoothHeadsetService;)I

    move-result v0

    if-ne v0, v4, :cond_8

    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$4;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService;->access$700(Lcom/android/phone/BluetoothHeadsetService;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 407
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$4;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v0, v2}, Lcom/android/phone/BluetoothHeadsetService;->access$2702(Lcom/android/phone/BluetoothHeadsetService;Z)Z

    .line 408
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$4;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v0, v3}, Lcom/android/phone/BluetoothHeadsetService;->access$502(Lcom/android/phone/BluetoothHeadsetService;I)I

    .line 412
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$4;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService;->access$1100(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/HeadsetBase;

    move-result-object v0

    const-string v1, "+CIEV: 7,3"

    invoke-virtual {v0, v1}, Landroid/bluetooth/HeadsetBase;->sendURC(Ljava/lang/String;)Z

    .line 413
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$4;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService;->access$1100(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/HeadsetBase;

    move-result-object v0

    if-eqz v0, :cond_75

    .line 414
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$4;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService;->access$1100(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/HeadsetBase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/HeadsetBase;->disconnect()V

    .line 415
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$4;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/phone/BluetoothHeadsetService;->access$1102(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/HeadsetBase;)Landroid/bluetooth/HeadsetBase;

    .line 417
    :cond_75
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$4;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v0, v2, v4}, Lcom/android/phone/BluetoothHeadsetService;->access$1200(Lcom/android/phone/BluetoothHeadsetService;II)V

    goto :goto_8

    .line 392
    nop

    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_9
        :pswitch_f
        :pswitch_22
    .end packed-switch
.end method
