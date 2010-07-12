.class Lcom/broadcom/bt/service/hid/BluetoothHidService$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothHidService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/hid/BluetoothHidService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/service/hid/BluetoothHidService;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/service/hid/BluetoothHidService;)V
    .registers 2
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/broadcom/bt/service/hid/BluetoothHidService$1;->this$0:Lcom/broadcom/bt/service/hid/BluetoothHidService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 16
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v11, 0x0

    const/16 v10, -0x3e8

    const-string v12, "android.bluetooth.intent.ADDRESS"

    const-string v9, "BluetoothHidService"

    .line 139
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, action:Ljava/lang/String;
    const-string v7, "BluetoothHidService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mReceiver: action = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const-string v7, "android.bluetooth.intent.action.REMOTE_DEVICE_DISCONNECT_REQUESTED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7a

    .line 144
    const-string v7, "android.bluetooth.intent.ADDRESS"

    invoke-virtual {p2, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, address:Ljava/lang/String;
    iget-object v7, p0, Lcom/broadcom/bt/service/hid/BluetoothHidService$1;->this$0:Lcom/broadcom/bt/service/hid/BluetoothHidService;

    invoke-static {v7}, Lcom/broadcom/bt/service/hid/BluetoothHidService;->access$000(Lcom/broadcom/bt/service/hid/BluetoothHidService;)Ljava/util/HashMap;

    move-result-object v7

    if-eqz v7, :cond_45

    iget-object v7, p0, Lcom/broadcom/bt/service/hid/BluetoothHidService$1;->this$0:Lcom/broadcom/bt/service/hid/BluetoothHidService;

    invoke-static {v7}, Lcom/broadcom/bt/service/hid/BluetoothHidService;->access$000(Lcom/broadcom/bt/service/hid/BluetoothHidService;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5e

    .line 146
    :cond_45
    const-string v7, "BluetoothHidService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mReceiver: unknown device "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    .end local v1           #address:Ljava/lang/String;
    :cond_5d
    :goto_5d
    return-void

    .line 150
    .restart local v1       #address:Ljava/lang/String;
    :cond_5e
    iget-object v7, p0, Lcom/broadcom/bt/service/hid/BluetoothHidService$1;->this$0:Lcom/broadcom/bt/service/hid/BluetoothHidService;

    invoke-static {v7}, Lcom/broadcom/bt/service/hid/BluetoothHidService;->access$000(Lcom/broadcom/bt/service/hid/BluetoothHidService;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 151
    .local v6, currState:I
    const/4 v7, 0x2

    if-eq v6, v7, :cond_74

    const/4 v7, 0x1

    if-ne v6, v7, :cond_5d

    .line 153
    :cond_74
    iget-object v7, p0, Lcom/broadcom/bt/service/hid/BluetoothHidService$1;->this$0:Lcom/broadcom/bt/service/hid/BluetoothHidService;

    invoke-virtual {v7, v1}, Lcom/broadcom/bt/service/hid/BluetoothHidService;->disconnect(Ljava/lang/String;)I

    goto :goto_5d

    .line 156
    .end local v1           #address:Ljava/lang/String;
    .end local v6           #currState:I
    :cond_7a
    const-string v7, "android.bluetooth.intent.action.BLUETOOTH_STATE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b0

    .line 158
    const-string v7, "android.bluetooth.intent.BLUETOOTH_STATE"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 161
    .local v5, btState:I
    const-string v7, "BluetoothHidService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mReceiver: BLUETOOTH_STATE_CHANGED_ACTION btState = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    packed-switch v5, :pswitch_data_ee

    goto :goto_5d

    .line 165
    :pswitch_a4
    iget-object v7, p0, Lcom/broadcom/bt/service/hid/BluetoothHidService$1;->this$0:Lcom/broadcom/bt/service/hid/BluetoothHidService;

    invoke-static {v7}, Lcom/broadcom/bt/service/hid/BluetoothHidService;->access$100(Lcom/broadcom/bt/service/hid/BluetoothHidService;)V

    goto :goto_5d

    .line 169
    :pswitch_aa
    iget-object v7, p0, Lcom/broadcom/bt/service/hid/BluetoothHidService$1;->this$0:Lcom/broadcom/bt/service/hid/BluetoothHidService;

    invoke-static {v7}, Lcom/broadcom/bt/service/hid/BluetoothHidService;->access$200(Lcom/broadcom/bt/service/hid/BluetoothHidService;)V

    goto :goto_5d

    .line 173
    .end local v5           #btState:I
    :cond_b0
    const-string v7, "android.bluetooth.intent.action.BOND_STATE_CHANGED_ACTION"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5d

    .line 175
    const-string v7, "android.bluetooth.intent.ADDRESS"

    invoke-virtual {p2, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 176
    .restart local v1       #address:Ljava/lang/String;
    const-string v7, "android.bluetooth.intent.BOND_STATE"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 178
    .local v2, bondState:I
    packed-switch v2, :pswitch_data_f6

    goto :goto_5d

    .line 191
    :pswitch_c8
    iget-object v7, p0, Lcom/broadcom/bt/service/hid/BluetoothHidService$1;->this$0:Lcom/broadcom/bt/service/hid/BluetoothHidService;

    invoke-virtual {v7, v1, v11}, Lcom/broadcom/bt/service/hid/BluetoothHidService;->setPriority(Ljava/lang/String;I)I

    goto :goto_5d

    .line 180
    :pswitch_ce
    iget-object v7, p0, Lcom/broadcom/bt/service/hid/BluetoothHidService$1;->this$0:Lcom/broadcom/bt/service/hid/BluetoothHidService;

    invoke-static {v7}, Lcom/broadcom/bt/service/hid/BluetoothHidService;->access$300(Lcom/broadcom/bt/service/hid/BluetoothHidService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/bluetooth/BluetoothDevice;->getRemoteClass(Ljava/lang/String;)I

    move-result v3

    .line 181
    .local v3, btClass:I
    and-int/lit16 v4, v3, 0x1f00

    .line 182
    .local v4, btMajor:I
    const/16 v7, 0x500

    if-ne v4, v7, :cond_e7

    .line 183
    iget-object v7, p0, Lcom/broadcom/bt/service/hid/BluetoothHidService$1;->this$0:Lcom/broadcom/bt/service/hid/BluetoothHidService;

    const/16 v8, 0x64

    invoke-virtual {v7, v1, v8}, Lcom/broadcom/bt/service/hid/BluetoothHidService;->setPriority(Ljava/lang/String;I)I

    goto/16 :goto_5d

    .line 186
    :cond_e7
    iget-object v7, p0, Lcom/broadcom/bt/service/hid/BluetoothHidService$1;->this$0:Lcom/broadcom/bt/service/hid/BluetoothHidService;

    invoke-virtual {v7, v1, v11}, Lcom/broadcom/bt/service/hid/BluetoothHidService;->setPriority(Ljava/lang/String;I)I

    goto/16 :goto_5d

    .line 163
    :pswitch_data_ee
    .packed-switch 0x2
        :pswitch_a4
        :pswitch_aa
    .end packed-switch

    .line 178
    :pswitch_data_f6
    .packed-switch 0x0
        :pswitch_c8
        :pswitch_ce
        :pswitch_c8
    .end packed-switch
.end method
