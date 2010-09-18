.class Lcom/android/phone/BluetoothHeadsetService$6;
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
    .line 542
    iput-object p1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .parameter "msg"

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 543
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService;->access$500(Lcom/android/phone/BluetoothHeadsetService;)I

    move-result v0

    if-eq v0, v2, :cond_d

    .line 582
    :cond_c
    :goto_c
    return-void

    .line 547
    :cond_d
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_da

    goto :goto_c

    .line 549
    :pswitch_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SDP request returned "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v3}, Lcom/android/phone/BluetoothHeadsetService;->access$2800(Lcom/android/phone/BluetoothHeadsetService;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService;->access$1300(Ljava/lang/String;)V

    .line 551
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->access$700(Lcom/android/phone/BluetoothHeadsetService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 555
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-lez v0, :cond_7e

    .line 556
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    new-instance v1, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;

    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    iget-object v3, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v3}, Lcom/android/phone/BluetoothHeadsetService;->access$700(Lcom/android/phone/BluetoothHeadsetService;)Ljava/lang/String;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget-object v5, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v5}, Lcom/android/phone/BluetoothHeadsetService;->access$800(Lcom/android/phone/BluetoothHeadsetService;)I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;-><init>(Lcom/android/phone/BluetoothHeadsetService;Ljava/lang/String;II)V

    invoke-static {v0, v1}, Lcom/android/phone/BluetoothHeadsetService;->access$1002(Lcom/android/phone/BluetoothHeadsetService;Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;)Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;

    .line 558
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService;->access$1000(Lcom/android/phone/BluetoothHeadsetService;)Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->start()V

    goto :goto_c

    .line 560
    :cond_7e
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_92

    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService;->access$800(Lcom/android/phone/BluetoothHeadsetService;)I

    move-result v0

    if-ne v0, v6, :cond_92

    .line 561
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService;->access$2900(Lcom/android/phone/BluetoothHeadsetService;)V

    goto/16 :goto_c

    .line 563
    :cond_92
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v0, v5, v5}, Lcom/android/phone/BluetoothHeadsetService;->access$1200(Lcom/android/phone/BluetoothHeadsetService;II)V

    goto/16 :goto_c

    .line 569
    :pswitch_99
    const-string v0, "Rfcomm error"

    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService;->access$1300(Ljava/lang/String;)V

    .line 570
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v0, v1}, Lcom/android/phone/BluetoothHeadsetService;->access$1002(Lcom/android/phone/BluetoothHeadsetService;Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;)Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;

    .line 571
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v0, v5, v5}, Lcom/android/phone/BluetoothHeadsetService;->access$1200(Lcom/android/phone/BluetoothHeadsetService;II)V

    goto/16 :goto_c

    .line 574
    :pswitch_aa
    const-string v0, "Rfcomm connected"

    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService;->access$1300(Ljava/lang/String;)V

    .line 575
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v0, v1}, Lcom/android/phone/BluetoothHeadsetService;->access$1002(Lcom/android/phone/BluetoothHeadsetService;Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;)Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;

    .line 576
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/HeadsetBase;

    invoke-static {v1, v0}, Lcom/android/phone/BluetoothHeadsetService;->access$1102(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/HeadsetBase;)Landroid/bluetooth/HeadsetBase;

    .line 577
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v0, v6, v2}, Lcom/android/phone/BluetoothHeadsetService;->access$1200(Lcom/android/phone/BluetoothHeadsetService;II)V

    .line 579
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService;->access$2000(Lcom/android/phone/BluetoothHeadsetService;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->access$1100(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/HeadsetBase;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v2}, Lcom/android/phone/BluetoothHeadsetService;->access$800(Lcom/android/phone/BluetoothHeadsetService;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/BluetoothHandsfree;->connectHeadset(Landroid/bluetooth/HeadsetBase;I)V

    goto/16 :goto_c

    .line 547
    nop

    :pswitch_data_da
    .packed-switch 0x1
        :pswitch_13
        :pswitch_aa
        :pswitch_99
    .end packed-switch
.end method
