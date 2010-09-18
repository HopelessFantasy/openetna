.class Landroid/server/BluetoothDeviceService$1;
.super Landroid/os/Handler;
.source "BluetoothDeviceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothDeviceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothDeviceService;


# direct methods
.method constructor <init>(Landroid/server/BluetoothDeviceService;)V
    .registers 2
    .parameter

    .prologue
    .line 532
    iput-object p1, p0, Landroid/server/BluetoothDeviceService$1;->this$0:Landroid/server/BluetoothDeviceService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    const-string v2, "BluetoothDeviceService"

    const-string v3, "0"

    .line 533
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_92

    .line 569
    :cond_9
    :goto_9
    return-void

    .line 535
    :pswitch_a
    const-string v1, "BluetoothDeviceService"

    const-string v1, "Receive message REGISTER_SDP_RECORDS"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    iget-object v1, p0, Landroid/server/BluetoothDeviceService$1;->this$0:Landroid/server/BluetoothDeviceService;

    invoke-virtual {v1}, Landroid/server/BluetoothDeviceService;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 538
    const-string v1, "BluetoothDeviceService"

    const-string v1, "Registering hsag and hfag records"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    const-string v1, "hsag"

    invoke-static {v1}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    .line 540
    const-string v1, "hfag"

    invoke-static {v1}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    goto :goto_9

    .line 544
    :pswitch_2b
    const-string v1, "BluetoothDeviceService"

    const-string v1, "Receive message FINISH_DISABLE"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    iget-object v1, p0, Landroid/server/BluetoothDeviceService$1;->this$0:Landroid/server/BluetoothDeviceService;

    iget-object v2, p0, Landroid/server/BluetoothDeviceService$1;->this$0:Landroid/server/BluetoothDeviceService;

    invoke-static {v2}, Landroid/server/BluetoothDeviceService;->access$100(Landroid/server/BluetoothDeviceService;)Z

    move-result v2

    invoke-static {v1, v2}, Landroid/server/BluetoothDeviceService;->access$200(Landroid/server/BluetoothDeviceService;Z)V

    goto :goto_9

    .line 549
    :pswitch_3e
    const-string v1, "BluetoothDeviceService"

    const-string v1, "Receive message BT_BOOTUP"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    const-string v1, "dtun.hcid_active"

    const-string v2, "0"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    const-string v1, "dtun.obexd_active"

    const-string v2, "0"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    const-string v1, "dtun.srv_active"

    const-string v2, "0"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    const-string v1, "service.brcm.bt.btld"

    const-string v2, "0"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    const-string v1, "service.brcm.bt.activation"

    const-string v2, "0"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    iget-object v1, p0, Landroid/server/BluetoothDeviceService$1;->this$0:Landroid/server/BluetoothDeviceService;

    invoke-static {v1}, Landroid/server/BluetoothDeviceService;->access$300(Landroid/server/BluetoothDeviceService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "bluetooth_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 560
    .local v0, bluetoothOn:I
    if-lez v0, :cond_9

    .line 561
    iget-object v1, p0, Landroid/server/BluetoothDeviceService$1;->this$0:Landroid/server/BluetoothDeviceService;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/server/BluetoothDeviceService;->enable(Z)Z

    goto :goto_9

    .line 565
    .end local v0           #bluetoothOn:I
    :pswitch_82
    const-string v1, "BluetoothDeviceService"

    const-string v1, "Received AVRCP_PASS_THROUGH_TIMEOUT message"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    const-string v1, "service.brcm.bt.avrcp_pass_thru"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 533
    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_a
        :pswitch_2b
        :pswitch_3e
        :pswitch_82
    .end packed-switch
.end method
